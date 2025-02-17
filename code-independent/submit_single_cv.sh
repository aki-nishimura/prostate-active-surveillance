#!/usr/bin/env bash

workdir="/users/jchoi/PAS"
rscript_log_file_name="${workdir}/logs/${job_name}_rscript_log.txt"
#mkdir -p "${workdir}/generated-files-sh" # Make a directory if non-existent
touch "$rscript_log_file_name" # Create the file if non-existent
module load conda_R
echo "Starting ${job_name}..."
Rscript "${workdir}/code/to-run-single.R" $mri_role $workdir $J&> $rscript_log_file_name
