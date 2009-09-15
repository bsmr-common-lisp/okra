// ogre-timer.cpp
//
// This file has been generated by the Okra Bindings Generator.
// You should not edit this file unless you know what you're doing.
// Any changes you've made directly to this file will not be retained
// when a new instance of this file is generated.
//
// author: Erik Winkels (aerique@xs4all.nl)
//
// See the LICENSE file in the Okra root directory for more info.
//
// This file was generated on: 2009-09-15 10:46:19.

#include "handwritten/okra.h"


// Prototypes

extern "C"
{
    bool ogre_timer_set_option (Timer*, const char*, const void*);
    void ogre_timer_reset (Timer*);
    unsigned long ogre_timer_get_milliseconds (Timer*);
    unsigned long ogre_timer_get_microseconds (Timer*);
    unsigned long ogre_timer_get_milliseconds_cpu (Timer*);
    unsigned long ogre_timer_get_microseconds_cpu (Timer*);
}


// Functions

// name: "setOption"
// type: "bool"
// args: (("const String&" . "strKey") ("const void*" . "pValue"))
//
bool ogre_timer_set_option (Timer* ogre_timer, const char* strKey, const void* pValue)
{
    return ogre_timer->setOption(strKey, pValue);
}

// name: "reset"
// type: "void"
// args: "void"
//
void ogre_timer_reset (Timer* ogre_timer)
{
    ogre_timer->reset();
}

// name: "getMilliseconds"
// type: "unsigned long"
// args: "void"
//
unsigned long ogre_timer_get_milliseconds (Timer* ogre_timer)
{
    return ogre_timer->getMilliseconds();
}

// name: "getMicroseconds"
// type: "unsigned long"
// args: "void"
//
unsigned long ogre_timer_get_microseconds (Timer* ogre_timer)
{
    return ogre_timer->getMicroseconds();
}

// name: "getMillisecondsCPU"
// type: "unsigned long"
// args: "void"
//
unsigned long ogre_timer_get_milliseconds_cpu (Timer* ogre_timer)
{
    return ogre_timer->getMillisecondsCPU();
}

// name: "getMicrosecondsCPU"
// type: "unsigned long"
// args: "void"
//
unsigned long ogre_timer_get_microseconds_cpu (Timer* ogre_timer)
{
    return ogre_timer->getMicrosecondsCPU();
}


