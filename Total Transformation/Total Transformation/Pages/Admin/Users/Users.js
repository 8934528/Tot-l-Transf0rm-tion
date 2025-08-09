$(document).ready(function () {
    // Initialize users table
    $('#usersTable').DataTable({
        responsive: true,
        ordering: true,
        dom: '<"top"f>rt<"bottom"lip><"clear">',
        language: {
            search: "_INPUT_",
            searchPlaceholder: "Search users..."
        }
    });

    // User type filter
    $('.dropdown-item').click(function (e) {
        e.preventDefault();
        const filterText = $(this).text().trim();
        if (filterText === 'Clients') {
            $('#usersTable').DataTable().column(3).search('Client').draw();
        } else if (filterText === 'Practitioners') {
            $('#usersTable').DataTable().column(3).search('Practitioner').draw();
        } else {
            $('#usersTable').DataTable().column(3).search('').draw();
        }
    });

    // New user modal
    $('#newUserModal').on('show.bs.modal', function () {
        $(this).find('form')[0].reset();
        $('#userTypeTabs a[href="#client"]').tab('show');
    });

    // User type tabs
    $('#userTypeTabs a').click(function (e) {
        e.preventDefault();
        $(this).tab('show');
    });

    // Add user
    $('.btn-primary').click(function () {
        alert('User would be added here with backend integration');
        $('#newUserModal').modal('hide');
    });

    // User actions dropdown
    $('.dropdown-toggle').dropdown();
});