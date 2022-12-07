Del 2- CI

Oppgave 3

Gåt til din fork av dette repoet.
Gå til Settings/Branches og Se etter seksjonen "Branch Protection Rules".
Velg Add
Velg main Som branch
Velg require a pull request before merging
Velg Require status check to pass before merging
Velg Do not allow bypassing the above settings
I søkefeltet skriv inn teksten build som skal la deg velge "GitHub Actions".
Gå til gitHub.com og din fork av dette repoet.
Gå til Settings/Branches og Se etter seksjonen "Branch Protection Rules".
Velg main branch
Velg "Edit" for eksisterende branch protection rule
Under Require a pull request before passing
Kryss deretter av for Require approvals

Hvis du gjør dette så kan ingen pushe koden direkte på main branch og koden kan merges til main branch 
ved å lage en Pull request med minst en godkjenning