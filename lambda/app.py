import sys, subprocess
def handler(event, context):
    cobol_app_result="/usr/local/bin/cobol_app"
    print (event)
    print (subprocess.check_output(cobol_app_result, shell=True))
    return 'Nice! Your COBOL-based Lambda function is working perfectly :)'