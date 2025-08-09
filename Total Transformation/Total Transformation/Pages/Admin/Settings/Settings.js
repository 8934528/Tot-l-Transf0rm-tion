$(document).ready(function () {
    // Settings navigation
    $('.nav-item').click(function (e) {
        e.preventDefault();
        const target = $(this).data('target');

        $('.nav-item').removeClass('active');
        $(this).addClass('active');

        $('.settings-section').removeClass('active');
        $('#' + target).addClass('active');
    });

    // Custom file input
    $('.custom-file-input').on('change', function () {
        let fileName = $(this).val().split('\\').pop();
        $(this).next('.custom-file-label').addClass("selected").html(fileName);
    });

    // Form submission
    $('.btn-primary').click(function () {
        const section = $(this).closest('.settings-section').attr('id');
        alert('Settings for ' + section + ' would be saved here with backend integration');
    });

    // Initialize switches
    $('.custom-switch input').change(function () {
        const status = $(this).is(':checked') ? 'enabled' : 'disabled';
        alert('This feature has been ' + status);
    });
});