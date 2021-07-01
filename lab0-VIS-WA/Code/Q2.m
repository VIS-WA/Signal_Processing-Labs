function Q2(A)
        %A = gallery('integerdata',10,[4,2,3],1)
    C = permute(A,[2 3 1]);
    C = mean(C,3)
    % D = [C(:,:,1),C(:,:,2)];
end
