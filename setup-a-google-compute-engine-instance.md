# Setup Your First Google Compute Engine Instance

In order to run RStudio and Shiny in the cloud, the first thing we need to do is setup your first f1-micro instance on Google Cloud. Now that we've signed up for a trial and installed the Google Cloud SDK, we should be ready to rock and roll.

You can set up your first instance by running the following command from terminal:

```
gcloud compute instances create r-studio \
  --image debian-8-jessie-v20170426 \
  --zone us-central1-a \
```

Let's walk through what this does. This command uses the gcloud compute instances SDK to create a VM called _**r-studio**_ on your account. It's going to use Google's predefined debian image running a stable version of Jessie. Depending on your location, you might want to set your _**zone**_ to a different region. If you're in the United States, _**central1-a**_ will be fine.

## SSH Into Your Instance

Once your instance is setup and running you can ssh in by invoking 

`gcloud compute ssh r-studio` 

from your terminal window. Your newly created VM is headless meaning there is no GUI like what you're currently using on your computer. Until RStudio is setup, everything will be done through the command-line. If you're not familiar with the command line, you should take some time to familiarize yourself with it, because you'll be using it a lot!

Once your connected to your machine, you should take some time to see how everything is laid out.

## Add Docker & Compose

Once you've ssh'd into your instance, you'll want to add Docker and Docker compose.

First Let's install the necessary components to get and install docker:

```
sudo apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common
```

Next let's add Docker's official GPG Key with: 

`curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -` 

and verify it with 

`sudo apt-key fingerprint 0EBFCD88` .

Now we're ready to install Docker with the following command:

```
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/debian \
    $(lsb_release -cs) \
    stable"
```

After running this command, you should be ready to install Docker Compose:

    curl -L \
        https://github.com/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m` \
        > /usr/local/bin/docker-compose

## Add Git

For the moment, we won't be using `git` to commit our images or work, but you can set it up in the future to do just that. Right now we'll just be using `git` to install files from github. You can add `git` by running the following command:

`sudo apt-get install git-core`.

