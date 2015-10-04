# install oracle jdk from oracle website on ubuntu

usage:
```bash
export INSTALL_BASH_PATH='https://raw.githubusercontent.com/fvigotti/bash-ubuntu-oraclejdk/master/src/install_oracle_jdk.sh'
curl $INSTALL_BASH_PATH | bash -ex 
```


## Env vars if configured will override defaults
 
  
* ``export OVERWRITE_DESTINATION=true`` # if previous installatino has been interrupted and want to overwrite everything...   
* ``export JDK_LOCAL_DESTINATION="/usr/java/src/"`` # path of where the versioned java folder will be created ( ie: /8u45 )   
* ``export TGZ_SOURCES_path="http://download.oracle.com/otn-pub/java/jdk/8u45-b14/"`` # online source path for the download   
* ``export TGZ_SOURCES_filename="jdk-8u45-linux-x64.tar.gz"`` # online source filename for the download  
* ``export JDK_EXPECTED_MD5="1ad9a5be748fb75b31cd3bd3aa339cac"`` # file checksum to be validated, if wrong will attempt to redownload and if still wrong process will fail , if empty md5 will not be checked  



