%creates an nxn (n even) transition matrix that weights closer elements

function transMat = conjunct(n,sigma)

    transMat = [];
    for i = 1:n
        p = normpdf(1:n,i,sigma);
        transMat = [transMat ; p / sum(p)];
    end
    transMat = transMat';
end