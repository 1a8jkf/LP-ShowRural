const whatsappBtn = document.getElementById('whatsapp-btn');
const formContainer = document.getElementById('wa-container');

whatsappBtn.addEventListener('click', () => {
    formContainer.style.display = formContainer.style.display === 'none' || formContainer.style.display === '' ? 'block' : 'none';
});

const telefoneInput = document.getElementById('telefone');

telefoneInput.addEventListener('input', (event) => {
    let input = event.target.value.replace(/\D/g, '');
    input = input.substring(0, 11);

    if (input.length > 10) {
        input = input.replace(/^(\d{2})(\d{5})(\d{4})/, '($1) $2-$3');
    } else if (input.length > 6) {
        input = input.replace(/^(\d{2})(\d{4})(\d{0,4})/, '($1) $2-$3');
    } else if (input.length > 2) {
        input = input.replace(/^(\d{2})(\d{0,5})/, '($1) $2');
    } else {
        input = input.replace(/^(\d*)/, '($1');
    }

    event.target.value = input;
});

document.addEventListener('DOMContentLoaded', function () {
    new Swiper('.swiper-container2', {
        loop: true,
        navigation: {
            nextEl: '.swiper-button-next2',
            prevEl: '.swiper-button-prev2',
        },
        slidesPerView: 1,
        spaceBetween: 30,
        effect: 'slide',
        speed: 800,
        centeredSlides: true,
    });
});

document.addEventListener("DOMContentLoaded", function() {
    const swiper = new Swiper('.swiper-container', {
        slidesPerView: 1,
        spaceBetween: 20,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        loop: true,
    });

    const carouselItems = document.querySelectorAll('.carousel-item');
    const formTitle = document.querySelector('.form-title');
    const formPrice = document.querySelector('.form-price');
    const formCarInput = document.getElementById('car');
    const formCarImage = document.querySelector('.form-car-image');
    const leftArrow = document.querySelector('.carousel-arrow.left');
    const rightArrow = document.querySelector('.carousel-arrow.right');

    let currentIndex = 0;

    function updateItemCarousel(index) {
        if (carouselItems.length > 0) {
            carouselItems.forEach(item => item.classList.remove('active'));
            const activeItem = carouselItems[index];
            if (activeItem) {
                activeItem.classList.add('active');
                const title = activeItem.dataset.title || '';
                const price = activeItem.dataset.price || '';
                const imageSrc = activeItem.querySelector('img').src;
                
                formTitle.textContent = title;
                formPrice.textContent = price;

                formCarInput.value = title;

                if (formCarImage) {
                    formCarImage.src = imageSrc;
                    formCarImage.alt = title;
                }
            }
        }
    }

    if (leftArrow) {
        leftArrow.addEventListener('click', () => {
            currentIndex = (currentIndex - 1 + carouselItems.length) % carouselItems.length;
            updateItemCarousel(currentIndex);
        });
    }

    if (rightArrow) {
        rightArrow.addEventListener('click', () => {
            currentIndex = (currentIndex + 1) % carouselItems.length;
            updateItemCarousel(currentIndex);
        });
    }

    updateItemCarousel(currentIndex);




    new Swiper('.swiper', {
        loop: true,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });

    document.querySelectorAll('.consultant-btn').forEach(function(button) {
        button.addEventListener('click', function(event) {
            var carName = event.target.getAttribute('data-car-name');
            
            document.getElementById('car').value = carName;

            const carouselItems = document.querySelectorAll('.carousel-item');
            const matchingItem = Array.from(carouselItems).find(item => item.dataset.title === carName);
            if (matchingItem) {
                const index = Array.from(carouselItems).indexOf(matchingItem);
                updateItemCarousel(index);
            }

            var section = document.querySelector('.main-section-center-content-div');
            section.scrollIntoView({
                behavior: 'smooth',
                block: 'start'
            });
        });
    });

});