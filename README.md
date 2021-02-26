# RPA_planificadores_pddl
https://www.icaps-conference.org/competitions/
https://ipc2018-classical.bitbucket.io/

wget al raw desde singularity 
$ RUNDIR="$(pwd)/rundir" 
$ DOMAIN="$RUNDIR/domain.pddl" 
$ PROBLEM="$RUNDIR/problem.pddl" 
$ PLANFILE="$RUNDIR/sas_plan" 
$ ulimit -t 1800 
$ ulimit -v 8388608 
$ singularity run -C -H $RUNDIR planner.img $DOMAIN $PROBLEM $PLANFILE
