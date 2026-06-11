#!/bin/bash 

echo "Checking your project..."
test -f index.html && echo "PASS: index.html exists" || echo "FAIL: index.html missing"
test -f style.css  && echo "PASS: style.css exists"  || echo "FAIL: style.css missing"
test -f script.js  && echo "PASS: script.js exists"  || echo "FAIL: script.js missing"
grep -q 'count' script.js && echo "PASS: counter state variable found" || echo "FAIL: no 'count' variable"
grep -q 'addEventListener' script.js && echo "PASS: button event listeners found" || echo "FAIL: no addEventListener"
grep -Eiq 'increment|increase' script.js && echo "PASS: increase action found" || echo "FAIL: no increase action"
grep -Eiq 'decrement|decrease' script.js && echo "PASS: decrease action found" || echo "FAIL: no decrease action"
grep -Eiq 'reset' script.js && echo "PASS: reset action found" || echo "FAIL: no reset action"
echo "Check complete."
