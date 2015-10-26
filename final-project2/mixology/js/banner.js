var imgs1 = new Array("images/image1.jpg","images/image3.jpg", "images/image4.jpg","images/img1a.jpg", "images/img2a.jpg", "images/barbottles.jpg");
var alt1 = new Array();
var currentAd1 = 0;
var imgCt1 = 6;
function cycle1() {
    if (currentAd1 == imgCt1) {
    currentAd1 = 0;
    }
    var banner1 = document.getElementById('adBanner1');
    var link1 = document.getElementById('adLink1');
    banner1.src=imgs1[currentAd1]
    banner1.alt=alt1[currentAd1]
    currentAd1++;
}
window.setInterval("cycle1()",10000);
 