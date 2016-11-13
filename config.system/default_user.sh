echo "Setting up default non-root user..."
getent passwd budi > /dev/null

if [ $? -eq 0 ]; then
    echo "Default user already exists. Abort creating default 
user..."
    exit 1
fi

echo "useradd -U -m ${DEFAULT_USER}"
echo "echo -e "${DEFAULT_USER_PASSWORD}\n${DEFAULT_USER_PASSWORD}" | 
passwd ${DEFAULT_USER}"
