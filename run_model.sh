# variables
run=$(date+'%Y-%m-%d_%H:%M:%S')

papermill notebooks/clustering_c9_deploy.ipynb notebooks/reports/clustering_c9_deploy_$run.ipynb