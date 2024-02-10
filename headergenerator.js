className = process.argv[2];

let hpp = `#ifndef ${className.toUpperCase()}_HPP
#define ${className}_HPP

class ${className}
{
   public:
      ${className} ();
      ${className} (const ${className} &a);
      ~${className} ();
      const ${className}& operator=(const ${className} &a);
};

#endif
`;

console.log(hpp);