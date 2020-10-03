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
import csv
import array
import numpy as np

from deap import algorithms
from environment import Environment
from demo_controller import player_controller


experiment_name = "deap_generalist_run"
if not os.path.exists(experiment_name):
    os.makedirs(experiment_name)

if not os.path.exists(experiment_name + "/OnePoint"):
    os.makedirs(experiment_name + "/OnePoint")

if not os.path.exists(experiment_name + "/TwoPoint"):
    os.makedirs(experiment_name + "/TwoPoint")

if not os.path.exists(experiment_name + "/very_best"):
    os.makedirs(experiment_name + "/very_best")

n_hidden_neurons = 10

# initializes simulation in individual evolution mode, for single static enemy.

def get_env(enemy):
    env = Environment(
        experiment_name=experiment_name,
        enemies=enemy,
        playermode="ai",
        player_controller=player_controller(n_hidden_neurons),
        enemymode="static",
        level=2,
        speed="fastest",
    )
    return env

# Runs all bests solutions for onepoint and twopoint crossover
for cross in ["OnePoint", "TwoPoint"]:
    for group in ["group268", "group467"]:
        folder = experiment_name + "/" + cross + "/" + group

        if not os.path.exists(folder):
            os.makedirs(folder)

        for i in range(1,11):
            folder_within = folder +  "/" +  str(i)

            if not os.path.exists(folder_within):
                os.makedirs(folder_within)

            sol = np.loadtxt('deap_generalist_cx' + cross + '/'+ group + '/' + str(i) + '/best.txt')

            for enemy in [1,2,3,4,5,6,7,8]:
                folder_within_enemy = folder_within + "/" + str(enemy)
                if not os.path.exists(folder_within_enemy):
                    os.makedirs(folder_within_enemy)
                individual_gains = []
                env = get_env([enemy])

                for y in range(1,6):
                    f, p, e, t = env.play(sol) # return fitness, self.player.life, self.enemy.life, self.time
                    individual_gains.append(p - e) # player.life - enemy.life

                mean = sum(individual_gains) / len(individual_gains)
                file_aux  = open(folder_within_enemy +'/individual_gain_mean.txt','a')
                file_aux.write(str(mean))
                file_aux.close()


# VERY BEST SOLUTION
best_results_csv_path = experiment_name + "/very_best/" + "/very_best_results.csv"

if os.path.exists('deap_generalist_cxOnePoint/VERYBEST.txt'):
    new_path = 'deap_generalist_cxOnePoint/VERYBEST.txt'
if os.path.exists('deap_generalist_cxTwoPoint/VERYBEST.txt'):
    new_path = 'deap_generalist_cxTwoPoint/VERYBEST.txt'

sol = np.loadtxt(new_path)
enemy_list = [1,2,3,4,5,6,7,8]
player_points_list = []
enemy_points_list = []

for enemy in enemy_list:
    env = get_env([enemy])
    average_pp = 0
    average_ep = 0
    for y in range(1,6):
        f, p, e, t = env.play(sol) # return fitness, self.player.life, self.enemy.life, self.time
        average_pp = average_pp + p
        average_ep = average_ep + e
    player_points_list.append(average_pp / 5)
    enemy_points_list.append(average_ep / 5)

with open(best_results_csv_path, 'w+', newline='') as csvfile:
    filewriter = csv.writer(csvfile, delimiter=',')
    filewriter.writerow(["enemy", "player_points", "enemy_points"]) #, "std"])
    for i in range(len(enemy_list)):
        filewriter.writerow([enemy_list[i], player_points_list[i], enemy_points_list[i]])
print("SAVED BEST")