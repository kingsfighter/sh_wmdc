<!--
var flag=false;
function DrawImage(ImgD){
var image=new Image();
image.src=ImgD.src;
if(image.width>0 && image.height>0){
flag=true;
if(image.width/image.height>= 1){
if(image.width>120){ 
ImgD.width=120;
ImgD.height=(image.height*120)/image.width;
}else{
ImgD.width=image.width; 
ImgD.height=image.height;
}
}
else{
if(image.height>120){ 
ImgD.height=120;
ImgD.width=(image.width*120)/image.height; 
}else{
ImgD.width=image.width; 
ImgD.height=image.height;
}
}
}
} 
//-->