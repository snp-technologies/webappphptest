# About this Repo

This repo is a sandbox for testing a custom Docker image for Azure Web App for Containers.

This is a simple php application that:
1. Creates a text file with a random name
2. Writes the random value to the text file
3. Echos the file name to the screen

The Dockerfile is a very basic implementation. Most relevant to Azure are the lines:

```
RUN ln -s /home/site/wwwroot/files /var/www/html/files
# Configure ports
EXPOSE 2222 8
```
In the Application settings of the Azure Web App, the App setting WEBSITE_ENABME_APP_SERVICE_STORAGE is set to "true". 
This enables Azure Storage native to the web app. Storage is mounted to the /home directory. The symbolic link defined in the image ensures that the files
are persisted.

## Next Steps

1. Enable SSH. The file _Dockerfile.withssh_ includes additional commands for installing open-ssh and starting ssh at runtime. Unfortunately, I have not been able to get this to work. The app fails to start with an ambiguous ERROR message in the docker log.
2. Enable symlinks for apache and PHP Error logs.
