from __future__ import division
import pandas as pd
import numpy as np
import os


def round_time(x):
    x = x[:3] + '00:00'
    return(x)

def main():
	path = '../data/mta/turnstile/'

	data = pd.concat([pd.read_csv(path + p) for p in (os.listdir(path))])
	print(data.head())
	print(data.info())
	
	data.columns = data.columns.str.strip()
	
	# round time to avoid broken intervals
	#data.TIME = data.TIME.apply(round_time)

	data["Datetime"] = data["DATE"] + ' ' + data["TIME"]
	data.Datetime = pd.to_datetime(data.Datetime, 
		format='%m/%d/%Y %H:%M:%S')

	print(data.head())

	data.to_csv('../data/mta/turnstile.csv', index=False)
	
if __name__ == '__main__':
	main()
