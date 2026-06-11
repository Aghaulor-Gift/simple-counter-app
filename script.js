const increment = document.getElementById('increment');
const decrement = document.getElementById('decrement');
const reset = document.getElementById('reset-button');
const display = document.getElementById('counter-value');

let count = 0;

function updateDisplay() {
    display.textContent = count;
}

function incrementCounter() {
    count++;
    updateDisplay();
}

function decrementCounter() {
    count--;
    updateDisplay();
}

function resetCounter() {
    count = 0;
    updateDisplay();
}

increment.addEventListener('click', incrementCounter);
decrement.addEventListener('click', decrementCounter);
reset.addEventListener('click', resetCounter);

updateDisplay();