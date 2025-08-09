$(document).ready(function () {
    // Initialize tooltips
    $('[data-toggle="tooltip"]').tooltip();

    // Category filter
    $('.btn-category').click(function () {
        const category = $(this).find('input').attr('value') || 'all';

        if (category === 'all') {
            $('.service-card').show();
        } else {
            $('.service-card').hide();
            // In a real app, this would filter based on actual categories
            $('.service-card').each(function () {
                if ($(this).find('.service-title').text().toLowerCase().includes(category)) {
                    $(this).show();
                }
            });
        }
    });

    // Search functionality
    $('.service-search input').on('keyup', function () {
        const searchText = $(this).val().toLowerCase();

        $('.service-card').each(function () {
            const cardText = $(this).text().toLowerCase();
            if (cardText.indexOf(searchText) > -1) {
                $(this).show();
            } else {
                $(this).hide();
            }
        });
    });

    // Toggle favorite
    $('.btn-favorite').click(function (e) {
        e.stopPropagation();
        $(this).find('i').toggleClass('far fas');
        $(this).toggleClass('active');

        if ($(this).hasClass('active')) {
            alert('Service added to favorites');
        }
    });

    // Service selection
    $('.btn-select').click(function () {
        const serviceTitle = $(this).closest('.service-card').find('.service-title').text();
        alert(`Selected: ${serviceTitle}\nProceeding to select professional...`);

        // In a real app, this would store the selected service and move to next step
        $('.step[data-step="1"]').removeClass('active');
        $('.step[data-step="2"]').addClass('active');
        $('#step-1').removeClass('active');
        $('#step-2').addClass('active').html(`
            <h3>Select Professional for ${serviceTitle}</h3>
            <div class="professionals-list">
                <div class="professional-card">
                    <div class="professional-img">
                        <img src="../../Images/professional1.jpg" alt="Sarah Johnson" />
                        <div class="professional-rating">
                            <i class="fas fa-star"></i> 4.8
                        </div>
                    </div>
                    <div class="professional-info">
                        <h4>Sarah Johnson</h4>
                        <div class="professional-specialty">Hair Stylist</div>
                        <div class="professional-location">
                            <i class="fas fa-map-marker-alt"></i> 2 km away
                        </div>
                        <div class="professional-price">R300</div>
                        <button class="btn btn-select-professional">Select</button>
                    </div>
                </div>
                <div class="professional-card">
                    <div class="professional-img">
                        <img src="../../Images/professional2.jpg" alt="Michael Brown" />
                        <div class="professional-rating">
                            <i class="fas fa-star"></i> 4.6
                        </div>
                    </div>
                    <div class="professional-info">
                        <h4>Michael Brown</h4>
                        <div class="professional-specialty">Barber</div>
                        <div class="professional-location">
                            <i class="fas fa-map-marker-alt"></i> 1.5 km away
                        </div>
                        <div class="professional-price">R250</div>
                        <button class="btn btn-select-professional">Select</button>
                    </div>
                </div>
            </div>
            <button class="btn btn-back">Back</button>
        `);
    });

    // Back button (will be added dynamically)
    $(document).on('click', '.btn-back', function () {
        const currentStep = $('.booking-step.active').attr('id').split('-')[1];
        $(`.step[data-step="${currentStep}"]`).removeClass('active');
        $(`#step-${currentStep}`).removeClass('active');

        const prevStep = parseInt(currentStep) - 1;
        $(`.step[data-step="${prevStep}"]`).addClass('active');
        $(`#step-${prevStep}`).addClass('active');
    });

    // Select professional (will be added dynamically)
    $(document).on('click', '.btn-select-professional', function () {
        const professionalName = $(this).closest('.professional-card').find('h4').text();
        alert(`Selected: ${professionalName}\nProceeding to select date & time...`);

        $('.step[data-step="2"]').removeClass('active');
        $('.step[data-step="3"]').addClass('active');
        $('#step-2').removeClass('active');
        $('#step-3').addClass('active').html(`
            <h3>Select Date & Time</h3>
            <div class="calendar-container">
                <div class="calendar-header">
                    <button class="btn btn-prev-month"><i class="fas fa-chevron-left"></i></button>
                    <h4>June 2023</h4>
                    <button class="btn btn-next-month"><i class="fas fa-chevron-right"></i></button>
                </div>
                <div class="calendar-grid">
                    <div class="calendar-weekdays">
                        <div>Sun</div>
                        <div>Mon</div>
                        <div>Tue</div>
                        <div>Wed</div>
                        <div>Thu</div>
                        <div>Fri</div>
                        <div>Sat</div>
                    </div>
                    <div class="calendar-days">
                        <div class="disabled">28</div>
                        <div class="disabled">29</div>
                        <div class="disabled">30</div>
                        <div class="disabled">31</div>
                        <div>1</div>
                        <div>2</div>
                        <div>3</div>
                        <div>4</div>
                        <div>5</div>
                        <div>6</div>
                        <div>7</div>
                        <div>8</div>
                        <div>9</div>
                        <div>10</div>
                        <div>11</div>
                        <div>12</div>
                        <div>13</div>
                        <div>14</div>
                        <div class="available">15</div>
                        <div class="available">16</div>
                        <div class="available">17</div>
                        <div class="available">18</div>
                        <div class="available">19</div>
                        <div class="available">20</div>
                        <div class="available">21</div>
                        <div class="available">22</div>
                        <div class="available">23</div>
                        <div class="available">24</div>
                        <div class="available">25</div>
                        <div class="available">26</div>
                        <div class="available">27</div>
                        <div class="available">28</div>
                        <div class="available">29</div>
                        <div class="available">30</div>
                        <div class="disabled">1</div>
                    </div>
                </div>
            </div>
            <div class="time-slots-container">
                <h4>Available Time Slots</h4>
                <div class="time-slots">
                    <button class="btn btn-time-slot">9:00 AM</button>
                    <button class="btn btn-time-slot">10:30 AM</button>
                    <button class="btn btn-time-slot">12:00 PM</button>
                    <button class="btn btn-time-slot">2:30 PM</button>
                    <button class="btn btn-time-slot">4:00 PM</button>
                </div>
            </div>
            <button class="btn btn-back">Back</button>
            <button class="btn btn-next">Next</button>
        `);
    });

    // Select date (will be added dynamically)
    $(document).on('click', '.calendar-days .available', function () {
        $('.calendar-days div').removeClass('selected');
        $(this).addClass('selected');
    });

    // Select time (will be added dynamically)
    $(document).on('click', '.btn-time-slot', function () {
        $('.btn-time-slot').removeClass('active');
        $(this).addClass('active');
    });

    // Next button (will be added dynamically)
    $(document).on('click', '.btn-next', function () {
        const selectedDate = $('.calendar-days .selected').text();
        const selectedTime = $('.btn-time-slot.active').text();

        if (!selectedDate || !selectedTime) {
            alert('Please select both date and time');
            return;
        }

        alert(`Selected: ${selectedDate} June at ${selectedTime}\nProceeding to confirmation...`);

        $('.step[data-step="3"]').removeClass('active');
        $('.step[data-step="4"]').addClass('active');
        $('#step-3').removeClass('active');
        $('#step-4').addClass('active').html(`
            <h3>Confirm Booking</h3>
            <div class="booking-summary">
                <div class="summary-item">
                    <div class="summary-label">Service:</div>
                    <div class="summary-value">Haircut & Styling</div>
                </div>
                <div class="summary-item">
                    <div class="summary-label">Professional:</div>
                    <div class="summary-value">Sarah Johnson</div>
                </div>
                <div class="summary-item">
                    <div class="summary-label">Date & Time:</div>
                    <div class="summary-value">15 June 2023, 10:30 AM</div>
                </div>
                <div class="summary-item">
                    <div class="summary-label">Duration:</div>
                    <div class="summary-value">1 hour</div>
                </div>
                <div class="summary-item">
                    <div class="summary-label">Price:</div>
                    <div class="summary-value">R300</div>
                </div>
                <div class="summary-item total">
                    <div class="summary-label">Total:</div>
                    <div class="summary-value">R300</div>
                </div>
            </div>
            <div class="booking-notes">
                <label for="bookingNotes">Special Requests (optional):</label>
                <textarea id="bookingNotes" class="form-control" rows="3"></textarea>
            </div>
            <div class="booking-actions">
                <button class="btn btn-back">Back</button>
                <button class="btn btn-confirm">Confirm Booking</button>
            </div>
        `);
    });

    // Confirm booking (will be added dynamically)
    $(document).on('click', '.btn-confirm', function () {
        alert('Booking confirmed successfully!');
        // In a real app, this would submit the form and redirect
    });
});