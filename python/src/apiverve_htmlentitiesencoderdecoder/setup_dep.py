from setuptools import setup, find_packages

setup(
    name='apiverve_htmlentitiesencoderdecoder',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='HTML Entities Encoder/Decoder converts special characters into safe HTML entities or restores encoded strings back to standard text. Pass any HTML markup or text snippet to receive the converted string, a replacement count, and a list of modified characters.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/htmlentities?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
