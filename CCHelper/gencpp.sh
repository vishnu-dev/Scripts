#!/bin/sh

# Needs exactly one arg
if [ $# -ne 1 ]; then
	echo "Usage: $0 <filename>"
	exit
fi

# Append .cpp to filename if not given
if [[ $1 == *.cpp ]]; then
	filename=$1
else
	filename=$1.cpp
fi

cat > $filename << END_OF_TEMPLATE
#include <iostream>
#include <algorithm>
#include <unordered_map>
#include <vector>

#define typ long long int

using namespace std;

inline typ max(typ a, typ b)
{	return a > b ? a : b;	}

inline typ min(typ a, typ b)
{	return a < b ? a : b;	}

int main()
{
	ios::sync_with_stdio(false);

	typ T;
	cin >> T;

	//Test cases
	while(T--)
	{


		//Output here with newline
	}

	return 0;
}
END_OF_TEMPLATE

# Open file using sublime text
subl3 $filename
