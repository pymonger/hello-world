#!/bin/sh

POSITIONAL=()
command="papermill hello-world.ipynb output.ipynb"
while [[ $# -gt 0 ]]; do
  key="$1"
  echo $key
  case $key in
    -Sinput_1|--Sinput_1)
      command="${command} -p input_1 $2"
      shift # past argument
      shift # past value
      ;;
    *) 
      POSITIONAL+=("$1")
      shift
      ;;
  esac
done

${command}
