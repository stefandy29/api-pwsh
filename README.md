# api-pwsh
api-pwsh is a api client written in powershell. Required csv file.

I had a customer who was testing so many api and, we're using postman. But, it seems like too tedious since we're testing api one by one and wasting so much time changing the url, body, header etc. We're using Windows, so I built a powershell script to test api easily.

## Usage
```
.\api-pwsh.ps1 -csv_name .\example.csv
```


<h2 id="example">Example.csv</h3>
<table>
<thead>
<tr>
<th>Name</th>
<th>Description</th>
<th>Value Example</th>
<th>Required</th>
</tr>
</thead>
<tbody><tr>
<td>run</td>
<td>Running test case, value empty mean this row is skipped.</td>
<td>RUN</td>
<td>No</td>
</tr>
<tr>
<td>case</td>
<td>Test case name</td>
<td>CREATE USER</td>
<td>No</td>
</tr>
<tr>
<td>url</td>
<td>API Destination URL</td>
<td>https://mocktarget.apigee.net/echo</td>
<td>Yes</td>
</tr>
<tr>
<td>method</td>
<td>API Method</td>
<td>POST</td>
<td>Yes</td>
</tr>
<tr>
<td>request</td>
<td>API Request Body</td>
<td>{"name": "morpheus","job": "leader"}</td>
<td>No</td>
</tr>
</tbody></table>

## Screenshot

![](/image/pwsh.jpg "")
