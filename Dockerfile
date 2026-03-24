#Base image
FROM gcc:latest

#Folder which will contain application code
WORKDIR /app

#copying into container
COPY src/1.cpp /app/1.cpp

#Run this while building image
RUN g++ 1.cpp -o app


#Run this after image is created
CMD ["./app"]
