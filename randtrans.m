%create a random 8x8 transition matrix
function transMat = randtrans(n)
    transMat = zeros(n,n);
    for i=1:n
        r = rand(1,n);
        transMat(:,i) = r/sum(r);
    end
    