/**
 * 
 */
var clicks = 0;

export function onClick() {
  clicks += 4;
  document.getElementById("clicks").innerHTML = clicks;
};