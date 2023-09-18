disp("GPA Calculator (Marksheet Generator)");
n = input("Enter the number of courses: ");
scores = zeros(1, n);
grades = strings(1, n);
chs=zeros(1,n);
ch_raw=zeros(1,n);
total_ch=0;
obt_ch=0;
disp(" ");
for x = 1:n
    ch= input("Credit Hours of course "+ x+": ");
    total_ch=total_ch+ch;
    score = input("Obtained percentage of course " + x + ": ");
    scores(x) = score;
    ch_raw(x)=ch;
    
    if (score >= 93)
        grades(x) = "Course " + x + ": A  (4.00)";
        chs(x)=4*ch;
    elseif (score >= 87)
        grades(x) = "Course " + x + ": A- (3.67)";
        chs(x)=3.67*ch;
    elseif (score >= 82)
        grades(x) = "Course " + x + ": B+ (3.33)";
        chs(x)=3.33*ch;
    elseif (score >= 77)
        grades(x) = "Course " + x + ": B  (3.00)";
        chs(x)=3*ch;
    elseif (score >= 72)
        grades(x) = "Course " + x + ": B- (2.67)";
        chs(x)=2.67*ch;
    elseif (score >= 68)
        grades(x) = "Course " + x + ": C+ (2.33)";
        chs(x)=2.33*ch;
    elseif (score >= 63)
        grades(x) = "Course " + x + ": C  (2.00)";
        chs(x)=2*ch;
    elseif (score >= 60)
        grades(x) = "Course " + x + ": C- (1.67)";
        chs(x)=1.67*ch;
    else
        grades(x) = "Course " + x + ": F  (0.00)";
        chs(x)=0;
    end
end
disp(" ");
disp("        MARKSHEET");
for x=1:n
   disp(grades(x)+"  CH: "+ch_raw(x));
   obt_ch=obt_ch+chs(x);   
end
GPA=obt_ch./total_ch;

disp(" ");
disp("Obtained GPA:          "+GPA);
disp("Obtained Credit Hours: "+obt_ch);
disp("Total Credit Hours:    "+total_ch);