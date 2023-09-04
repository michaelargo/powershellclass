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

function read-menu
{

    write-host
        
    $valid = $false

    while ($valid -eq $false)

    {    
        $option = read-host -prompt "Please enter an option: _"

        switch ($option)
        {
        
        '1' { write-host "You selected Play"
              $valid = $true
              break }
        '2' { write-host "You selected Settings"
              $valid = $true
              break }
        '3' { write-host "You selected Instructions" 
              $valid = $true
              break }
        'Q' { write-host "You selected Quit"
              $valid = $true
              break }

        default { write-host "You selected an invalid option" 
                  show-menu
                  $option = read-menu }
        }
    }

    return $option

}


$option = read-menu

validate-option $option

write-host "You selected $option"

read-host -prompt "Press any key to continue..."





