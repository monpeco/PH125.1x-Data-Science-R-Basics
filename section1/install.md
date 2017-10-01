# Steps to install R

### Step 1
sudo sh -c 'echo "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list'

### Step 2
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9

    gpg: requesting key E084DAB9 from hkp server keyserver.ubuntu.com
    gpg: key E084DAB9: public key "Michael Rutter <marutter@gmail.com>" imported
    gpg: Total number processed: 1
    gpg:               imported: 1  (RSA: 1)

### Step 3
gpg -a --export E084DAB9 | sudo apt-key add -

    OK

### Step 4
sudo apt-get update

    Get:1 http://security.ubuntu.com trusty-security InRelease [65.9 kB]
    Ign http://downloads-distro.mongodb.org dist InRelease                         
    Ign http://cran.rstudio.com trusty/ InRelease                                  
    Get:2 http://cran.rstudio.com trusty/ Release.gpg [473 B]  
    ...
    
### Step 5
sudo apt-get -y install r-base

    Reading package lists... Done
    Building dependency tree       
    Reading state information... Done
    ...

### Step 6
R

    R version 3.4.2 (2017-09-28) -- "Short Summer"
    Copyright (C) 2017 The R Foundation for Statistical Computing
    Platform: x86_64-pc-linux-gnu (64-bit)

### Step 7
    
    q(save="no")

**Source:**
https://www.digitalocean.com/community/tutorials/how-to-set-up-r-on-ubuntu-14-04