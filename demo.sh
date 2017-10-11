Y=7

function f1 {
local Y
let Y=$2+$3
echo "Inside f1:$Y"
}

let Y=Y+3
echo "before f1:$Y"
f1 Y 4 5
echo "after f1:$Y"
