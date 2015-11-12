Check_Instance_ELB(){

# Check ELB Instances Health Function
i=1
sp="/-\|"
echo -n "Wait until instances are running++++++"
while true; do
if
[[ $(aws elb describe-instance-health --load-balancer-name ${1} --output text --region ${2} ) != *OutOfService* && $(aws elb describe-instance-health --load-balancer-name ${1} --region ${2} ) == *InstanceId* ]]; 

then
        break
    fi
    sleep 1
    printf "\b${sp:i++%${#sp}:1}"
done
echo "Instances Are Running"
};
