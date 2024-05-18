# PARAMS="app_name,APP_NAME app_project_name,APP_PROJECT_NAME app_version,APP_VERSION"

for i in $PARAMS
do
        param=$(echo $i | awk -F"," '{print $1}')
        value=$(echo $i |  awk -F"," '{print $2}')
        value=`aws ssm get-parameter --name $value --region ap-south-1 --query  "Parameter.Value" --output text`
        [ -z "$value" ] && echo -e "\e[31mPARAMETER IS MISSING :$param \e[0m" && exit 1

        echo "export $key:$value" >> /tmp/param
done


cat /tmp/params

> /tmp/params