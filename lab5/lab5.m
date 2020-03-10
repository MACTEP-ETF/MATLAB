R1=1; R2=2; R3=3; R4=4; R5=5; R6=6; R7=7;
E1=1; E2=2; E3=3;


R = [R1+R2+R3 -R2 0;
        -R2 R2+R4+R5 -R5;
         0   -R5   R5+R6+R7]

R =

     6    -2     0
    -2    11    -5
     0    -5    18

E = [E1 -E2 -E3]'

E =

     1
    -2
    -3

%% Meklēsim konturstrāvas
Ik = R\E % Gausa izslēgšanas metode VS aprēķinam

Ik =

    0.0735
   -0.2795
   -0.2443

%% Uzdevums : atrast IR2, UR2, PR2 - ?
IR2 = Ik(1)-Ik(2)

IR2 =

    0.3530

UR2 = IR2*R2

UR2 =

    0.7060

P = U2*IR2
{Undefined function or variable 'U2'.
} 
P = UR2*IR2

P =

    0.2492

%% cits variants
% tagad mums būs 3 laika momenti
% un E1, E2, E3 būs 3 vērtības
E1 = [1 -1 0];
E2 = [2 -2 0];
E3 = [3 -3 0];
E = [E1; -E2; -E3]

E =

     1    -1     0
    -2     2     0
    -3     3     0

%% Meklēsim konturstrāvas
Ik = R\E

Ik =

    0.0735   -0.0735         0
   -0.2795    0.2795         0
   -0.2443    0.2443         0


%% Otrā rinda - 2. kontūrstrāva
%% Trešā rinda - 3. kontūrstrāva

%% Uzdevums : atrast IR3, UR3, PR3 - ?
IR3 = Ik(1,:)

IR3 =

    0.0735   -0.0735         0

UR3 = IR3*R3

UR3 =

    0.2205   -0.2205         0

PR3 = UR3.*IR3

PR3 =

    0.0162    0.0162         0


%% cits variants
% tagad mums būs laika mainīgie signāli
t = 0:0.00:1;
E1 = sin(2*pi*3*t);
% E2 = 5; kā pareizi pierakstīt konstanti?
E2 = 5+zeros(size(t));
E3 = cos(2*pi*7*t);
%% risināsim vienādojumu sistēmas, lai atrastu kontūrstrāvas
% tagad jau mums ir 101 3 vienādojumu sistēma
Ik - R\E;
%% Uzdevums būs atrast un uzzīmēt UR5, PR5-?
IR5 = Ik(3,:)-Ik(2,:);
UR5 = IR5*R5;
PR5 = IR5.*UR5;
E = [E1; -E2; -E3]

E =

  3×0 empty <a href="matlab:helpPopup double" style="font-weight:bold">double</a> matrix

Ik - R\E;
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('minus')" style="font-weight:bold"> - </a>
Matrix dimensions must agree.
} 
E = [E1; -E2; -E3];
Ik = R\E;
IR5 = Ik(3,:)-Ik(2,:);
UR5 = IR5*R5;
PR5 = IR5.*UR5;
%% zīmēsim
plot(t,UR5,t,PR5)
legend('UR5','PR5')
[Warning: Ignoring extra legend entries.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>set_children_and_strings', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 646)" style="font-weight:bold">legend>set_children_and_strings</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',646,0)">line 646</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>make_legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 316)" style="font-weight:bold">legend>make_legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',316,0)">line 316</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 259)" style="font-weight:bold">legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',259,0)">line 259</a>)] 
plot(t,UR5,t,PR5)
plot(t,UR5,t,PR5)
t = 0:0.01:1;
plot(t,UR5,t,PR5)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Vectors must be the same length.
} 
E = [E1; -E2; -E3];
Ik = R\E;
IR5 = Ik(3,:)-Ik(2,:);
UR5 = IR5*R5;
PR5 = IR5.*UR5;
plot(t,UR5,t,PR5)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Vectors must be the same length.
} 
plot(t,UR5,t,PR5)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Vectors must be the same length.
} 
PR5 = UR5.*IR5;
plot(t,UR5,t,PR5)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Vectors must be the same length.
} 
UR5 = IR5*R5;
PR5 = IR5.*UR5;
plot(t,UR5,t,PR5)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Vectors must be the same length.
} 
t = 0:0.01:1;
E = [E1; -E2; -E3];
Ik = R\E;
IR5 = Ik(3,:)-Ik(2,:);
UR5 = IR5*R5;
PR5 = IR5.*UR5;
plot(t,UR5,t,PR5)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Vectors must be the same length.
} 
E1 = sin(2*pi*3*t);
E2 = 5+zeros(size(t));
E3 = cos(2*pi*7*t);
E = [E1; -E2; -E3];
Ik = R\E;
IR5 = Ik(3,:)-Ik(2,:);
UR5 = IR5*R5;
PR5 = IR5.*UR5;
plot(t,UR5,t,PR5)
legend('UR5','PR5')
xlabel('t,s')
grid
legend('UR' {5},'PR5')
 legend('UR' {5},'PR5')
             ↑
{Error: Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check for mismatched
delimiters.
} 
legend('UR',{5},'PR5')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cellstr', '/usr/local/MATLAB/R2018a/toolbox/matlab/strfun/cellstr.m', 44)" style="font-weight:bold">cellstr</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/strfun/cellstr.m',44,0)">line 44</a>)
Element 1 is not a string scalar or character array. All elements of cell input must be string scalars or character arrays.

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>process_inputs', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 547)" style="font-weight:bold">legend>process_inputs</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',547,0)">line 547</a>)
        strings = cellstr(argin{n});

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>make_legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 306)" style="font-weight:bold">legend>make_legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',306,0)">line 306</a>)
[autoupdate,orient,location,position,children,listen,strings,propargs] = process_inputs(ha,argin); %#ok

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 259)" style="font-weight:bold">legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',259,0)">line 259</a>)
    make_legend(ha,args(arg:end),version);
} 
legend('UR5','PR5')



%% cits paņēmiens, lai nebūtu pretruna
% ka uz "y" asi gan Volti, gan Vati
figure
yyaxis left
plot(t,UR5)
plot(t,UR5)
ylabel('spriegums')

yyaxis right
plot(t,PR5)
ylabel('jauda')

xlabel('t,s')


%% Rezultātu pārbaude
% pābaudīsim Kirhofa sprieguma likumu
% 3. kontūram
% UR5+UR6+UR7==-E3
% pārnesīsim visu vienā pusē
% UR5+UR6+UR7+E3==0
% un pielīdzināsim kādam mainīgajam
% UTst
% UTst = UR5+UR6+UR7+E3;
% un uzzīmēsim
UR6 = Ik(3,:)*R6;
UR7 = Ik(3,:)*R7;
% UTst = UR5+UR6+UR7+E3;
UTst = UR5+UR6+UR7+E3;
figure(3), plot(t,Utst)
{Undefined function or variable 'Utst'.
} 
figure(3), plot(t,UTst)
% Vēlamais rezultāts - 0
diary iff
