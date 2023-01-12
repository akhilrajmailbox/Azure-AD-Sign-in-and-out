# Azure-AD-Sign-in-and-out

```code
const appSettings = {
    appCredentials: {
        clientId: "Enter_the_Application_Id_Here",
        tenantId: "Enter_the_Tenant_Info_Here",
        clientSecret: "Enter_the_Client_Secret_Here"
    },
    authRoutes: {
        redirect: "/redirect",
        unauthorized: "/unauthorized" // the wrapper will redirect to this route in case of unauthorized access attempt
    },
    accessMatrix: {
        todolist: {
            methods: ["GET", "POST", "DELETE"],
            groups: ["Enter_the_ObjectId_of_GroupAdmin", "Enter_the_ObjectId_of_GroupMember"]
        },
        dashboard: {
            methods: ["GET"],
            groups: ["Enter_the_ObjectId_of_GroupAdmin"]
        }
    }
}

module.exports = appSettings
```

## Build Docker image

```bash
docker build -t akhilrajmailbox/azure-ad-b2b-grp-example:1.0.0 .
```

## Run the sample web app

```bash
docker run -d -p 4000:4000 -v /Users/akhilraj/Documents/sources/Temp/b2b-signin-grp-appSettings.js:/opt/ms-identity-node/4-AccessControl/2-security-groups/App/appSettings.js:ro --name azure-ad-b2b-grp-example --hostname azure-ad-b2b-grp-example akhilrajmailbox/azure-ad-b2b-grp-example:1.0.0
```


## Reference

[ref](https://github.com/Azure-Samples/ms-identity-javascript-nodejs-tutorial/blob/main/4-AccessControl/2-security-groups/README.md)