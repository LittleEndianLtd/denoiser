//============================================================================
// Name        : torchtest.cpp
// Author      : 
// Version     :
// Copyright   : Copyright (C) 2023 Little Endian Ltd
// Description : Hello World in C++, Ansi-style
//============================================================================


#include <torch/script.h> // One-stop header.

#include <iostream>
#include <memory>

int main(int argc, const char* argv[]) {
  if (argc != 2) {
    std::cerr << "usage: example-app <path-to-exported-script-module>\n";
    return -1;
  }


  torch::jit::script::Module module;
  try {
    // Deserialize the ScriptModule from a file using torch::jit::load().
    module = torch::jit::load(argv[1]);
  }
  catch (const c10::Error& e) {
    std::cerr << "Error loading the model\n";
    return -1;
  }

  std::cout << "\nLibTorch works ok! \n";
  std::cout << "Successfully loaded " << argv[1] << " using torch::jit::load().";
}
