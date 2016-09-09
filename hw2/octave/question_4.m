f=@(x) (5-x) .* exp(x) -5;
plot([0:.01:5],f([0:.01:5]));
saveas(gcf,"q4fig.jpg");
findzero(4,5,(1e-6)/2,f)
