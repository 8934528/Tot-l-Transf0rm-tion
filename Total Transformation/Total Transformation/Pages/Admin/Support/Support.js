$(document).ready(function () {
    // Initialize tickets table
    $('#ticketsTable').DataTable({
        responsive: true,
        ordering: true,
        dom: '<"top"f>rt<"bottom"lip><"clear">',
        language: {
            search: "_INPUT_",
            searchPlaceholder: "Search tickets..."
        }
    });

    // New ticket modal
    $('#newTicketModal').on('show.bs.modal', function () {
        $(this).find('form')[0].reset();
    });

    // Custom file input
    $('.custom-file-input').on('change', function () {
        let fileNames = [];
        $.each($(this)[0].files, function (index, file) {
            fileNames.push(file.name);
        });
        $(this).next('.custom-file-label').addClass("selected").html(fileNames.join(', '));
    });

    // Ticket submission
    $('.btn-primary').click(function () {
        alert('Ticket would be submitted here with backend integration');
        $('#newTicketModal').modal('hide');
    });

    // View ticket
    $('.btn-outline-primary').click(function () {
        alert('Ticket details would be displayed here');
    });
});