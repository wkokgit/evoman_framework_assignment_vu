################################
# EvoMan FrameWork - V1.0 2016 #
# Author: Karine Miras         #
# karine.smiras@gmail.com      #
################################

# imports framework
import sys, os
sys.path.insert(0, 'evoman')
import random

from deap import base
from deap import creator
from deap import tools
import array
import numpy

from deap import algorithms
from environment import Environment
from demo_controller import player_controller


experiment_name = 'dummy_demo'
if not os.path.exists(experiment_name):
    os.makedirs(experiment_name)

n_hidden_neurons = 3

# initializes simulation in individual evolution mode, for single static enemy.
env = Environment(experiment_name=experiment_name,
                  enemies=[2],
                  playermode="ai",
                  #player_controller=player_controller(n_hidden_neurons),
                  enemymode="static",
                  level=2,
                  speed="fastest")
env.play()

# DEAP
# https://deap.readthedocs.io/en/master/
# https://deap.readthedocs.io/en/master/examples/ga_onemax.html


# INITIALIZATION

# GENERATION
#population
# VARIATION

# EVALUATION

# SELECTION


# BEGIN
# INITIALISE population with random candidate solutions;
# EVALUATE each candidate;
# REPEAT UNTIL ( TERMINATION CONDITION is satisfied ) DO
# 1 SELECT parents;
# 2 RECOMBINE pairs of parents;
# 3 MUTATE the resulting offspring;
# 4 EVALUATE new candidates;
# 5 SELECT individuals for the next generation;
# OD
# END
