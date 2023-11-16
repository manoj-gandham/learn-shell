# Check if a number is positive, negative, or zero

echo "Enter a number: "
read number

if [ $number -gt 10 ]; then
    echo "The number is positive."
elif [ $number -lt 0 ]; then
    echo "The number is negative."
else
    echo "The number is zero."
fi