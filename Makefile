CXXFLAGS=-O2 -g -Wall -std=c++11
OUT_NAME=a
HDR_DIR=include
SRC_DIR=src
SRC_LIST=$(wildcard $(SRC_DIR)/*.cpp)
OBJ_LIST=$(notdir $(patsubst %.cpp,%.o,$(SRC_LIST)))
.PHONY=all clean

all: $(OBJ_LIST)
	$(info Building executable...)
	@$(CXX) $(CXXFLAGS) $(OBJ_LIST) -o $(OUT_NAME) 
	$(info Done. Type ./$(OUT_NAME) to run.)
%.o: $(SRC_DIR)/%.cpp
	$(info Building object file $@...)
	@$(CXX) $(CXXFLAGS) -I$(HDR_DIR) -c $<
clean:
	$(info Cleaning directory...)
	@$(RM) $(OUT_NAME) $(OBJ_LIST)
	$(info Done.)
