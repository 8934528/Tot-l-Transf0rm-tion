$(document).ready(function () {
    // Initialize calendar
    const calendarEl = document.getElementById('practitionerCalendar');
    const calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: 'dayGridMonth',
        headerToolbar: {
            left: 'prev,next today',
            center: 'title',
            right: 'dayGridMonth,timeGridWeek,timeGridDay'
        },
        events: [
            {
                title: 'Haircut - Sarah J.',
                start: new Date(),
                end: new Date(new Date().setHours(new Date().getHours() + 1)),
                color: '#F9629F'
            },
            {
                title: 'Beard Trim - Michael B.',
                start: new Date(new Date().setHours(new Date().getHours() + 2.5)),
                end: new Date(new Date().setHours(new Date().getHours() + 3)),
                color: '#9e1b32'
            },
            {
                title: 'Color Treatment - Lisa S.',
                start: new Date(new Date().setHours(new Date().getHours() + 4)),
                end: new Date(new Date().setHours(new Date().getHours() + 6)),
                color: '#EE82EE'
            },
            {
                title: 'Haircut - David W.',
                start: new Date(new Date().setHours(new Date().getHours() + 7.5)),
                end: new Date(new Date().setHours(new Date().getHours() + 8.25)),
                color: '#F9629F'
            },
            {
                title: 'Styling - Emily D.',
                start: new Date(new Date().setHours(new Date().getHours() + 9)),
                end: new Date(new Date().setHours(new Date().getHours() + 10)),
                color: '#9e1b32'
            }
        ],
        eventClick: function (info) {
            alert('Appointment: ' + info.event.title);
        }
    });
    calendar.render();

    // Filter appointments
    $('.dropdown-item').click(function (e) {
        e.preventDefault();
        const filter = $(this).text().trim();
        $('.appointments-list-header h3').text(filter + ' Appointments');

        // In a real app, this would filter the appointments
        console.log('Filtering by:', filter);
    });

    // Date picker change
    $('.date-picker input').change(function () {
        const selectedDate = $(this).val();
        console.log('Selected date:', selectedDate);
        // In a real app, this would load appointments for the selected date
    });

    // Appointment action buttons
    $('.appointment-actions .btn').click(function () {
        const action = $(this).find('i').attr('class').split(' ')[1];
        const appointment = $(this).closest('.appointment-item').find('.client-info h4').text();
        console.log(action + ' appointment for ' + appointment);
    });
});