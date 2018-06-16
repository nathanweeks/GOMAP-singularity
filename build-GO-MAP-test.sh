instance_name="GO_MAP_test"
instance_running=`sudo singularity instance.list | grep $instance_name`
if [ -n "$instance_running" ]
then
	sudo singularity instance.stop $instance_name
fi
sudo rm -rf $instance_name
sudo singularity build --sandbox $instance_name Singularity