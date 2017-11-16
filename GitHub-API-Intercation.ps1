$Token = 'sanjitmisra:9b920436afce05f36b7c079ee13b22ef25f9b52a'
$Base64Token = [System.Convert]::ToBase64String([char[]]$Token);

$Headers = @{
            Authorization = 'Basic {0}' -f $Base64Token;
        };
$Body = @{
    bio = 'Wandering the wonderland of wonderful code!-!';
} | ConvertTo-Json

Invoke-RestMethod -Headers $Headers -Uri https://api.github.com/user -Body $Body -Method Patch