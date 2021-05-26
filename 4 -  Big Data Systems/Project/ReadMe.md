# Project: Designing an Enterprise Data Lake

![image](https://user-images.githubusercontent.com/68102477/119403426-a8e3bd80-bd21-11eb-9979-3566ec2e8944.png)

Medical Data Processing Company, based out of San Francisco, specializes in processing various types of EMR (Electronic Medical Records) and provides real-time insights to various medical facilities. These data insights are used by their customers to stay compliant with laws, track patient health metrics, admit discharge records, and bed availability. This service is used by about 8000 individual medical care facilities, including Urgent Care (UC), hospitals, nursing homes, emergency rooms, and critical care units.

The company has experienced hyper growth over the past 3 years. However, as the volume of data continues to grow, the existing infrastructure has not been able to scale. The company has made every type of optimization, configuration changes, and hardware updates, but it has not helped significantly in terms of performance and scale.

Last week, there was a surge in data, during the nightly ETL process, the database server crashed and the whole system was offline for several hours. The CTO has hired you to evaluate if building a Data Lake makes sense to solve the company’s challenges. You are expected to provide a detailed Data Lake design and rationale behind your design decisions.

## There are 4 deliverables in this project.
Data Lake Solution Architecture Diagram
Data Lake Architecture Design Template
A Powerpoint presentation targeted for CXO level audience showcasing Data Lake Value Proposition
A ~8 minute video recording of your presentation, to the executive leadership of the company, of the Data Lake Value Proposition using the presentation from deliverable #3

## Step-by-step instructions:
As a Data Architect, your first step of this project is to analyze the use case presented in the company profile and problem statement. This file, CompanyProfile-ProblemStatement(located under Supporting Materials at the bottom of the screen) includes an in-depth description of the company, a visual of the current architecture, a detailed look at the problem they are facing, and of course the business and technical requirements.

![image](https://user-images.githubusercontent.com/68102477/119405108-1c86ca00-bd24-11eb-9ffa-7573f53e4ec6.png)

### First Deliverable: 
Based on the analysis of problem statement and business requirements, using [diagrams.net] (https://www.diagrams.net/) (or other preferred diagramming software) **create a detailed end-to-end architecture diagram showing the following aspects:**

**Ingestion layer** - **how do you plan to ingest** different types of data?
**Storage layer** - how do you store large amounts of data. Where and how would you leverage NoSQL databases?
**Processing layer** - how would you process large amounts of data at scale. What tools would you use? Why?
**Serving layer** - how do you plan to serve the data for various applications such as ML, Reports, Visualization

Save this file in PDF format with name, DataLakeSolutionArchitectureDiagram.PDF

### Second Deliverable part1: 
Using the DataLakeArchitectureDesign.docxtemplate (located under Supporting Materials at the bottom of the screen), under question #5 in the template, embed the diagram you created in the previous step. Please note that the audience of this artifact is a highly technical group of people including enterprise architects, software engineers, and technical directors.

### Second Deliverable part2: 
Populate all remaining sections of your DataLakeArchitectureDesign-Starter.docx template. Note: Students are encouraged to provide additional information in the document as needed. This document is for a technical audience who is interested in your design ideas and decisions at a deep level. Research and deeply describe your architecture, provide a rationale for design decisions, and describe how your proposed design can solve the challenges of the company. Clearly state your assumptions in the documentation or potential risks to your design. Feel free to use cloud-native tools in your solution. and ensure technical correctness of the entire document. If some tools are considered but ultimately rejected, the rejection rationale should be technically valid as well.

### Third Deliverable: 

Using the provided Powerpoint template, DataLakeExecutivePresentation.pptx (located under Supporting Materials at the bottom of the screen), **create a presentation showcasing the value proposition of the Data Lake.** 

Please note that the audience of this presentation is non-technical executives and business leaders of the company. Avoid focusing on too-technical jargon in the presentation, but instead, focus on the “why” aspect of Data Lake. Avoid using specific tool names in the summary slides either. Remember your audience might be hearing those tools for the first time. Focus on what those tools can accomplish. 

For example: Why is a data lake important? What business value does it bring? What problems can it solve? Additional guidance is provided in the template; you do not have to use exact sections or wording as provided, nor do you have to use the slides in any specific order. Be creative and craft the message in your own ways in order to make it visually appealing and easy to understand for this audience. You will actually present this Powerpoint presentation in the next step, where you can elaborate on your slide content.

### Fourth Deliverable: 

The ability for you to present a technical presentation to a non-technical audience in a clear and concise method is vitally important for any professionals in Big Data.

Using the slide presentation you created in the previous step, **create a video of your actual presentation**. 

Please note that the audience of this video presentation is the same as step 5: non-technical executive leadership of the company. 

Use screen + audio recording software of your choice to create the video no longer than 7 minutes in timed length. Your goal is to present your research and solution to the leadership team in order to convince them to embrace your proposed Data Lake design. 

Provide clear, concise explanations of your slides, sequence the information in a logical flow, expand on any needed areas, and present effectively. You will want to explain the relevance of any images or graphics to explain and be prepared to summarize any theoretical concept(s) OR code demos you are using. 

Export your video in MP4 or MOV format to a file called DataLakeExecutivePresentation-Video.MP4. 

As you present, Do not read the content of the slides word-for-word during the video recording. You are expected to articulate and elaborate on the information presented in your slides in order to present an engaging and effective presentation. 

Remember: Your goal is to convince the audience to adopt and agree to the solution you are proposing.

