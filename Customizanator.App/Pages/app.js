

const switcher = document.querySelector('#theme-btn');

switcher.addEventListener('click', function () {
    document.getElementById("mainBody").classList.toggle('light-theme');
    document.getElementById("mainBody").classList.toggle('dark-theme');


    console.info(className);
});