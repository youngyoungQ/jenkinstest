
FROM openjdk:8
# 浣滆€?MAINTAINER nickyoung@bennsi.com
# VOLUME 鎸囧畾浜嗕复鏃舵枃浠剁洰褰曚负/tmp銆?# 鍏舵晥鏋滄槸鍦ㄤ富鏈?/var/lib/docker 鐩綍涓嬪垱寤轰簡涓€涓复鏃舵枃浠讹紝骞堕摼鎺ュ埌瀹瑰櫒鐨?tmp
VOLUME /tmp 
# 灏唈ar鍖呮坊鍔犲埌瀹瑰櫒涓苟鏇村悕涓篴pp.jar
# 杩愯jar鍖?
RUN mkdir /opt/app
#类似于linux copy指令
ADD ${JAR_FILE} /opt/app/
#执行命令 java -jar /opt/app/demo-docker.jar
CMD ["java", "-jar", "/opt/app/*.jar"]