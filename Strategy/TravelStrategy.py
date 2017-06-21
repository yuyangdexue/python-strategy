#!/usr/bin/python
# -*- coding: UTF-8 -*

from abc import ABCMeta
  
from abc import ABCMeta,abstractmethod

class TravelStrategy():
  __metaclass__ = ABCMeta
  @abstractmethod
  def travelAlgorithm(self):
    pass


	
	