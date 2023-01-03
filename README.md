# Azure-AD-Sign-in-and-out

Azure AD B2C is another service built on the same technology but not the same in functionality as Azure AD. Azure AD B2C target is to build a directory for consumer applications where users can register with e-mail ID or social providers like Google, FB, MSA, known as Federation Gateway. The goal for Azure AD B2C is to allow organizations to manage single directory of customer identities shared among all applications i.e. single sign-on.

Azure AD B2C is not targeted at organisation users but consumers.

Pricing update: There is pricing update which affects Azure AD B2C and External Identities.

First - price is per monthly, active user (MAU). MAU means someone logged on at least once during the billing period (month).
Second - first 50k users in Azure AD B2C or external identities are Free. So first 50k users in a month, free - next are paid, so 60k active users within a month costs something like 16USD.


This sample article uses a sample Node.js application to show how to add Azure Active Directory B2C (Azure AD B2C) authentication to a Node.js web application. The sample application enables users to sign in, sign out, update profile and reset password using Azure AD B2C user flows. The sample web application uses Microsoft Authentication Library (MSAL) for Node to handle authentication and authorization.

## Step 1 : Configure your user flows

[add-sign-up-and-sign-in-policy](https://learn.microsoft.com/en-gb/azure/active-directory-b2c/add-sign-up-and-sign-in-policy?pivots=b2c-user-flow).


## Step 2 : Register a web application

To enable your application sign in with Azure AD B2C, register your app in the Azure AD B2C directory. The app registration establishes a trust relationship between the app and Azure AD B2C.

During app registration, you'll specify the Redirect URI. The redirect URI is the endpoint to which the user is redirected by Azure AD B2C after they authenticate with Azure AD B2C. The app registration process generates an Application ID, also known as the client ID, that uniquely identifies your app. After your app is registered, Azure AD B2C uses both the application ID, and the redirect URI to create authentication requests.

### Step 2.1 : Register the app

* *Supported account types : select Accounts in any identity provider or organizational directory (for authenticating users with user flows)*
* *Redirect URI :  http://localhost:3000/redirect*
* *Permissions : select the Grant admin consent to openid and offline_access permissions checkbox*

### Step 2.2 : Create a web app client secret

Create a client secret for the registered web application. The web application uses the client secret to prove its identity when it requests tokens.

* Under Manage, select Certificates & secrets.
* Select New client secret.
* In the Description box, enter a description for the client secret (for example, clientsecret1).
* Under Expires, select a duration for which the secret is valid, and then select Add.
* Record the secret's Value. You'll use this value for configuration in a later step.


## Step 3 : Update .env file

Open your web app in a code editor such as Visual Studio Code. Under the project root folder, open the .env file. This file contains information about your Azure AD B2C identity provider.

## Build Docker image (Optional)

```bash
docker build -t akhilrajmailbox/azure-ad-example:1.0.0 .
```

## Run the sample web app

```bash
docker run -d -p 3000:3000 -v /Users/akhilraj/Documents/sources/Mine/.env:/opt/webapp-example/.env:ro --name azure-ad-example --hostname azure-ad-example akhilrajmailbox/azure-ad-example:1.0.0
```


## reference

[configure-a-sample-node-web-app](https://learn.microsoft.com/en-gb/azure/active-directory-b2c/configure-a-sample-node-web-app)

[youtube](https://www.youtube.com/watch?v=M23P7tj_bXA)