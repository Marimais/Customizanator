

const switcher = document.querySelector('#theme-btn');

switcher.addEventListener('click', function () {
    document.getElementById("mainBody").classList.toggle('light-theme');
    document.getElementById("mainBody").classList.toggle('dark-theme');

    const className = document.getElementById("mainBody").className;
    if (className == "light-theme")
    {
        this.textContent = "Dark";
    } else {
        this.textContent = "Light";
    }
    console.info(className);
});