Server Performance Stats
This is a lightweight Bash script designed to provide a quick snapshot of a Linux server's health. It was developed as part of the Roadmap.sh DevOps projects.

Code Breakdown
The script uses standard Linux commands combined with awk for data formatting:

CPU Usage: Uses top in batch mode (-bn1). It subtracts the "idle" value ($8) from 100 to get the actual usage percentage.

Memory Usage: Uses the free -m command. The awk script targets the second row to calculate the percentage of used RAM relative to the total.

Disk Usage: Uses df -h to check disk space. It extracts used, total, and percentage values from the filesystem.

Process Analysis: Uses ps -eo to list specific columns (PID, Command, and % Usage).

--sort=-%cpu: Sorts by CPU usage in descending order.

head -n 6: Displays the header + the top 5 results.

How to Run
Create the file:
nano server-stats.sh

Paste the code and save.

Give execution permission:

Bash
chmod +x server-stats.sh
Execute the script:

Bash
./server-stats.sh
🇧🇷 Versão em Português: README.md
Estatísticas de Performance do Servidor
Este é um script Bash leve projetado para fornecer um diagnóstico rápido da saúde de um servidor Linux. Desenvolvido como parte dos projetos de DevOps do Roadmap.sh.

Explicação do Código
O script utiliza comandos padrão do Linux combinados com awk para formatar os dados:

Uso de CPU: Utiliza o top em modo batch (-bn1). Ele subtrai o valor de "idle" (ocioso, coluna $8) de 100 para obter a porcentagem real de uso.

Uso de Memória: Utiliza o comando free -m. O awk foca na segunda linha para calcular a porcentagem de RAM usada em relação ao total.

Uso de Disco: Utiliza df -h para verificar o espaço em disco, extraindo os valores de usado, total e a porcentagem.

Análise de Processos: Utiliza ps -eo para listar colunas específicas (PID, Comando e % de Uso).

--sort=-%cpu: Ordena pelo uso de CPU de forma decrescente.

head -n 6: Exibe o cabeçalho + os 5 primeiros resultados.

Como Rodar
Crie o arquivo:
nano server-stats.sh

Cole o código e salve.

Dê permissão de execução:

Bash
chmod +x server-stats.sh
Execute o script:

Bash
./server-stats.sh