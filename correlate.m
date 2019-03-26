function corr = correlate (window)
n_dir=4;
offset=[0 1;0 5;0 10;0 15;...
    -1 1; -5 5;-10 10;-15 15;...
    -1 0;-5 0;-10 0;-15 0;...
    -1 -1;-5 -5;-10 -10;-15 -15;];
glcms = graycomatrix(window,'NumLevels',256,'Offset',offset);
stats = graycoprops(glcms);
Corr=reshape(stats.Correlation,[],n_dir);
corr=mean(mean(Corr));%feat(3);
