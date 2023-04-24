let min = 300000;
let max = 42000000;

const calcLeftPosition = (value) => (100 / (42000000 - 300000)) * (value - 300000);
$('#rangeMin').on('input', function (e) {
    const newValue = parseInt(e.target.value);
    console.log(newValue);
    if (newValue > max) return;
    min = newValue;
    $('#thumbMin').css('left', calcLeftPosition(newValue) + '%');
    $('#min').html(newValue);
    $('#line').css({
        left: calcLeftPosition(newValue) + '%',
        right: 100 - calcLeftPosition(max) + '%',
    });
});
$('#rangeMax').on('input', function (e) {
    const newValue = parseInt(e.target.value);
    if (newValue < min) return;
    max = newValue;
    $('#thumbMax').css('left', calcLeftPosition(newValue) + '%');
    $('#max').html(newValue);
    $('#line').css({
        left: calcLeftPosition(min) + '%',
        right: 100 - calcLeftPosition(newValue) + '%',
    });
});


$('#rangeMin2').on('input', function (e) {
    const newValue = parseInt(e.target.value);
    console.log(newValue);
    if (newValue > max) return;
    min = newValue;
    $('#thumbMin2').css('left', calcLeftPosition(newValue) + '%');
    $('#min2').html(newValue);
    $('#line2').css({
        left: calcLeftPosition(newValue) + '%',
        right: 100 - calcLeftPosition(max) + '%',
    });
});
$('#rangeMax2').on('input', function (e) {
    const newValue = parseInt(e.target.value);
    if (newValue < min) return;
    max = newValue;
    $('#thumbMax2').css('left', calcLeftPosition(newValue) + '%');
    $('#max2').html(newValue);
    $('#line2').css({
        left: calcLeftPosition(min) + '%',
        right: 100 - calcLeftPosition(newValue) + '%',
    });
});
