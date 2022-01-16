
for nozzle in "40" "80"; do

  for machine in jennyprinter um2 ender5 anycubic-i3m; do

    resultProfile="./${machine}-n${nozzle}.fff"

    echo "Generationg S3D profile for $machine (nozzle: 0.${nozzle}mm) in $resultProfile"

    # Cut ending tag
    grep -v "</profile>" common.fff > $resultProfile

    # Add nozzle settings
    cat nozzle${nozzle}.add >> $resultProfile

    # Add machine settings
    cat machine-${machine}.add >> $resultProfile

    # Add material settings
    cat material.add >> $resultProfile

    # Add quality settings
    cat qual-n${nozzle}.add >> $resultProfile

    # Add ending tag
    echo "</profile>" >> $resultProfile

    # Modify name
    sed -i "s|Common-N80|${machine}-n${nozzle}|" $resultProfile
  done
done

