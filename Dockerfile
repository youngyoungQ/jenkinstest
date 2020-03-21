
FROM openjdk:8
# 浣滆€?MAINTAINER nickyoung@bennsi.com
# VOLUME 鎸囧畾浜嗕复鏃舵枃浠剁洰褰曚负/tmp銆?# 鍏舵晥鏋滄槸鍦ㄤ富鏈?/var/lib/docker 鐩綍涓嬪垱寤轰簡涓€涓复鏃舵枃浠讹紝骞堕摼鎺ュ埌瀹瑰櫒鐨?tmp
VOLUME /tmp 
# 灏唈ar鍖呮坊鍔犲埌瀹瑰櫒涓苟鏇村悕涓篴pp.jar
ADD ${JAR_FILE} /app.jar
# 杩愯jar鍖?RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
