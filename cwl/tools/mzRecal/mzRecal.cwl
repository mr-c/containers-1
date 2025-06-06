#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
label: mzRecal.cwl
baseCommand: "/usr/local/mzrecal/mzrecal"
arguments:
  - position: 2
    prefix: -o
    valueFrom: "output.mzML"
    
inputs:
  mzRecal_in_1:
    type: File
    format: "http://edamontology.org/format_3244" # mzML
    inputBinding:
      position: 3
  mzRecal_in_2:
    type: File
    format: "http://edamontology.org/format_3247" # mzIdentML
    inputBinding:
      position: 1
      prefix: -mzid

outputs:
  mzRecal_out_1:
    type: File
    format: "http://edamontology.org/format_3244" # mzML
    outputBinding:
      glob: "output.mzML"

