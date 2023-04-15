[file,path]=uigetfile("*.*","Select an image: ");
imgPath=strcat(path, file);
img=imread(imgPath);
grayImg=rgb2gray(img);

% Detecting facial features
faceDetector=vision.CascadeObjectDetector('Mouth','MergeThreshold',100);
noseDetector=vision.CascadeObjectDetector('Nose','MergeThreshold',50);
mouthBBOXES=step(faceDetector, grayImg);
noseBBOXES=step(noseDetector, grayImg);
faces=insertObjectAnnotation(img,"rectangle",mouthBBOXES,"Mouth");
nose=insertObjectAnnotation(img, "rectangle", noseBBOXES, "Nose");
imshow(nose);