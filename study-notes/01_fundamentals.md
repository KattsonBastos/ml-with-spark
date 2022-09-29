# Fundamental Concepts <p id="fundamentals"></p>

<a href="https://github.com/KattsonBastos/ml-with-spark#contents">Back to Contents</a>

## Distributed Data Processing - What, Why, and How?<p id="01_distributed"></p>

<p align="justify">
&ensp;&ensp;&ensp;&ensp;Distributed Data Processing means we're going to process our data (massive data) in several nodes of a cluster, that is, in a lot of machines/containers.
</p>

*<span style="color:#ECB275">(## TODO)</span>*

## What Spark is?<p id="01_what_is"></p>
<p align="justify">
&ensp;&ensp;&ensp;&ensp;Spark is an open-source platform for distributed data processing. Since it executes data in-memory, it is much more efficient in terms of speed than other platforms, such as Hadoop.
</p>

<p align="justify">
&ensp;&ensp;&ensp;&ensp;Since Spark has access to the entire cluster, it can access data from HDFS and Hive tables.
</p>

<p align="justify">
&ensp;&ensp;&ensp;&ensp;As shown later, the recent Spark versions can work both with batch and streaming data.
</p>

## What can Spark do? - Spark Components<p id="01_components"></p>
<img src="../images/spark_tools.png" alt="drawing" width="100%"/>

<p align="justify">
&ensp;&ensp;&ensp;&ensp;Spark has an underlying execution engine that supports all the other functionalities. That engine is the core of Spark. It works mainly with RDDs and it's used for ETL and batch processing.
</p>

<p align="justify">
&ensp;&ensp;&ensp;&ensp;However, sometimes we don't to work in so a low level. That's where the other modules (Spark Extensions) come in:
</p>

- **Spark SQL**: a tool for structured or semi-structured database's queries;
- **Spark Streaming**: real-time streaming data processing;
- **MLlib**: a wide libraryfor Machine Learning that contains many of the main ML algorithms for clustering, classification, regression, and model's evaluation;
- **GraphX**: a library for graph databases manipulation. 


## Spark's Data Representation<p id="01_data_structure"></p>

<img src="../images/data_structures.png" alt="drawing" width="100%"/>

Spark works with the three following data representations:

- **Resilient Distributed Datasets (RDD)**: the fundamental data structure in Spark. It's a distributed collection of objects in the cluster 
- **Dataframes**: it's very similar to relational databases tables. That is, data organized in columns. It works with a variaty of data formats, such as *JSON*, *CSV*, and *HDFS*; 
- **Datasets**: it's an extension of the Dataframe with a bit more features -> Object Oriented Programming (OOP) and type-faced interface, which means the compile will validate the data types of each column. 