echo "" > "/Users/Retard/Desktop/lab5OSData/topTotal.txt"
echo "" > "/Users/Retard/Desktop/lab5OSData/topUsed.txt"
echo "" > "/Users/Retard/Desktop/lab5OSData/swapTotal.txt"
echo "" > "/Users/Retard/Desktop/lab5OSData/swapUsed.txt"
while true
do
(top | head -10 | grep PhysMem | awk '{print $2}') | tr ',' '.' | tr 'M' ' ' >> "/Users/Retard/Desktop/lab5OSData/topTotal.txt"
(top | head -10 | grep PhysMem | awk '{print $6}') | tr ',' '.' | tr 'M' ' ' >> "/Users/Retard/Desktop/lab5OSData/topUsed.txt"
(sysctl -a | grep swap | head -1 | awk '{print $4}') | tr ',' '.' | tr 'M' ' ' >> "/Users/Retard/Desktop/lab5OSData/swapTotal.txt"
(sysctl -a | grep swap | head -1 | awk '{print $7}') | tr ',' '.' | tr 'M' ' ' >> "/Users/Retard/Desktop/lab5OSData/swapUsed.txt"
done
