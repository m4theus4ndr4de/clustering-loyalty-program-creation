<img src="image/loyalty_program.png" alt="logo" style="zoom:100%;" />

<h1>Drugstore Sales Prediction</h1>

<p align="justify">This is a fictional project for studying purposes. The business context and the insights are not real. 
The dataset is from Rossmann, a large drug store chain in Europe with many stores all over the continent. The dataset is available on <a href="https://www.kaggle.com/competitions/rossmann-store-sales/data" target="_blank">Kaggle</a>.</p>

<h2>1. Description of the Business Problem</h2>

<p align="justify">The CEO from Rossmann wants to make some investments to renovate all stores and asked the managers of all the stores to say what the income of all the stores will be in the next 6 weeks so that he can decide how much to invest in each store based on that. All the managers asked the data department from Rossmann for a way to answear the CEO accurately. So, a regression model would be of great help.</p>

<h3>The tools that were created:</h3>

<p align="justify"><b>Machine Learning Regression Model: </b>Using the dataset from <a href="https://www.kaggle.com/competitions/rossmann-store-sales/data" target="_blank">Kaggle</a>, a machine learning regression model was created to be used for future predictions.</p> The notebook used to create the model is available <a href="https://github.com/m4theus4ndr4de/regression-rossmann/blob/main/store_sales_prediction.ipynb" target="_blank">here</a>.</p>

<p align="justify"><b>Flask Prediction API: </b>The model is available on the Render Cloud and can be acessible by an API created using Flask. The API source code is available <a href="https://github.com/m4theus4ndr4de/regression-rossmann/blob/main/webapp/handler.py" target="_blank">here</a>.</p>

<p align="justify"><b>Telegram Chat Bot: </b>A chat bot on Telegram (a desktop and messaging app) is available so that the CEO can send the id number of a store and the prediction of the sales for the next 6 weeks will be available there. You can clik <a href="https://t.me/DrugstoreSalesPredictionBOT" target="_blank">here</a> to check it out sending a number up to 4 digits. The Bot source code is available <a href="https://github.com/m4theus4ndr4de/regression-rossmann/blob/main/rossmann-telegram-api/rossmann-bot.py" target="_blank">here</a>.</p>

<h2>2. Dataset Attributes</h2>

<p>Information about the attributes can be found <a href="https://www.kaggle.com/competitions/rossmann-store-sales/data" target="_blank">here</a>.</p>

<table style="width:100%">
<tr><th>Attribute</th><th>Description</th></tr>
<tr><td>id</td><td>an Id that represents a (Store, Date) duple within the test set</td></tr>
<tr><td>Store</td><td>a unique Id for each store</td></tr>
<tr><td>Sales</td><td>the turnover for any given day (this is what you are predicting)</td></tr>
<tr><td>Customers</td><td>the number of customers on a given day</td></tr>
<tr><td>Open</td><td>an indicator for whether the store was open: 0 = closed, 1 = open</td></tr>
<tr><td>StateHoliday</td><td>indicates a state holiday. Normally all stores, with few exceptions, are closed on state holidays. Note that all schools are closed on public holidays and weekends. a = public holiday, b = Easter holiday, c = Christmas, 0 = None</td></tr>
<tr><td>SchoolHoliday</td><td>indicates if the (Store, Date) was affected by the closure of public schools</td></tr>
<tr><td>StoreType</td><td>differentiates between 4 different store models: a, b, c, d</td></tr>
<tr><td>Assortment</td><td>describes an assortment level: a = basic, b = extra, c = extended</td></tr>
<tr><td>CompetitionDistance</td><td>distance in meters to the nearest competitor store</td></tr>
<tr><td>CompetitionOpenSince[Month/Year]</td><td>gives the approximate year and month of the time the nearest competitor was opened</td></tr>
<tr><td>Promo</td><td>indicates whether a store is running a promo on that day</td></tr>
<tr><td>Promo2</td><td>Promo2 is a continuing and consecutive promotion for some stores: 0 = store is not participating, 1 = store is participating</td></tr>
<tr><td>Promo2Since[Year/Week]</td><td>describes the year and calendar week when the store started participating in Promo2</td></tr>
<tr><td>PromoInterval</td><td>describes the consecutive intervals Promo2 is started, naming the months the promotion is started anew. E.g. "Feb,May,Aug,Nov" means each round starts in February, May, August, November of any given year for that store</td></tr>
</table>

<h2>3. Business Premises</h2>

<h3>The premises that were assumed for the development of the business problem solution are:</h3>

<ul>
<li>The model will be available on Github, so the model file has to be smaller than 50 Mb.</li>
<li>Extra assortment is greater tha extended and basic.</li>
<li>Stores that have no competitors in the dataset (CompetitionDIstance and CompetitionOpenSince[Month/Year] not available) were interpreted as stores that have no competitors near them.</li>
<li>The number 200000 was considered as a good one to replace the NA values on the column CompetitionDistance for stores with no competitors meaning that the nearest competitor is very far.</li>
</ul>

<h2>4. Solution Strategy</h2>

<ol>
<li>Understand the Business problem.</li>
<li>Download the dataset from <a href="https://www.kaggle.com/competitions/rossmann-store-sales/data" target="_blank">Kaggle</a>.</li>
<li>Clean the dataset removing outliers, NA values and unnecessary features.</li>
<li>Explore the data to create hypothesis, think about a few insights and validate them.</li>
<li>Prepare the data to be used by the modeling algorithms encoding variables, splitting train and test dataset and other necessary operations.</li>
<li>Create the models using machine learning algorithms.</li>
<li>Evaluate the created models to find the one that best fits to your problem.</li>
<li>Tune the model to achieve a better performance.</li>
<li>Deploy the model in production so that it is available to the user.</li>
<li>Find possible improvements to be explored in the future.</li>
</ol>

<h2>5. The Insights</h2>

<p><b>I1:</b> Stores with greater assortments should sell more.</p>
<p><b>True:</b> Stores with greater assortment sell more.</p>
<p><b>I2:</b> Stores with closer competitors should sell less.</p>
<p><b>False:</b> Stores with closer competitors sells almost the same average amount than the others.</p>
<p><b>I3:</b> Stores that have a competitor for longer periods of time should sell more.</p>
<p><b>False:</b> Stores with competitors for a longer time sell less.</p>
<p><b>I4:</b> Stores with longer active promotions should sell more.</p>
<p><b>False:</b> Store with longer promotions stop selling more after some time.</p>
<p><b>I5:</b> Stores with more consecutive promotions should sell more.</p>
<p><b>False:</b> Stores with more consecutive promotions sell less.</p>
<p><b>I6:</b> Stores open during the Christmas holiday should sell more.</p>
<p><b>False:</b> Stores open during Christmas don't sell more.</p>
<p><b>I7:</b> Stores should sell more over the years.</p>
<p><b>False:</b> Stores sell less over the years.</p>
<p><b>I8:</b> Stores should sell more in the second half of the year.</p>
<p><b>True:</b> The stores sell more in the second half of the year.</p>
<p><b>I9:</b> Stores should sell more after the 10th of each month.</p>
<p><b>True:</b> Stores really sell more after the 10th day of each month.</p>
<p><b>I10:</b> Stores should sell less on weekends.</p>
<p><b>True:</b> Saturday and Sun are the worst seling days.</p>
<p><b>I11:</b> Stores should sell less during school holidays.</p>
<p><b>True:</b> Stores sellless during school holiday except for the august.</p>

<h2>6. Machine Learning Modeling</h2>

<p align="justify">The final result of this project is a regression model. Therefore, some machine learning models were created. In all, 5 models were created, one of them is a simple model that calculates the average sales to serve as a comparison with machine learning models. The other models initially created were Linear Regression, Regularized Linear Regression, Random Forest and XGBoost.</p>

<p align="justify">The Boruta algorithm was used to select features for the model and 18 features were selected to the final model. The models were evaluated considering three metrics, Mean Absolute Error (MAE), Mean Absolute Percentage Error (MAPE) and Root Mean Squared Error (RMSE). The initial models performances are in the table below.</p>

<table style="width:100%">
<tr><th>Model Name</th><th>MAE</th><th>MAPE</th><th>RMSE</th></tr>
<tr><td>Random Forest Regressor</td><td>680.19</td><td>0.10</td><td>1008.96</td></tr>
<tr><td>XGBoost Regressor</td><td>874.26</td><td>0.13</td><td>1256.33</td></tr>
<tr><td>Average Model</td><td>1354.80</td><td>0.46</td><td>1835.14</td></tr>
<tr><td>Linear Regression</td><td>1867.09</td><td>0.29</td><td>2671.05</td></tr>
<tr><td>Lasso</td><td>2198.58</td><td>0.34</td><td>3110.51</td></tr>
</table>

<h2>7. Final Model</h2>

<p align="justify">To decide which would be the final model, a cross-validation was carried out to evaluate the performance of the algorithms in a more robust way. These metrics are represented in the table below.</p>

<table style="width:100%">
<tr><th>Model Name</th><th>MAE</th><th>MAPE</th><th>RMSE</th></tr>
<tr><td>Random Forest Regressor</td><td>837.52 +/- 216.76</td><td>0.12 +/- 0.02</td><td>1254.42 +/- 316.65</td></tr>
<tr><td>XGBoost Regressor</td><td>1069.47 +/- 139.48</td><td>0.15 +/- 0.02</td><td>1523.41 +/- 182.76</td></tr>
<tr><td>Linear Regression</td><td>2081.73 +/- 295.63</td><td>0.3 +/- 0.02</td><td>2952.52 +/- 468.37</td></tr>
<tr><td>Lasso</td><td>2388.68 +/- 398.48</td><td>0.34 +/- 0.01</td><td>3369.37 +/- 567.55</td></tr>
</table>

<p align="justify">The Random Forest model was the best among all the models created. However, XGBoost was chosen to be deployed because it tends to take up less disk space than Random Forest. After choosing which would be the final model, a random search hyperparameter optimization was used to improve the performance of the model. The final model evaluation metrics are in the table below.</p>

<table style="width:100%">
<tr><th>Model Name</th><th>MAE</th><th>MAPE</th><th>RMSE</th></tr>
<tr><td>XGBoost Regressor</td><td>653.39</td><td>0.10</td><td>956.03</td></tr>
</table>

<h2>8. Conclusion</h2>

<p align="justify">The XGBoost prediction model was chosen because it can be trained faster than a Random Forest model using a GPU. The model used in deployment was not the best one, but it is considerably smaller than the others, because it has a smaller number of estimators, and the error metrics are not so distant from the best model. A chat bot that answears the income for the next 6 weeks was also developed to work like a hands on tool. Now, the CEO can have access easily to the income of each store by simple sending a message to the chat bot.</p>

<h2>9. Future Work</h2>

<ul>
<li>Develop some more features to the bot.</li>
<li>Create an options menu to the Telegram Bot.</li>
<li>Develop a model to determine the profit of the next day, month and year.</li>
<li>Improve model prediction capabilities by adding new features.</li>
<li>Search for stores with a high prediction error and find a way to enhance the predition of them.</li>
<li>Try other machine learning algorithms.</li>
</ul>


RDS - database
S3 - bucket
EC2 - cloud computing
