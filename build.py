import shutil

# Create a ZIP file containing the project
shutil.make_archive("build_artifact", "zip", ".")
