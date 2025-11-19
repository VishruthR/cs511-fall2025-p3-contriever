FILE_ID="1cWxwKYS6VH4Cyt7qY8kLjbufoND_VyRg"
FILE_NAME="wikipedia_en_20231101_subset.txt"

curl -c /tmp/cookies.txt -s -L "https://docs.google.com/uc?export=download&id=${FILE_ID}" \
  | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1/p' > /tmp/confirm.txt

CONFIRM=$(cat /tmp/confirm.txt)

curl -Lb /tmp/cookies.txt \
  "https://docs.google.com/uc?export=download&confirm=${CONFIRM}&id=${FILE_ID}" \
  -o "${FILE_NAME}"

rm -f /tmp/cookies.txt /tmp/confirm.txt

