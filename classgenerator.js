ClassName = process.argv[2];

let cpp = `#include "${ClassName}.hpp"

${ClassName}::${ClassName} () {}
${ClassName}::${ClassName}(const ${ClassName} &) {}
${ClassName}::~${ClassName} () {}
const ${ClassName}& ${ClassName}::operator=(const ${ClassName} &rhs)
{
    if (this != &rhs)
    {
        // code
    }

    return *this;
}
`;


console.log(cpp);