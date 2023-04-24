# Use an official R base image
FROM r-base:4.1.3

# Create a directory to store the installed packages
RUN mkdir /r-packages

# Set the environment variable R_LIBS_USER to point to the created directory
ENV R_LIBS_USER /r-packages

# Install dependencies from a requirements file
COPY requirements.R /requirements.R
RUN Rscript /requirements.R

# Copy your R scripts into the container
COPY hello_world.R /hello_world.R
# COPY sum_function.R /sum_function.R
COPY test_sum_function.R /test_sum_function.R

# Set the command to run the R script
ENTRYPOINT ["Rscript", "/hello_world.R"]