#!/bin/bash

CLASS=$1

if [[ "$2" == "cpp" ]];
then
	echo "#include \"$CLASS.hpp\"

$CLASS::$CLASS () {}
$CLASS::$CLASS(const $CLASS &) {}
$CLASS::~$CLASS () {}
const $CLASS& $CLASS::operator=(const $CLASS &rhs)
{
    if (this != &rhs)
    {
        // code
    }

    return *this;
}"
elif [[ "$2" == "hpp" ]]; then
	echo "#ifndef ${CLASS^^}_HPP
#define ${CLASS^^}_HPP

class $CLASS
{
   public:
      $CLASS ();
      $CLASS (const $CLASS &a);
      ~$CLASS ();
      const $CLASS& operator=(const $CLASS &a);
};

#endif"
else
	echo "you have to choose between cpp and hpp"
fi
