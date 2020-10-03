################################
# EvoMan FrameWork - V1.0 2016 #
# Author: Karine Miras         #
# karine.smiras@gmail.com      #
################################
import sys
sys.path.insert(0, "evoman")
# from demo_controller import player_controller
# from environment import Environment
# import numpy as np
# import array
# from deap import tools
# from deap import creator
# from deap import base
# import random
# import csv

# import os

from deap_specialist_cxOnePoint import startUpOnePoint
from deap_specialist_cxTwoPoint import startUpTwoPoint

startUpOnePoint()

startUpTwoPoint()