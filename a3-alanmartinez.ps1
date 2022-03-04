$CSV = Import-Csv ".\users.csv" # Importem el CSV
$i # Crearem la variable i la qual ens permet moure'ns
New-Item -Path .\usuaris_Fermia.txt -ItemType File # Crearem el fitxer .txt amb la seva ruta
foreach($i in $CSV) # Volem recórrer l'arxiu CSV
{
    if($i -like "*Fermia*"){ # Condició de i és igual a "Fermia", imprimeix la línia
        Add-Content -Path .\usuaris_Fermia.txt $i # Afegeix contingut al arxiu
    }
}
Write-Host "Usuaris que pertanyen a la ciutat de Fermia" # Text al inici del script
Get-Content -Path .\usuaris_Fermia.txt # Agafa la informació de l'arxiu
