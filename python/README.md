On Linux, Python is likely already installed.

On Windows, you will want to visit <https://www.python.org/downloads/windows/>. Better yet, install Chocolatey (you will need an admin PowerShell): <https://chocolatey.org/install#individual-method>, and then run:

    choco install -y python3

This will install Python on your system with sane defaults.

---


Good practice to ensure python knows where to resolve top-level imports from

    export PYTHONPATH=.

Run it

    python hey.py Jay
