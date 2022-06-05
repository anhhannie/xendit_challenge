# xendit_challenge

### Prerequisites
* Python > 3.6
* pipenv > 8.3

### Installing pipenv
brew install pipenv

### Installing pipenv development packages
pipenv install -d

### Running command
pipenv run robot -v

### Running smoketests
pipenv run robot --outputdir ./report/xendit_challenge --variablefile ./Resources/Variables/xendit.py -i api_update_qr_code xendit_challenge/Test/
