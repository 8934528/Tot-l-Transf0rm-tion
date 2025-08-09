$(document).ready(function () {
    // Add service modal
    $('#addServiceModal').on('shown.bs.modal', function () {
        $('#serviceImage').on('change', function () {
            const fileName = $(this).val().split('\\').pop();
            $(this).next('.custom-file-label').html(fileName);
        });
    });

    // Edit service modal
    $('.edit-service').click(function () {
        $('#editServiceModal').modal('show');

        $('#editServiceImage').on('change', function () {
            const fileName = $(this).val().split('\\').pop();
            $(this).next('.custom-file-label').html(fileName);
        });
    });

    // Delete service
    $('.delete-service').click(function () {
        const serviceCard = $(this).closest('.service-card');
        const serviceName = serviceCard.find('h3').text();

        if (confirm(`Are you sure you want to delete "${serviceName}"?`)) {
            serviceCard.fadeOut(300, function () {
                $(this).remove();
                // In a real app, this would also delete from the server
                alert(`"${serviceName}" has been deleted`);
            });
        }
    });

    // Save new service
    $('#addServiceModal .btn-primary').click(function () {
        // In a real app, this would save to the server
        alert('New service added!');
        $('#addServiceModal').modal('hide');
    });

    // Update service
    $('#editServiceModal .btn-primary').click(function () {
        // In a real app, this would update on the server
        alert('Service updated!');
        $('#editServiceModal').modal('hide');
    });
});