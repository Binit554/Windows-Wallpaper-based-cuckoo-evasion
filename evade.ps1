$wallpaperPath = (Get-ItemProperty -Path "HKCU:\Control Panel\Desktop").Wallpaper
$wallpaperHash = (Get-FileHash -Path $wallpaperPath -Algorithm SHA256).Hash

# Define a list of known hashes to check against
$knownHashes = @(
    "A37491A5E479E191CFE547B484426037455CE8AACFF7AB15F91925330C24864F", # Replace with actual hashes
    "D54262032574B15CCF541E40FA13475FFB39D8682C19383E917F3ED5E8BBCA71"
)

# Check if the wallpaper hash is in the list
if ($knownHashes -contains $wallpaperHash) {
    Write-Output "Has a windows defualt wallpaper contining infection, -This is harmless fyi"
} else {
    Write-Output "Did not detect any common windows wallpapers, deleting self"
}