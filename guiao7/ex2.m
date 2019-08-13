[Set,users]=CFilmes('u.data.txt');

tic
J=DistJaccard(Set);
res2=SimUsers(J,users,0.4);

toc
disp(res2);