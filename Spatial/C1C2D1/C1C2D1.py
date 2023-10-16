#!/usr/bin/env python
# coding: utf-8

# In[1]:


import geonomics as gnx
import numpy as np


# In[2]:


# create a model with modified parameter file
mod = gnx.make_model('C1C2D1_params.py')


# In[3]:


# Burnin
mod.walk(100, mode='burn')


# In[4]:


# run model    
mod.walk(210)


# In[ ]:




