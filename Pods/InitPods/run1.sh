
# PARAMS="app_name,APP_NAME app_project_name,APP_PROJECT_NAME app_versivi




for i in $PARAMS
do
        key=$(echo $i | awk '{print $1}' | awk -F"," '{print $1}')
        value=$(echo $i | awk '{print $1}' | awk -F"," '{print $2}')
        value=`aws ssm get-parameter --name $value --region ap-south-1 --query  "Parameter.Value" --output text`

        echo "export $key:$value" >> /tmp/params
done


cat /tmp/params

> /tmp/params