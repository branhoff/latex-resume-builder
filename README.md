# LaTeX Resume Builder

Streamline resume writing by maintaining one master resume and generating tailored versions for specific job applications.

**What:** LaTeX is a document preparation system that separates content from formatting, letting you focus on writing while it handles professional typesetting automatically.

**Why:** Modern job applications require tailored resumes that match specific job descriptions, and LaTeX makes it easy to maintain one master resume while quickly generating customized versions without formatting headaches.

**How:** Create a comprehensive `master-resume.tex` file with your complete work history, then copy and edit it for each job application, removing irrelevant sections and emphasizing matching skills, before generating a polished PDF.

**Result:** You get consistent, professional formatting across all versions while maintaining version control and leveraging AI tools to optimize content for each opportunity.

## Overview

1. Write a comprehensive `resume-master.tex` file containing your complete work history.
2. Create job-specific versions by editing down the master resume.
3. Use LLM tools in your IDE to optimize content for each application.

No more wrestling with clunky resume builders or losing track of different versions.

## Getting started

The project includes a dev container with all necessary LaTeX packages for PDF generation. Simply clone the repository and start customizing your master resume.

1. **Prerequisites:** Docker, basic command line skills, LaTeX familiarity
2. **Setup:** Clone and run `./run-dev.sh`
3. **Initialize:** Copy `example.resume-master.tex` to `resume-master.tex`
4. **Customize:** Edit your master resume with complete work history

## Recommended Workflow

1. **Create a directory to house application specific resumes by date and company.**:

   ```bash
   2025/08/nintendo/
   2025/09/microsoft/
   ```

2. **Copy master resume.**:

   ```bash
   cp resume-master.tex 2025/08/nintendo/my-name-resume-web-developer.tex
   ```

3. **Edit for the specific role** (trim to 1 page, highlight relevant experience)

4. **Generate PDF.**:

   ```bash
   ./generate-pdf.sh 2025/08/nintendo/my-name-resume-web-developer.tex
   ```

5. **Find your PDF** in `generated-pdfs/my-name-resume-web-developer.pdf`
