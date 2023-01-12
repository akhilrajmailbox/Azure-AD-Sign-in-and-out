# Azure-AD-Sign-in-and-out

```code
# CLOUD_INSTANCE="Enter_the_Cloud_Instance_Id_Here" # cloud instance string should end with a trailing slash
CLOUD_INSTANCE="https://login.microsoftonline.com/" # cloud instance string should end with a trailing slash
TENANT_ID="Enter_the_Tenant_Info_Here"
CLIENT_ID="Enter_the_Application_Id_Here"
CLIENT_SECRET="Enter_the_Client_Secret_Here"

REDIRECT_URI="http://localhost:3000/auth/redirect"
POST_LOGOUT_REDIRECT_URI="http://localhost:3000"

# GRAPH_API_ENDPOINT="Enter_the_Graph_Endpoint_Here" # graph api endpoint string should end with a trailing slash
GRAPH_API_ENDPOINT="https://graph.microsoft.com/" # graph api endpoint string should end with a trailing slash

EXPRESS_SESSION_SECRET="Enter_the_Express_Session_Secret_Here"
```

## Build Docker image

```bash
docker build -t akhilrajmailbox/azure-ad-b2b-example:1.0.0 .
```

## Run the sample web app

```bash
docker run -d -p 3000:3000 -v /Users/akhilraj/Documents/sources/Temp/b2b-signin.env:/opt/ms-identity-node/App/.env:ro --name azure-ad-b2b-example --hostname azure-ad-b2b-example akhilrajmailbox/azure-ad-b2b-example:1.0.0
```


## Reference

[ref](https://github.com/Azure-Samples/ms-identity-node)