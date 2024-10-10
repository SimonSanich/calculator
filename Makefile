CXX = g++
CXXFLAGS = -std=c++11 -Iinclude


TARGET = main
OBJS = src/main.o src/calculator.o
LIBRARY = libcalculator.a


all: $(LIBRARY) $(TARGET)

$(LIBRARY): src/calculator.o
	$(AR) rcs $@ $^

$(TARGET): $(OBJS) $(LIBRARY)
	$(CXX) -o $@ $(OBJS) -L. -lcalculator

src/main.o: src/main.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

src/calculator.o: src/calculator.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET) $(LIBRARY)