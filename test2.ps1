[int]$repeat = 10

for ($i = 0; $i -lt $repeat; $i++) {
    Write-Host "i =" $i
}

[int]$counter = 0

write-host

while($counter -lt $i)
{
    Write-Host "counter =" $counter
    $counter++
}

write-host

$counter = 0

do {

    Write-Host "counter =" $counter
    $counter++

} while ($counter -lt $i)

Write-Host

[string]$stringOfCharacters = "Powershell is fun!"

$stringOfCharacters.ToCharArray() | foreach-object {write-host "$_"}

