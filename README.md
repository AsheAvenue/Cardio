![Cardio](/public/img/logo.png)

An easy-to-configure beautiful dashboard for embedded server graphs, performance indicators, and status doohickies. Cardio can be used on a desktop browser or as a full-screen app on a NOC wall monitor, or even on a tablet. It lets you show multiple levels of charts/graphs for each of your properties, and investigate status at high and low levels, according to your configurations.

![Client](/public/img/Client.png)

![Children](/public/img/Children.png)

Installation
--
Start by cloning or forking this repo. Cardio is a Rails 4 app that eschews a database in favor of a simple configuration file. At present Cardio supports generic iframes and New Relic embed codes, but pull requests containing other embed types will be appreciated.

Copy the example config file:

    $ cp config/settings.yml.example config/settings.yml

Now get to editing the config:  

    auth:
      enabled: true
      username: <Cardio username>
      password: <Cardio password>
    loop:
      enabled: true
      seconds: 15
    pods:
      <client key>:
        type: <chart|map|time|schedule>
        name: <client name>
        summary: 
          type: newrelic
          code: <New Relic Application embed code>
        links:
          newrelic:
            name: New Relic
            url: <New Relic URL>
        children:
          web 1:
            name: Web 1
            type: newrelic
            code: <New Relic Server embed code>
          web 2:
            name: Web 2 
            type: newrelic
            code: <New Relic Server embed code>
          web 3:
            name: Web 3
            type: newrelic
            code: <New Relic Server embed code>
          web 4:
            name: Web 4
            type: newrelic
            code: <New Relic Server embed code>
      <client key>:
        name: <client name>
        summary: 
          type: newrelic
          code: <New Relic Application embed code>
        links:
          newrelic:
            name: New Relic
            url: <New Relic URL>
        children:
          web 1:
            name: Web 1
            type: newrelic
            code: <New Relic Server embed code>
          web 2:
            name: Web 2 
            type: newrelic
            code: <New Relic Server embed code>
          web 3:
            name: Web 3
            type: newrelic
            code: <New Relic Server embed code>

Note the use of terms like "Server embed code" and "Application embed code". In the case of New Relic, mousing over any graph will produce an "Embed" link, and clicking that link will pop up a dialog providing you a URL similar to this:

    <iframe src="https://rpm.newrelic.com/public/charts/xxxxxxxxxxxxxxx" width="500" height="300" scrolling="no" frameborder="no"></iframe>

The portion at the end of the URL is what Cardio refers to as an "embed code." Log in to New Relic and grab your embed codes, then add them to the config in the summary or children code spaces.

Acknowledgements + Legal
--
© 2013 <a href="http://www.asheavenue.com">Ashe Avenue</a>. Created by <a href="http://twitter.com/timboisvert">Tim Boisvert</a> and <a href="http://twitter.com/john2496">John Himmelman</a>.
<br />
Cardio is released under the MIT license.