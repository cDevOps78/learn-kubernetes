IFS=","
for i in $PARAMS
do
        aws ssm get-parameters --name $i --region ap-south-1
done
