# TSHuaWuQueSSH

1.root 密码: ts2036628!  -- 101.200.146.196
2.管理终端密码：201512   

tomcat7,jdk7不能太高

 unzip -n /srv/ftp/www/TSHuaWuQueSSH.zip -d .


 tar zxvf /srv/ftp/www/jdk-8u65-linux-x64.tar.gz -C /usr/jdk
 
tar zxvf /srv/ftp/www/apache-tomcat-7.0.68.tar.gz  -C .
--------------------------
/srv/ftp/www
http://www.111cn.net/sys/linux/53284.htm -最新成功上传

---------------

http://blog.csdn.net/id19870510/article/details/8395339
 useradd ftpadmin -d /home/ftp/ -g ftpgroup  
 
------------------

阿里云安装vsftpd服务器配置530 Login incorrect错改正：ubuntu中是pam_service_name=ftp(本人已测试) 
vsftpd是一款在Linux发行版中最受推崇的FTP服务器程序
apt-get install vsftpd
查看是否打开21端口: sudo netstat -tulnp | grep 21


http://my.oschina.net/halcy0n/blog/196951

详情参考：http://jingyan.baidu.com/article/67508eb4d6c4fd9ccb1ce470.html
uftp:密码-123456 -ftpuser
service vsftpd restart
http://www.cnblogs.com/CSGrandeur/p/3754126.html
vim 命令行下：输'write_enable=YES'


可以先下个PuTTY,其是一个Telnet、SSH、rlogin、纯TCP以及串行接口连接软件
3.在这下载linux-64位jdk8：http://download.oracle.com/otn-pub/java/jdk/8u73-b02/jdk-8u73-linux-x64.tar.gz


---------------------------------
4.安装mysql
apt-get update
apt-get install mysql-server-5.6
	mysql root:123456
测试：mysql -uroot -p

----------------
 解决办法如下：配置文件中添加：

seccomp_sandbox=NO

添加之后重启就好了

sudo /etc/init.d/vsftpd restart






1.阿里云安装vsftpd服务器配置530 Login incorrect错改正：ubuntu中是pam_service_name=ftp(本人已测试) 


wget http://oss.aliyuncs.com/aliyunecs/onekey/mysql/mysql-5.5.35-linux2.6-x86_64.tar.gz
5.解压
mkdir -p  /alidata/server
tar zxvf mysql-5.5.35-linux2.6-x86_64.tar.gz  -C /alidata/server/ 


　Tomcat修改端口：切换至Tomcat目录下的conf目录，使用sudo vi server.xml命令，定位到【<Connector port="8080"&hellip;】段落，将8080修改何曾80端口；
　将发布的网站目录映射到80端口下：切换至Tomcat目录下的conf目录，使用sudo vi server.xml命令，在<Host></Host>标签中的<Valve>标签下方，添加<Context path="" doBase="/usr/local/apache-tomcat-7.0.57/webapps/[你的web网站目录]" debug="0"/>标签;
