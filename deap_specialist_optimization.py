################################
# EvoMan FrameWork - V1.0 2016 #
# Author: Karine Miras         #
# karine.smiras@gmail.com      #
################################

from demo_controller import player_controller
from environment import Environment
import numpy as np
import array
from deap import tools
from deap import creator
from deap import base
import random
import sys
import os

sys.path.insert(0, "evoman")


experiment_name = "deap_specialist_optimization"
if not os.path.exists(experiment_name):
    os.makedirs(experiment_name)

# n_hidden_neurons = 10

# initializes simulation in individual evolution mode, for single static enemy.
env = Environment(
    experiment_name=experiment_name,
    enemies=[2],
    playermode="ai",
    # player_controller=player_controller(n_hidden_neurons),
    enemymode="static",
    level=2,
    speed="fastest",
)

# GLOBAL VARIABLES
POP_SIZE = 4  # Population size
GENS = 5  # Amount of generations
CXPB = 0.5  # CXPB  is the probability with which two individuals are crossed
MUTPB = 0.2  # MUTPB is the probability for mutating an individual


def evaluate(individual):
    f, p, e, t = env.play(
        pcont=individual
    )  # return fitness, self.player.life, self.enemy.life, self.time
    return f


def setupDEAP():
    """
        This function sets up the DEAP environment.

        For more information about which examples are used and the DEAP documentation:
            # https://deap.readthedocs.io/en/master/
            # https://deap.readthedocs.io/en/master/examples/ga_onemax.html
    """

    creator.create("FitnessMax", base.Fitness, weights=(-1.0, 1.0))
    creator.create("Individual", list, fitness=creator.FitnessMax)

    toolbox = base.Toolbox()
    # Attribute generator
    toolbox.register("attr_bool", random.randint, -1, 1)
    # Structure initializers
    toolbox.register(
        "individual", tools.initRepeat, creator.Individual, toolbox.attr_bool, 1
    )
    toolbox.register("population", tools.initRepeat, list, toolbox.individual)

    toolbox.register("evaluate", evaluate)
    toolbox.register("mate", tools.cxUniform, indpb=0.2)
    toolbox.register("mutate", tools.mutFlipBit, indpb=0.2)
    toolbox.register("select", tools.selTournament, tournsize=2)


def crossover(offspring):
    """[summary]

    Args:
        offspring ([type]): [description]
    """
    for child1, child2 in zip(offspring[::2], offspring[1::2]):
        if random.random() < CXPB:
            toolbox.mate(child1, child2)
            del child1.fitness.values
            del child2.fitness.values


def mutation(offspring):
    for mutant in offspring:
        if random.random() < MUTPB:
            toolbox.mutate(mutant)
            del mutant.fitness.values


def evolution(pop, fits):
    currentG = 0

    # Begin the evolution
    while max(fits) < 100 and currentG < GENS:
        # New generation
        currentG = currentG + 1
        print("-- Generation %i --" % currentG)
        # Select the next generation individuals
        offspring = toolbox.select(pop, len(pop))

        # Clone the selected individuals
        offspring = list(map(toolbox.clone, offspring))

        # Apply crossover and mutation on the offspring
        crossover(offspring)
        mutation(offspring)

         # Evaluate the individuals with an invalid fitness
         invalid_ind = [ind for ind in offspring if not ind.fitness.valid]
          fitnesses = map(toolbox.evaluate, invalid_ind)
           for ind, fit in zip(invalid_ind, fitnesses):
                ind.fitness.values = [fit]

            pop[:] = offspring

            # Gather all the fitnesses in one list and print the stats
            fits = [ind.fitness.values[0] for ind in pop]

            length = len(pop)
            mean = sum(fits) / length
            sum2 = sum(x * x for x in fits)
            std = abs(sum2 / length - mean ** 2) ** 0.5

            print("  Min %s" % min(fits))
            print("  Max %s" % max(fits))
            print("  Avg %s" % mean)
            print("  Std %s" % std)
            print(fits)
            print(pop)
            best = fits.index(max(fits))
            np.savetxt(experiment_name + "/best.txt", pop[best])

            solutions = [pop, fit]
            env.update_solutions(solutions)
            env.save_state()



def main():
    setupDEAP()
    # INITIALIZE POPULATION
    pop = toolbox.population(n=POP_SIZE)

    # EVALUATE EACH CANDIDATE
    fitnesses = list(map(toolbox.evaluate, pop))

    # still need to figure out what this does
    for ind, fit in zip(pop, fitnesses):
        ind.fitness.values = [fit]
    fits = [ind.fitness.values[0] for ind in pop]

    evolution(pop, fits)


main()


# INITIALISE population with random candidate solutions;
# EVALUATE each candidate;

# BEGIN
# REPEAT UNTIL ( TERMINATION CONDITION is satisfied ) DO
# 1 SELECT parents;
# 2 RECOMBINE pairs of parents;
# 3 MUTATE the resulting offspring;
# 4 EVALUATE new candidates;
# 5 SELECT individuals for the next generation;
# OD
# END

# env.state_to_log() # checks environment state
