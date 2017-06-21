#!/usr/bin/python
# -*- coding: UTF-8 -*
from TrainStrategy import TrainStrategy
from BicycleStrategy import BicycleStrategy
from AirPlaneStrategy import AirPlaneStrategy
# from BicycleStrategy import travelAlgorithm
# from TrainStrategy import travelAlgorithm
# from AirPlaneStrategy import travelAlgorithm


class PersonContext(object):
	

	def __init__(self,travel):
		self.__travel = travel

	def set_travel(self,travel):
		self.__travel = travel

	def travel(self):
		self.__travel.travelAlgorithm()
		
if __name__ == '__main__':
     person = PersonContext(TrainStrategy())
     person.travel()

     person.set_travel(BicycleStrategy())
     person.travel()
     

