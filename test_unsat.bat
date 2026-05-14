@echo off
for %%f in (test\unsat\*.cnf) do (
    echo Running solver on %%f
    python solver.py False MINISAT None %%f

    echo Verifying proof for %%f
    veripb %%f .\proofs\proof_%%~nf.pbp

    echo ---
)