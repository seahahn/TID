# Java Packaging file extension - JAR, WAR, and EAR

## JAR: Java ARchive

- a package file format used to distribute Java class files, associated metadata, and resources
- JAR files have the .jar extension and may contain libraries, resources, and metadata files
- Essentially, it’s a zipped file containing the compressed versions of .class files and resources of compiled Java libraries and applications
- commonly used to distribute standalone Java applications or libraries
- In general, JAR files are preferable for deploying Spring Boot applications because they are lightweight and can be run as standalone applications without requiring an application server
  - However, if you want multiple applications running under the same application server, you should choose WAR.

## WAR: Web application ARchive or Web Application Resource

- a specific type of JAR file used to package and distribute web applications
- These archive files have the .war extension and are used to package web applications that we can deploy on any Servlet/JSP container
- It contains the web application’s resources, such as servlets, JSPs, and HTML files, as well as a WEB-INF directory that contains additional metadata, such as the web.xml deployment descriptor

## EAR: Enterprise application ARchive (JAR + WAR)

## Conclusion

JAR files are used for packaging and distributing standalone Java applications or libraries, while WAR files are used for packaging and distributing web applications

### Reference

- [What is the difference between a JAR and a WAR file?](https://dev.to/martygo/what-is-the-difference-between-a-jar-and-a-war-file-402a)
- [Differences Between JAR and WAR Packaging](https://www.baeldung.com/java-jar-war-packaging)
- [What is basically JAR , WAR ,EAR file in java](https://medium.com/@ravi29shekhar/what-is-basically-jar-war-ear-file-in-java-b7beeb51bebb)
- [What are the differences between EAR, JAR and WAR files?](https://www.theserverside.com/feature/What-are-the-differences-between-EAR-JAR-and-WAR-files)
