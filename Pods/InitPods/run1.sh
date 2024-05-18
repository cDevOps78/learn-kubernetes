# PARAMS="app_name,APP_NAME app_project_name,APP_PROJECT_NAME app_version,APP_VERSION"

for i in $PARAMS
do
        key=$(echo $i | awk -F"," '{print $1}')
        value=$(echo $i |  awk -F"," '{print $2}')
        value=`aws ssm get-parameter --name $value --region ap-south-1 --query  "Parameter.Value" --output text`
        [ -z $value ] && echo -e "\e[31mVARIABLE IS MISSING :$i \e[0m" && exit 1

        echo "export $key:$value" >> /tmp/params
done


cat /tmp/params

> /tmp/params