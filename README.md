# MATLAB
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

### Matricas
- **linspase()** – t = linspace(0,2,6), kur **0** - sākuma elements; **2** - beigu elements; **6** - elementu skaits.
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
- **Matricas pieraksts** – C = \[ 1 2; 3 4\], kur ar **atstarpi/komatu** mēs atdalam elementus un ar **;** rindas.
- **Vektora ģenerēšana** – x = 0:0.2:1 - kas nozīmē: x = sākuma elements:solis:beigu_elements. Tādā veidā ģenerējas vektors ar 6 vērtībām. Ir iespējams ģenerēt arī ar funkcijas palīdzību! Skat. *linspace* aprakstu.    
- **'** – ar apostrofu dotā matrica tiek transponēta (Pieraksts: y=\[1,2;3,4\]').  
- **.'** – transponēšana kompleksiem skaitļiem.  


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
