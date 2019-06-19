DIR=$(pwd)
ZSHRC=$(cat zshrc.sh)

echo "INCLUDE_FILES_DIR=$DIR" > tmp-zshrc
echo "$ZSHRC" >> tmp-zshrc
