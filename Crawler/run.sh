g++ main.cpp PageLoader.cpp pl.hpp GetDomain.cpp parser/parser.cpp parser/parser.hpp -lcurl -lhtmlcxx -lboost_regex && clear
echo "Loading 🍳" 
 sleep 0.7 
  clear 
   echo "Loading 🍳🍳" 
    sleep 0.7 
     clear 
      echo "Loading 🍳🍳🍳" 
       sleep 0.7 
        clear 
         echo "Loading 🍳🍳" 
          sleep 0.7 
           clear 
            echo "Loading 🍳" 
             sleep 0.7 
              clear
./a.out | grep .jpg | sort -u | tee ./project/mycsv/htmlcsv/db.csv && clear
echo "Loading 🍳" 
 sleep 0.7 
  clear 
   echo "Loading 🍳🍳" 
    sleep 0.7 
     clear 
      echo "Loading 🍳🍳🍳" 
       sleep 0.7 
        clear 
         echo "Loading 🍳🍳" 
          sleep 0.7 
           clear 
            echo "Loading 🍳" 
             sleep 0.7 
              clear
./a.out | grep .html | sort -u | tee ./project/mycsv/htmlcsv/dbLinks.csv && clear
xdg-open http://127.0.0.1:8000/htmlcsv/output/ && clear
python ./project/mycsv/manage.py runserver 
