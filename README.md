# RPA_planificadores_pddl
wget al raw desde singularity 
$ RUNDIR="$(pwd)/rundir" 
$ DOMAIN="$RUNDIR/domain.pddl" 
$ PROBLEM="$RUNDIR/problem.pddl" 
$ PLANFILE="$RUNDIR/sas_plan" 
$ ulimit -t 1800 
$ ulimit -v 8388608 
$ singularity run -C -H $RUNDIR planner.img $DOMAIN $PROBLEM $PLANFILE
