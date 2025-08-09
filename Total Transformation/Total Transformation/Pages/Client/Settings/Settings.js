$(document).ready(function () {
    // Form submission
    $('form').submit(function (e) {
        e.preventDefault();

        // In a real app, this would save the settings to the database
        const tabId = $(this).closest('.tab-pane').attr('id');
        alert(`${tabId} settings saved successfully!`);
    });

    // Enable 2FA button
    $('.btn-enable').click(function () {
        // In a real app, this would initiate 2FA setup process
        alert('Two-Factor Authentication setup will begin...');
    });

    // Deactivate account button
    $('.btn-deactivate').click(function () {
        if (confirm('Are you sure you want to deactivate your account? You can reactivate it later by logging in.')) {
            // In a real app, this would deactivate the account
            alert('Account deactivated successfully');
        }
    });

    // Delete account button
    $('.btn-delete').click(function () {
        if (confirm('WARNING: This will permanently delete your account and all associated data. Are you sure?')) {
            if (prompt('Type "DELETE" to confirm:') === 'DELETE') {
                // In a real app, this would delete the account
                alert('Account deleted successfully. Redirecting to home page...');
            }
        }
    });

    // Connect/disconnect buttons
    $('.btn-connect').click(function () {
        // In a real app, this would initiate OAuth flow
        const provider = $(this).closest('.connected-account').find('span').first().text();
        alert(`Connecting ${provider} account...`);
    });

    $('.btn-disconnect').click(function () {
        if (confirm('Are you sure you want to disconnect this account?')) {
            // In a real app, this would disconnect the account
            const provider = $(this).closest('.connected-account').find('span').first().text();
            alert(`${provider} account disconnected`);
        }
    });

    // Password validation
    $('#newPassword, #confirmPassword').on('keyup', function () {
        const newPassword = $('#newPassword').val();
        const confirmPassword = $('#confirmPassword').val();

        if (newPassword.length > 0 && newPassword.length < 8) {
            $('#newPassword').addClass('is-invalid');
        } else {
            $('#newPassword').removeClass('is-invalid');
        }

        if (confirmPassword.length > 0 && confirmPassword !== newPassword) {
            $('#confirmPassword').addClass('is-invalid');
        } else {
            $('#confirmPassword').removeClass('is-invalid');
        }
    });
});