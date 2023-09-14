# RedHat-cis-benchmark
Based on CIS RedHat Linux 8 Benchmark
v2.0.0 - 02-23-2022

## How to run the audit
To run the audit, execute these steps

Generar comandos cis:

vim ~/.bashrc

alias cis='sudo /tmp/redhat8-cis/remediate/menu_remediacion.sh'
alias cis-cd='cd /tmp/redhat8-cis/'
alias cis-rm='rm -rf /tmp/redhat8-cis'


source ~/.bashrc


```bash
chmod +x menu_remediacion.sh
sh menu_remediacion.sh


"0. Concede Permisos a los script"
"1. Help check"
"2. Ejecutar la secuencia de Hardening"
"3. Ejecutar Auditoria"
"4. Salir"
```

