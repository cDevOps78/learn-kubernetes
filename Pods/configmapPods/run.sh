for i in Pname Papp Pversion Pcompo
do
  var="\$$i"
  [ -z `eval echo $var` ] && echo "Variable is Missing: $var" && exit 1   # eval echo $P-name
done

while true
do
  echo "Sleeping chaitu"
  sleep 2
  done
