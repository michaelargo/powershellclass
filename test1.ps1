[string]$playerInput = ""
[bool]$proceed = $false

Clear-Host


function getPlayerInput() {

    while ($proceed -eq $false) {

        $playerInput = read-host -prompt "You walk into a room with two doorwarys. One to the left and one to the right. Type 'left' or 'right' to walk through one of the doors."

            if ($playerInput -eq "left") {

                $proceed = $true
                break

               }
               
            elseif ($playerInput -eq "right") {
            
                $proceed = $true
                break

               }
            
            else {

            write-host "You must type 'left' or 'right' to proceed."
        }
    }

    return $playerInput

}



$playerInput = getPlayerInput

write-host "You entered" $playerInput

read-host "Press any key to continue..."

