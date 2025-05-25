/* Load and prepare CMS Inpatient PSF data */
libname mylib '~/';

data hospital;
  set mylib.ipsf_inp_2025_04_01;

  /* Create teaching indicator */
  if internsToBedsRatio > 0 then teaching = "Yes";
  else teaching = "No";
run;

/* Explore group-wise averages */
proc means data=hospital mean std maxdec=2;
  class teaching;
  var caseMixAdjustedCostPerDischarge_ caseMixIndex bedSize operatingCostToChargeRatio;
run;

/* Fit multiple regression model */
proc glm data=hospital;
  class teaching;
  model caseMixAdjustedCostPerDischarge_ = 
        caseMixIndex 
        bedSize 
        operatingCostToChargeRatio 
        internsToBedsRatio 
        vbpAdjustment 
        lowVolumeAdjustmentFactor 
        / solution;
run;
quit;
/* Load and prepare CMS Inpatient PSF data */
libname mylib '~/';

data hospital;
  set mylib.ipsf_inp_2025_04_01;

  /* Create teaching indicator */
  if internsToBedsRatio > 0 then teaching = "Yes";
  else teaching = "No";
run;

/* Explore group-wise averages */
proc means data=hospital mean std maxdec=2;
  class teaching;
  var caseMixAdjustedCostPerDischarge_ caseMixIndex bedSize operatingCostToChargeRatio;
run;

/* Fit multiple regression model */
proc glm data=hospital;
  class teaching;
  model caseMixAdjustedCostPerDischarge_ = 
        caseMixIndex 
        bedSize 
        operatingCostToChargeRatio 
        internsToBedsRatio 
        vbpAdjustment 
        lowVolumeAdjustmentFactor 
        / solution;
run;
quit;
