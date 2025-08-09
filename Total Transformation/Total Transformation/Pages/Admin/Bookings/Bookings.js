$(document).ready(function () {
    // Initialize bookings table
    $('#bookingsTable').DataTable({
        responsive: true,
        ordering: true,
        dom: '<"top"f>rt<"bottom"lip><"clear">',
        language: {
            search: "_INPUT_",
            searchPlaceholder: "Search bookings..."
        }
    });

    // Highlight today's bookings
    const today = new Date().toLocaleDateString('en-US', { weekday: 'long' });
    $('td:contains("Today")').closest('tr').addClass('today-booking');

    // Booking status filter
    $('.dropdown-item').click(function (e) {
        e.preventDefault();
        const filterText = $(this).text().trim();
        $('#bookingsTable').DataTable().search(filterText).draw();
    });
});