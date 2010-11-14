(in-package :cl-chipmunk)

(cl:export '#.(chipmunk-lispify "cpVect" 'classname))
(cl:export '#.(chipmunk-lispify "cpBB" 'classname))
(cl:export '#.(chipmunk-lispify "cpArray" 'classname))
(cl:export '#.(chipmunk-lispify "cpHashSetBin" 'classname))
(cl:export '#.(chipmunk-lispify "cpHashSet" 'classname))
(cl:export '#.(chipmunk-lispify "cpHandle" 'classname))
(cl:export '#.(chipmunk-lispify "cpSpaceHashBin" 'classname))
(cl:export '#.(chipmunk-lispify "cpSpaceHash" 'classname))
(cl:export '#.(chipmunk-lispify "cpComponentNode" 'classname))
(cl:export '#.(chipmunk-lispify "cpBody" 'classname))
(cl:export '#.(chipmunk-lispify "cpSegmentQueryInfo" 'classname))
(cl:export '#.(chipmunk-lispify "cpShapeClass" 'classname))
(cl:export '#.(chipmunk-lispify "cpShape" 'classname))
(cl:export '#.(chipmunk-lispify "cpCircleShape" 'classname))
(cl:export '#.(chipmunk-lispify "cpSegmentShape" 'classname))
(cl:export '#.(chipmunk-lispify "cpPolyShapeAxis" 'classname))
(cl:export '#.(chipmunk-lispify "cpPolyShape" 'classname))
(cl:export '#.(chipmunk-lispify "cpContact" 'classname))
(cl:export '#.(chipmunk-lispify "cpArbiter" 'classname))
(cl:export '#.(chipmunk-lispify "cpConstraintClass" 'classname))
(cl:export '#.(chipmunk-lispify "cpConstraint" 'classname))
(cl:export '#.(chipmunk-lispify "cpCollisionHandler" 'classname))
(cl:export '#.(chipmunk-lispify "cpContactBufferHeader" 'classname))
(cl:export '#.(chipmunk-lispify "cpSpace" 'classname))

(cl:export '#.(chipmunk-lispify "cpMessage" 'function))
(cl:export '#.(chipmunk-lispify "cpInitChipmunk" 'function))
(cl:export '#.(chipmunk-lispify "cpMomentForCircle" 'function))
(cl:export '#.(chipmunk-lispify "cpMomentForSegment" 'function))
(cl:export '#.(chipmunk-lispify "cpMomentForPoly" 'function))
(cl:export '#.(chipmunk-lispify "cpMomentForBox" 'function))
(cl:export '#.(chipmunk-lispify "cpvlength" 'function))
(cl:export '#.(chipmunk-lispify "cpvtoangle" 'function))
(cl:export '#.(chipmunk-lispify "cpvstr" 'function))
(cl:export '#.(chipmunk-lispify "cpArrayAlloc" 'function))
(cl:export '#.(chipmunk-lispify "cpArrayInit" 'function))
(cl:export '#.(chipmunk-lispify "cpArrayNew" 'function))
(cl:export '#.(chipmunk-lispify "cpArrayDestroy" 'function))
(cl:export '#.(chipmunk-lispify "cpArrayFree" 'function))
(cl:export '#.(chipmunk-lispify "cpArrayClear" 'function))
(cl:export '#.(chipmunk-lispify "cpArrayPush" 'function))
(cl:export '#.(chipmunk-lispify "cpArrayPop" 'function))
(cl:export '#.(chipmunk-lispify "cpArrayDeleteIndex" 'function))
(cl:export '#.(chipmunk-lispify "cpArrayDeleteObj" 'function))
(cl:export '#.(chipmunk-lispify "cpArrayAppend" 'function))
(cl:export '#.(chipmunk-lispify "cpArrayEach" 'function))
(cl:export '#.(chipmunk-lispify "cpArrayContains" 'function))
(cl:export '#.(chipmunk-lispify "cpHashSetDestroy" 'function))
(cl:export '#.(chipmunk-lispify "cpHashSetFree" 'function))
(cl:export '#.(chipmunk-lispify "cpHashSetAlloc" 'function))
(cl:export '#.(chipmunk-lispify "cpHashSetInit" 'function))
(cl:export '#.(chipmunk-lispify "cpHashSetNew" 'function))
(cl:export '#.(chipmunk-lispify "cpHashSetInsert" 'function))
(cl:export '#.(chipmunk-lispify "cpHashSetRemove" 'function))
(cl:export '#.(chipmunk-lispify "cpHashSetFind" 'function))
(cl:export '#.(chipmunk-lispify "cpHashSetEach" 'function))
(cl:export '#.(chipmunk-lispify "cpHashSetFilter" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceHashAlloc" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceHashInit" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceHashNew" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceHashDestroy" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceHashFree" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceHashResize" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceHashInsert" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceHashRemove" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceHashEach" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceHashRehash" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceHashRehashObject" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceHashPointQuery" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceHashQuery" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceHashQueryInsert" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceHashQueryRehash" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceHashSegmentQuery" 'function))
(cl:export '#.(chipmunk-lispify "cpBodyAlloc" 'function))
(cl:export '#.(chipmunk-lispify "cpBodyInit" 'function))
(cl:export '#.(chipmunk-lispify "cpBodyNew" 'function))
(cl:export '#.(chipmunk-lispify "cpBodyDestroy" 'function))
(cl:export '#.(chipmunk-lispify "cpBodyFree" 'function))
(cl:export '#.(chipmunk-lispify "cpBodyActivate" 'function))
(cl:export '#.(chipmunk-lispify "cpBodySleep" 'function))
(cl:export '#.(chipmunk-lispify "cpBodyIsStatic" 'function))
(cl:export '#.(chipmunk-lispify "cpBodyGetMass" 'function))
(cl:export '#.(chipmunk-lispify "cpBodySetMass" 'function))
(cl:export '#.(chipmunk-lispify "cpBodyGetMoment" 'function))
(cl:export '#.(chipmunk-lispify "cpBodySetMoment" 'function))
(cl:export '#.(chipmunk-lispify "cpBodySetPos" 'function))
(cl:export '#.(chipmunk-lispify "cpBodySetVel" 'function))
(cl:export '#.(chipmunk-lispify "cpBodySetForce" 'function))
(cl:export '#.(chipmunk-lispify "cpBodyGetAngle" 'function))
(cl:export '#.(chipmunk-lispify "cpBodySetAngle" 'function))
(cl:export '#.(chipmunk-lispify "cpBodyGetAngVel" 'function))
(cl:export '#.(chipmunk-lispify "cpBodySetAngVel" 'function))
(cl:export '#.(chipmunk-lispify "cpBodyGetTorque" 'function))
(cl:export '#.(chipmunk-lispify "cpBodySetTorque" 'function))
(cl:export '#.(chipmunk-lispify "cpBodyGetVelLimit" 'function))
(cl:export '#.(chipmunk-lispify "cpBodySetVelLimit" 'function))
(cl:export '#.(chipmunk-lispify "cpBodyGetAngVelLimit" 'function))
(cl:export '#.(chipmunk-lispify "cpBodySetAngVelLimit" 'function))
(cl:export '#.(chipmunk-lispify "cpBodySlew" 'function))
(cl:export '#.(chipmunk-lispify "cpBodyUpdateVelocity" 'function))
(cl:export '#.(chipmunk-lispify "cpBodyUpdatePosition" 'function))
(cl:export '#.(chipmunk-lispify "cpBodyResetForces" 'function))
(cl:export '#.(chipmunk-lispify "cpBodyApplyForce" 'function))
(cl:export '#.(chipmunk-lispify "cpApplyDampedSpring" 'function))
(cl:export '#.(chipmunk-lispify "cpShapeInit" 'function))
(cl:export '#.(chipmunk-lispify "cpShapeDestroy" 'function))
(cl:export '#.(chipmunk-lispify "cpShapeFree" 'function))
(cl:export '#.(chipmunk-lispify "cpShapeCacheBB" 'function))
(cl:export '#.(chipmunk-lispify "cpShapePointQuery" 'function))
(cl:export '#.(chipmunk-lispify "cpCircleShapeAlloc" 'function))
(cl:export '#.(chipmunk-lispify "cpCircleShapeInit" 'function))
(cl:export '#.(chipmunk-lispify "cpCircleShapeNew" 'function))
(cl:export '#.(chipmunk-lispify "cpCircleShapeGetRadius" 'function))
(cl:export '#.(chipmunk-lispify "cpSegmentShapeAlloc" 'function))
(cl:export '#.(chipmunk-lispify "cpSegmentShapeInit" 'function))
(cl:export '#.(chipmunk-lispify "cpSegmentShapeNew" 'function))
(cl:export '#.(chipmunk-lispify "cpSegmentShapeGetRadius" 'function))
(cl:export '#.(chipmunk-lispify "cpResetShapeIdCounter" 'function))
(cl:export '#.(chipmunk-lispify "cpSegmentQueryInfoPrint" 'function))
(cl:export '#.(chipmunk-lispify "cpShapeSegmentQuery" 'function))
(cl:export '#.(chipmunk-lispify "cpPolyShapeAlloc" 'function))
(cl:export '#.(chipmunk-lispify "cpPolyShapeInit" 'function))
(cl:export '#.(chipmunk-lispify "cpPolyShapeNew" 'function))
(cl:export '#.(chipmunk-lispify "cpBoxShapeInit" 'function))
(cl:export '#.(chipmunk-lispify "cpBoxShapeNew" 'function))
(cl:export '#.(chipmunk-lispify "cpPolyValidate" 'function))
(cl:export '#.(chipmunk-lispify "cpPolyShapeGetNumVerts" 'function))
(cl:export '#.(chipmunk-lispify "cpContactInit" 'function))
(cl:export '#.(chipmunk-lispify "cpArbiterInit" 'function))
(cl:export '#.(chipmunk-lispify "cpArbiterUpdate" 'function))
(cl:export '#.(chipmunk-lispify "cpArbiterPreStep" 'function))
(cl:export '#.(chipmunk-lispify "cpArbiterApplyCachedImpulse" 'function))
(cl:export '#.(chipmunk-lispify "cpArbiterApplyImpulse" 'function))
(cl:export '#.(chipmunk-lispify "cpArbiterIgnore" 'function))
(cl:export '#.(chipmunk-lispify "cpCollideShapes" 'function))
(cl:export '#.(chipmunk-lispify "cpConstraintDestroy" 'function))
(cl:export '#.(chipmunk-lispify "cpConstraintFree" 'function))
(cl:export '#.(chipmunk-lispify "cpConstraintActivateBodies" 'function))
(cl:export '#.(chipmunk-lispify "cpConstraintGetImpulse" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceAlloc" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceInit" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceNew" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceDestroy" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceFree" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceFreeChildren" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceSetDefaultCollisionHandler" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceAddCollisionHandler" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceRemoveCollisionHandler" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceAddShape" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceAddStaticShape" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceAddBody" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceAddConstraint" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceRemoveShape" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceRemoveStaticShape" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceRemoveBody" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceRemoveConstraint" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceAddPostStepCallback" 'function))
(cl:export '#.(chipmunk-lispify "cpSpacePointQuery" 'function))
(cl:export '#.(chipmunk-lispify "cpSpacePointQueryFirst" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceSegmentQuery" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceSegmentQueryFirst" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceBBQuery" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceEachBody" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceResizeStaticHash" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceResizeActiveHash" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceRehashStatic" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceRehashShape" 'function))
(cl:export '#.(chipmunk-lispify "cpSpaceStep" 'function))