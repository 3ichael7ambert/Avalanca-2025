// Bézier function
function bezier(t, controlPoints) {
    var n = array_length_1d(controlPoints) - 1;
    var result = 0;
    for (var i = 0; i <= n; i++) {
        result += choose(n, i) * controlPoints[i] * power(t, i) * power(1 - t, n - i);
    }
    return result;
}