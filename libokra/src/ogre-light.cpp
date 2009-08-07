// ogre-light.cpp
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
// This file was generated on: 2009-08-07 15:52:09.

#include "handwritten/okra.h"


// Prototypes

extern "C"
{
    void ogre_light_set_type (Light*, Light::LightTypes);
    Light::LightTypes ogre_light_get_type (Light*);
    void ogre_light_set_diffuse_colour_real_real_real (Light*, Real, Real, Real);
    void ogre_light_set_diffuse_colour_colourvalue (Light*, const okraArray4);
    void ogre_light_get_diffuse_colour (Light*, okraArray4);
    void ogre_light_set_specular_colour_real_real_real (Light*, Real, Real, Real);
    void ogre_light_set_specular_colour_colourvalue (Light*, const okraArray4);
    void ogre_light_get_specular_colour (Light*, okraArray4);
    void ogre_light_set_attenuation (Light*, Real, Real, Real, Real);
    Real ogre_light_get_attenuation_range (Light*);
    Real ogre_light_get_attenuation_constant (Light*);
    Real ogre_light_get_attenuation_linear (Light*);
    Real ogre_light_get_attenuation_quadric (Light*);
    void ogre_light_set_position_real_real_real (Light*, Real, Real, Real);
    void ogre_light_set_position_vector3 (Light*, const okraArray3);
    void ogre_light_get_position (Light*, okraArray3);
    void ogre_light_set_direction_real_real_real (Light*, Real, Real, Real);
    void ogre_light_set_direction_vector3 (Light*, const okraArray3);
    void ogre_light_get_direction (Light*, okraArray3);
    void ogre_light_set_spotlight_range (Light*, Real, Real, Real);
    okraReal ogre_light_get_spotlight_inner_angle (Light*);
    okraReal ogre_light_get_spotlight_outer_angle (Light*);
    Real ogre_light_get_spotlight_falloff (Light*);
    void ogre_light_set_spotlight_inner_angle (Light*, Real);
    void ogre_light_set_spotlight_outer_angle (Light*, Real);
    void ogre_light_set_spotlight_falloff (Light*, Real);
    void ogre_light_set_power_scale (Light*, Real);
    Real ogre_light_get_power_scale (Light*);
    const AxisAlignedBox& ogre_light_get_bounding_box (Light*);
    const char* ogre_light_get_movable_type (Light*);
    void ogre_light_get_derived_position_bool (Light*, okraArray3, bool);
    void ogre_light_get_derived_direction (Light*, okraArray3);
    void ogre_light_set_visible_bool (Light*, bool);
    Real ogre_light_get_bounding_radius (Light*);
    Vector4 ogre_light_get_as4_dvector (Light*, bool);
    unsigned int ogre_light_get_type_flags (Light*);
    AnimableValuePtr ogre_light_create_animable_value (Light*, const char*);
    void ogre_light_set_custom_shadow_camera_setup (Light*, const ShadowCameraSetupPtr&);
    void ogre_light_reset_custom_shadow_camera_setup (Light*);
    const ShadowCameraSetupPtr& ogre_light_get_custom_shadow_camera_setup (Light*);
    void ogre_light_visit_renderables (Light*, Renderable::Visitor*, bool);
    void ogre_light_set_shadow_far_distance (Light*, Real);
    void ogre_light_reset_shadow_far_distance (Light*);
    Real ogre_light_get_shadow_far_distance (Light*);
    Real ogre_light_get_shadow_far_distance_squared (Light*);
}


// Functions

// name: "setType"
// type: "void"
// args: (("LightTypes" . "type"))
//
void ogre_light_set_type (Light* ogre_light, Light::LightTypes type)
{
    ogre_light->setType(type);
}

// name: "getType"
// type: "LightTypes"
// args: "void"
//
Light::LightTypes ogre_light_get_type (Light* ogre_light)
{
    return ogre_light->getType();
}

// name: "setDiffuseColour"
// type: "void"
// args: (("Real" . "red") ("Real" . "green") ("Real" . "blue"))
//
void ogre_light_set_diffuse_colour_real_real_real (Light* ogre_light, Real red, Real green, Real blue)
{
    ogre_light->setDiffuseColour(red, green, blue);
}

// name: "setDiffuseColour"
// type: "void"
// args: (("const ColourValue&" . "colour"))
//
void ogre_light_set_diffuse_colour_colourvalue (Light* ogre_light, const okraArray4 colour)
{
    ColourValue ogre_colour = ColourValue(colour[0], colour[1], colour[2], colour[3]);
    ogre_light->setDiffuseColour(ogre_colour);
}

// name: "getDiffuseColour"
// type: "const ColourValue&"
// args: "void"
//
void ogre_light_get_diffuse_colour (Light* ogre_light, okraArray4 cv)
{
    ColourValue ogre_cv = ogre_light->getDiffuseColour();
    cv[0] = ogre_cv.r;
    cv[1] = ogre_cv.g;
    cv[2] = ogre_cv.b;
    cv[3] = ogre_cv.a;
}

// name: "setSpecularColour"
// type: "void"
// args: (("Real" . "red") ("Real" . "green") ("Real" . "blue"))
//
void ogre_light_set_specular_colour_real_real_real (Light* ogre_light, Real red, Real green, Real blue)
{
    ogre_light->setSpecularColour(red, green, blue);
}

// name: "setSpecularColour"
// type: "void"
// args: (("const ColourValue&" . "colour"))
//
void ogre_light_set_specular_colour_colourvalue (Light* ogre_light, const okraArray4 colour)
{
    ColourValue ogre_colour = ColourValue(colour[0], colour[1], colour[2], colour[3]);
    ogre_light->setSpecularColour(ogre_colour);
}

// name: "getSpecularColour"
// type: "const ColourValue&"
// args: "void"
//
void ogre_light_get_specular_colour (Light* ogre_light, okraArray4 cv)
{
    ColourValue ogre_cv = ogre_light->getSpecularColour();
    cv[0] = ogre_cv.r;
    cv[1] = ogre_cv.g;
    cv[2] = ogre_cv.b;
    cv[3] = ogre_cv.a;
}

// name: "setAttenuation"
// type: "void"
// args: (("Real" . "range") ("Real" . "constant") ("Real" . "linear") ("Real" . "quadratic"))
//
void ogre_light_set_attenuation (Light* ogre_light, Real range, Real constant, Real linear, Real quadratic)
{
    ogre_light->setAttenuation(range, constant, linear, quadratic);
}

// name: "getAttenuationRange"
// type: "Real"
// args: "void"
//
Real ogre_light_get_attenuation_range (Light* ogre_light)
{
    return ogre_light->getAttenuationRange();
}

// name: "getAttenuationConstant"
// type: "Real"
// args: "void"
//
Real ogre_light_get_attenuation_constant (Light* ogre_light)
{
    return ogre_light->getAttenuationConstant();
}

// name: "getAttenuationLinear"
// type: "Real"
// args: "void"
//
Real ogre_light_get_attenuation_linear (Light* ogre_light)
{
    return ogre_light->getAttenuationLinear();
}

// name: "getAttenuationQuadric"
// type: "Real"
// args: "void"
//
Real ogre_light_get_attenuation_quadric (Light* ogre_light)
{
    return ogre_light->getAttenuationQuadric();
}

// name: "setPosition"
// type: "void"
// args: (("Real" . "x") ("Real" . "y") ("Real" . "z"))
//
void ogre_light_set_position_real_real_real (Light* ogre_light, Real x, Real y, Real z)
{
    ogre_light->setPosition(x, y, z);
}

// name: "setPosition"
// type: "void"
// args: (("const Vector3&" . "vec"))
//
void ogre_light_set_position_vector3 (Light* ogre_light, const okraArray3 vec)
{
    Vector3 ogre_vec = Vector3(vec[0], vec[1], vec[2]);
    ogre_light->setPosition(ogre_vec);
}

// name: "getPosition"
// type: "const Vector3&"
// args: "void"
//
void ogre_light_get_position (Light* ogre_light, okraArray3 v)
{
    Vector3 ogre_v = ogre_light->getPosition();
    v[0] = ogre_v[0];
    v[1] = ogre_v[1];
    v[2] = ogre_v[2];
}

// name: "setDirection"
// type: "void"
// args: (("Real" . "x") ("Real" . "y") ("Real" . "z"))
//
void ogre_light_set_direction_real_real_real (Light* ogre_light, Real x, Real y, Real z)
{
    ogre_light->setDirection(x, y, z);
}

// name: "setDirection"
// type: "void"
// args: (("const Vector3&" . "vec"))
//
void ogre_light_set_direction_vector3 (Light* ogre_light, const okraArray3 vec)
{
    Vector3 ogre_vec = Vector3(vec[0], vec[1], vec[2]);
    ogre_light->setDirection(ogre_vec);
}

// name: "getDirection"
// type: "const Vector3&"
// args: "void"
//
void ogre_light_get_direction (Light* ogre_light, okraArray3 v)
{
    Vector3 ogre_v = ogre_light->getDirection();
    v[0] = ogre_v[0];
    v[1] = ogre_v[1];
    v[2] = ogre_v[2];
}

// name: "setSpotlightRange"
// type: "void"
// args: (("const Radian&" . "innerAngle") ("const Radian&" . "outerAngle") ("Real" . "falloff"))
//
void ogre_light_set_spotlight_range (Light* ogre_light, Real innerAngle, Real outerAngle, Real falloff)
{
    Radian ogre_innerAngle = Radian(innerAngle);Radian ogre_outerAngle = Radian(outerAngle);
    ogre_light->setSpotlightRange(ogre_innerAngle, ogre_outerAngle, falloff);
}

// name: "getSpotlightInnerAngle"
// type: "const Radian&"
// args: "void"
//
okraReal ogre_light_get_spotlight_inner_angle (Light* ogre_light)
{
    Radian ogre_r = ogre_light->getSpotlightInnerAngle();
    return ogre_r.valueRadians();
}

// name: "getSpotlightOuterAngle"
// type: "const Radian&"
// args: "void"
//
okraReal ogre_light_get_spotlight_outer_angle (Light* ogre_light)
{
    Radian ogre_r = ogre_light->getSpotlightOuterAngle();
    return ogre_r.valueRadians();
}

// name: "getSpotlightFalloff"
// type: "Real"
// args: "void"
//
Real ogre_light_get_spotlight_falloff (Light* ogre_light)
{
    return ogre_light->getSpotlightFalloff();
}

// name: "setSpotlightInnerAngle"
// type: "void"
// args: (("const Radian&" . "val"))
//
void ogre_light_set_spotlight_inner_angle (Light* ogre_light, Real val)
{
    Radian ogre_val = Radian(val);
    ogre_light->setSpotlightInnerAngle(ogre_val);
}

// name: "setSpotlightOuterAngle"
// type: "void"
// args: (("const Radian&" . "val"))
//
void ogre_light_set_spotlight_outer_angle (Light* ogre_light, Real val)
{
    Radian ogre_val = Radian(val);
    ogre_light->setSpotlightOuterAngle(ogre_val);
}

// name: "setSpotlightFalloff"
// type: "void"
// args: (("Real" . "val"))
//
void ogre_light_set_spotlight_falloff (Light* ogre_light, Real val)
{
    ogre_light->setSpotlightFalloff(val);
}

// name: "setPowerScale"
// type: "void"
// args: (("Real" . "power"))
//
void ogre_light_set_power_scale (Light* ogre_light, Real power)
{
    ogre_light->setPowerScale(power);
}

// name: "getPowerScale"
// type: "Real"
// args: "void"
//
Real ogre_light_get_power_scale (Light* ogre_light)
{
    return ogre_light->getPowerScale();
}

// name: "getBoundingBox"
// type: "const AxisAlignedBox&"
// args: "void"
//
const AxisAlignedBox& ogre_light_get_bounding_box (Light* ogre_light)
{
    return ogre_light->getBoundingBox();
}

// name: "getMovableType"
// type: "const String&"
// args: "void"
//
const char* ogre_light_get_movable_type (Light* ogre_light)
{
    return ogre_light->getMovableType().c_str();
}

// name: "getDerivedPosition"
// type: "const Vector3&"
// args: (("bool" . "cameraRelativeIfSet"))
//
void ogre_light_get_derived_position_bool (Light* ogre_light, okraArray3 v, bool cameraRelativeIfSet)
{
    Vector3 ogre_v = ogre_light->getDerivedPosition(cameraRelativeIfSet);
    v[0] = ogre_v[0];
    v[1] = ogre_v[1];
    v[2] = ogre_v[2];
}

// name: "getDerivedDirection"
// type: "const Vector3&"
// args: "void"
//
void ogre_light_get_derived_direction (Light* ogre_light, okraArray3 v)
{
    Vector3 ogre_v = ogre_light->getDerivedDirection();
    v[0] = ogre_v[0];
    v[1] = ogre_v[1];
    v[2] = ogre_v[2];
}

// name: "setVisible"
// type: "void"
// args: (("bool" . "visible"))
//
void ogre_light_set_visible_bool (Light* ogre_light, bool visible)
{
    ogre_light->setVisible(visible);
}

// name: "getBoundingRadius"
// type: "Real"
// args: "void"
//
Real ogre_light_get_bounding_radius (Light* ogre_light)
{
    return ogre_light->getBoundingRadius();
}

// name: "getAs4DVector"
// type: "Vector4"
// args: (("bool" . "cameraRelativeIfSet"))
//
Vector4 ogre_light_get_as4_dvector (Light* ogre_light, bool cameraRelativeIfSet)
{
    return ogre_light->getAs4DVector(cameraRelativeIfSet);
}

// name: "getTypeFlags"
// type: "uint32"
// args: "void"
//
unsigned int ogre_light_get_type_flags (Light* ogre_light)
{
    return ogre_light->getTypeFlags();
}

// name: "createAnimableValue"
// type: "AnimableValuePtr"
// args: (("const String&" . "valueName"))
//
AnimableValuePtr ogre_light_create_animable_value (Light* ogre_light, const char* valueName)
{
    return ogre_light->createAnimableValue(valueName);
}

// name: "setCustomShadowCameraSetup"
// type: "void"
// args: (("const ShadowCameraSetupPtr&" . "customShadowSetup"))
//
void ogre_light_set_custom_shadow_camera_setup (Light* ogre_light, const ShadowCameraSetupPtr& customShadowSetup)
{
    ogre_light->setCustomShadowCameraSetup(customShadowSetup);
}

// name: "resetCustomShadowCameraSetup"
// type: "void"
// args: "void"
//
void ogre_light_reset_custom_shadow_camera_setup (Light* ogre_light)
{
    ogre_light->resetCustomShadowCameraSetup();
}

// name: "getCustomShadowCameraSetup"
// type: "const ShadowCameraSetupPtr&"
// args: "void"
//
const ShadowCameraSetupPtr& ogre_light_get_custom_shadow_camera_setup (Light* ogre_light)
{
    return ogre_light->getCustomShadowCameraSetup();
}

// name: "visitRenderables"
// type: "void"
// args: (("Renderable::Visitor*" . "visitor") ("bool" . "debugRenderables"))
//
void ogre_light_visit_renderables (Light* ogre_light, Renderable::Visitor* visitor, bool debugRenderables)
{
    ogre_light->visitRenderables(visitor, debugRenderables);
}

// name: "setShadowFarDistance"
// type: "void"
// args: (("Real" . "distance"))
//
void ogre_light_set_shadow_far_distance (Light* ogre_light, Real distance)
{
    ogre_light->setShadowFarDistance(distance);
}

// name: "resetShadowFarDistance"
// type: "void"
// args: "void"
//
void ogre_light_reset_shadow_far_distance (Light* ogre_light)
{
    ogre_light->resetShadowFarDistance();
}

// name: "getShadowFarDistance"
// type: "Real"
// args: "void"
//
Real ogre_light_get_shadow_far_distance (Light* ogre_light)
{
    return ogre_light->getShadowFarDistance();
}

// name: "getShadowFarDistanceSquared"
// type: "Real"
// args: "void"
//
Real ogre_light_get_shadow_far_distance_squared (Light* ogre_light)
{
    return ogre_light->getShadowFarDistanceSquared();
}

