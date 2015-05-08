from setuptools import setup, find_packages

import djcroco


setup(
    name='django-croco',
    packages=find_packages(),
    include_package_data=True,
    version=djcroco.__version__,
    description='',
    long_description=open('README.rst').read(),
    author=djcroco.__author__,
    url='https://github.com/incuna/django-croco/',
    install_requires=[
        'crocodoc',
    ],
    zip_safe=False,
)
