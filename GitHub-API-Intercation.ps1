$Token = 'sanjitmisra:'
$Base64Token = [System.Convert]::ToBase64String([char[]]$Token);

$Headers = @{
            Authorization = 'Basic {0}' -f $Base64Token;
        };
$Body = @{
    bio = 'Wandering the wonderland of wonderful code!-!';
} | ConvertTo-Json

Invoke-RestMethod -Headers $Headers -Uri https://api.github.com/user -Body $Body -Method Patch