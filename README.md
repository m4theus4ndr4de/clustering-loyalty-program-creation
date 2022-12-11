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
<li>Stock codes with letters, like POST, D, PADS, were discarded because it is not possible to know exactly what they mean.</li>
<li>Unit prices lower than 0.04 were not considered because they seem to be wrong.</li>
<li>Customers with that return almost every purchase they make cannot be considered.</li>
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

<p align="justify">The final result of this project is a clustering model. Some dimensionality reduction algorithms, like PCA (Principal COmponent Analysis), UMAP (Uniform Manifold Approximation and Projection) and t-SNE (Distributed Stochastic Neighbor Embedding) were used to create embedding spaces as alternatives for the features space. Some machine learning modelling algorithms were also used as options to find the best possible model. In all, 3 types of models were created, k-Means, GMM (Gaussian MNixture Model) and HC (Hierarchical Clustering). The table below presents some of the models created, the embedding algorithm used to create the model, the number os clusters and the silhouette score.</p>

<p align="justify"></p>

<table style="width:100%">
<tr><th>Model Name</th><th>Space Creation</th><th>Nº CLusters</th><th>Silhouette Score</th></tr>
<tr><th>k-Means</th><th>Features</th><th>2</th><th>0.69</th></tr>
<tr><th>GMM</th><th>Features</th><th>2</th><th>-0.01</th></tr>
<tr><th>HC</th><th>Features</th><th>2</th><th>0.65</th></tr>
<tr><th>k-Means</th><th>UMAP</th><th>15</th><th>0.56</th></tr>
<tr><th>GMM</th><th>UMAP</th><th>14</th><th>0.47</th></tr>
<tr><th>HC</th><th>UMAP</th><th>15</th><th>0.54</th></tr>
<tr><th>k-Means</th><th>t-SNE</th><th>13</th><th>0.45</th></tr>
<tr><th>GMM</th><th>t-SNE</th><th>13</th><th>0.36</th></tr>
<tr><th>HC</th><th>t-SNE</th><th>12</th><th>0.42</th></tr>
<tr><th>k-Means</th><th>Tree Embedding Space</th><th>15</th><th>0.48</th></tr>
<tr><th>GMM</th><th>Tree Embedding Space</th><th>2</th><th>0.43</th></tr>
<tr><th>HC</th><th>Tree Embedding Space</th><th>15</th><th>0.48</th></tr>
</table>

<h2>7. Final Model</h2>

<p align="justify">The final model was chosen based on the number of clusrters that the business team chose considering the silhouette scores. The final model characteristcs are presented in the table below.</p>

<table style="width:100%">
<tr><th>Model Name</th><th>Space Creation</th><th>Nº CLusters</th><th>Silhouette Score</th></tr>
<tr><th>k-Means</th><th>UMAP</th><th>11</th><th>0.52</th></tr>
</table>

<p align="justify">The number of cluusters the business team belives to be the best is eleven. It is a good number because the silhouette score is one of the highest values found considering all the models created and the number of clusters is not high. The clusters profile with their average metrics are presented in the table below.</p>

<table style="width:100%">
<tr><th>Cluster Number</th><th>Number of Customers</th><th>Customers Percentage</th><th>Gross Revenue</th><th>Recency</th><th>Products Purchased</th><th>Frequency</th><th>Returns</th></tr>
<tr><th>0</th><th>755</th><th>13.3</th><th>6260.09</th><th>11.7</th><th>241.9</th><th>0.05</th><th>76.6</th></tr>
<tr><th>1</th><th>383</th><th>6.7</th><th>2663.62</th><th>4.2</th><th>175.5</th><th>0.14</th><th>17.5</th></tr>
<tr><th>2</th><th>836</th><th>14.7</th><th>1705.62</th><th>36.6</th><th>98.1</th><th>0.04</th><th>16.7</th></tr>
<tr><th>3</th><th>392</th><th>6.9</th><th>1164.39</th><th>100.2</th><th>61.8</th><th>0.19</th><th>8.4</th></tr>
<tr><th>4</th><th>429</th><th>7.5</th><th>1028.46</th><th>290.7</th><th>59.7</th><th>0.63</th><th>202.2</th></tr>
<tr><th>5</th><th>277</th><th>4.9</th><th>906.62</th><th>362.6</th><th>65.1</th><th>1.05</th><th>2.5</th></tr>
<tr><th>6</th><th>586</th><th>10.3</th><th>861.55</th><th>35.1</th><th>44.7</th><th>0.71</th><th>3.5</th></tr>
<tr><th>7</th><th>595</th><th>10.4</th><th>774.43</th><th>135.1</th><th>65.1</th><th>0.77</th><th>3.7</th></tr>
<tr><th>8</th><th>391</th><th>6.9</th><th>647.62</th><th>199.1</th><th>47.2</th><th>1.02</th><th>2.4</th></tr>
<tr><th>9</th><th>408</th><th>7.2</th><th>606.15</th><th>56.2</th><th>46.1</th><th>1.07</th><th>6.6</th></tr>
<tr><th>10</th><th>643</th><th>11.3</th><th>492.88</th><th>246.8</th><th>39.6</th><th>1.02</th><th>1.6</th></tr>
</table>

<h2>8. Conclusion</h2>

<p align="justify">Several models were created to meet the demand of the business team. FInally, it was possible to find a model that satisfied the data and business teams simultaneously. The features created in the beginning of the modeling process were effective to separate the customers in cluesters and find the cluster with the most valuable customers. The model can now be used by the business team to find the right marketing strategy for each customer according to the group they belong to and achieve higher profit.</p>

<h2>9. Future Work</h2>

<ul>
<li>Try other clustering modeling algorithms.</li>
<li>Try other embedding spaces with more than 2 components.</li>
</ul>
