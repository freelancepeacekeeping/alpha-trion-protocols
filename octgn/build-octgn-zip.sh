WAVE_ID="0f4e6d7b-9e94-428c-b7cb-0aa54c0c4f3c"
GAME_ID="f44befce-4d6d-4fb9-a286-9585f36aece9"

IMAGE_DIR="tmp/ImageDatabase/${GAME_ID}/Sets/${WAVE_ID}/Cards"
GAME_DIR="tmp/GameDatabase/${GAME_ID}/sets/${WAVE_ID}"

# Make directories
mkdir -p ${IMAGE_DIR}
mkdir -p ${GAME_DIR}

# Copy files
cp "../docs/images/jpegs/ANTI-AIR BATTERY.jpg" "${IMAGE_DIR}/ece9d083-8f2b-49f2-a96e-0bc43f01d7a2.jpg"
cp "../docs/images/jpegs/HEED THE CALL.jpg" "${IMAGE_DIR}/01942d3f-076e-41e4-a06c-b8c4a7f7911a.jpg"
cp "../docs/images/jpegs/HERES THE THING.jpg" "${IMAGE_DIR}/24e6a127-1784-4876-a99e-a321362dd6c8.jpg"
cp "../docs/images/jpegs/I DONT BELIEVE IN DESTINY.jpg" "${IMAGE_DIR}/a48f9bd5-7fa9-44e6-91ab-b3e9b999233e.jpg"
cp "../docs/images/jpegs/IT WORKS.jpg" "${IMAGE_DIR}/99c3d787-754a-4ef1-889a-f67f1da77c9d.jpg"
cp "../docs/images/jpegs/IT WORKS.1.jpg" "${IMAGE_DIR}/f8301450-8212-4618-b9d6-80c9d4506fcb.jpg"
cp "../docs/images/jpegs/PROTECTION.jpg" "${IMAGE_DIR}/6b240366-21fe-4dfe-bd4a-d1c3d3d114a9.jpg"
cp "../docs/images/jpegs/RALLY.jpg" "${IMAGE_DIR}/af735cd7-0424-4fe9-8cae-45e3008de4b5.jpg"
cp "../docs/images/jpegs/RALLY.1.jpg" "${IMAGE_DIR}/40a9b73f-1022-46e6-8846-f18eec5944ea.jpg"
cp "../docs/images/jpegs/RAMPAGE.jpg" "${IMAGE_DIR}/d0f89435-2830-4a7b-80b5-304ea0e5250d.jpg"
cp "../docs/images/jpegs/STRAXUS LIVES.jpg" "${IMAGE_DIR}/6dca576e-4289-4ea5-9cfb-b7fa75b8f9ad.jpg"
cp "../docs/images/jpegs/SUCH HEROIC NONSENSE.jpg" "${IMAGE_DIR}/cc58854a-e017-40dc-af80-20331cf36178.jpg"
cp "../docs/images/jpegs/WE FIX.jpg" "${IMAGE_DIR}/6f80778e-c4aa-402e-9661-696a2ddf2f8e.jpg"

cp set.xml "${GAME_DIR}"

rm -f ATP1-OCTGN.zip
cd tmp
zip -qr ../ATP1-OCTGN.zip GameDatabase ImageDatabase
cd -
rm -fr tmp/
