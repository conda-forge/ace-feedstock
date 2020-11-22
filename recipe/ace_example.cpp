#include <ace/ACE.h>

#include <iostream>

int main(int argc, char *argv[])
{
    std::cerr << "This example uses ACE " << ACE::major_version() <<
                                      "." << ACE::minor_version() <<
                                      "." << ACE::micro_version() << std::endl;
    return 0;
}
