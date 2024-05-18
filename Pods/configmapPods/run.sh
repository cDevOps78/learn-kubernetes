for i in P-name P-app P-version P-compo
do
  var="\$$i"
  [ -z `eval echo $var` ] && echo "Variable is Missing: $var" && exit 1   # eval echo $P-name
done

sleep 1000
