for i in *.png; do jpg=`echo $i | sed 's/png/jpg/'`; convert "$i" "jpegs/${jpg}"; done

