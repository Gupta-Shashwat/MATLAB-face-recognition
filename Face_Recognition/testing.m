function testing(net)
    [file,path] = uigetfile("*.*","Select an image: ");
    img_path = strcat(path, file);
    img = imread(img_path);
    img_grey = rgb2gray(img);
    img_resized = imresize(img, [224 224]);

    face_detector = vision.CascadeObjectDetector();
    BBoxes = step(face_detector, img_grey);

    [Label, Prob] = classify(net, img_resized);

    figure;
    img_original = insertObjectAnnotation(img, "rectangle", BBoxes, Label);
    imshow(img_original);
    title(string(Label) + " " + (num2str(max(Prob), 2))*1 + "%");
end