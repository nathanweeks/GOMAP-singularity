.. _REQUIREMENTS:

Requirements
============

1. `Git`_ 
2. `Singularity`_

Git
***

Git can be installed via the following commands in different linux systems

.. code-block:: bash

    #CentOS or RHEL
    sudo yum install epel-release
    sudo yum -y install git

    #Debian/Ubuntu
    sudo apt install git

Singularity
***********

As the name suggests **GOMAP-Singularity** is a Singularity container (`http://singularity.lbl.gov <http://singularity.lbl.gov>`_). The container itself has all the  requirements for GOMAP installed and can be used with a simple commands as long as the singularity container system is installed in the system used.

.. note::

   It is highly recommended to use the GOMAP-Singularity container in the linux system. GOMAP-Singularity has been tested **Ubuntu** as standalone and **RHEL** in an HPC environment
  

Installing Singularity on Debian/Ubuntu
---------------------------------------

**Singularity** can be installed in standalone linux systems via the instructions provided `here <http://singularity.lbl.gov/install-linux>`_. 

Steps to install singularity on Debian/Ubuntu based systems are given below. Check `here <http://singularity.lbl.gov/install-linux>`_  for instructions to install for other systems.

.. code-block:: bash

    sudo wget -O- http://neuro.debian.net/lists/xenial.us-ca.full | \ 
    sudo tee /etc/apt/sources.list.d/neurodebian.sources.list
    sudo apt-key adv --recv-keys --keyserver hkp://pool.sks-keyservers.net:80 0xA5D32F012649A5A9
    sudo apt-get update
    sudo apt-get install -y singularity-container


Using Singularity in HPC
------------------------
Most HPC systems have singularity installed and ready to use. You can check if singularity is available by checking  in Spack based environment modules by using the command in line 1. If singularity is installed then it can be loaded by runisssng the line 2.

.. code-block:: bash

    #Check if singularity is installed
    module avail singularity
    module spider singularity

    #Load singularity
    module load singularity