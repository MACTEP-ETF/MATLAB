% Kā piekļūt pie elementiem
A = [1 2 3; 4 5 6; 7 8 9]
A (1,2)
A (1,2) % 1.rinda, 2. kolonna

%% kolons attiecīga indeksā vietā nozīmēs visus attiecīgus
% elementus (visas rindas, vai visas kolonnas)
A (1,:) % uzrādīs rindu
A (:,2) % uzrādīs kolonnu
ans = 
2
5
8

% Indeksācija ir pa kolonnām!
A (2,2)=10
A = 
   1  2  3
   4  10 6
   7  8  9

%% Daudzdimensiju matricas
R = [1 1 1
     0 0 0
     0 0 0]

G = [0 0 0
     1 1 1 
     0 0 0]

B = [0 0 0
     0 0 0 
     1 1 1]

bilde (:,:,1) = R;
bilde (:,:,2) = G;
bilde (:,:,3) = B;
image(bilde) % image izmanto 3 dimensijas
size(R)
ans = 
     3 3
size(bilde)
ans =
     3 3 3
bilde

bilde(:,:,1) =
     1 1 1
     0 0 0
     0 0 0

bilde(:,:,2) =
     0 0 0
     1 1 1 
     0 0 0

bilde(:,:,3) =
     0 0 0
     0 0 0 
     1 1 1

%% izveidosim 4 dimensionālu matricu
filma(:,:,:,1) = bilde;
%%
% mainīsim bildes pikseļu krāsu
bilde(2,2,3)=1; % zils pikselis 2. rinda, 2. kolonna
image(bilde)
filma(:,:,:,2) = bilde;
size(filma)
ans = 
     3 3 3 2
%izveidosim 3. kadru
bilde(2,:,1) = 1; % sarkans 2. rinda, visas kolonnas
image(bilde)
filma(:,:,:,3) = bilde;
% izveidosim 4. kadru
bilde(3,1:2,1) = 1; % sarkans 3. rinda, no 1. līdz 2.
image(bilde)
filma(:,:,:,4) = bilde; % inicializējam 4. kadru
% izveidosim 5. kadru
bilde([1 3],3,2) = 1; % zaļš 1. un 3. rindā, 3. kolonnā
image(bilde)
filma(:,:,:,5) = bilde;
bilde(:,:,:)=0; % ierakstīt "0" visās rindās, kolonās - viss melns
image(bilde)
filma(:,:,:,6) = bilde; 
% izveidosim 7. kadru
bilde([1 2],[1 2],1)=1;
image(bilde);
% laukumu no 1. līdz 2. rindai, no 1. līdz 2. kolonnai iekrāsojām sarkanu
filma(:,:,:,7) = bilde;
bilde(2:3,2:3,1)=[0.25 0.75; 0.5 1];
image(bilde)
filma(:,:,:,8) = bilde;
% izveidosim 9. kadru
bilde(1,:,2) = [1 0.75 0.5];
image(bilde)
filma(:,:,:,9) = bilde;
% izveidosim 10. kadru
bilde([1 3],3,3)=[0.5 0.75];
image(bilde)
filma(:,:,:,10) = bilde;
% izveidosim 11. kadru
% nodzēsīsim visu
bilde(:,:,:)=0;
image(bilde)
filma(:,:,:,11) = bilde;
% izveidosim 12. kadru
% izmantošu viendimensionālu indeksu
% nomainīsim 1 līdz 9 elementu intensitāti
% no 0.3 līdz 1
bilde(1:9)=linspace(0.3,1,9);
image(bilde)
filma(:,:,:,12) = bilde;
bilde(:,:,:)=0;
filma(:,:,:,13) = bilde;
bilde(1:9) = 1; % viss sarkans
bilde(10:27) = [linspace(0,1,9), linspace(0,1,9)]; % matricu apvienošana notiek ar kvadrātiekavām: C = [A,B]
image(bilde)
filma(:,:,:,14) = bilde;
size(filma)
size(filma,4)
for i = 1:size(filma,4)
image(filma(:,:,:,i));
pause(1); shg;
end
diary off
