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
