function [x,fval] = qpsca(H,f)
	delta = 0.001;
	fval=inf;
	n = size(f,1);
	x = zeros(size(f));
	mu = f;
	while true
		for k=1:n
			xkNew = max(0,x(k) - mu(k)/H(k,k));
			if xkNew ~= x(k)
				mu = mu + (xkNew-x(k))*H(:,k);
			end
			x(k) = xkNew;
		end
		fvalNew = 0.5 * (x'*H*x) + x'*f;
		fvalDiff = fval - fvalNew;
		fval = fvalNew;
		if fvalDiff <= delta
			break;
		end
    end
end