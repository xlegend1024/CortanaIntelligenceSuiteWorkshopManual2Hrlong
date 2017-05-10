## Acquire Weather Underground API Key

1. To retrieve the 10-day hourly weather forecast, you will use an API from WeatherUnderground.com. There is a free developer version that provides you access to the API you will need for this workshop.
1. Navigate to https://www.wunderground.com/signup?mode=api_signup and create an account.
1. Once your account is created and you are signed in, navigate to https://www.wunderground.com/community/mail.asp and click on the **Send Validation Email** button.
3. Check your email and complete the validation process.
3. Navigate to http://www.wunderground.com/weather/api/.
3. Click **Explore My Options**.
3. On the next page, choose the **Anvil Plan** and **Developer** pricing. This should be $0.
3. Click the **Purchase Key** button.
3. The subsequent page will have more questions about how you will use the API. Please complete this form and click the **Purchase Key** button. You can enter whatever data you would like on this form.
3. The following page will have your API key in the **Key ID** field.
15.	You will need this **Key ID** during the workshop, so please put it in a location that will be accessible to you during the workshop. An easy solution is to simply email it to yourself.
16.	To verify that your API Key is working, modify this URL to include your API Key: http://api.wunderground.com/api/YOUR_API_KEY_HERE/forecast10day/q/WA/SEA.json.
17.	Open your modified link in a browser, you should get a JSON result showing the 10-day, hourly weather forecast for the Seattle-Tacoma International Airport.
