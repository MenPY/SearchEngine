#ifndef PARSER_HPP
#define PARSER_HPP

#include <string>

#include <regex>

#include <fstream>

#include <iostream>

#include <sstream>

#include <htmlcxx/html/ParserDom.h>

#include <stdlib.h>

#include <stdio.h>

#include <unistd.h>

#include <vector>

#include <algorithm>

#include "../pl.hpp"

#include <fstream>

using namespace std;
using namespace htmlcxx;

void pars(string html, string domain);

#endif
