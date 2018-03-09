Never lose your code

github
https://github.com/rogerjdeangelis/utl_never_lose_your_program_code

Never lose your code

   Two methods
       1. Save what you are working on every minute ito your versioning folder
       2. Single function key that saves a copy of your program in a dynamic temestamp.
          (seconds since you started the SAS applications - stamp changes by seconds)

see
https://communities.sas.com/t5/Base-SAS-Programming/sas-code-lost/m-p/444146


 On classic editor taskbar

 A. Tools>Options>Preferences  set autosave every minute

    You need to have a c:/ver folder

    This will save the classic editor text to c:/ver/pgm.sas

    On you SAS icon or config or autoexec

    -autosaveloc  c:\ver\pgm.sas


 B. Hit PF1 or Mouse button and have a time stamped version of your program saved in c:/ver

      If you are working on

         phy_110hpcs

      Then

         phy_110hpcs33596

      Will be saved in c:/ver


      Put this line in your autoexec

      %Let _q=%sysfunc(int(%sysfunc(time())));

   2. The first line of your program should be
      %let pgm=utl_getxls;
      Execute the let statement at least once (one hand highlight and RMB submit)

   3. Put this on function key F1

      This increents the timestamp and severs a new copy of your program to c:/ver

      file &pgm..sas;file "d:\ver\&pgm.&_q";%let _q=%eval(0&_q.+1);


       KEY        LEN    VAL

       F1          71    pgm;file &pgm..sas;file d:\ver\&pgm.&_q..sas;%let _q=%eval(0&_q +1);



