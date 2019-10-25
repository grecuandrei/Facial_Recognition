function task5()
  A = double(imread("image3.gif"));
  k = [1:19 20:20:99 100:30:min(size(A))]
  [A_k, S] = task3("image3.gif",k);
  v = diag(S);
  plot(v);
  
  figure 2;
  s = 0;
  v = [];
  s = sum(diag(S));
  for k = 1:min(size(A))
    d = 0;
    for i = 1:k
    d = d + S(i,i);
    endfor
  v = [v;d/s];
  endfor
  plot(v);
  
  figure 3;
  [m, n] = size(A);
  k = [1:19 20:20:99 100:30:min(size(A))];
  err = [];
  for l = k
    A_k = task1("image3.gif", l);
    err_k = sum(sum((A(1:m,1:n)-A_k(1:m,1:n)).^2));
    err_k = err_k / (m*n);
    err = [err err_k];
  endfor
  plot(k,err);
  
  k = [1:19 20:20:99 100:30:min(size(A))];
  [m n] = size(A);
  figure 4;
  plot(k,(2*k+1)/n);
    
end