VERSION='2.0.0'

mkdir -p releases
rm -f releases/*
echo "Building ATP"
cd ATP
zip -qr ../releases/ATP-${VERSION}.zip GameDatabase ImageDatabase
cd - > /dev/null
