# Step 1: Use an ultra-lightweight Nginx image based on Alpine Linux
FROM nginx:alpine

# Step 2: Metadata to document ownership
LABEL maintainer="Faraz Shabbir <devops.faraz@example.com>"
LABEL project="CodeAlpha DevOps Internship - Task 4"

# Step 3: Remove the default Nginx static index page
RUN rm -rf /usr/share/nginx/html/*

# Step 4: Copy our customized DevOps web control dashboard to the Nginx root directory
COPY index.html /usr/share/nginx/html/

# Step 5: Expose web server traffic port inside the container
EXPOSE 80

# Step 6: Start Nginx in the foreground so the container stays active
CMD ["nginx", "-g", "daemon off;"]