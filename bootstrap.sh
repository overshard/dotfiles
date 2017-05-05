echo "========================================================================="
echo "Bootstrapping dot-files..."
echo "========================================================================="


echo "========================================================================="
echo "Installing git..."
echo "========================================================================="
apt update
apt --yes install git


echo "========================================================================="
echo "Pulling repo and running setup..."
echo "========================================================================="
mkdir --parents ~/code
cd ~/code
git clone https://github.com/overshard/dot-files
cd dot-files
git submodule init
git submodule update
chmod +x setup.sh
./setup.sh

