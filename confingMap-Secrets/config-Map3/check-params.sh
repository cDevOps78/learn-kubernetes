
for i in $PARAMS
do
  var=\$${i}
  [ -z `eval echo $var` ] && echo "Parameter is missing: $i" && exit 1 || echo "$i = $(eval echo $var)"
done

# Assume this is actual application
while true
do
  echo "All variables is provided"
  echo "Sleeping 4s"
  sleep 4s
done

