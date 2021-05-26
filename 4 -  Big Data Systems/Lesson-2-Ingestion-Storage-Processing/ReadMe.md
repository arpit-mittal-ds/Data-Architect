# Notes - Ingestion, Storage, Processing

![image](https://user-images.githubusercontent.com/68102477/119743428-30b9fb00-becd-11eb-86e0-c72d47616001.png)

## Distributed Processing Frameworks

Distributed Processing Tools

Data is stored in a distributed way in HDFS

Need a mechanism to process this data in a distributed way as well

Distributed processing in Hadoop is achieved in MapReduce

MapReduce divides the work into smaller tasks, works on each task independently, and integrate the results

Box Analogy to understand MapReduce conceptually:

Person = Server (or also called a node) in the Hadoop cluster
Boxes = Data
Moving the box from location A to location B = Data processing task
The diagrams below show the difference between a single processor and a distributed processing system. Which one do you think will be able to move the boxes faster?

### Single Node Processing

![image](https://user-images.githubusercontent.com/68102477/119743620-9efebd80-becd-11eb-8486-56593c1d9060.png)


### Distributed Processing

![image](https://user-images.githubusercontent.com/68102477/119743578-88f0fd00-becd-11eb-8363-d356446d60fb.png)


;
