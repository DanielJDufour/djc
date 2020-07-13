from setuptools import setup
from os.path import abspath, dirname, join
from re import sub

root_dir = abspath(dirname(__file__))

with open(join(root_dir, "README.md")) as f:
    long_description = f.read()

# remove emojiis
long_description = sub(":[a-z]+:", "- ", long_description)

setup(
    name = 'djc',
    scripts=['djc'],
    version = '0.6.0',
    description = 'Command Line Interface for Django with Nifty Scripts',
    long_description=long_description,
    long_description_content_type="text/markdown",
    author = 'Daniel J. Dufour',
    author_email = 'daniel.j.dufour@gmail.com',
    url = 'https://github.com/DanielJDufour/djc',
    download_url = 'https://github.com/DanielJDufour/djc/tarball/download',
    keywords = ['cli','django','python'],
    classifiers = [
        'Development Status :: 3 - Alpha',
        "Programming Language :: Python :: 3",
        "License :: CC0 1.0 Universal (CC0 1.0) Public Domain Dedication",
        "Operating System :: OS Independent",
    ],
    install_requires=["shear"]
)
