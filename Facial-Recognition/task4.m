function [A_k S] = task4(image, k)
  format long;
  A = double(imread(image));
  [m n] = size(A);
  miu = mean(A')';
  A = A - miu;
  Z = ( A * A' ) / ( n - 1 );
  [V S] = eig(Z);
  W = V(:,1:k);
  Y = W'*A;
  A_k = W * Y + miu;
end