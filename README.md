# MATLAB
Tuvākajā laikā izskatīšu un ievietošu visu lekciju un laboru strukturētā aprakstā + ar satura rādītāju :)  
## Vispārīgi
- Masīvs sākas ar indeksu **1** nevis ar **0**, kā C valodā.  
- **Vektors** – masīvs kas sastāv tikai no vienas rindas/kolonnas.  
- *Double* ir noklusēts datu tips peldošajām vērtībām.  

## Komandas un funcijas
- **close all** – aizver visus logus.  
- **hold on** – iesaldē grafiku un ļauj zīmēt citus pa virsu.  
- **shg** – piem., parāda *plot* funkcijas gala produktu pa virsu - virs visiem aktīviem logiem (*on Top*).  
- **%** – komentārs.  
- **%%** – Virsraksts.  
- **format long** – ļauj izvadīt 15 zīmes aiz komata.   
- **format rat** – izvada vērtību kā proporciju (*Piem., vērtiba = 0.2, proporcija = 1/5*).  
- **format short** – atgriež attēlojumu uz nokluseto, respektīvi uz 4 zīmēm aiz komata.  
- **format compact** – attēlos peldošā komata vērtību ar **e** palīdzību (*Piem., 1,03e-3*).  
- **exp()** – eilera konstance. Cipars iekavās norādīs uz eilera pakāpi (*Piem., exp(2) = e<sup>2</sup>*).  
- **C = polyfit(x,y,N)** – kur x ‒ "x" ass vērtība, y ‒ "y" ass vērtība, N ‒ polinoma kārta.  
- **I = polyval(C,V)** ‒ lai nerakstītu šo: I = C(1)*V.^3+C(2)*V.^2+C(3)*V+C(4).  
- **fprintf** – tas pats kā *printf* C valodā, visas komandas tādas pašas.  
- **doc "funkcija"** – parāda dokumentāciju konkrētai funkcijai. 
- **num2str(pi)** ‒ pārveido *char* klasi uz *double*. (*Pārveido par skaitli matemātiskās konstances.*)  
- **str2num(3.14)** – pārveido *double* klasi uz *char*.  
- **\[ \]** – iespēja izvadīt uz ekrāna neizmantojot "fprintf" funkciju.  
- **X** – XXX.  
- **X** – XXX.  
- **X** – XXX.  
- **X** – XXX.  


## Datu struktūras (Data Structures)
- **students.vards = 'Monu';** – izveido datu struktūru **students** ar apakšmainīgo *vards*.  
  - **students.uzvards = 'Monu';** ‒ apakšmainīgais *uzvards*.   
  - **students.vecums = 20;** ‒ apakšmainīgais *vecums*. 
- **students(2).vards = 'Jānis';** – definējam otru apakšgrupu ar tiem pašiem apakšmainīgiem kā pamatgrupai *students*.  
- **X** – XXX.  
- **X** – XXX.  
- **X** – XXX.  
- **X** – XXX.  


## Simboliskā matemātika
- **syms** – simbolisko mainīgo definēšana ar matricas palīdzibu (*Piem., syms a11 a12 a21 a22*).  
- **sym** – simbolisko mainīgo definēšana.  
  - **A = sym('a',\[3 4\])** ‒ ģenerē matricu.  
- **diff(x^2,x,2)** – aprēķina atvasinājumu. Funkcija | pēc kā atvasināt | cik reizes.    
- **int()** – nenoteiktais inegrālis.  
  - **int(x^2,x,-3,3)** ‒ 3. un 4. mainīgais ir noteiktā integrāļa robežas.  
- **limit(1/(x-1),x,1,'left')** – formula, x, uz kurieni tiecas, no kuras puses.  
- **solve()** – vienādojuma risināšana.  
  atb = solve(x+y+z==21,x+y-z==1,x-y+z==9)  
  struct with fields:
    x: \[1×1 sym\]  
    y: \[1×1 sym\]  
    z: \[1×1 sym\] 
- **expand()** – atver iekavas vienādojumam.  
- **simplify()** – vienkāršo izteiksmi.  
- **X** – XXX.  
- **X** – XXX.  
- **X** – XXX.  
- **X** – XXX.  
- **X** – XXX.  
- **X** – XXX.  



### Matricas
- **linspace()** – t = linspace(0,2,6), kur **0** - sākuma elements; **2** - beigu elements; **6** - elementu skaits.
- **zeros(), ones()** – ģenerē nuļļu vai vieninieku matricas. iekavās jāieraksta rindu un kolonnu skaitu (*Piem., zeros(2,3)*).  
- **size(A)** – parāda matricas izmēru (rindas, kolonnas).  
  - size(A,1) – parāda attiecīgo dimensiju.  

### Gadijumskaitļi
- **rand** – ģenerē gadijumskaitli intervālā \[0;1\].  
  - rand(2,3) – ģenerē matricu.  
  - randi(10) – ģenerē veselu skaitli no "0" līdz "10" (Līdz norādītam skaitli iekavās).  
  - randi(10,\[2,3\] – ģenerē matricu ar skaitļiem no "0" līdz "10".  

### Speciālie mainīgie
- **NaN** – nenoteiktība.  
- **Inf** – bezgalība.  
- **ans** – noklusētais mainīgais, kurā glabājās pēdējā darbība.  

## Oprerācijas ar matricām
- **.\*** – Adamara reizinājums. Reizina elementus tāpat kā saskaitīšanas operācija. Piem., C=A.\*B -> a<sub>1</sub>\*b<sub>1</sub>=c<sub>1</sub> un tā tālāk.  
- **Matricas pieraksts** – C = \[1 2; 3 4\], kur ar **atstarpi/komatu** mēs atdalam elementus un ar **;** rindas.
- **Vektora ģenerēšana** – x = 0:0.2:1 - kas nozīmē: x = sākuma elements:solis:beigu_elements. Tādā veidā ģenerējas vektors ar 6 vērtībām. Ir iespējams ģenerēt arī ar funkcijas palīdzību! Skat. *linspace* aprakstu.    
- **'** – ar apostrofu dotā matrica tiek transponēta (Pieraksts: y=\[1,2;3,4\]').  
- **.'** – transponēšana kompleksiem skaitļiem.  
- **A (:,:) = 1** – kols nozīmē, ka matricas visām rindām un kolonnām tiks piešķirtas vērtība **1**.  
- **A (:,:,:) = 1** – šī ir 3D matrica, kurai trešais elements ir matricas, piem. RGB attēls:  
  - A (:,:,1) = R;  
  - A (:,:,2) = G;  
  - A (:,:,3) = B;  
- **A (:,:,:,:) = 1** – šī ir 4D matrica, kurai ceturto elementu var uzskatīt kā kadru. Tādejādi katrā kadrā ierakstīt 3D matricu.  

## Grafiki (plot)
- **xlabel('laiks, s')**  
- **ylabel('U, V')**
  - ylabel('U^{max} {R1}, V') – attēlo <sup>max</sup> un <sub>R1</sub> pie **U** burta.  
- **grid** – tīkliņš fonā.  
- **legend('sīnus no t', 'cos no t')**  
- **title('virsraksts')**  
- **gtext('\leftarrow cos')** – ļauj uzlikt uz grafika papild tekstu brīvi izvēlētā vietā (ar kursora palīdzību). Ar sleš tiek apzīmēti *SpecSimboli*.  
- **text(0.5, -0.5, 'kaut kas')** – uzliek uz grafika papild tekstu konkrētajā koordinātē.  
- **figure** – atver logu grafiku zīmēšanai.  
- **subplot(2,3,2)** – ļauj zīmēt vairākus grafikus (ne tikai līkni, bet pilnīgi visu) uz vienas darba virsmas.  

##### Sagataves
- **X** – XXX.  
