[![CircleCI](https://circleci.com/gh/SamirduUd/Machine-Learningv3-.svg?style=svg)](https://circleci.com/gh/SamirduUd/Machine-Learningv3-)
# 1. Project Overview
This project is to operationalize a Machine Learning Microservice API. The Machine Learning API is a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on the data source site.

# 2 Project Activities
## Setup the environment
Create a virtual environment and source it
	python3 -m venv <your_venv>
	source <your_venv>/bin/activate

Install the necessary dependencies
	make install 
	
## Run Docker
	./run_docker.sh
	./upload_docker.sh
