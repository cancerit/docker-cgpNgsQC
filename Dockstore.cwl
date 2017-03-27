#!/usr/bin/env cwl-runner

class: CommandLineTool

id: "validateSampleMeta"

label: "CGP sample meta and bam file validation"

cwlVersion: v1.0

doc: |
    ![build_status](https://quay.io/repository/wtsicgp/dockstore-cgp-ngs-qc/status)
    A Docker container for the cgpNgsQC. See the [dockstore-cgpNgsQC](https://quay.io/repository/wtsicgp/dockstore-cgp-ngs-qc) website for more information.

dct:creator:
  "@id": "https://www.researchgate.net/profile/Xu_Yaobo"
  foaf:name: Yaobo Xu
  foaf:mbox: "mailto:thelastsheep@hotmail.com"

requirements:
  - class: DockerRequirement
    dockerPull: "quay.io/repository/wtsicgp/dockstore-cgp-ngs-qc"

hints:
  - class: ResourceRequirement
    coresMin: 1
    ramMin: 1000
    outdirMin: 1000

inputs:
  in:
    type: File
    doc: "the input file (tsv or excel spreadsheet)"
    inputBinding:
      prefix: -in
      position: 1
      separate: true

  out:
    type: File
    doc: "Output file (It'll be in the format as specified with '-format'. Extension name will be added when missing)."
    inputBinding:
      prefix: -out
      position: 2
      separate: true

  format:
    type: string?
    doc: "Input file format (xlsx, xls or tsv)"
    inputBinding:
      prefix: -format
      position: 3
      separate: true

outputs:
  out_bam:
    type: File
    outputBinding:
      glob: $(inputs.out)

baseCommand: ["/opt/wtsi-cgp/bin/validate_sample_meta.pl"]
