T = readtable('25eq2022.xlsx');
T_rtn = readtable('25eq2022.xlsx', 'Sheet', 'rtn');
symbol = T.Properties.VariableNames(2:end)';
monthlyReturn = T_rtn{:,2:end};
p = Portfolio('AssetList',symbol,'RiskFreeRate',0.01/12);
p = estimateAssetMoments(p, monthlyReturn);
p = setDefaultConstraints(p);
w1 = estimateMaxSharpeRatio(p);
w2 = estimateFrontierByReturn(p, max(p.AssetMean));
[risk1,ret1] = estimatePortMoments(p, w1);
[risk2,ret2] = estimatePortMoments(p, w2);