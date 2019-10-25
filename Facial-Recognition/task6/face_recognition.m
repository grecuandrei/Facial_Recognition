function [min_dist output_img_index] = face_recognition(image_path, m, A, eigenfaces, pr_img)
  v = double(rgb2gray(imread(image_path)));
  x =  T = [];
  x = v(:);
  T = [T, x];
  A = T .- m;
  prtestimg = eigenfaces' * A;
  dist = 0;
  min_dist = 100000000;
  output_img_index = 1;
  for i = 1:size(pr_img,2)
    dist = norm(prtestimg - pr_img(:,i));
    if dist < min_dist
      min_dist = dist;
      output_img_index = i;
    end
  endfor
end