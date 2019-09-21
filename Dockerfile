FROM centos
RUN yum -y install maven
COPY src home/sivajyothimanda/git-cone/CalculatorJavaApp/src
COPY pom.xml  home/sivajyothimanda/git-cone/CalculatorJavaApp/pom.xml
WORKDIR home/sivajyothimanda/git-cone/CalculatorJavaApp
RUN mvn validate
RUN mvn compile
RUN mvn package
CMD ["java","-cp","target/RaviCalculator-0.2.jar","com.ravi.cal.RaviCalculator.Calculator"]
~                                                                                                                
~                                                                                                                
~                               
