(() => {
    console.log('Working!');

    let ellipsis = document.querySelectorAll('#ellipsis li'),
        heroImage = document.querySelector('#hero'),
        thermostat = document.querySelecter('#product-styles-img img'),
        whiteButton = document.querySelectorAll('.pearl'),
        woodButton = document.querySelector('.wood');

    function changeImage() {
        heroImage.style.backgroundImage = 'url("images/banner" + ${this.dataset.offset} + ".jpeg")';
    }

    // function showWhiteProduct() {
    //     thermostat.src = 
    // }

    // function showWoodProduct(){
    //     thermostat.src
    // }

    ellipsis.forEach(buttons => buttons.addEventListener('click', changeImage));
    whiteButton.addEventListener('mouseover', showWhiteProduct);
    woodButton.addEventListener('mouseover', showWoodProduct);
    
})();