function [m A eigenfaces pr_img] = eigenface_core(database_path)
  T = x = m = V_n = [];
  for i = 1:10
    v = double(rgb2gray(imread(strcat(database_path,'/',int2str(i),'.jpg'))));
    x = v(:);
    T = [T,x];
  endfor
  m = mean(T,2);
  A = T .- m;
  [V, lambda] = eig(A'*A);
  for i = 1:size(lambda)
    if lambda(i,i) > 1
      V_n = [V_n, V(:,i)];
    endif
  endfor
  eigenfaces = A*V_n;
  pr_img = eigenfaces'*A;
end