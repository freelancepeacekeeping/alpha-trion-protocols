for i in Batch-*
do
    cd $i
    zip -qr ../alpha-trion-stratagems-${i}.zip f44befce-4d6d-4fb9-a286-9585f36aece9
done
