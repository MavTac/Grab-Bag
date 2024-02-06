#Jake A Jones 
#28/11/2023

#Assign person whom has delegations to other mailboxes
$condition= "Person X"
#List users who have delegations for Person X on their mailbox
$Names= "PA", "PB", "PC", "PD"
# For each item in list of users with delegations
foreach ($I in $Names){
    #Obtain permission property againt current item in list
    $temp=Get-MailboxPermission -Identity $I | Select-Object -Property User
    #If item matches Person X
    if ($temp = $condition){
        #Remove Manage permissions
        Remove-MailboxPermission -Identity $I -User $condition -AccessRights FullAccess
        #Remove Reading permissions
        Remove-MailboxPermission -Identity $I -User $condition -AccessRights ReadPermission
    #Else do nothing
    }else {}
}