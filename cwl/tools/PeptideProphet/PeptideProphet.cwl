cwlVersion: v1.0
class: CommandLineTool
baseCommand: ["/usr/local/tpp/bin/xinteract", "-Ninteract.pep.xml" , "-p0.95" , "-l7" , "-PPM"]
label: PeptideProphet.cwl
inputs:
  PeptideProphet_in_1:
    type: File
    format: "http://edamontology.org/format_3655" # pepXML
    inputBinding:
      position: 1

outputs:
    PeptideProphet_out_1: 
      type: File
      format: "http://edamontology.org/format_3655" # pepXML
      outputBinding:
        glob: "*.pep.xml"


    