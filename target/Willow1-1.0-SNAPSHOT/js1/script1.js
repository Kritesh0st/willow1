var fiveSildes = document.querySelectorAll(".land_carsoul_sloth");
var slideLeft = document.querySelector(".land_carousle_left");
var slideRight = document.querySelector(".land_carousle_right");
var slide = 0,invervalVar;

manageInterval();
function manageInterval(){
  invervalVar = setInterval(runCarousel, 5000);
}
function stopInterval() {
  clearInterval(invervalVar);
}

function runCarousel(){
  console.log("selo",slide)
  changeSlides();
  changeSlideCount('right');
}
function changeSlides(){
  var a;
  for(a=0;a<fiveSildes.length;a++){
    fiveSildes[a].style.display = "none";
  }
  fiveSildes[slide].style.display = "flex";
}
function changeSlideCount(direction){
  if(direction=='right'){
    slide = slide<4?++slide:0;
  }
  else if(direction=='left'){
    slide = slide>0?--slide:4;
  }
  
}
slideLeft.addEventListener('click',()=>{
  console.log("btn left")
  changeSlideCount('left')
  changeSlides();
  stopInterval();
  manageInterval();
})
slideRight.addEventListener('click',()=>{
  console.log("btn right")
  changeSlideCount('right')
  changeSlides();
  stopInterval();
  manageInterval();
})
