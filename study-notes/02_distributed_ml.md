# Distributed Machine Learning <p id="distributed_ml"></p>

<a href="https://github.com/KattsonBastos/ml-with-spark#contents">Back to Contents</a>

This section follows [this article](https://learn.microsoft.com/en-us/azure/machine-learning/concept-distributed-training) by Microsoft Learn.

<p align="justify">
&ensp;&ensp;&ensp;&ensp;In the same way as in the distributed data processing, the training in the Distributed Machine Learning occurs in a similar way: a multi-node ML system where all worker nodes wors in parallel to increase the performance, accuracy, and to bring scalling to model training given large input sizes of data.
</p>

<p align="justify">
&ensp;&ensp;&ensp;&ensp;Even though it can be used for traditional Machine Learning, the main advantage of a system like that comes when we have to deal with a more complex task, such as training a complex Deep Learning model with a huge number of parameters, and too big datasets that require more machine memory to be loaded.
</p>

<p align="justify">
&ensp;&ensp;&ensp;&ensp;In this way, there are two main approaches to deal with those complex tasks: <strong>Data Parallelism</strong> and <strong>Model Parallelism</strong>.
</p>

---
## Data Parallelism<p id="02_dp"></p>

<p align="justify">
&ensp;&ensp;&ensp;&ensp;<strong>Problem Statement</strong>: sometimes, we have to train our models in batches, since we don't have enough memory to load a large number of data points. Besides that, depending on our GPU memory, that number has to be small. The problem is that, with a small number of data points, our model may take so much longer to converge or even worse: we end up with an inaccurate model.
</p>

<p align="justify">
&ensp;&ensp;&ensp;&ensp;So, a common way to overcome that problem is to divide the data into partitions (batches) to be run in each node of the cluster.
Once the model is also copied to each node, it can be updated based on their errors in its respective training data.
</p>

<p align="justify">
&ensp;&ensp;&ensp;&ensp;But there is more: the worker nodes work in sync so they can also update their models based on each other, and then they end up with a consistent trained model.
</p>


## Model Parallelism<p id="02_mp"></p>

<p align="justify">
&ensp;&ensp;&ensp;&ensp;<strong>Problem Statement</strong>: sometimes the size of the dataset is not the big problem, but the model's complexity: it has too many layers and parameters that it cannot be fit in memory along with the data.
</p>

<p align="justify">
&ensp;&ensp;&ensp;&ensp;The solution then is to segment our model into different pieces in way the number of parameters in each node's model is reduced. The main difference from this approach to the data parallelism is that here the data used by each model's piece <strong> is the same</strong>. At the end, each piece of model only sync the shared params.
</p>