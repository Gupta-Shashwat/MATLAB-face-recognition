[file,path]=uigetfile("*.*","Select an image: ");
imgPath=strcat(path, file);
img=imread(imgPath);
grayImg=rgb2gray(img);

% Detecting facial features
faceDetector=vision.CascadeObjectDetector();
mouthBBOXES=step(faceDetector, grayImg);
face=insertObjectAnnotation(img,"rectangle",mouthBBOXES,"Face");
imshow(face);