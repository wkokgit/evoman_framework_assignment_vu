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

import os

experiment_name = "deap_specialist_optimization"
if not os.path.exists(experiment_name):
    os.makedirs(experiment_name)

n_hidden_neurons = 10

# initializes simulation in individual evolution mode, for single static enemy.
env = Environment(
    experiment_name=experiment_name,
    enemies=[2],
    playermode="ai",
    player_controller=player_controller(n_hidden_neurons),
    enemymode="static",
    level=2,
    speed="fastest",
)

# GLOBAL VARIABLES
POP_SIZE = 4  # Population size
GENS = 5  # Amount of generations
CXPB = 0.5  # CXPB  is the probability with which two individuals are crossed
MUTPB = 0.2  # MUTPB is the probability for mutating an individual
toolbox = base.Toolbox()
n_vars = (env.get_num_sensors()+1)*n_hidden_neurons + (n_hidden_neurons+1)*5

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
        ind.fitness.values = [f]


def setupDEAP():
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

    # registers mutation function: We use bit-flipping
    toolbox.register("mutate", tools.mutFlipBit, indpb=0.2)

    # registers selection function: We select the best individuals.
    toolbox.register("select", tools.selBest)
    #toolbox.register("select", tools.selTournament, tournsize=2)


def crossover(offspring):
    """
    'In evolutionary computing, the combination of features from two individuals
    in offspring is often called crossover (or recombination).'
    We currently use one point crossover.

    Args:
        offspring (List of individuals): Selected offspring from the population
    """
    for child1, child2 in zip(offspring[::2], offspring[1::2]):
        if random.random() < CXPB:
            toolbox.mate(child1, child2)
            del child1.fitness.values
            del child2.fitness.values


def mutation(offspring):
    """
    'Mutation is applied to the offspring delivered by crossover.'
    'the most common mutation operator for binary encodings considers each gene separately and
    allows each bit to flip (i.e., from 1 to 0 or 0 to 1) with a small probability pm.'
    We currently use bit-flipping

    Args:
        offspring (List of individuals): Selected offspring from the population
    """
    for mutant in offspring:
        if random.random() < MUTPB:
            toolbox.mutate(mutant)
            del mutant.fitness.values


def evolution(pop):
    """
    Evolution Steps:
    1. Select next generation of individuals form population
    2. Clone is used (I think) to let the DEAP algorithm know it is a new generation
    3. Apply Crossover on the offspring
    4. Apply Mutation on the offspring
    5. Evaluate individuals that have been change due to crossover or mutation
    6. Show statistics of the fitness levels of the population
    7. Save best individual of that run
    8. Update environment solutions

    Args:
        pop (list): A list containing individuals
    """
    currentG = 0
    while currentG < GENS:
        currentG = currentG + 1
        print("-- Generation %i --" % currentG)

        # 1.
        selected = toolbox.select(pop, len(pop))

        # 2.
        offspring = list(map(toolbox.clone, selected))

        # It is IMPORTANT to know when crossover or mutation happens,
        # the fitness value of that individual is deleted because
        # the individual changed. Therefore we evaluate these individuals again.

        #3.
        crossover(offspring)

        #4.
        mutation(offspring)

        #5.
        invalid_inds = [ind for ind in offspring if not ind.fitness.valid]
        toolbox.evaluate(invalid_inds)

        # 6.
        fits = [ind.fitness.values[0] for ind in offspring]

        length = len(offspring)
        mean = sum(fits) / length
        sum2 = sum(x * x for x in fits)
        std = abs(sum2 / length - mean ** 2) ** 0.5

        print("  Min %s" % min(fits))
        print("  Max %s" % max(fits))
        print("  Avg %s" % mean)
        print("  Std %s" % std)

        # 7.
        best = fits.index(max(fits))
        np.savetxt(experiment_name + "/best.txt", offspring[best])

        # 8.
        solutions = [offspring, fits]
        env.update_solutions(solutions)
        env.save_state()


def main():
    """
    This is the start of the program.
    Program  Steps:
    1. Setup Deap Environment
    2. Initialize Population of individuals
    3. Evaluate population by playing the game and assigning fitness levels
    4. Start Evolution
    """

    # 1.
    setupDEAP()

    # 2.
    print("-- Form Population --")
    pop = toolbox.population(n=POP_SIZE)

    # 3.
    toolbox.evaluate(pop)

    # 4.
    evolution(pop)

main()