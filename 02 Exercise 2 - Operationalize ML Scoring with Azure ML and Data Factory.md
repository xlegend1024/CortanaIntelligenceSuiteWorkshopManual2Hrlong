# Exercise 2: Operationalize ML Scoring with Azure ML and Data Factory

Duration: 20 mins

Synopsis: In this exercise, attendees will extend the Data Factory service to operationalize the scoring of data using the previously created ML model.

This exercise has 5 tasks:

* [Task 1: Create Azure ML Linked Service](#task-1-create-azure-ml-linked-service)
* [Task 2: Create Azure ML Predictive Pipeline](#task-4-create-azure-ml-predictive-pipeline)
* [Task 3: Monitor Your Pipeline Activities](#task-5-monitor-your-pipeline-activities)

## Get out of Jail Free

If, for whatever reason, you cannot complete this lab whether due to time contraints or if you are not able to troubleshoot an issue, we have created a "get out of jail free" exercise. If you wish to use this exercise at any time, please proceed to [Appendix B](10 Appendix B - Alternative to Data Factory Exercises.md). Please note that using this exercise will let you surpass all of the Azure Data Factory exercises. After completing Appendix B, you can continue to [Exercise 5](05 Exercise 5 - Summarize Data Using HDInsight Spark.md).

## Task 1: Create Azure ML Linked Service

1. Go back to the **Azure Data Factory** service blade.
2. Click on the **Author and deploy** from **Actions** section.

    ![Screenshot](images/create_azure_ml_linked_service_0.png)
1. Click on **…More**.

    ![Screenshot](images/create_azure_ml_linked_service_1.png)
1. Click on **New Compute**.

    ![Screenshot](images/create_azure_ml_linked_service_2.png)
1. Select **Azure ML** from the list.
2. In the new window, be sure change the JSON file to match the following:
    * Back in [Exercise 1, Task 9](https://github.com/xlegend1024/CortanaIntelligenceSuiteWorkshopManual2Hrlong/blob/master/01%20Exercise%201%20-%20Building%20a%20Machine%20Learning%20Model.md#task-7-deploy-web-service-and-note-api-information) you noted some values related to your ML web service. The value for **mlEndPoint**  below is your web service's **Batch Requests** URL (remembering to remove the query string), and **apiKey** is the **Primary Key** of your web service.

    ```json
    {
        "name": "AzureMLLinkedService",
        "properties": {
            "type": "AzureML",
            "description": "",
            "typeProperties": {
                "mlEndpoint": "<Specify the batch scoring URL>",
                "apiKey": "<Specify the published workspace model's API key>"
            }
        }
    }
    ```
1. Click **Deploy**.


## Task 2: Create Azure ML Predictive Pipeline

1. Click on **…More**.

    ![Screenshot](images/create_azure_ml_predictive_pipeline_0.png)
1. Click on the **New pipeline**.

    ![Screenshot](images/create_azure_ml_predictive_pipeline_1.png)
1. In the new window, be sure change the JSON file to match the following or copy the below JSON text and paste into the browser window.

    ```json
   {
        "name": "PredictivePipeline",
        "properties": {
            "description": "Use AzureML model",
            "activities": [
                {
                    "type": "AzureMLBatchExecution",
                    "typeProperties": {
                        "webServiceInput": "FlightsAndWeatherDataSet",
                        "webServiceOutputs": {
                            "output1": "MLOperationResult"
                        },
                        "globalParameters": {}
                    },
                    "inputs": [
                        {
                            "name": "FlightsAndWeatherDataSet"
                        }
                    ],
                    "outputs": [
                        {
                            "name": "MLOperationResult"
                        }
                    ],
                    "policy": {
                        "timeout": "02:00:00",
                        "concurrency": 1,
                        "executionPriorityOrder": "NewestFirst",
                        "retry": 1
                    },
                    "scheduler": {
                        "frequency": "Minute",
                        "interval": 60
                    },
                    "name": "MLActivity",
                    "description": "prediction analysis on batch input",
                    "linkedServiceName": "AzureMLLinkedService"
                }
            ],
            "start": "YYYY-MM-DDT00:00:00Z",
            "end": "YYYY-MM-D1T00:00:00Z"
        }
    }
    ```
1. Make sure to change the start to today's date and end to today + 1 date.
2. Click **Deploy**.

## Task 5: Monitor Your Pipeline Activities

1. Close the current blade by clicking on the **X** from the top right corner of the blade.
2. Click on the **Monitor &amp; Manage** from the **Actions** section.
3. Maximize the new window and you can see the diagram view of the data flow.

    ![Screenshot](images/monitor_your_pipeline_activities_0.png)
1. You should start to see **Ready** status activity listed on the bottom of the new window.
2. Close the **Monitor &amp; Manage** browser tab.

Next Exercise: [Exercise 3 - Deploy Intelligent Web App](https://github.com/xlegend1024/CortanaIntelligenceSuiteWorkshopManual2Hrlong/blob/master/03%20Exercise%203%20-%20Deploy%20Intelligent%20Web%20App.md)
