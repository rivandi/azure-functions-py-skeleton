#### Azure Functions + Python Skeleton

##### Why?
Due to some business deal, I use Azure for a client.
I initially handle scheduled works using a VM, which sucks. Months after project kickoff, Azure released Functions.
Functions is like AWS Lambda but in beta and runs on Windows, which is not to my liking.
I need to migrate several bots and I want to do it properly. PowerShell's syntax is weird.

##### Huh?
Automate Python virtualenv and package installation in [Azure Function](https://azure.microsoft.com/en-us/services/functions/).
Place wheels inside whl folder and it will be installed inside virtualenv.
You can find common wheels [here](https://pypi.python.org/pypi) or specially built for Windows [here](http://www.lfd.uci.edu/~gohlke/pythonlibs/)*.
Learn more about binding function.json [here](https://docs.microsoft.com/en-us/azure/azure-functions/functions-triggers-bindings).

##### Issue
Cold - or frozen - start. Sometimes it takes minutes to install a wheel.

This is a work in progress, might not work at all. Will update maybe.

\**seriously this site is great. Really helpful back when I used Windows.*