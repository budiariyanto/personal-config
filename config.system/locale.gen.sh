echo "Configure locale.gen..."
echo "sed 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen  > locale.gen && mv locale.gen /etc/locale.gen"

echo "Setting up locale..."
echo "locale-gen"
echo "LANG=en_US.UTF-8 UTF-8 > /etc/locale.conf"
