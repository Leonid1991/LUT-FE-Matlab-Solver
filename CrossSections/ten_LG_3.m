%% Subtendon (LG, Type 3)
scale=1/3000*0.0536;
curve1=scale*[330 167
        380 165
        400 160    
        607 130];
curve2=scale*[26 130
        187 157
        330 167];
curve3=scale*[607 130
        563 80
        488 43
        394 20
        316 14
        232 22
        153 42
        76 80
        26 130];
% collect all original data
curve1=flipud(curve1);
curve2=flipud(curve2);
curve3=flipud(curve3);
data_1={curve1;curve2;curve3};
