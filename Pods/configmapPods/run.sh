for i in Pname Papp Pversion Pcompo
do
  var="\$$i"
  [ -z `eval echo $var` ] && echo "Variable is Missing: $var" && exit 1   # eval echo $Pname
done

# I want to run the container continuously, so with while loop.

while true
do
  echo "Sleeping chaitu"
  sleep 3
done
