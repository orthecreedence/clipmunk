%module bindings

%feature("intern_function", "chipmunk-lispify");

%insert("lisphead") %{
(in-package :clipmunk)

(defparameter *function-registry* (make-hash-table :test #'equal))
(defparameter *class-registry* (make-hash-table :test #'equal))

(cl:defmacro clipmunk-defcfun (names return-type &rest args)
  `(progn
     (setf (gethash ,(car names) *function-registry*) (list :return ',return-type
                                                            :args ',(loop for arg in args
                                                                          if (listp arg) collect (list (car arg) (cadr arg)))))
     (cffi-replace:defcfun ,names ,return-type ,@args)))

(cl:defmacro clipmunk-defcstruct (name &rest slots)
  `(progn
     (setf (gethash (clipmunk::convert-sym ',name) *class-registry*) ',(loop for slot in slots if (listp slot) collect (list (car slot) (cadr slot))))
     (cffi-replace:defcstruct ,name ,@slots)))
%}

//  ignored 
%ignore "INFINITY";
%ignore "CP_HASH_COEF";

// ignored, because we supply our own definitions instead of the SWIG-generated ones
%ignore "cpMomentForCircle";
%ignore "cpMomentForSegment";
%ignore "cpMomentForPoly";

// ignored, because they are inline static, and not accessible through CFFI
%ignore "cpvzero";
%ignore "cpfmax";
%ignore "cpfmin";
%ignore "cpfabs";
%ignore "cpfclamp";
%ignore "cpflerp";
%ignore "cpflerpconst";
/*%ignore "cpArbiterGetShapes";*/
/*%ignore "cpArbiterGetBodies";*/
/*%ignore "cpArbiterIsFirstContact";*/
%ignore "cpArbiterGetNormal";
%ignore "cpArbiterGetPoint";
%ignore "cpBBNew";
%ignore "cpBBintersects";
%ignore "cpBBcontainsBB";
%ignore "cpBBcontainsVect";
%ignore "cpBBmerge";
%ignore "cpBBexpand";
%ignore "cpBodyIsSleeping";
%ignore "cpBodyIsRogue";
%ignore "cpBodySet##name";
%ignore "cpBodyLocal2World";
%ignore "cpBodyWorld2Local";
%ignore "cpBodyKineticEnergy";
%ignore "cpPolyShapeValueOnAxis";
%ignore "cpPolyShapeContainsVert";
%ignore "cpPolyShapeContainsVertPartial";
%ignore "cpSegmentQueryHitPoint";
%ignore "cpSegmentQueryHitDist";
%ignore "cpv";
%ignore "cpveql";
%ignore "cpvadd";
%ignore "cpvneg";
%ignore "cpvsub";
%ignore "cpvmult";
%ignore "cpvdot";
%ignore "cpvcross";
%ignore "cpvperp";
%ignore "cpvrperp";
%ignore "cpvproject";
%ignore "cpvrotate";
%ignore "cpvunrotate";
%ignore "cpvlengthsq";
%ignore "cpvlerp";
%ignore "cpvnormalize";
%ignore "cpvnormalize_safe";
%ignore "cpvclamp";
%ignore "cpvlerpconst";
%ignore "cpvdist";
%ignore "cpvdistsq";
%ignore "cpvnear";
%ignore "cpvslerp";
%ignore "cpvslerpconst";
%ignore "cpvforangle";
%ignore "cpBBClampVect";
%ignore "cpBBWrapVect";
%ignore "cpBodyGetPos";
%ignore "cpBodyGetVel";
%ignore "cpBodyGetForce";
%ignore "cpBodyGetRot";
%ignore "cpCircleShapeGetOffset";
%ignore "cpSegmentShapeGetA";
%ignore "cpSegmentShapeGetB";
%ignore "cpSegmentShapeGetNormal";
%ignore "cpPolyShapeGetVert";
%ignore "cpContactsSumImpulses";
%ignore "cpContactsSumImpulsesWithFriction";
%ignore "cpArbiterTotalImpulse";
%ignore "cpArbiterTotalImpulseWithFriction";
/*%ignore "cpSpaceAddCollisionHandler";*/
/*%ignore "cpSpaceRemoveCollisionHandler";*/

%include "/usr/local/include/chipmunk/chipmunk_private.h"
%include "/usr/local/include/chipmunk/chipmunk.h"
%include "/usr/local/include/chipmunk/chipmunk_types.h"
%include "/usr/local/include/chipmunk/cpVect.h"
%include "/usr/local/include/chipmunk/cpBB.h"
/*%include "/usr/local/include/chipmunk/cpArray.h"*/
/*%include "/usr/local/include/chipmunk/cpHashSet.h"*/
/*%include "/usr/local/include/chipmunk/cpSpaceHash.h"*/

%include "/usr/local/include/chipmunk/cpBody.h"
%include "/usr/local/include/chipmunk/cpShape.h"
%include "/usr/local/include/chipmunk/cpPolyShape.h"

%include "/usr/local/include/chipmunk/cpArbiter.h"
/*%include "/usr/local/include/chipmunk/cpCollision.h"*/

%include "/usr/local/include/chipmunk/constraints/cpConstraint.h"
%include "/usr/local/include/chipmunk/constraints/cpDampedRotarySpring.h"
%include "/usr/local/include/chipmunk/constraints/cpDampedSpring.h"
%include "/usr/local/include/chipmunk/constraints/cpGearJoint.h"
%include "/usr/local/include/chipmunk/constraints/cpGrooveJoint.h"
%include "/usr/local/include/chipmunk/constraints/cpPinJoint.h"
%include "/usr/local/include/chipmunk/constraints/cpPivotJoint.h"
%include "/usr/local/include/chipmunk/constraints/cpRatchetJoint.h"
%include "/usr/local/include/chipmunk/constraints/cpRotaryLimitJoint.h"
%include "/usr/local/include/chipmunk/constraints/cpSimpleMotor.h"
%include "/usr/local/include/chipmunk/constraints/cpSlideJoint.h"

%include "/usr/local/include/chipmunk/cpSpace.h"


void cpSpaceAddCollisionHandler(
    cpSpace *space,
    int a, int b,
    cpCollissionBeginFunc begin,
    cpCollissionPreSolveFunc preSolve,
    cpCollissionPostSolveFunc postSolve,
    cpCollissionSeparateFunc separate,
    void *data
);
void cpSpaceRemoveCollisionHandler(
    cpSpace *space,
    int a,
    int b
);
