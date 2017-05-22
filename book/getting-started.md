# Prerequisites {#getting-started}

Before getting started, I will be making the assumption that you are already familiar with using `R` and are comfortable with using the command line of your computer. These commands work with Mac and Linux computers, as well as [Google Cloud Shell](https://cloud.google.com/shell/docs/). If you're on a PC, I recommend you use Google Cloud's web interface and `cloud shell` for this project.

## Sign Up For Your Free Trial

The first thing that you'll want to do is use your current gmail address to sign up for a [free trial of Google Cloud Platform here.](https://console.cloud.google.com/freetrial) The interesting thing is that if you use Google Cloud right, you can have a permanent instance running on Google Cloud forever. Let me show you how.  

The free trial is for new gmail/G Suite accounts that have previously not signed up for a Google Cloud Platform account. With your free trail, you'll also get $300 in credit to try different tools, but you will have to enter your billing information if your account runs over its limits.

For this project, we will be using an `f1 micro instance` Google compute engine VM. Let's take a look:

| Description | Virtual CPUs | Memory \(GB\) | Max persistent disks | Max total PD size |
| :--- | :--- | :--- | :--- | :--- |
| `f1-micro` | Micro machine type with 0.2 virtual CPU, 0.60 GB of memory, backed by a shared physical core. | .60 | 4 PDs | 3 TB |

This `f1-micro` instance is great if you need to do some light data analysis and want to display your results using Shiny. For any type of computationally heavy analysis in `R`, you're probably going to want to use a different compute engine instance.

## Install Google Cloud SDK

Once you've signed up for your free trial, the next thing you'll want to do is install the Google Cloud SDK on your local machine. [You can download the SDK for your machine here](https://cloud.google.com/sdk/downloads). 

Alternatively, if you want to use the `terminal`on your mac, you can start by opening terminal. You should make note of where you current are on your computer. You can get your present working directory by typing `pwd` into your terminal. This is where you'll be installing the Cloud SDK. At the prompt, you can type `curl https://sdk.cloud.google.com | bash` and your computer will begin to download the SDK. Follow the prompts as the system installs the program. Then you can restart your shell with `exec -l $SHELL` and then intialize the Cloud SDK with `gcloud init` and enter in your information.

The `gcloud` SDK is awesome because it lets you interact with all of the Google Cloud components through the command line.

