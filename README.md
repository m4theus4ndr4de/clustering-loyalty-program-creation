<img src="images/loyalty_program.png" alt="logo" style="zoom:100%;" />

<h1>Loyalty Program Criation</h1>

<p align="justify">This is a fictional project for studying purposes. The business context and the insights are not real. 
The dataset is available on <a href="https://www.kaggle.com/code/cheekonglim/uk-high-value-customers-identification/notebook" target="_blank">Kaggle</a>.</p>

<h2>1. Description of the Business Problem</h2>

<p align="justify">The business leaders of an e-commerce company concluded that a good strategy to leverage sales is to create a loyalty program for their customers. So, the business team asked the data scientists to select the most valuable customers for the company Recency, frequency and monetary aspects were considered by the business team as the main characterists to evaluate the customers in clusters.</p>

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
<li>Prepare the data to be used by the modeling algorithms encoding variables, splitting train and test dataset and other necessary operations.</li>
<li>Create the models using machine learning algorithms.</li>
<li>Evaluate the created models to find the one that best fits to the problem.</li>
<li>Tune the model to achieve a better performance.</li>
<li>Explore the data to create hypothesis, think about a few insights and validate them.</li>
<li>Deploy the model in production so that it is available to the user.</li>
<li>Find possible improvements to be explored in the future.</li>
</ol>

<h2>5. The Insights</h2>

<p><b>I1:</b> The customers of the loyalty program have a purchase volume (products) above 10% of the total purchases.</p>
<p><b>True:</b> The loyalty program cluster has 34% of the total products purchased.</p>
<p><b>I2:</b> The customers of the loyalty program have a volume (revenue) of purchases above 10% of the total purchases.</p>
<p><b>True:</b> The loyalty program cluster has 46% of the total profit.</p>
<p><b>I3:</b> Loyalty program customers have a lower number of returns than the average of the other customers.</p>
<p><b>False:</b> Loyalty program cluster has an average quantity of retuns above the average of the other customers.</p>
<p><b>I4:</b> The median billing by loyalty program customers is 10% higher than the median billing overall.</p>
<p><b>True:</b> The median of the profit from the loyalty program cluster is 215% above the overall median.</p>
<p><b>I5:</b> Loyalty program customers are on the third quantile.</p>
<p><b>False:</b> They are mostly in the first quantile.</p>

<h2>6. Machine Learning Modeling</h2>

<p align="justify">The final result of this project is a clustering model. A few dimensionality reduction algorithms, like PCA (Principal COmponent Analysis), UMAP (Uniform Manifold Approximation and Projection) and t-SNE (Distributed Stochastic Neighbor Embedding) were used to create embedding spaces as alternatives for the features space. Some machine learning modelling algorithms were also used as options to find the best possible model. In all, 3 types of model were created, k-Means, GMM (Gaussian MNixture Model) and HC (Hierarchical Clustering).</p>

<p align="justify"></p>

<table style="width:100%">
<tr><th>Model Name</th><th></th><th></th><th></th></tr>
<tr><th></th><th></th><th></th><th></th></tr>
<tr><th></th><th></th><th></th><th></th></tr>
<tr><th></th><th></th><th></th><th></th></tr>
</table>

<h2>7. Final Model</h2>

<p align="justify">To decide which would be the final model, a cross-validation was carried out to evaluate the performance of the algorithms in a more robust way. These metrics are represented in the table below.</p>

<table style="width:100%">
<tr><th>Model Name</th><th></th><th></th><th></th></tr>
<tr><th></th><th></th><th></th><th></th></tr>
<tr><th></th><th></th><th></th><th></th></tr>
<tr><th></th><th></th><th></th><th></th></tr>
</table>

<p align="justify"></p>

<table style="width:100%">
<tr><th>Model Name</th><th>MAE</th><th>MAPE</th><th>RMSE</th></tr>
<tr><th></th><th></th><th></th><th></th></tr>
</table>

<h2>8. Conclusion</h2>

<p align="justify"></p>

<h2>9. Future Work</h2>

<ul>
<li></li>
<li></li>
<li></li>
<li></li>
</ul>
