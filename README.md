# SharePoint CRM Setup

Dette repoet inneholder:
- PowerShell-skript for å opprette CRM-liste i SharePoint
- JSON-mal for listekolonner
- GitHub Actions workflow for automatisering

## Hvordan kjøre skriptet manuelt
1. Installer PnP.PowerShell:
   ```powershell
   Install-Module PnP.PowerShell -Scope CurrentUser
   ```
2. Kjør skriptet:
   ```powershell
   Connect-PnPOnline -Url "https://<ditt-sharepoint-nettsted>.sharepoint.com/sites/<ditt-område>" -UseWebLogin
   .\Create-SharePoint-CRM.ps1
   ```

## Automatisering med GitHub Actions
- Workflow ligger i `.github/workflows/deploy.yml`
- Sett opp hemmeligheter i GitHub: CLIENT_ID, CLIENT_SECRET, TENANT_ID
