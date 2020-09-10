# go/ links

Go links are intuitive, easy-to-remember short links, shared by teams. Also known as go links, golinks, go/links, or go-links.

## What is a Go Link?

A go link is a short keyword that can be entered directly into your browser’s address bar to quickly access company resources. Also known as a golink, go-link, or go/link, it enables large tech companies like Google, Linkedin, Twitter, Square, and many [other companies in Silicon Valley](https://medium.com/@golinks/silicon-valleys-biggest-secret-the-golink-7b42d93bc8c4), to quickly manage and find all of their important links.



## How do Go Links work?

Go links work by storing 2 key pieces of information: a URL and a keyword. The two items are associated in a redirect engine and allow for quick access to URLs in the browser. A user simply needs to enter a keyword after the go/ prefix such as go/meet, and they will be redirected to the associated URL.

## How to install Go Links

There are a few technical implementations that can get go links to work.


### Install go links with a Local Host file


##### install.sh
  ```console

  sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/GoLinks/golinks/golinks/install.sh)"

  ```

### Example of the go links installation script

> [![Installing golinks](https://raw.githubusercontent.com/GoLinks/golinks/golinks/golinks.gif)](https://asciinema.org/a/358811)



  1. Copy and paste the script above into terminal
  2. Click [http://go/links?trackSource=install](http://go/links?trackSource=install) to test installation.

      - If you're prompted to "Create an Account", then installation was successful.
  3. Enter your company email that you plan to share links with.

      - Golinks will be shared between you and your coworkers, so be sure to use your company email to access shared resources.
  4. [Click here to create your first go/link](http://go/?action=create&create-name=new&create-url=https://docs.google.com/document/create?title={*}&create-description=Create%20a%20new%20doc%20with%20a%20title,%20just%20type%20in%20go/new/My%20Notes)

### Install Company-Wide Go links:

Go links are most useful when shared with a company network. You can install go links for an entire company network using an internal DNS. Whenever anyone on the network or on the company VPN accesses http://go/links it will resolve for them as well.

1. Open your internal DNS Settings
    - Windows server: https://docs.microsoft.com/en-us/windows-server/networking/technologies/ipam/add-a-dns-resource-record
2. Navigate to "add a record":
3. Add an A Record.
4. Fill in the inputs:
    - Name: go
    - IP: 52.72.13.96
5. Visit [http://go/links?trackSource=install](http://go/links?trackSource=install) to test installation.
    - If you're prompted to "Create an Account", then installation was successful
6. [Click here to create the golink "go/new"](http://go/?action=create&create-name=new&create-url=https://docs.google.com/document/create?title={*}&create-description=Create%20a%20new%20doc%20with%20a%20title,%20just%20type%20in%20go/new/My%20Notes)

### Debugging
These are common issues you may run into when installing.

#### I received a sad browser error page
![Sad golinks browser error](https://raw.githubusercontent.com/GoLinks/golinks/golinks/error.png)
```
This site can’t be reached
go’s server IP address could not be found.
DNS_PROBE_FINISHED_NXDOMAIN
ERR_NAME_NOT_RESOLVED
```
If you run into this error, you'll need to reinstall golinks. Run the above command again to reinstall golinks.

### Frequently Asked Questions

Some of the most commonly asked questions with golinks.

#### How do you use Go Links?

> Once golinks is installed, simply type into your browser “go/” followed by a keyword. For example, if you’ve already created go/meet to point to a Google Doc about a new hire, simply type in go/meet into the address bar, or navigate to http://go/meet

#### How do I create a Go Link?
> Once you’ve installed go links on your computer, simply navigate to http://go/ and then navigate the UI to create a golink.

#### How do you make a Go Link?
> Navigate to http://go/ and then click on the “Create Golink” button. Enter in the URL, the name, and any other information that will be helpful for those using the golink.

#### What is a GO URL?
> A go URL is also a reference to a golink. Sometimes go links are also referred to as go URLs. The two terms can be used interchangeably.

#### What happened to Google’s URL shortener?
> Google’s URL shortening service known as g.co or goo.gl, is no longer available to the public. The project was deprecated on March 30, 2019.

> If you were using g.co to manage your companies links, you can easily transition to using go-links.
