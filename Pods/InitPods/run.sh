
# PARAMS="APP_NAME,APP_PROJECT_NAME,APP_VERSION"
IFS=","
for i in $PARAMS
        do
                value=`aws ssm get-parameter --name $i --region ap-south-1 --query  "Parameter.Value" --output text`

                [ -z $value ] && echo -e "\e[31mVARIABLE IS MISSING :$i \e[0m" && exit 1 || echo "$i=$value" >> /params

              #parameters --->  aws ssm get-parameters --name $i --region ap-south-1 --query  "Parameters[].Value" --output text
done

while true
do
        echo -e "------------PARAMAS----------"
        cat /params
        echo -e "------------PARAMAS-----------\n\n"
        sleep 2
done


