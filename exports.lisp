(in-package :clipmunk)

(import (chipmunk-lispify "CP_CIRCLE_SHAPE" 'enumvalue :keyword))
(import (chipmunk-lispify "CP_SEGMENT_SHAPE" 'enumvalue :keyword))
(import (chipmunk-lispify "CP_POLY_SHAPE" 'enumvalue :keyword))
(import (chipmunk-lispify "CP_NUM_SHAPES" 'enumvalue :keyword))
(import (chipmunk-lispify "cpArbiterStateFirstColl" 'enumvalue :keyword))
(import (chipmunk-lispify "cpArbiterStateNormal" 'enumvalue :keyword))
(import (chipmunk-lispify "cpArbiterStateIgnore" 'enumvalue :keyword))
(import (chipmunk-lispify "cpArbiterStateCached" 'enumvalue :keyword))

(export (chipmunk-lispify "CP_ALLOW_PRIVATE_ACCESS" 'constant))
(export (chipmunk-lispify "cpArray" 'classname))
(export (chipmunk-lispify "cpArrayNew" 'function))
(export (chipmunk-lispify "cpArrayFree" 'function))
(export (chipmunk-lispify "cpArrayPush" 'function))
(export (chipmunk-lispify "cpArrayPop" 'function))
(export (chipmunk-lispify "cpArrayDeleteObj" 'function))
(export (chipmunk-lispify "cpArrayContains" 'function))
(export (chipmunk-lispify "cpArrayFreeEach" 'function))
(export (chipmunk-lispify "cpConstraintNext" 'function))
(export (chipmunk-lispify "cpArbiterNext" 'function))
(export (chipmunk-lispify "cpHashSetNew" 'function))
(export (chipmunk-lispify "cpHashSetSetDefaultValue" 'function))
(export (chipmunk-lispify "cpHashSetFree" 'function))
(export (chipmunk-lispify "cpHashSetCount" 'function))
(export (chipmunk-lispify "cpHashSetInsert" 'function))
(export (chipmunk-lispify "cpHashSetRemove" 'function))
(export (chipmunk-lispify "cpHashSetFind" 'function))
(export (chipmunk-lispify "cpHashSetEach" 'function))
(export (chipmunk-lispify "cpHashSetFilter" 'function))
(export (chipmunk-lispify "cpBodyAddShape" 'function))
(export (chipmunk-lispify "cpBodyRemoveShape" 'function))
(export (chipmunk-lispify "cpBodyRemoveConstraint" 'function))
(export (chipmunk-lispify "cpClosetPointOnSegment" 'function))
(export (chipmunk-lispify "cpShapeInit" 'function))
(export (chipmunk-lispify "cpShapeActive" 'function))
(export (chipmunk-lispify "cpCollideShapes" 'function))
(export (chipmunk-lispify "cpSplittingPlaneNew" 'function))
(export (chipmunk-lispify "cpSplittingPlaneCompare" 'function))
(export (chipmunk-lispify "cpLoopIndexes" 'function))
(export (chipmunk-lispify "cpSpatialIndexInit" 'function))
(export (chipmunk-lispify "cpDefaultCollisionHandler" 'variable))
(export (chipmunk-lispify "cpSpaceProcessComponents" 'function))
(export (chipmunk-lispify "cpSpacePushFreshContactBuffer" 'function))
(export (chipmunk-lispify "cpContactBufferGetArray" 'function))
(export (chipmunk-lispify "cpSpacePushContacts" 'function))
(export (chipmunk-lispify "cpPostStepCallback" 'classname))
(export (chipmunk-lispify "cpSpaceGetPostStepCallback" 'function))
(export (chipmunk-lispify "cpSpaceArbiterSetFilter" 'function))
(export (chipmunk-lispify "cpSpaceFilterArbiters" 'function))
(export (chipmunk-lispify "cpSpaceActivateBody" 'function))
(export (chipmunk-lispify "cpSpaceLock" 'function))
(export (chipmunk-lispify "cpSpaceUnlock" 'function))
(export (chipmunk-lispify "cpSpaceLookupHandler" 'function))
(export (chipmunk-lispify "cpSpaceUncacheArbiter" 'function))
(export (chipmunk-lispify "cpShapeUpdateFunc" 'function))
(export (chipmunk-lispify "cpSpaceCollideShapes" 'function))
(export (chipmunk-lispify "cpContact" 'classname))
(export (chipmunk-lispify "cpContactInit" 'function))
(export (chipmunk-lispify "cpArbiterInit" 'function))
(export (chipmunk-lispify "cpArbiterCallSeparate" 'function))
(export (chipmunk-lispify "cpArbiterThreadForBody" 'function))
(export (chipmunk-lispify "cpArbiterUnthread" 'function))
(export (chipmunk-lispify "cpArbiterUpdate" 'function))
(export (chipmunk-lispify "cpArbiterPreStep" 'function))
(export (chipmunk-lispify "cpArbiterApplyCachedImpulse" 'function))
(export (chipmunk-lispify "cpArbiterApplyImpulse" 'function))
(export (chipmunk-lispify "cpMessage" 'function))
(export (chipmunk-lispify "CP_BUFFER_BYTES" 'constant))
(export (chipmunk-lispify "CP_VERSION_MAJOR" 'constant))
(export (chipmunk-lispify "CP_VERSION_MINOR" 'constant))
(export (chipmunk-lispify "CP_VERSION_RELEASE" 'constant))
(export (chipmunk-lispify "cpVersionString" 'variable))
(export (chipmunk-lispify "cpInitChipmunk" 'function))
(export (chipmunk-lispify "cpEnableSegmentToSegmentCollisions" 'function))
(export (chipmunk-lispify "cpAreaForCircle" 'function))
(export (chipmunk-lispify "cpAreaForSegment" 'function))
(export (chipmunk-lispify "cpAreaForPoly" 'function))
(export (chipmunk-lispify "cpCentroidForPoly" 'function))
(export (chipmunk-lispify "cpRecenterPoly" 'function))
(export (chipmunk-lispify "cpMomentForBox" 'function))
(export (chipmunk-lispify "cpMomentForBox2" 'function))
(export (chipmunk-lispify "cpConvexHull" 'function))
(export (chipmunk-lispify "CP_USE_DOUBLES" 'constant))
(export (chipmunk-lispify "M_PI" 'constant))
(export (chipmunk-lispify "M_E" 'constant))
(export (chipmunk-lispify "cpfclamp01" 'function))
(export (chipmunk-lispify "cpTrue" 'constant))
(export (chipmunk-lispify "cpFalse" 'constant))
(export (chipmunk-lispify "cpVect" 'classname))
(export (chipmunk-lispify "cpMat2x2" 'classname))
(export (chipmunk-lispify "cpvstr" 'function))
(export (chipmunk-lispify "cpvtoangle" 'function))
(export (chipmunk-lispify "cpvlength" 'function))
(export (chipmunk-lispify "cpMat2x2New" 'function))
(export (chipmunk-lispify "cpMat2x2Transform" 'function))
(export (chipmunk-lispify "cpBB" 'classname))
(export (chipmunk-lispify "cpBBNewForCircle" 'function))
(export (chipmunk-lispify "cpBBIntersects" 'function))
(export (chipmunk-lispify "cpBBContainsBB" 'function))
(export (chipmunk-lispify "cpBBContainsVect" 'function))
(export (chipmunk-lispify "cpBBMerge" 'function))
(export (chipmunk-lispify "cpBBExpand" 'function))
(export (chipmunk-lispify "cpBBArea" 'function))
(export (chipmunk-lispify "cpBBMergedArea" 'function))
(export (chipmunk-lispify "cpBBSegmentQuery" 'function))
(export (chipmunk-lispify "cpBBIntersectsSegment" 'function))
(export (chipmunk-lispify "cpComponentNode" 'classname))
(export (chipmunk-lispify "cpBody" 'classname))
(export (chipmunk-lispify "cpBodyAlloc" 'function))
(export (chipmunk-lispify "cpBodyInit" 'function))
(export (chipmunk-lispify "cpBodyNew" 'function))
(export (chipmunk-lispify "cpBodyInitStatic" 'function))
(export (chipmunk-lispify "cpBodyNewStatic" 'function))
(export (chipmunk-lispify "cpBodyDestroy" 'function))
(export (chipmunk-lispify "cpBodyFree" 'function))
(export (chipmunk-lispify "cpBodySanityCheck" 'function))
(export (chipmunk-lispify "cpBodyActivate" 'function))
(export (chipmunk-lispify "cpBodyActivateStatic" 'function))
(export (chipmunk-lispify "cpBodySleep" 'function))
(export (chipmunk-lispify "cpBodySleepWithGroup" 'function))
(export (chipmunk-lispify "cpBodyIsStatic" 'function))
(export (chipmunk-lispify "cpBodyGetSpace" 'function))
(export (chipmunk-lispify "cpBodyGetMass" 'function))
(export (chipmunk-lispify "cpBodySetMass" 'function))
(export (chipmunk-lispify "cpBodyGetMoment" 'function))
(export (chipmunk-lispify "cpBodySetMoment" 'function))
(export (chipmunk-lispify "cpBodySetPos" 'function))
(export (chipmunk-lispify "cpBodySetVel" 'function))
(export (chipmunk-lispify "cpBodySetForce" 'function))
(export (chipmunk-lispify "cpBodyGetAngle" 'function))
(export (chipmunk-lispify "cpBodySetAngle" 'function))
(export (chipmunk-lispify "cpBodyGetAngVel" 'function))
(export (chipmunk-lispify "cpBodySetAngVel" 'function))
(export (chipmunk-lispify "cpBodyGetTorque" 'function))
(export (chipmunk-lispify "cpBodySetTorque" 'function))
(export (chipmunk-lispify "cpBodyGetVelLimit" 'function))
(export (chipmunk-lispify "cpBodySetVelLimit" 'function))
(export (chipmunk-lispify "cpBodyGetAngVelLimit" 'function))
(export (chipmunk-lispify "cpBodySetAngVelLimit" 'function))
(export (chipmunk-lispify "cpBodyGetUserData" 'function))
(export (chipmunk-lispify "cpBodySetUserData" 'function))
(export (chipmunk-lispify "cpBodyUpdateVelocity" 'function))
(export (chipmunk-lispify "cpBodyUpdatePosition" 'function))
(export (chipmunk-lispify "cpBodyResetForces" 'function))
(export (chipmunk-lispify "cpBodyApplyForce" 'function))
(export (chipmunk-lispify "cpBodyApplyImpulse" 'function))
(export (chipmunk-lispify "cpBodyGetVelAtWorldPoint" 'function))
(export (chipmunk-lispify "cpBodyGetVelAtLocalPoint" 'function))
(export (chipmunk-lispify "cpBodyEachShape" 'function))
(export (chipmunk-lispify "cpBodyEachConstraint" 'function))
(export (chipmunk-lispify "cpBodyEachArbiter" 'function))
(export (chipmunk-lispify "cpNearestPointQueryInfo" 'classname))
(export (chipmunk-lispify "cpSegmentQueryInfo" 'classname))
(export (chipmunk-lispify "cpShapeType" 'enumname))
(export (chipmunk-lispify "CP_CIRCLE_SHAPE" 'enumvalue :keyword))
(export (chipmunk-lispify "CP_SEGMENT_SHAPE" 'enumvalue :keyword))
(export (chipmunk-lispify "CP_POLY_SHAPE" 'enumvalue :keyword))
(export (chipmunk-lispify "CP_NUM_SHAPES" 'enumvalue :keyword))
(export (chipmunk-lispify "cpShapeClass" 'classname))
(export (chipmunk-lispify "cpShape" 'classname))
(export (chipmunk-lispify "cpShapeDestroy" 'function))
(export (chipmunk-lispify "cpShapeFree" 'function))
(export (chipmunk-lispify "cpShapeCacheBB" 'function))
(export (chipmunk-lispify "cpShapeUpdate" 'function))
(export (chipmunk-lispify "cpShapePointQuery" 'function))
(export (chipmunk-lispify "cpShapeNearestPointQuery" 'function))
(export (chipmunk-lispify "cpShapeSegmentQuery" 'function))
(export (chipmunk-lispify "cpShapeGetSpace" 'function))
(export (chipmunk-lispify "cpShapeGetBody" 'function))
(export (chipmunk-lispify "cpShapeSetBody" 'function))
(export (chipmunk-lispify "cpShapeGetBB" 'function))
(export (chipmunk-lispify "cpShapeGetSensor" 'function))
(export (chipmunk-lispify "cpShapeSetSensor" 'function))
(export (chipmunk-lispify "cpShapeGetElasticity" 'function))
(export (chipmunk-lispify "cpShapeSetElasticity" 'function))
(export (chipmunk-lispify "cpShapeGetFriction" 'function))
(export (chipmunk-lispify "cpShapeSetFriction" 'function))
(export (chipmunk-lispify "cpShapeGetSurfaceVelocity" 'function))
(export (chipmunk-lispify "cpShapeSetSurfaceVelocity" 'function))
(export (chipmunk-lispify "cpShapeGetUserData" 'function))
(export (chipmunk-lispify "cpShapeSetUserData" 'function))
(export (chipmunk-lispify "cpShapeGetCollisionType" 'function))
(export (chipmunk-lispify "cpShapeSetCollisionType" 'function))
(export (chipmunk-lispify "cpShapeGetGroup" 'function))
(export (chipmunk-lispify "cpShapeSetGroup" 'function))
(export (chipmunk-lispify "cpShapeGetLayers" 'function))
(export (chipmunk-lispify "cpShapeSetLayers" 'function))
(export (chipmunk-lispify "cpResetShapeIdCounter" 'function))
(export (chipmunk-lispify "cpCircleShape" 'classname))
(export (chipmunk-lispify "cpCircleShapeAlloc" 'function))
(export (chipmunk-lispify "cpCircleShapeInit" 'function))
(export (chipmunk-lispify "cpCircleShapeNew" 'function))
(export (chipmunk-lispify "cpCircleShapeGetRadius" 'function))
(export (chipmunk-lispify "cpSegmentShape" 'classname))
(export (chipmunk-lispify "cpSegmentShapeAlloc" 'function))
(export (chipmunk-lispify "cpSegmentShapeInit" 'function))
(export (chipmunk-lispify "cpSegmentShapeNew" 'function))
(export (chipmunk-lispify "cpSegmentShapeSetNeighbors" 'function))
(export (chipmunk-lispify "cpSegmentShapeGetRadius" 'function))
(export (chipmunk-lispify "cpSplittingPlane" 'classname))
(export (chipmunk-lispify "cpPolyShape" 'classname))
(export (chipmunk-lispify "cpPolyShapeAlloc" 'function))
(export (chipmunk-lispify "cpPolyShapeInit" 'function))
(export (chipmunk-lispify "cpPolyShapeNew" 'function))
(export (chipmunk-lispify "cpBoxShapeInit" 'function))
(export (chipmunk-lispify "cpBoxShapeInit2" 'function))
(export (chipmunk-lispify "cpBoxShapeNew" 'function))
(export (chipmunk-lispify "cpBoxShapeNew2" 'function))
(export (chipmunk-lispify "cpPolyValidate" 'function))
(export (chipmunk-lispify "cpPolyShapeGetNumVerts" 'function))
(export (chipmunk-lispify "cpCollisionHandler" 'classname))
(export (chipmunk-lispify "CP_MAX_CONTACTS_PER_ARBITER" 'constant))
(export (chipmunk-lispify "cpArbiterState" 'enumname))
(export (chipmunk-lispify "cpArbiterStateFirstColl" 'enumvalue :keyword))
(export (chipmunk-lispify "cpArbiterStateNormal" 'enumvalue :keyword))
(export (chipmunk-lispify "cpArbiterStateIgnore" 'enumvalue :keyword))
(export (chipmunk-lispify "cpArbiterStateCached" 'enumvalue :keyword))
(export (chipmunk-lispify "cpArbiterThread" 'classname))
(export (chipmunk-lispify "cpArbiter" 'classname))
(export (chipmunk-lispify "cpArbiterGetElasticity" 'function))
(export (chipmunk-lispify "cpArbiterSetElasticity" 'function))
(export (chipmunk-lispify "cpArbiterGetFriction" 'function))
(export (chipmunk-lispify "cpArbiterSetFriction" 'function))
(export (chipmunk-lispify "cpArbiterGetSurfaceVelocity" 'function))
(export (chipmunk-lispify "cpArbiterSetSurfaceVelocity" 'function))
(export (chipmunk-lispify "cpArbiterGetUserData" 'function))
(export (chipmunk-lispify "cpArbiterSetUserData" 'function))
(export (chipmunk-lispify "cpArbiterTotalKE" 'function))
(export (chipmunk-lispify "cpArbiterIgnore" 'function))
(export (chipmunk-lispify "cpArbiterGetShapes" 'function))
(export (chipmunk-lispify "cpArbiterGetBodies" 'function))
(export (chipmunk-lispify "cpContactPointSet" 'classname))
(export (chipmunk-lispify "cpContactPointSet_points" 'classname))
(export (chipmunk-lispify "cpArbiterGetContactPointSet" 'function))
(export (chipmunk-lispify "cpArbiterIsFirstContact" 'function))
(export (chipmunk-lispify "cpArbiterGetCount" 'function))
(export (chipmunk-lispify "cpArbiterGetDepth" 'function))
(export (chipmunk-lispify "cpConstraintClass" 'classname))
(export (chipmunk-lispify "cpConstraint" 'classname))
(export (chipmunk-lispify "cpConstraintDestroy" 'function))
(export (chipmunk-lispify "cpConstraintFree" 'function))
(export (chipmunk-lispify "cpConstraintActivateBodies" 'function))
(export (chipmunk-lispify "cpConstraintGetSpace" 'function))
(export (chipmunk-lispify "cpConstraintGetA" 'function))
(export (chipmunk-lispify "cpConstraintGetB" 'function))
(export (chipmunk-lispify "cpConstraintGetMaxForce" 'function))
(export (chipmunk-lispify "cpConstraintSetMaxForce" 'function))
(export (chipmunk-lispify "cpConstraintGetErrorBias" 'function))
(export (chipmunk-lispify "cpConstraintSetErrorBias" 'function))
(export (chipmunk-lispify "cpConstraintGetMaxBias" 'function))
(export (chipmunk-lispify "cpConstraintSetMaxBias" 'function))
(export (chipmunk-lispify "cpConstraintGetPreSolveFunc" 'function))
(export (chipmunk-lispify "cpConstraintSetPreSolveFunc" 'function))
(export (chipmunk-lispify "cpConstraintGetPostSolveFunc" 'function))
(export (chipmunk-lispify "cpConstraintSetPostSolveFunc" 'function))
(export (chipmunk-lispify "cpConstraintGetUserData" 'function))
(export (chipmunk-lispify "cpConstraintSetUserData" 'function))
(export (chipmunk-lispify "cpConstraintGetImpulse" 'function))
(export (chipmunk-lispify "cpDampedRotarySpringGetClass" 'function))
(export (chipmunk-lispify "cpDampedRotarySpring" 'classname))
(export (chipmunk-lispify "cpDampedRotarySpringAlloc" 'function))
(export (chipmunk-lispify "cpDampedRotarySpringInit" 'function))
(export (chipmunk-lispify "cpDampedRotarySpringNew" 'function))
(export (chipmunk-lispify "cpDampedRotarySpringGetRestAngle" 'function))
(export (chipmunk-lispify "cpDampedRotarySpringSetRestAngle" 'function))
(export (chipmunk-lispify "cpDampedRotarySpringGetStiffness" 'function))
(export (chipmunk-lispify "cpDampedRotarySpringSetStiffness" 'function))
(export (chipmunk-lispify "cpDampedRotarySpringGetDamping" 'function))
(export (chipmunk-lispify "cpDampedRotarySpringSetDamping" 'function))
(export (chipmunk-lispify "cpDampedRotarySpringGetSpringTorqueFunc" 'function))
(export (chipmunk-lispify "cpDampedRotarySpringSetSpringTorqueFunc" 'function))
(export (chipmunk-lispify "cpDampedSpringGetClass" 'function))
(export (chipmunk-lispify "cpDampedSpring" 'classname))
(export (chipmunk-lispify "cpDampedSpringAlloc" 'function))
(export (chipmunk-lispify "cpDampedSpringInit" 'function))
(export (chipmunk-lispify "cpDampedSpringNew" 'function))
(export (chipmunk-lispify "cpDampedSpringGetAnchr1" 'function))
(export (chipmunk-lispify "cpDampedSpringSetAnchr1" 'function))
(export (chipmunk-lispify "cpDampedSpringGetAnchr2" 'function))
(export (chipmunk-lispify "cpDampedSpringSetAnchr2" 'function))
(export (chipmunk-lispify "cpDampedSpringGetRestLength" 'function))
(export (chipmunk-lispify "cpDampedSpringSetRestLength" 'function))
(export (chipmunk-lispify "cpDampedSpringGetStiffness" 'function))
(export (chipmunk-lispify "cpDampedSpringSetStiffness" 'function))
(export (chipmunk-lispify "cpDampedSpringGetDamping" 'function))
(export (chipmunk-lispify "cpDampedSpringSetDamping" 'function))
(export (chipmunk-lispify "cpDampedSpringGetSpringForceFunc" 'function))
(export (chipmunk-lispify "cpDampedSpringSetSpringForceFunc" 'function))
(export (chipmunk-lispify "cpGearJointGetClass" 'function))
(export (chipmunk-lispify "cpGearJoint" 'classname))
(export (chipmunk-lispify "cpGearJointAlloc" 'function))
(export (chipmunk-lispify "cpGearJointInit" 'function))
(export (chipmunk-lispify "cpGearJointNew" 'function))
(export (chipmunk-lispify "cpGearJointGetPhase" 'function))
(export (chipmunk-lispify "cpGearJointSetPhase" 'function))
(export (chipmunk-lispify "cpGearJointGetRatio" 'function))
(export (chipmunk-lispify "cpGearJointSetRatio" 'function))
(export (chipmunk-lispify "cpGrooveJointGetClass" 'function))
(export (chipmunk-lispify "cpGrooveJoint" 'classname))
(export (chipmunk-lispify "cpGrooveJointAlloc" 'function))
(export (chipmunk-lispify "cpGrooveJointInit" 'function))
(export (chipmunk-lispify "cpGrooveJointNew" 'function))
(export (chipmunk-lispify "cpGrooveJointGetGrooveA" 'function))
(export (chipmunk-lispify "cpGrooveJointSetGrooveA" 'function))
(export (chipmunk-lispify "cpGrooveJointGetGrooveB" 'function))
(export (chipmunk-lispify "cpGrooveJointSetGrooveB" 'function))
(export (chipmunk-lispify "cpGrooveJointGetAnchr2" 'function))
(export (chipmunk-lispify "cpGrooveJointSetAnchr2" 'function))
(export (chipmunk-lispify "cpPinJointGetClass" 'function))
(export (chipmunk-lispify "cpPinJoint" 'classname))
(export (chipmunk-lispify "cpPinJointAlloc" 'function))
(export (chipmunk-lispify "cpPinJointInit" 'function))
(export (chipmunk-lispify "cpPinJointNew" 'function))
(export (chipmunk-lispify "cpPinJointGetAnchr1" 'function))
(export (chipmunk-lispify "cpPinJointSetAnchr1" 'function))
(export (chipmunk-lispify "cpPinJointGetAnchr2" 'function))
(export (chipmunk-lispify "cpPinJointSetAnchr2" 'function))
(export (chipmunk-lispify "cpPinJointGetDist" 'function))
(export (chipmunk-lispify "cpPinJointSetDist" 'function))
(export (chipmunk-lispify "cpPivotJointGetClass" 'function))
(export (chipmunk-lispify "cpPivotJoint" 'classname))
(export (chipmunk-lispify "cpPivotJointAlloc" 'function))
(export (chipmunk-lispify "cpPivotJointInit" 'function))
(export (chipmunk-lispify "cpPivotJointNew" 'function))
(export (chipmunk-lispify "cpPivotJointNew2" 'function))
(export (chipmunk-lispify "cpPivotJointGetAnchr1" 'function))
(export (chipmunk-lispify "cpPivotJointSetAnchr1" 'function))
(export (chipmunk-lispify "cpPivotJointGetAnchr2" 'function))
(export (chipmunk-lispify "cpPivotJointSetAnchr2" 'function))
(export (chipmunk-lispify "cpRatchetJointGetClass" 'function))
(export (chipmunk-lispify "cpRatchetJoint" 'classname))
(export (chipmunk-lispify "cpRatchetJointAlloc" 'function))
(export (chipmunk-lispify "cpRatchetJointInit" 'function))
(export (chipmunk-lispify "cpRatchetJointNew" 'function))
(export (chipmunk-lispify "cpRatchetJointGetAngle" 'function))
(export (chipmunk-lispify "cpRatchetJointSetAngle" 'function))
(export (chipmunk-lispify "cpRatchetJointGetPhase" 'function))
(export (chipmunk-lispify "cpRatchetJointSetPhase" 'function))
(export (chipmunk-lispify "cpRatchetJointGetRatchet" 'function))
(export (chipmunk-lispify "cpRatchetJointSetRatchet" 'function))
(export (chipmunk-lispify "cpRotaryLimitJointGetClass" 'function))
(export (chipmunk-lispify "cpRotaryLimitJoint" 'classname))
(export (chipmunk-lispify "cpRotaryLimitJointAlloc" 'function))
(export (chipmunk-lispify "cpRotaryLimitJointInit" 'function))
(export (chipmunk-lispify "cpRotaryLimitJointNew" 'function))
(export (chipmunk-lispify "cpRotaryLimitJointGetMin" 'function))
(export (chipmunk-lispify "cpRotaryLimitJointSetMin" 'function))
(export (chipmunk-lispify "cpRotaryLimitJointGetMax" 'function))
(export (chipmunk-lispify "cpRotaryLimitJointSetMax" 'function))
(export (chipmunk-lispify "cpSimpleMotorGetClass" 'function))
(export (chipmunk-lispify "cpSimpleMotor" 'classname))
(export (chipmunk-lispify "cpSimpleMotorAlloc" 'function))
(export (chipmunk-lispify "cpSimpleMotorInit" 'function))
(export (chipmunk-lispify "cpSimpleMotorNew" 'function))
(export (chipmunk-lispify "cpSimpleMotorGetRate" 'function))
(export (chipmunk-lispify "cpSimpleMotorSetRate" 'function))
(export (chipmunk-lispify "cpSlideJointGetClass" 'function))
(export (chipmunk-lispify "cpSlideJoint" 'classname))
(export (chipmunk-lispify "cpSlideJointAlloc" 'function))
(export (chipmunk-lispify "cpSlideJointInit" 'function))
(export (chipmunk-lispify "cpSlideJointNew" 'function))
(export (chipmunk-lispify "cpSlideJointGetAnchr1" 'function))
(export (chipmunk-lispify "cpSlideJointSetAnchr1" 'function))
(export (chipmunk-lispify "cpSlideJointGetAnchr2" 'function))
(export (chipmunk-lispify "cpSlideJointSetAnchr2" 'function))
(export (chipmunk-lispify "cpSlideJointGetMin" 'function))
(export (chipmunk-lispify "cpSlideJointSetMin" 'function))
(export (chipmunk-lispify "cpSlideJointGetMax" 'function))
(export (chipmunk-lispify "cpSlideJointSetMax" 'function))
(export (chipmunk-lispify "cpSpace" 'classname))
(export (chipmunk-lispify "cpSpaceAlloc" 'function))
(export (chipmunk-lispify "cpSpaceInit" 'function))
(export (chipmunk-lispify "cpSpaceNew" 'function))
(export (chipmunk-lispify "cpSpaceDestroy" 'function))
(export (chipmunk-lispify "cpSpaceFree" 'function))
(export (chipmunk-lispify "cpSpaceGetIterations" 'function))
(export (chipmunk-lispify "cpSpaceSetIterations" 'function))
(export (chipmunk-lispify "cpSpaceGetGravity" 'function))
(export (chipmunk-lispify "cpSpaceSetGravity" 'function))
(export (chipmunk-lispify "cpSpaceGetDamping" 'function))
(export (chipmunk-lispify "cpSpaceSetDamping" 'function))
(export (chipmunk-lispify "cpSpaceGetIdleSpeedThreshold" 'function))
(export (chipmunk-lispify "cpSpaceSetIdleSpeedThreshold" 'function))
(export (chipmunk-lispify "cpSpaceGetSleepTimeThreshold" 'function))
(export (chipmunk-lispify "cpSpaceSetSleepTimeThreshold" 'function))
(export (chipmunk-lispify "cpSpaceGetCollisionSlop" 'function))
(export (chipmunk-lispify "cpSpaceSetCollisionSlop" 'function))
(export (chipmunk-lispify "cpSpaceGetCollisionBias" 'function))
(export (chipmunk-lispify "cpSpaceSetCollisionBias" 'function))
(export (chipmunk-lispify "cpSpaceGetCollisionPersistence" 'function))
(export (chipmunk-lispify "cpSpaceSetCollisionPersistence" 'function))
(export (chipmunk-lispify "cpSpaceGetEnableContactGraph" 'function))
(export (chipmunk-lispify "cpSpaceSetEnableContactGraph" 'function))
(export (chipmunk-lispify "cpSpaceGetUserData" 'function))
(export (chipmunk-lispify "cpSpaceSetUserData" 'function))
(export (chipmunk-lispify "cpSpaceGetStaticBody" 'function))
(export (chipmunk-lispify "cpSpaceGetCurrentTimeStep" 'function))
(export (chipmunk-lispify "cpSpaceIsLocked" 'function))
(export (chipmunk-lispify "cpSpaceSetDefaultCollisionHandler" 'function))
(export (chipmunk-lispify "cpSpaceAddCollisionHandler" 'function))
(export (chipmunk-lispify "cpSpaceRemoveCollisionHandler" 'function))
(export (chipmunk-lispify "cpSpaceAddShape" 'function))
(export (chipmunk-lispify "cpSpaceAddStaticShape" 'function))
(export (chipmunk-lispify "cpSpaceAddBody" 'function))
(export (chipmunk-lispify "cpSpaceAddConstraint" 'function))
(export (chipmunk-lispify "cpSpaceRemoveShape" 'function))
(export (chipmunk-lispify "cpSpaceRemoveStaticShape" 'function))
(export (chipmunk-lispify "cpSpaceRemoveBody" 'function))
(export (chipmunk-lispify "cpSpaceRemoveConstraint" 'function))
(export (chipmunk-lispify "cpSpaceContainsShape" 'function))
(export (chipmunk-lispify "cpSpaceContainsBody" 'function))
(export (chipmunk-lispify "cpSpaceContainsConstraint" 'function))
(export (chipmunk-lispify "cpSpaceAddPostStepCallback" 'function))
(export (chipmunk-lispify "cpSpacePointQuery" 'function))
(export (chipmunk-lispify "cpSpacePointQueryFirst" 'function))
(export (chipmunk-lispify "cpSpaceNearestPointQuery" 'function))
(export (chipmunk-lispify "cpSpaceNearestPointQueryNearest" 'function))
(export (chipmunk-lispify "cpSpaceSegmentQuery" 'function))
(export (chipmunk-lispify "cpSpaceSegmentQueryFirst" 'function))
(export (chipmunk-lispify "cpSpaceBBQuery" 'function))
(export (chipmunk-lispify "cpSpaceShapeQuery" 'function))
(export (chipmunk-lispify "cpSpaceActivateShapesTouchingShape" 'function))
(export (chipmunk-lispify "cpSpaceEachBody" 'function))
(export (chipmunk-lispify "cpSpaceEachShape" 'function))
(export (chipmunk-lispify "cpSpaceEachConstraint" 'function))
(export (chipmunk-lispify "cpSpaceReindexStatic" 'function))
(export (chipmunk-lispify "cpSpaceReindexShape" 'function))
(export (chipmunk-lispify "cpSpaceReindexShapesForBody" 'function))
(export (chipmunk-lispify "cpSpaceUseSpatialHash" 'function))
(export (chipmunk-lispify "cpSpaceStep" 'function))
(export (chipmunk-lispify "cpSpaceAddCollisionHandler" 'function))
(export (chipmunk-lispify "cpSpaceRemoveCollisionHandler" 'function))
(export (chipmunk-lispify "cpMomentForCircle" 'function))
(export (chipmunk-lispify "cpMomentForSegment" 'function))
(export (chipmunk-lispify "cpMomentForPoly" 'function))
