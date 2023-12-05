$scriptPath = $MyInvocation.MyCommand.Path
$scriptDirectory = Split-Path $scriptPath -Parent
Set-Location -Path $scriptDirectory

# Ruta del archivo de texto
$archivo = "_plastilinn_app_content.txt"
Write-Host "Valor de archivo: " $archivo

# Lee el contenido del archivo de texto
$texto = Get-Content $archivo
Write-Host "Valor de texto: " $texto

# Variables para almacenar el nombre y contenido del archivo de salida
$nombreArchivo = ""
$contenidoArchivo = ""

# Crear una instancia de UTF-8 sin BOM
$utf8WithoutBom = New-Object System.Text.UTF8Encoding $false

# Recorre cada línea del texto
foreach ($linea in $texto) {
    if ($linea.EndsWith(".md")) {
        if ($nombreArchivo) {
            # Guarda el contenido acumulado en el archivo anterior
             [System.IO.File]::WriteAllLines($nombreArchivo, $contenidoArchivo, $utf8WithoutBom)
            Write-Host "Archivo guardado con nombre: $nombreArchivo y contenido: $contenidoArchivo"
        }

        # Divide la línea en segmentos basados en el carácter "\"
        $segmentos = $linea -split '\\'
        
        # Construye la ruta del directorio basándose en los segmentos
        $rutaDirectorio = $scriptDirectory
        for ($i = 0; $i -lt $segmentos.Length - 1; $i++) {
            $rutaDirectorio = Join-Path -Path $rutaDirectorio -ChildPath $segmentos[$i]
            # Crea el directorio si no existe
            if (-not (Test-Path -Path $rutaDirectorio -PathType Container)) {
                New-Item -Path $rutaDirectorio -ItemType Directory
            }
        }

        # Construye la ruta completa del archivo
        $nombreArchivo = Join-Path -Path $rutaDirectorio -ChildPath $segmentos[-1]
        
        # Reinicializa contenidoArchivo
        $contenidoArchivo = ""
        Write-Host "Nuevo archivo creado con nombre: $nombreArchivo"
    }
    else {
        # Si no coincide con el formato *.md, agrega la línea al contenido del archivo acumulado
        $contenidoArchivo += $linea + "`n"
        Write-Host "Línea añadida al contenido del archivo: $linea"
    }
}

# Guarda el último archivo
if ($nombreArchivo) {
    [System.IO.File]::WriteAllLines($nombreArchivo, $contenidoArchivo, $utf8WithoutBom)
    Write-Host "Archivo guardado con nombre: $nombreArchivo y contenido: $contenidoArchivo"
}
Pause
