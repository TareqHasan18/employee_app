# Start with a base image containing Java runtime
FROM java:8

# Make port 8081 available to the world outside this container
EXPOSE 8081

ADD target/employee_app.jar employee_app.jar

# Run the jar file 
ENTRYPOINT ["java","-jar","/employee_app.jar"]