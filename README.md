# Create a GitHub-friendly README.md for hospital cost modeling project
readme_md_content = """
# Medicare Hospital Cost Modeling Using SAS

This project models Medicare inpatient facility costs using CMS public data and SAS.
It demonstrates how generalized linear models (GLM) can be used to explain variation in 
case-mix adjusted costs based on hospital-level characteristics like teaching status, 
cost-to-charge ratios, and value-based payment adjustments.

## 📊 Dataset
- Source: [CMS Provider-Specific File (PSF)](https://www.cms.gov/)
- File used: `ipsf_inp_2025_04_01.sas7bdat` (not redistributed)
- Data type: Hospital-level Medicare payment factors

## 🎯 Objective
To predict `caseMixAdjustedCostPerDischarge_` using:
- Case mix index (`caseMixIndex`)
- Teaching intensity (`internsToBedsRatio`)
- Operational efficiency (`operatingCostToChargeRatio`)
- Value-based payment adjustments (`vbpAdjustment`)
- Low volume rural adjustment (`lowVolumeAdjustmentFactor`)

## 🧪 Methods
- Data prepared and modeled using `PROC MEANS` and `PROC GLM` in SAS
- Teaching indicator derived from interns-to-beds ratio
- Reproducible output exported using ODS HTML

## 📁 Files
- `hospital_model_with_ods.sas`: SAS script (data prep, modeling, ODS export)
- `hospital_model_output.pdf`: PDF export from ODS
- `README.md`: This project summary

## ✅ Highlights
- Transparent, documented healthcare modeling in SAS
- Ready for use in analytics portfolio or private GitHub
- Demonstrates applied public health data science skills

## 🔒 Disclaimer
This project is independently conducted for educational purposes using public data. 
It is not affiliated with any institution or internal research project.

---
**Author**: Md Sohel Ahmed, PhD – Lead Statistician
"""

# Save the markdown file
readme_md_path = "/mnt/data/README_hospital_model.md"
with open(readme_md_path, "w") as f:
    f.write(readme_md_content)

readme_md_path
