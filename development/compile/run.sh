g++ -c one.cpp
g++ -c two.cpp
g++ -c three.cpp
g++ -c main.cpp
ar cps libstaticlib.a one.o two.o three.o
g++ -o static_main main.cpp -L. -lstaticlib
#export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH
g++ -fPIC -shared -o libdynamiclib.so one.cpp two.cpp three.cpp
g++ -o dynamic_main main.cpp -L. -ldynamiclib
