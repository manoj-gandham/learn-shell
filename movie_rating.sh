input=$1


if [ -z "$input" ]; then
  echo input movie name is missing
  exit
fi

percent=$(curl -s https://www.themoviedb.org/tv/input=$1 | grep user_score_chart | xargs -n1 | grep data-percent | awk -F = '{print $2}' | awk -F . '{print $1}')

echo percent - $percent

if [ "$percent" -ge 70 ]; then
  echo good
else
  echo bad
fi

