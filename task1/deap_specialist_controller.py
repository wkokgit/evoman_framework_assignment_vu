################################
# EvoMan FrameWork - V1.0 2016 #
# Author: Karine Miras         #
# karine.smiras@gmail.com      #
################################

# imports framework
import sys, os

sys.path.insert(0, "evoman")
import random

from deap import base
from deap import creator
from deap import tools
import array
import numpy as np

from deap import algorithms
from environment import Environment
from demo_controller import player_controller


experiment_name = "deap_specialist_run"
if not os.path.exists(experiment_name):
    os.makedirs(experiment_name)

if not os.path.exists(experiment_name + "/OnePoint"):
    os.makedirs(experiment_name + "/OnePoint")

if not os.path.exists(experiment_name + "/TwoPoint"):
    os.makedirs(experiment_name + "/TwoPoint")

n_hidden_neurons = 10

# initializes simulation in individual evolution mode, for single static enemy.
env1 = Environment(
    experiment_name=experiment_name,
    enemies=[1],
    playermode="ai",
    player_controller=player_controller(n_hidden_neurons),
    enemymode="static",
    level=2,
    speed="fastest",
)

env2 = Environment(
    experiment_name=experiment_name,
    enemies=[2],
    playermode="ai",
    player_controller=player_controller(n_hidden_neurons),
    enemymode="static",
    level=2,
    speed="fastest",
)

env3 = Environment(
    experiment_name=experiment_name,
    enemies=[3],
    playermode="ai",
    player_controller=player_controller(n_hidden_neurons),
    enemymode="static",
    level=2,
    speed="fastest",
)

# Runs all bests solutions for onepoint and twopoint crossover
for aa in range(1,3):
    if aa == 1:
        cross = "OnePoint"
    else:
        cross = "TwoPoint"

    for x in range(1,4):
        folder = experiment_name + "/" + cross + "/Enemy" + str(x)

        if not os.path.exists(folder):
            os.makedirs(folder)

        for i in range(1,11):
            folder_within = folder +  "/" +  str(i)

            if not os.path.exists(folder_within):
                os.makedirs(folder_within)

            individual_gains = []

            for y in range(1,6):
                sol = np.loadtxt('deap_specialist_cx' + cross + '/Enemy' + str(x) + '/' + str(i) + '/best.txt')
                if x == 1:
                    f, p, e, t = env1.play(sol) # return fitness, self.player.life, self.enemy.life, self.time
                if x == 2:
                    f, p, e, t = env2.play(sol) # return fitness, self.player.life, self.enemy.life, self.time
                if x == 3:
                    f, p, e, t = env3.play(sol) # return fitness, self.player.life, self.enemy.life, self.time
                individual_gains.append(p - e) # player.life - enemy.life
            print(individual_gains)
            mean = sum(individual_gains) / len(individual_gains)
            file_aux  = open(folder_within +'/individual_gain_mean.txt','a')
            file_aux.write(str(mean))
            file_aux.close()