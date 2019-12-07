cd /d %HOMEDRIVE%%HOMEPATH%

mkdir sugiyama_app

cd sugiyama_app

vagrant init bento/centos-7.3

del Vagrantfile

curl -O https://raw.githubusercontent.com/hibiking-0422/sugiyama_app/master/Vagrantfile

vagrant up --provision

vagrant ssh
