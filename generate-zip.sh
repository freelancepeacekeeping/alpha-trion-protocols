TMP_BUILD='tmp-build/f44befce-4d6d-4fb9-a286-9585f36aece9/Sets/62539654-4c65-40e5-b87d-13fb1e573735/Cards/'

octgn_names[1]="05e8925a-f4c2-4641-8873-aca3c9bc2740.png"
octgn_names[2]="4f35b261-3b7a-4531-a824-5da303d3e0aa.png"
octgn_names[3]="adeacaba-a20c-484c-bce3-0c499f63bbe3.png"
octgn_names[4]="08018652-8fcd-4456-aeb7-196cd3326b60.png"
octgn_names[5]="53b1f61d-4a28-48af-854e-0b8a3254d51f.png"
octgn_names[6]="b6aa1149-930f-4d32-9948-b0457e3927c9.png"
octgn_names[7]="316f0e8f-fffc-4dbe-b573-41e2d2ad2efd.png"
octgn_names[8]="65797513-c97a-4102-a479-95c53e909179.png"
octgn_names[9]="4385348a-1969-4974-980b-708e4dd59998.png"
octgn_names[10]="69d9bdc0-8b76-42ac-a0a4-d026337f8c40.png"

for i in Alpha-Stratagems-Pack-*/
do
    name=`echo ${i} | sed 's/\/$//'`
    mkdir -p ${TMP_BUILD}
    for j in ${name}/*.png
    do
        index=`basename "${j}" | sed 's/-.*//'`
        convert ${j} -resize x805 ${TMP_BUILD}/${octgn_names[${index}]}
    done

    cd tmp-build
    echo "Creating ${name}.zip"
    zip -qr ../${name}.zip f44befce-4d6d-4fb9-a286-9585f36aece9
    cd ..
done
