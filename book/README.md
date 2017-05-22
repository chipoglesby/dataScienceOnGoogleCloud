# Running RStudio and Shiny on Google Cloud Platform

This project will walk you through setting up a Google Compute Engine VM  
and running encrypted versions of RStudio and Shiny on Google Cloud.

My attempt is to do most of the heavy lifting for you so you can get  
straight to the data analysis.

## The Goal

The goal of this project is to show data scientist how easy it is to get a project up and running on the Google Cloud Platform using various different technologies. The different pieces of technology include:

* RStudio
* Shiny Sever
* Google Cloud Platform
  * Google BigQuery
  * Google Compute Engine
* Docker
  * Docker Hub
  * Docker Compose
* NGINX
* Let's Encrypt
  * SSL Certificates
* Git/Github

By the end of this project, you will have set up a Google VM running Rstudio & Shiny that you can use for online data analysis, a Google BigQuery dataset that you can use to store & analyze your data, and a website where you can host all of your information. My desire for this project is to teach you fun new ways of using different technologies to help increase your skill set as a data scientist.

## Why

Could based computing power is now cheaper than ever. Instead of your data analysis being locked to your computer you can free yourself from those restraints by moving to the cloud. Google has made great strides in their cloud based technology and this project will utilize lots of those. 

On March 9, 2017 at Google Next, [Google announced their new "free tier"](https://cloudplatform.googleblog.com/2017/03/Google-Cloud-Platform-your-Next-home-in-the-cloud.html). From their release: 

> [Then there’s our improved Free Tier. First, we’ve extended the free trial from 60 days to 12 months, allowing you to use your $300 credit across all GCP services and APIs, at your own pace and on your own schedule. Second, we’re introducing new Always Free products — non-expiring usage limits that you can use to test and develop applications at no cost. New additions include Compute Engine, Cloud Pub/Sub, Google Cloud Storage and Cloud Functions, bringing the number of Always Free products up to 15, and broadening the horizons for developers getting started on GCP.](https://cloud.google.com/free/)

Then, on May 17, 2017 at Google I/O, [Google announced their free tier for Google BigQuery](https://cloud.google.com/blog/big-data/2017/05/try-google-bigquery-today-now-with-10gb-of-free-storage): That means:

* BigQuery Data loading: free
* First 10GB storage: free
* First 1TB processing: free

That's huge!



