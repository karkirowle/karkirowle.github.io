---
permalink: /oral_cancer_corpus/
title: "Oral cancer speech corpus"
excerpt: "Oral cancer speech corpus"
author_profile: true
redirect_from: 
  - "/corpus/"
  - "/corpus.html"
---


Synthesising, understanding or recognising pathological speech are currently big problems. This dataset is aimed to those
people who want to investigate new avenues of solving this problem, but lack the data to do so. 

This site's purpose is to inform interested people about the changes and recent developments in the oral cancer speech
dataset, and provide links to the publications using it.

| Name of link     | URL     | For whom? |
| ------------- |:-------------:| -----:|
| Official Zenodo Page      | [link](https://zenodo.org/record/3732322#.X1O1WYZS9FM)| contains Kaldi features too for ease of reproduction |
| Full corpus    | [link](https://drive.google.com/drive/folders/1EwkEIEx4VMPzqR_csrpNX1Ysi9W67J7J?usp=sharing)      | for people who are just interested in the data and want to process in their own way |
| Detector and analysis partition | [link](https://drive.google.com/drive/folders/19USw1RkUv6u3JjZHjlBLMUyZoBefrv4p?usp=sharing)   | aimed for people who want to improve on the baselines quickly |
| Detector and analysis code| [link](https://github.com/karkirowle/oral_cancer_analysis)    |   for people who want to reproduce the GMM/LASSO experiments or just understand the methods |
| Detector and analysis paper (arXiV) | [link](https://arxiv.org/pdf/2007.14205.pdf) |   for people interested in our conclusions regarding oral cancer speech |
| Metadata for the dataset | [link](https://docs.google.com/spreadsheets/d/1upXS1KeV7MQux-hRqKBo0r4T6x1EUQBw_rUSVjiJQGI/edit?usp=sharing) |   metadata about the speakers in the dataset |
| Transcriptions | [link](https://drive.google.com/file/d/1smz-eiYQo-UcS9oz29K1rNCI7O-mLMcm/view?usp=sharing) |   for ASR task |
| Kaldi recipes | [link](https://github.com/syfengcuhk/oral_cancer_asr) |   for ASR task |


<iframe src="https://drive.google.com/file/d/1X_zpsvnjQIPV75itT0hOKaaH2ih0ICDZ/preview" width="640" height="480"></iframe>



Please if you use this dataset, cite the official Interspeech version:

```bibtex
@inproceedings{Halpern2020,
  author={Bence Mark Halpern and Rob van Son and Michiel van den Brekel and Odette Scharenborg},
  title={{Detecting and Analysing Spontaneous Oral Cancer Speech in the Wild}},
  year=2020,
  booktitle={Proc. Interspeech 2020},
  pages={4826--4830},
  doi={10.21437/Interspeech.2020-1598},
  url={http://dx.doi.org/10.21437/Interspeech.2020-1598}
}
```

alternatively

```bibtex
@misc{halpern2020detecting,
    title={Detecting and analysing spontaneous oral cancer speech in the wild},
    author={Bence Mark Halpern and Rob van Son and Michiel van den Brekel and Odette Scharenborg},
    year={2020},
    eprint={2007.14205},
    archivePrefix={arXiv},
    primaryClass={eess.AS}
}
```

**Licensing**

The YouTube data is available under fair use. The dataset is available under the [Creative Commons 4.0 license](https://creativecommons.org/licenses/by/4.0/legalcode).
We encourage research and educational use of the dataset, but commercial use is not allowed.

**Changelog**

*2020-04-20*: ASR task recipe is up

*2020-09-19*: Uploaded the metadata (protocol) file for the dataset

*2020-09-12*: Uploaded the dataset in a Google Drive version to allow ease of use and access.

*2021-03-04*: Uploaded the transcriptions. Kaldi recipe soon (after Interspeech deadlines :) )


**Funding**

This project has received funding from the European Union’s Horizon 2020 research and innovation programme under Marie Sklodowska-Curie grant agreement No 766287. The Department of Head and Neck Oncology and surgery of the Netherlands Cancer Institute receives a research grant from Atos Medical (Horby, Sweden),
which contributes to the existing infrastructure for quality of life research.

<img src="/images/eu_flag.jpeg"> <img src="/images/logo-tapas.png" height="86">
