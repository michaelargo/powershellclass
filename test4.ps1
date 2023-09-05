function show-menu
{

    param (
        [string]$Title = 'Menu Options'
    )
    clear-host

    Write-Host "================ $Title ================"
    
    Write-Host "1: Press '1' to Play"
    Write-Host "2: Press '2' for Settings"
    Write-Host "3: Press '3' for Instructions"
    Write-Host "Q: Press 'Q' to Quit."

}

function read-option
{

    write-host
        
    $valid = $false

   
        $option = read-host -prompt "Please enter an option: _"

        switch ($option)
        {
        
        '1' { write-host "You selected Play"}

        '2' { write-host "You selected Settings"}

        '3' { write-host "You selected Instructions" }

        'Q' { write-host "You selected Quit"}


        default { write-host "You selected an invalid option" }
        }

    

    return $option

}

function validate-option
{
    
    param (
        [string]$option
    )

    $option = $option.ToUpper()
    
    $valid = $false

    if ($option -eq "1") {
        $valid = $true
    }

    if ($option -eq "2") {
        $valid = $true
    }

    if ($option -eq "3") {
        $valid = $true
    }

    if ($option -eq "Q") {
        $valid = $true
    }

    else  {
        
        $valid = $false
    }

    return $valid

}

clear-host
show-menu

$option = read-option

$valid = validate-option $option

while ($valid -eq $false) {

    show-menu
    $option = read-menu
    $valid = validate-option $option

}

write-host "You selected $option"

read-host -prompt "Press any key to continue..."





