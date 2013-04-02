###
### submit this script using "qsub example-pbs-matlab.sh"
###

### preserves your current environment for the batch job
#PBS -V

### name of the job.
#PBS -N myjobname

### number of nodes, and processors per node
#PBS -l nodes=1:ppn=1

### time required for job hours:minutes:seconds
#PBS -l walltime=24:00:00

### Display some information
echo Running on host `hostname`
echo Time is `date`
echo Directory is `pwd`

### load Matlab
source /etc/profile.d/modules.sh
module load matlab

### Switch to the working directory; by default TORQUE launches processes
### from your home directory.
cd $PBS_O_WORKDIR
echo Working directory is $PBS_O_WORKDIR

### now, you can run your program(s) here

### example for Matlab. put your matlab command in "file_with_matlab_commands"
#matlab < file_with_matlab_commands > matlab_logfile

### example 2 for Matlab
echo '1 + 1' | matlab > matlab_output.log
