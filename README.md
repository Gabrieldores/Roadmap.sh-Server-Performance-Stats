# Server Performance Stats

This is a lightweight Bash script designed to provide a quick snapshot of a Linux server's health. It was developed as part of the [Roadmap.sh](https://roadmap.sh/projects/server-stats) DevOps projects.

## Code Breakdown
The script uses standard Linux commands combined with `awk` for data formatting:

* **CPU Usage**: Uses `top` in batch mode (`-bn1`). It subtracts the "idle" value ($8) from 100 to get the actual usage percentage.
* **Memory Usage**: Uses the `free -m` command. The `awk` script targets the second row to calculate the percentage of used RAM relative to the total.
* **Disk Usage**: Uses `df -h` to check disk space. It extracts used, total, and percentage values from the filesystem.
* **Process Analysis**: Uses `ps -eo` to list specific columns (PID, Command, and % Usage).
    * `--sort=-%cpu`: Sorts by CPU usage in descending order.
    * `head -n 6`: Displays the header + the top 5 results.

## How to Run

1.  **Create the file**:
    ```bash
    nano server-stats.sh
    ```
2.  **Paste the code and save.**
3.  **Give execution permission**:
    ```bash
    chmod +x server-stats.sh
    ```
4.  **Execute the script**:
    ```bash
    ./server-stats.sh
    ```
