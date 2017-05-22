# Create Azure Web App 

Duration: 10 mins

* [Task 1: Log in to the Azure Portal](#task-1-log-in-to-the-azure-portal)
* [Task 2: Create new Azure Data Factory Service](#task-2-Create-web-app)

## Task 1: Log in to the Azure Portal

1. Launch a new browser session and navigate to [https://portal.azure.com](https://portal.azure.com). Once prompted, log in with your Microsoft Azure credentials. If prompted, choose whether your account is an organization account or a Microsoft Account.  This will be based on which account was used to provision your Azure subscription that are using for these labs.
   - **Note** : You may need to launch an InPrivate/Incognito session in your browser if you have multiple Microsoft Accounts.

## Task 2: Create Web App

![Screenshot](../images/precheck-webapp.png)

1) Select 'Create New' for Resource Group. Resource Group Name will be automatically created.

2) Use '123' for following parapeters, and click next.
* MI Api Key
* MI Workspace Id
* MI Service Id
* Weather Api Key 

3) Click 'Next' and 'Deploy' at the following steps. 

* Click follwing link to create a web app

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://azuredeploy.net/)

This GitHub repo exists to deploy the web application that is part of the *Cortana Intelligence Suite Workshop*. We are leveraging a capability of Azure called ARM templates which allow you to specifiy what your solution looks like from a deployment perspetive simply by using JSON code. This is a fairly simple use of ARM templates, but you can actually deploy very complex topologies using this technology - straight from source control. Pretty cool!!

If there is an issue or failed to create resources, please copy or take the screenshot of the error and forward it to me.
