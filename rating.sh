# Check if a number is positive or negative

echo "Enter a number: "
read number

if [ $number -gt 0 ]; then
    echo "The number is positive."
else
    echo "The number is non-positive."
fi