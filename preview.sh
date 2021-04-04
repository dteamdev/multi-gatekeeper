rm result/ -rf && helm template test . --debug | ./helm-fan-out.sh result
