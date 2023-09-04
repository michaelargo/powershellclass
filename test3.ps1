<#
[Array]$myArray = @(1,2,3,5,6,7,8,9,10)

$myArray | get-member

$myArray
$myArray[2]

$myarray.Count

$myArray.IsFixedSize

[Array]$names = @( "John", "Paul", "George", "Ringo" )

$names

write-host

$names.removeAt(0)

$names.remove("John")

write-host

$names
#>
[System.Collections.ArrayList]$othernames = @( "John", "Paul", "George", "Ringo" )

$othernames

$othernames.removeat(0)

write-host

$othernames

$othernames.Sort()

write-host

$othernames

[system.collections.arraylist]$numbers = @(1,2,8,5,0,6,7,8,3,10)

Write-Host

$numbers

Write-Host

$numbers.sort()

$numbers

$numbers.sort()

Write-Host

$numbers

