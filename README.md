# PredictEpsilon-Publish

## Description

Dye aggregates are of research interest for biomedical imaging, organic photovoltaics, and quantum information device applications. We applied machine learning for high-throughput screening of extinction coefficients of various dyes, density functional theory-based methods to predict the ground- and excited-state properties of the potential dyes selected by machine learning, and molecule dynamics to further study dye aggregate-DNA interactions for two dye dimers (i.e., Cy5 and Cy5.5 dimers) as a prototype. 

Funding: The machine learning model development, training, and validation on extinction coefficients was supported by the U.S. Department of Energy (DoE), Office of Basic Energy Sciences, Division of Materials Science and Engineering through the Established Program to Stimulate Competitive Research (EPSCoR), via award no. DE-SC0020089. Implementation of the machine learning models, density functional theory calculations, time-dependent density functional theory calculations, and molecular dynamics simulations focusing on cyanine dyes was supported fully by the Department of the Navy, Office of Naval Research (ONR), via ONR award no. N00014-19-1-2615.  

For more details on the paper: https://www.mdpi.com/1420-3049/27/11/3456.

## Repository Structure:
*	code – Holds all the code used to process the raw data and create the charts used in the paper
*	rawData – Stores the raw data used in the paper
*	output – Stores the output of the code 

## How to Use

1.	Clone Repository to local drive, referred to as {PredictEpsilon-Publish}
1.	Setup Anaconda Environment
    1.	Create Anaconda environment using {PredictEpsilon-Publish}/environment.yml. For additional help: https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#creating-an-environment-from-an-environment-yml-file
1. Download the various data sources
   1. Deep4Chem
      1. Go to http://deep4chem.korea.ac.kr/database
      1. Download DB for chromophore_Sci_Data_rev02.csv
      1. Place it in {PredictEpsilon-Publish}\rawData\Deep4Chem\DB for chromophore_Sci_Data_rev02.csv
   1. Dyomics
      1. Go to https://dyomics.com/en/downloads
      1. Download Product catalogue, 8th edition
      1. Place it in {PredictEpsilon-Publish}\rawData\Dyomics\Dyomics_2017.pdf
   1. PhotochemCAD
      1. Go to https://photochemcad.com/download
      1. Download PhotochemCAD 3
      1. Extract the zip file into {PredictEpsilon-Publish}\rawData\PhotoChemCAD3
   1. PubChem (Molecular SMILES data acquired from PubChem https://pubchem.ncbi.nlm.nih.gov, including compound CID 6 (https://pubchem.ncbi.nlm.nih.gov/compound/6) and others included in {PredictEpsilon-Publish}\rawData\PubChem\PubChemCIDs.csv)
      1. Go to https://pubchem.ncbi.nlm.nih.gov/#upload=true
      1. Upload the contents of {PredictEpsilon-Publish}\rawData\PubChem\PubChemCIDs.csv and click Search PubChem With This List
      1. Download the Summary (Search Results) CSV and overwrite {PredictEpsilon-Publish}\rawData\PubChem\PubChemCIDs.csv
1.	Run {PredictEpsilon-Publish}/process.ps1
