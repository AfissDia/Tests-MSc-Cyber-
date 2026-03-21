Import-Module ActiveDirectory

$users = Import-Csv "C:\users.csv"

foreach ($user in $users) {

    $firstname = $user.prenom.Trim()
    $lastname  = $user.nom.Trim()
    $username  = ($firstname + "." + $lastname).ToLower()

    # Mot de passe sécurisé
    $password = New-Object System.Security.SecureString
    "Azerty_2025!".ToCharArray() | ForEach-Object { $password.AppendChar($_) }

    # Création utilisateur
    if (-not (Get-ADUser -Filter "SamAccountName -eq '$username'" -ErrorAction SilentlyContinue)) {
        New-ADUser -Name "$firstname $lastname" `
                   -GivenName $firstname `
                   -Surname $lastname `
                   -SamAccountName $username `
                   -UserPrincipalName "$username@laplateforme.io" `
                   -AccountPassword $password `
                   -Enabled $true `
                   -ChangePasswordAtLogon $true
    }

    # Groupes
    $groups = @($user.groupe1,$user.groupe2,$user.groupe3,$user.groupe4,$user.groupe5,$user.groupe6)

    foreach ($group in $groups) {
        if ($group -and $group.Trim() -ne "") {

            $group = $group.Trim()

            if (-not (Get-ADGroup -Filter "Name -eq '$group'" -ErrorAction SilentlyContinue)) {
                New-ADGroup -Name $group -GroupScope Global -GroupCategory Security
            }

            Add-ADGroupMember -Identity $group -Members $username -ErrorAction SilentlyContinue
        }
    }
}
