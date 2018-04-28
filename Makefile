CXXFLAGS=-O2 -g -Wall -std=c++11
OUT_NAME=a
HDR_DIR=include
SRC_DIR=src
OBJ_DIR=obj
SRC_LIST=$(wildcard $(SRC_DIR)/*.cpp)
OBJ_LIST=$(addprefix $(OBJ_DIR)/,$(notdir $(patsubst %.cpp,%.o,$(SRC_LIST))))
.PHONY=all clean

$(shell mkdir -p $(OBJ_DIR))
all: $(OBJ_LIST)
	$(info Building executable...)
	@$(CXX) $(CXXFLAGS) $(OBJ_LIST) -o $(OUT_NAME) 
	$(info Done. Type ./$(OUT_NAME) to run.)
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(info Building object file $@...)
	@$(CXX) $(CXXFLAGS) -I$(HDR_DIR) -c $< -o $@
clean:
	$(info Cleaning up build files...)
	@$(RM) $(OUT_NAME) $(OBJ_LIST)
	@rmdir $(OBJ_DIR) --ignore-fail-on-non-empty
	$(info Done.)
