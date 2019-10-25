function [A_k S] = task3(image, k)
  format long;
  A = double(imread(image));
  [m n] = size(A);
  miu = mean(A')';
  A = A - miu;
  Z = A'/sqrt(n-1);
  [U,S,V] = svd(Z);
  W = V(:,1:k);
  Y = W'*A;
  A_k = W * Y + miu;
end