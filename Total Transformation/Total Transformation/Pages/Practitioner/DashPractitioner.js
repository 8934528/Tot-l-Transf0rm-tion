$(document).ready(function () {
    // Initialize practitioner dashboard chart
    const ctx = document.getElementById('practitionerChart').getContext('2d');
    const practitionerChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
            datasets: [{
                label: 'Earnings',
                data: [1250, 1900, 1500, 2000, 1750, 2250],
                backgroundColor: 'rgba(249, 98, 159, 0.2)',
                borderColor: 'rgba(249, 98, 159, 1)',
                borderWidth: 2,
                tension: 0.4,
                fill: true
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    display: false
                },
                tooltip: {
                    callbacks: {
                        label: function (context) {
                            return 'R' + context.raw.toFixed(2);
                        }
                    }
                }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: {
                        callback: function (value) {
                            return 'R' + value;
                        }
                    }
                }
            }
        }
    });

    // Initialize schedule table
    $('.table').DataTable({
        responsive: true,
        searching: false,
        paging: false,
        info: false,
        order: [[0, 'asc']]
    });

    // Highlight current time in schedule
    const now = new Date();
    const currentHour = now.getHours();
    const currentMinutes = now.getMinutes();
    const currentTime = currentHour + (currentMinutes / 60);

    $('table tbody tr').each(function () {
        const timeText = $(this).find('td:first').text();
        const timeParts = timeText.split(/[: ]/);
        let hour = parseInt(timeParts[0]);
        const period = timeParts[2];

        if (period === 'PM' && hour < 12) hour += 12;
        if (period === 'AM' && hour === 12) hour = 0;

        const minutes = parseInt(timeParts[1]);
        const rowTime = hour + (minutes / 60);

        if (Math.abs(rowTime - currentTime) < 0.5) {
            $(this).addClass('current-appointment');
        }
    });
});