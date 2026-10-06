#!/bin/bash

# Simple Interest Calculator in Bash

echo "----------------------------------------"
echo "       Simple Interest Calculator       "
echo "----------------------------------------"

# Read Principal Amount
read -p "Enter Principal Amount (P): " p

# Read Annual Rate of Interest
read -p "Enter Rate of Interest per year (R %): " r

# Read Time Period in years
read -p "Enter Time Period in years (T): " t

# Calculate Simple Interest using 'bc' or arithmetic calculation
# Formula: SI = (P * R * T) / 100
si=$(echo "scale=2; ($p * $r * $t) / 100" | bc -l 2>/dev/null || awk "BEGIN {print ($p * $r * $t) / 100}")

echo "----------------------------------------"
echo "Calculated Simple Interest (SI) = $si"
echo "----------------------------------------"
