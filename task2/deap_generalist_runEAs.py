################################
# EvoMan FrameWork - V1.0 2016 #
# Author: Karine Miras         #
# karine.smiras@gmail.com      #
################################
import sys
sys.path.insert(0, "evoman")
# from demo_controller import player_controller
# from environment import Environment
import numpy as np
# import array
# from deap import tools
# from deap import creator
# from deap import base
# import random
# import csv

import os

from deap_generalist_cxOnePoint import startup_onepoint
from deap_generalist_cxTwoPoint import startup_twopoint

if os.path.exists("deap_generalist_cxOnePoint/VERYBEST.txt"):
    os.remove("deap_generalist_cxOnePoint/VERYBEST.txt")

if os.path.exists("deap_generalist_cxTwoPoint/VERYBEST.txt"):
    os.remove("deap_generalist_cxTwoPoint/VERYBEST.txt")

best_of_onepoint = startup_onepoint()
best_of_twopoint = startup_twopoint()

if (best_of_onepoint["fitness"] >= best_of_twopoint["fitness"]):
    np.savetxt("deap_generalist_cxOnePoint/VERYBEST.txt", best_of_onepoint["solution"])
    print("SAVED VERY BEST IN ONE POINT")
else:
    np.savetxt("deap_generalist_cxTwoPoint/VERYBEST.txt", best_of_twopoint["solution"])
    print("SAVED VERY BEST IN TWO POINT")