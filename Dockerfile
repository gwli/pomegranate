FROM jupyter/scipy-notebook


USER $NB_USER

# Install Python 3 packages
# Remove pyqt and qt pulled in for matplotlib since we're only ever going to
# use notebook-friendly backends in these images
RUN conda install --quiet --yes \
    'networkx' \
    'joblib' \
    'pomegranate'
