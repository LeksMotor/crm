# PowerShell-skript for å opprette CRM-liste i SharePoint
Connect-PnPOnline -Url "https://leksmotor.sharepoint.com/sites/crm/Lists/crm2/AllItems.aspx?npsAction=createList" -UseWebLogin

New-PnPList -Title "CRM Kontakter" -Template GenericList -OnQuickLaunch:$true

Add-PnPField -List "CRM Kontakter" -DisplayName "Navn" -InternalName "Navn" -Type Text
Add-PnPField -List "CRM Kontakter" -DisplayName "E-postadresse" -InternalName "Epostadresse" -Type Text
Add-PnPField -List "CRM Kontakter" -DisplayName "Firma" -InternalName "Firma" -Type Text
Add-PnPField -List "CRM Kontakter" -DisplayName "Telefonnummer" -InternalName "Telefonnummer" -Type Text
Add-PnPField -List "CRM Kontakter" -DisplayName "Emne" -InternalName "Emne" -Type Text
Add-PnPField -List "CRM Kontakter" -DisplayName "Dato mottatt" -InternalName "DatoMottatt" -Type DateTime
Add-PnPField -List "CRM Kontakter" -DisplayName "E-postinnhold" -InternalName "Epostinnhold" -Type Note
Add-PnPField -List "CRM Kontakter" -DisplayName "Status" -InternalName "Status" -Type Choice -Choices @("Venter","Under behandling","Utført")
Add-PnPField -List "CRM Kontakter" -DisplayName "Ansvarlig" -InternalName "Ansvarlig" -Type User
