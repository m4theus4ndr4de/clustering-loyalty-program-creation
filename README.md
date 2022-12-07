<img src="images/loyalty_program.png" alt="logo" style="zoom:100%;" />

<h1>Loyalty Program Criation</h1>

<p align="justify">This is a fictional project for studying purposes. The business context and the insights are not real. 
The dataset is available on <a href="https://www.kaggle.com/code/cheekonglim/uk-high-value-customers-identification/notebook" target="_blank">Kaggle</a>.</p>

<h2>1. Description of the Business Problem</h2>

<p align="justify">Os líderes do time de negócio de uma empresa de e-commerce concluiu que uma boa estratégia para alavancar as vendas é a criação de um programa de fidelidade para seus clientes. Então, solicitaram para o time de dados que eles selecionassem os clientes mais valiosos para a empresa buscando avaliar recency, frequency and monetary aspects.</p>

<h3>The tools that were created:</h3>

<p align="justify"><b>Machine Learning Clustering Model: </b>Using the dataset from <a href="https://www.kaggle.com/code/cheekonglim/uk-high-value-customers-identification/notebook" target="_blank">Kaggle</a>, a machine learning clustering model was created to be used for client clustering using the dataset and also for the identification of future clients clusters.</p> The notebook used to create the model is available <a href="https://github.com/m4theus4ndr4de/clustering-loyalty-program-creation/blob/main/notebooks/clustering_c8.ipynb" target="_blank">here</a>.</p>

<h2>2. Dataset Attributes</h2>

<table style="width:100%">
<tr><th>Attribute</th><th>Description</th></tr>
<tr><td>InvoiceNo</td><td>Number of purchase invoice.</td></tr>
<tr><td>StockCode</td><td>Code of the stock the object comes from.</td></tr>
<tr><td>Description</td><td>Description of the item purchased.</td></tr>
<tr><td>Quantity</td><td>Quantity of the item purchased.</td></tr>
<tr><td>InvoiceDate</td><td>Date of the invoice.</td></tr>
<tr><td>UnitPrice</td><td>Price of one item of the object purchased.</td></tr>
<tr><td>CustomerID</td><td>Identification number of the client responsible for the purchase.</td></tr>
<tr><td>Country</td><td>The country the purchase comes from.</td></tr>
</table>

<h2>3. Business Premises</h2>

<h3>The premises that were assumed for the development of the business problem solution are:</h3>

<ul>
<li></li>
<li></li>
<li></li>
</ul>

<h2>4. Solution Strategy</h2>

<ol>
<li>Understand the Business problem.</li>
<li>Download the dataset.</li>
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
