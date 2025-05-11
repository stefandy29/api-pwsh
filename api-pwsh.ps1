param (
    [string]$csv_name
)

if (!$csv_name -eq ""){
		Import-CSV ".\$csv_name" | ForEach-Object {
		$CSVRecord = $_
		$run = $CSVRecord.'RUN'
		$case = $CSVRecord.'case'
		$url = $CSVRecord.'url'
		$header = $CSVRecord.'header'
		$method = $CSVRecord.'method'
		$request = $CSVRecord.'request'
		$headers = Invoke-Expression "@{$header}"

		if (!$run -eq ""){
			if ($request -eq "") {
				$result = curl -Method "$method" -Uri "$url" -Header $headers
			} else {
				$result = curl -Method "$method" -Uri "$url" -Header $headers -Body $request
			}
			Write-Host "#####################----REQUEST-----########################"
			Write-Host "Case Type : $case"
			Write-Host "URL : $url"
			Write-Host "Method : $method"	
			Write-Host "Header: $header"
			Write-Host "Request : $request"
			Write-Host ""
			Write-Host "#####################----RESPONSE----########################"
			Write-Host "Status Code: " $result.StatusCode
			Write-Host "Header: " $result.Headers
			Write-Host "Response: " $result.Content
			Write-Host ""
			Write-Host "-----------------------------------------------------------------------------------------------"
			Write-Host ""
		}
	}
}