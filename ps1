function 

$Counter=@{
    Success = 0
    Failure = 0
}

$Answer = $Answer = @(
     [pscustomobject]@{True=0; False=0}
     [pscustomobject]@{True=0; False=0}
)

$UserA = $Null
$UserB = $Null
#Loop user input
while ($Wrong1 -and $Wrong2 -eq $UserA -and $UserB ) {
    #Request user input for user to be copied from; this must be a UserPrincipalName property
    $UserA= Read-Host -Prompt 'Input user to be copied, Note this must be their "UserPrincipalName" property'
    #If Usser A is not empty and contains an @ symbol
    if ($UserA -isnot $Null -and $UserA.contains("@")){
        #Confirm that entry is correct and receive response
        Write-Host "Is $UserA correct: Y/N" | $A1= Read-Host
        # If user confirms yes
        if($A1 = "Y" -or "y"){
            #Add one to the True counter for this statement
            $Answer[0].True + 1
            #otherwise
        else{
            #Add one to the false counter
            $Answer[0].False + 1
        }
        }
    }
    #If Usser B is not empty and contains an @ symbol
    if ($UserB -isnot $Null -and $UserB.contains("@")){
         #Confirm that entry is correct and receive response
        Write-Host "Is $UserB correct: Y/N" | $A2= Read-Host
        # If user confirms yes
        if($A2 = "Y" -or "y"){
            #Add one to the True counter for this statement
            $Answer[1].True + 1
        #otherwise
        else{
            #Add one to the false counter
            $Answer[1].False + 1
        }       
        }   
    }