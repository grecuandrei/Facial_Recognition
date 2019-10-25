function A_k = task1(image, k)
  A = double(imread(image));
  [U,S,V] = svd(A);
  u_k = U(:, 1:k);
  s_k = S(1:k, 1:k);
  v_k = V'(1:k, :);
  A_k = u_k * s_k * v_k;
end