# hospital_regression_model.sas
from docx import Document

# Create a README for the hospital regression project using CMS PSF data

doc.add_heading("Medicare Inpatient Facility Cost Modeling (SAS)", level=1)

doc.add_paragraph(
    "This project demonstrates how to use publicly available CMS Provider-Specific File (PSF) data "
    "to model adjusted inpatient cost per discharge using SAS. The script is designed for "
    "educational and portfolio purposes and is independent of any institutional or grant-funded research."
)

doc.add_heading("📊 Dataset", level=2)
doc.add_paragraph(
    "- Source: CMS Provider-Specific File (PSF)\n"
    "- File: ipsf_inp_2025_04_01.sas7bdat\n"
    "- Data includes hospital-level information on Medicare payment adjustment variables"
)

doc.add_heading("🎯 Objective", level=2)
doc.add_paragraph(
    "To build a generalized linear model that explains variation in case-mix adjusted cost per discharge "
    "based on operational and policy-relevant hospital variables."
)

doc.add_heading("🧪 Methods", level=2)
doc.add_paragraph(
    "- Created a derived variable for 'teaching hospital' based on interns-to-beds ratio\n"
    "- Summarized hospital characteristics by teaching status using `proc means`\n"
    "- Modeled cost per discharge using `proc glm` with key predictors:\n"
    "    - caseMixIndex\n"
    "    - bedSize\n"
    "    - operatingCostToChargeRatio\n"
    "    - internsToBedsRatio\n"
    "    - vbpAdjustment\n"
    "    - lowVolumeAdjustmentFactor"
)

doc.add_heading("📁 Files", level=2)
doc.add_paragraph(
    "- `hospital_model_with_ods.sas`: Complete SAS script with ODS output\n"
    "- `hospital_model_output.html`: Resulting report (to be generated in SAS Studio)\n"
    "- `ipsf_inp_2025_04_01.sas7bdat`: CMS PSF input data file (not included for distribution)\n"
    "- `README.docx`: This document"
)

doc.add_heading("⚕️ Use Case", level=2)
doc.add_paragraph(
    "This project is ideal for demonstrating SAS modeling skills in the context of healthcare cost analysis. "
    "It is suitable for job applications in pharma, public health analytics, or health policy data science roles."
)

doc.add_heading("Author", level=2)


readme_path = "/mnt/data/README_Hospital_Model_CMS.docx"
doc.save(readme_path)

readme_path
