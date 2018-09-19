#!/usr/bin/env python3

import argparse

parser = argparse.ArgumentParser()
parser.add_argument("inputfile")
parser.add_argument("outputfile")
args = parser.parse_args()

data = ""
with open(args.inputfile, "rb") as binary_file:
	data = binary_file.read()



with open(args.outputfile, "wb") as binary_file:
	binary_file.write(data)


