# Use the base image
FROM rocker/rstudio

# Set environment variable for the password
ENV PASSWD=gokul

# Set up RStudio password using the environment variable
RUN echo "rstudio:${PASSWD}" | chpasswd

# Expose the port RStudio Server runs on
EXPOSE 8787
