# Validate YAML files
alias yamlcheck='python -c "import sys, yaml as y; y.safe_load(open(sys.argv[1]))"'
