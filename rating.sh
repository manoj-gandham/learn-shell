
# Specify the URL
url="https://in.bookmyshow.com/hyderabad/movies/tiger-3/ET00313411"

# Use curl to fetch the HTML content and grep to extract the rating
rating=$(curl -s "$url" | grep -oP 'meta\s*itemprop="ratingValue"\s*content="\K[^"]+')

# Print the rating
if [ -n "$rating" ]; then
    echo "The rating of the movie is: $rating"
else
    echo "Unable to retrieve the rating."
fi
