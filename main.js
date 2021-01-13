function menuButton() {
        document.getElementById("myDropdown").classList.toggle("show");
}
window.onclick = function(event) {
        if (!event.target.matchs('.dropbtn')) {
                var dropdowns = 
                        document.getElementByClassName("dropdownContent");
                var i;
                for (i = 0; i <dropdowns.length; i++) {
                        var openDropdown = dropdowns[i];
                        if
                        (openDropdown.classList.contains('show')) {
                                openDropdown.classList.remove('show');
                        }
                }
        }
}

// Button menu visibility concept
// show menu function
        // get button item by class
        // if menu visibility is set to hidden
                // set menu visibility to visible
        // else if menu is set to visible
                //  set menu visibility to hidden 
//  hide menu function
        // check if menu button has been clicked
                // if visibility is set to visible
                        // set it to hidden

