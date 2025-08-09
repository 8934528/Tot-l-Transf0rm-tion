$(document).ready(function () {
    // Initialize services table
    $('#servicesTable').DataTable({
        responsive: true,
        ordering: true,
        dom: '<"top"f>rt<"bottom"lip><"clear">',
        language: {
            search: "_INPUT_",
            searchPlaceholder: "Search services..."
        }
    });

    // Add service modal
    $('#addServiceModal').on('show.bs.modal', function () {
        $(this).find('form')[0].reset();
    });

    // Custom file input
    $('.custom-file-input').on('change', function () {
        let fileName = $(this).val().split('\\').pop();
        $(this).next('.custom-file-label').addClass("selected").html(fileName);
    });

    // Form submission
    $('.btn-primary').click(function () {
        alert('Service would be added here with backend integration');
        $('#addServiceModal').modal('hide');
    });
});