################################
# EvoMan FrameWork - V1.0 2016 #
# Author: Karine Miras         #
# karine.smiras@gmail.com      #
################################
import sys
sys.path.insert(0, "evoman")
from demo_controller import player_controller
from environment import Environment
import numpy as np
import array
from deap import tools
from deap import creator
from deap import base
import random
import csv
from random import shuffle
import os
import time
time_at_start = time.process_time() #count the time it takes
os.environ["SDL_VIDEODRIVER"] = "dummy"  #set this to get rid of the interface (although it rather odd seems to slow it down)
winner = {"solution": [], "fitness": -200}

def deap_generalist_onepoint(experiment_name, enemies_in_group, iteration_number):
    if not os.path.exists(experiment_name):
        os.makedirs(experiment_name)

    if os.path.exists(experiment_name + '/results.csv'):
        os.remove(experiment_name + '/results.csv')

    if os.path.exists(experiment_name + '/best.txt'):
        os.remove(experiment_name + '/best.txt')

    n_hidden_neurons = 10

    # initializes simulation in individual evolution mode, for single static enemy.
    env = Environment(
        experiment_name=experiment_name,
        enemies=enemies_in_group,
        multiplemode="yes",
        playermode="ai",
        player_controller=player_controller(n_hidden_neurons),
        enemymode="static",
        level=2,
        speed="fastest",
    )

    # GLOBAL VARIABLES
    POP_SIZE = 50  # Population size
    GENS = 10  # Amount of generations
    MUTPB = 0.2  # MUTPB is the probability for mutating an individual
    toolbox = base.Toolbox()
    n_vars = (env.get_num_sensors()+1)*n_hidden_neurons + (n_hidden_neurons+1)*5

    #DATA
    genlist = []
    bestlist = []
    meanlist = []
    stdlist = []

    def evaluate(pop):
        """
        This function will start a game with one individual from the population

        Args:
            individual (np.ndarray of Floats between -1 and 1): One individual from the population

        Returns:
            Float: Fitness
        """
        for ind in pop:
            f, p, e, t = env.play(
                pcont=ind
            )  # return fitness, self.player.life, self.enemy.life, self.time
            fitness = p - e
            ind.fitness.values = [fitness]


    def setup_DEAP():
        """
        This function sets up the DEAP environment to our liking.

        creator.create is used to create a class under a certain name
        toolbox.register is used to register a function under a certain name which can be called

        For more information about which examples are used and the DEAP documentation:
            # https://deap.readthedocs.io/en/master/
            # https://deap.readthedocs.io/en/master/examples/ga_onemax.html
        """
        # this tells DEAP that the fitness should be as high as possible. (therefore Max)
        creator.create("FitnessMax", base.Fitness, weights=(1.0,))

        # an individual is a np.ndarray filled with random floats which are the inputs of the game
        creator.create("Individual", np.ndarray, fitness=creator.FitnessMax)

        toolbox.register("attr_float", random.uniform, -1, 1)

        # registers function to create an individual
        # n_vars is the amount of floats in the individual
        toolbox.register(
            "individual", tools.initRepeat, creator.Individual, toolbox.attr_float, n_vars
        )

        # registers function to create the population of individuals
        toolbox.register("population", tools.initRepeat, list, toolbox.individual)

        # registers function which links to our evaluate function
        toolbox.register("evaluate", evaluate)

        # registers crossover function: We use One Point Crossover
        toolbox.register("mate", tools.cxOnePoint)

        # registers mutation function: We use shuffle index
        toolbox.register("mutate", tools.mutShuffleIndexes, indpb=0.1) # Because it already changes 2 values

        # registers selection function: We select using tournament selection of 2.
        toolbox.register("select", tools.selTournament, tournsize=2)

        # registers survival selection function
        toolbox.register("survive", tools.selRandom)


    def mutation(offspring):
        """
        'Mutation is applied to the offspring delivered by crossover.'

        Args:
            offspring (List of individuals): Selected offspring from the population
        """
        for mutant in offspring:
            if random.random() < MUTPB:
                toolbox.mutate(mutant)

    def crossover_and_mutation(offspring):
        """
        'In evolutionary computing, the combination of features from two individuals
        in offspring is often called crossover (or recombination).'
        We currently use one point crossover.

        Args:
            offspring (List of individuals): Selected offspring from the population
        """
        children = []
        for parent1, parent2 in zip(offspring[::2], offspring[1::2]):
            # NOT USED. if random.random() < CXPB:
            child1 = toolbox.clone(parent1)
            child2 = toolbox.clone(parent2)
            toolbox.mate(child1, child2)
            del child1.fitness.values
            del child2.fitness.values
            children.extend((child1,child2))

        # apply mutation to children
        mutation(children)

        # add children to population
        offspring.extend((child for child in children))


    def configure_results(pop, generation, ultimate_best):
        fits = [ind.fitness.values[0] for ind in pop]

        length = len(pop)
        mean = sum(fits) / length
        sum2 = sum(x * x for x in fits)
        std = abs(sum2 / length - mean ** 2) ** 0.5
        max_fitness = max(fits)

        print("  Min %s" % min(fits))
        print("  Max %s" % max_fitness)
        print("  Avg %s" % mean)
        print("  Std %s" % std)

        # 7.
        best = fits.index(max_fitness)
        if max_fitness > ultimate_best:
            print("ultimate best")
            ultimate_best = best
            np.savetxt(experiment_name + "/best.txt", pop[best])
        if max_fitness > winner["fitness"]:
            print("WINNER")
            winner["solution"] = pop[best]
            winner["fitness"] = max_fitness

        genlist.append(generation)
        bestlist.append(round(max_fitness,6))
        meanlist.append(round(mean,6))
        stdlist.append(round(std,6))

        # save result of each generation
        # file_aux  = open(experiment_name+'/results.txt','a')
        # file_aux.write('\n\ngen best mean std')
        # file_aux.write('\n'+str(generation)+' '+str(round(max_fitness,6))+' '+str(round(mean,6))+' '+str(round(std,6))   )
        # file_aux.close()

        return fits, ultimate_best


    def evolution(pop, ultimate_best):
        """
        Evolution Steps:
        1. Select next generation of individuals from population
        2. Clone is used (I think) to let the DEAP algorithm know it is a new generation
        3. Apply Crossover on the offspring
        4. Apply Mutation on the offspring
        5. Evaluate individuals that have been changed due to crossover or mutation
        6. Apply survivor selection by picking the best of a group
        6. Show statistics of the fitness levels of the population and save best individual of that run
        7. Update environment solutions

        Args:
            pop (list): A list containing individuals
        """
        current_g = 0
        while current_g < GENS:
            current_g = current_g + 1
            print("-- Generation %i --" % current_g)

            # 1.
            selected = toolbox.select(pop, len(pop))

            # 2.
            offspring = list(map(toolbox.clone, selected))
            shuffle(offspring)
            #3. #4.
            crossover_and_mutation(offspring)

            #5.
            changed_individuals = [ind for ind in offspring if not ind.fitness.valid]
            toolbox.evaluate(changed_individuals)
            #6
            survivors = toolbox.survive(offspring, POP_SIZE)

            # Replace old population by offspring
            pop[:] = survivors

            # 7.
            fits, ultimate_best = configure_results(pop, current_g, ultimate_best)
            print(fits)
            # 8.
            solutions = [pop, fits]
            env.update_solutions(solutions)
            env.save_state()


    def main(iteration_number):
        """
        This is the start of the program.
        Program  Steps:
        1. Setup Deap Environment
        2. Initialize Population of individuals
        3. Evaluate population by playing the game and assigning fitness levels
        4. Show and save results for that population
        4. Start Evolution
        """

        # 1.
        setup_DEAP()

        # 2.
        print("-- Form Population --")
        random.seed(2) #starts with the same population
        pop = toolbox.population(n=POP_SIZE)
        random.seed(iteration_number)
        print(iteration_number)
        # 3.
        toolbox.evaluate(pop)
        ultimate_best = -200
        # 4.
        fits, ultimate_best = configure_results(pop, 0, ultimate_best)

        # 5.
        evolution(pop, ultimate_best)

        # Print results to csv
        print("PRINT TO CSV")
        with open(experiment_name + '/results.csv', 'w+', newline='') as csvfile:
            filewriter = csv.writer(csvfile, delimiter=',')
            filewriter.writerow(["generation", "best", "mean"]) #, "std"])
            for i in range(len(bestlist)):
                filewriter.writerow([genlist[i], bestlist[i], meanlist[i], stdlist[i]])

    main(iteration_number)

def time_estimator(current_group, current_run):
    elapsed_time = time.process_time() - time_at_start

    runs_done = ((current_group - 1) * 10) + current_run
    runs_left = 20 - runs_done
    estimated_time_left = (elapsed_time / runs_done) * runs_left * 2 #the * 2 is for Onepoint and Twopoint

    m, s = divmod(estimated_time_left, 60)
    h, m = divmod(m, 60)
    print("Estimated time left: " + str(int(h)) + " hours, " + str(int(m)) + " minutes, and " + str(int(s)) + " seconds")

#testing the multimode
#deap_generalist("deap_generalist",[1,2,3,4],5)

def startup_onepoint():
    print("------------------------------- START ONEPOINT -------------------------------------------------------")
    # --------- STARTS PROGRAM FOR EVERY ENEMY GROUP 10 TIMES ---------------
    iteration_number = 0
    enemy_groups = {1: [2,6,8], 2: [4,6,7]}
    for group_number, enemies_in_group in enemy_groups.items():
        group_name = ''.join(str(x) for x in enemies_in_group)
        print("-----------ONEPOINT------------ GROUP " + str(group_name) + " -------------------------------------------------------")
        experiment_name = "deap_generalist_cxOnePoint/group" + str(group_name)

        for current_run in range(1,11):
            print("----------ONEPOINT------------ RUN " + str(current_run) + " ----------- GROUP " + str(group_name) + "--------------------------")
            iteration_number = iteration_number + 1
            experiment_name_temp = experiment_name + "/" + str(current_run)
            deap_generalist_onepoint(experiment_name_temp, enemies_in_group,iteration_number)
            time_estimator(group_number, current_run)

    print(time.process_time() - time_at_start)
    return winner