# MEH-check-logs
This is used to check how long each process takes in the MEH upgrade log

## Before starting
Make sure that the `main.sh` script has executable property
```bash
chmod +x main.sh
```

## Check main tasks in the log file
```bash
./main.sh [Path to log file]
```
This will output a `output.csv` file for your viewing pleasure.

## Check sub-tasks under a main task
```bash
./main.sh [Path to log file] [Name of main task]
```
This will output a `outputSub.csv` file for your viewing pleasure.
