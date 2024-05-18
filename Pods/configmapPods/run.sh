for i in Pname Papp Pversion Pcompo
do
  var="\$$i"
  [ -z `eval echo $var` ] && echo "Variable is Missing: $var" && exit 1
done

sleep 1000
