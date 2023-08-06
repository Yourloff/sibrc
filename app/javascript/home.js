// Время на главной странице

document.addEventListener("DOMContentLoaded", function () {
    // Функция для отображения текущего времени
    function displayCurrentTime() {
        const currentTimeElement = document.getElementById("current-time");
        const currentTime = new Date();
        const hours = currentTime.getHours().toString().padStart(2, "0");
        const minutes = currentTime.getMinutes().toString().padStart(2, "0");
        const seconds = currentTime.getSeconds().toString().padStart(2, "0");

        currentTimeElement.textContent = `Текущее время: ${hours}:${minutes}:${seconds}`;
    }

    // Обновление времени каждую секунду
    setInterval(displayCurrentTime, 1000);

    // Показать текущее время сразу после загрузки страницы
    displayCurrentTime();
});
