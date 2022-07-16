Remove-Item .\output\* -Force -Recurse -ErrorAction SilentlyContinue
Remove-Item .\temp\* -Force -Recurse -ErrorAction SilentlyContinue

jupyter nbconvert --to html --output-dir=output --execute .\code\DataExtraction-*.ipynb

jupyter nbconvert --to html --output-dir=output --execute .\code\BuildDataset-Experimental.ipynb
jupyter nbconvert --to html --output-dir=output --execute .\code\BuildDataset-Training.ipynb
jupyter nbconvert --to html --output-dir=output --execute .\code\BuildDataset-Unknown.ipynb

jupyter nbconvert --to html --output-dir=output --execute .\code\ChartsForPaper-*.ipynb