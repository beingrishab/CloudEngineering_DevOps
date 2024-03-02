function Get-Value {
    param (
        [Parameter(Mandatory=$true)]
        [object]$object,

        [Parameter(Mandatory=$true)]
        [string]$key
    )

    $keys = $key -split '/'  # Split the keys ( a/b/c )
    $NewObject = $Object
    
    # Checking the nested object using the keys one by one
    foreach ($k in $keys) {
        if ($NewObject.ContainsKey($k)) {
            $NewObject = $NewObject.$k
        }
        else {
            
            Write-Output "Key $k is not found in the Nested Value !!" # Key is not present
        }
    }

    return $NewObject
}


$obj1 = @{"a" = @{"b" = @{"c" = "d"}}}
$key1 = "a/b/c"

Get-Value -Object $obj1 -key $key1  # Output: "d"

$obj2 = @{"x" = @{"y" = @{"z" = "a"}}}
$key2 = "x/y/z"

Get-Value -Object $obj2 -key $key2  # Output: "a"



