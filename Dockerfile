# Sử dụng Tomcat 10 chính thức (JDK 17 hoặc JDK 21 đều ổn)
FROM tomcat:10.1-jdk17-openjdk

# Xóa các ứng dụng mặc định (ROOT, docs, examples...)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR của bạn vào Tomcat
# Nếu bạn dùng Maven: target/ch04_ex1_survey_sol.war
COPY target/ch04_ex1_survey_sol.war /usr/local/tomcat/webapps/ROOT.war

# Mở cổng 8080
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]
