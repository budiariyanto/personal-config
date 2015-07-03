echo "Updating packages list..."
echo "pacman -Syy"

echo "Upgrading packages..."
echo "pacman  --noconfirm -Syu"

echo "Installing required packages..."
echo "pacman --noconfirm --needed -S $(sed -n '/^[^#[:space:]]\+/p' 
packages)"
