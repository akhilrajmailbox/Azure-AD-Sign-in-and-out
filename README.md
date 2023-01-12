# Azure-AD-Sign-in-and-out

## Enable self-service sign-up for your tenant

Before you can add a self-service sign-up user flow to your applications, you need to enable the feature for your tenant. After it's enabled, controls become available in the user flow that let you associate the user flow with an application.

1. Sign in to the Azure portal as an Azure AD administrator.
2. Under Azure services, select Azure Active Directory.
3. Select User settings, and then under External users, select Manage external collaboration settings.
4. Set the Enable guest self-service sign up via user flows toggle to Yes.

## Create the user flow for self-service sign-up

Next, you'll create the user flow for self-service sign-up and add it to an application.

1. Sign in to the Azure portal as an Azure AD administrator.
2. Under Azure services, select Azure Active Directory.
3. In the left menu, select External Identities.
4. Select User flows, and then select New user flow.


## Select the layout of the attribute collection form

You can choose order in which the attributes are displayed on the sign-up page.

1. In the Azure portal, select Azure Active Directory.
2. Select External Identities, select User flows.
3. Select the self-service sign-up user flow from the list.
4. Under Customize, select Page layouts.
5. The attributes you chose to collect are listed. To change the order of display, select an attribute, and then select Move up, Move down, Move to the top, or Move to the bottom.
6. Select Save.


## Reference

[web-applications](https://learn.microsoft.com/en-us/azure/active-directory/develop/sample-v2-code#web-applications)

[external-identities](https://learn.microsoft.com/en-us/azure/active-directory/external-identities/what-is-b2b)

[enable-self-service-sign-up-for-your-tenant](https://learn.microsoft.com/en-gb/azure/active-directory/external-identities/self-service-sign-up-user-flow#enable-self-service-sign-up-for-your-tenant)

[self-service-sign-up-overview](https://learn.microsoft.com/en-gb/azure/active-directory/external-identities/self-service-sign-up-overview)

[self-service-sign-up-user-flow](https://learn.microsoft.com/en-gb/azure/active-directory/external-identities/self-service-sign-up-user-flow)