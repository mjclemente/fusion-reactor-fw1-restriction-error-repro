<h1>Main</h1>
<cfoutput>
  <ul>
    <li><a target="_blank" href="http://127.0.0.1:8088/fusionreactor/findex.htm?p=login">Click here to log into FusionReactor</a> with the password: <em>fusionreactor</em></li>
    <li>Configure your email settings, so that you receive alerts</li>
    <li>Review the Crash Protection Restrictions. They are meant to stop alerts for requests to <em>/api/ai/parse_legacy</em></li>
    <li><a href="#buildCustomURL('/api/ai/parse_legacy')#">Click this link to trigger the long running request</a></li>
    <li>Unexpectedly, despite the restrictions, the email is still being sent.</li>
  </ul>
</cfoutput>
