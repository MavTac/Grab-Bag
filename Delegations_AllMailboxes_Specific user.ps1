#Powershell#
#Jake A Jones 1/02/2024#


# Notes for improvement to script
# Get-RecipientPermission -ResultSize unlimited | Where-Object -FilterScript {$_.Trustee -eq "carolyno@bbuscentre.com.au"}


#Counter Array for success count
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
    $ListC
    Foreach ($I in $ListC){
        $R1 = get-mailbox -Identity $I
        if($R1.UserPrincipalName -ne )
    }





   
$UserB = Read-host -Prompt 'Input user to configure, Note this must be their "UserPrincipalName" property'
}
#Name of user to copy from


}
$ListA = Get-MailboxPermission -User $UserA
$ListB = Get-RecipientPermission -ResultSize unlimited | Where-Object -FilterScript {$_.Trustee -eq $UserB}

#Block 1 - For each listed mailbox
foreach ($I in $ListA){
    #Add FullAccess permissions
    Add-MailboxPermission -Identity $I -User $UserB -AccessRights FullAccess
    #If successful
    if($UserB -eq $I.User){
        #Add 1 count to the success member of Counter array
        $Counter.Success++
    }{else
    }
}

#Block 2 - for each item in ListB
Foreach ($I in $ListB){

}

write-host '
#####################################################################################################################################
'

$SAList
Read-Host -Prompt '

Press any key to continue....'
Read-Host -Prompt 'Not that one, try again'
Read-Host -Prompt "I didn't think you could do worse.... I was wrong....Try again"
Write-Host "Get-Intelligence : Cannot find path 'C:\Skull\Brain\WrongTurn\XXXX....\Common_Sense does not exist
                               ......Please press a button I like......" -ForegroundColor Red -BackgroundColor Black -NoNewline; Read-Host

# Foreach($S in $ListB){
    # Foreach($M in $List){
        

