for combo in $(curl -s  https://raw.githubusercontent.com/vardyrunks/vendor_jenkins/lp5.1/aicp-build-targets | sed -e 's/#.*$//' | grep lp5.0 | awk {'print $2'})
do
    add_lunch_combo $combo
done
