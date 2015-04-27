# install oracle jdk from oracle website on ubuntu

'
# env vars if configured will override defaults  
export JDK_LOCAL_DESTINATION="/usr/java/src/" # path of where the versioned java folder will be created ( ie: /8u45 )   
export TGZ_SOURCES_path="http://download.oracle.com/otn-pub/java/jdk/8u45-b14/" # source path for the download   
export TGZ_SOURCES_filename="jdk-8u45-linux-x64.tar.gz" # source filename for the download  
export JDK_EXPECTED_MD5="1ad9a5be748fb75b31cd3bd3aa339cac" # file checksum to be validated, if wrong will attempt to redownload and if still wrong process will fail , if empty md5 will not be checked  

'