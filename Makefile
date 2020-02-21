PYTHON=python3
VENV_DIR=venv
JUPYTER=$(VENV_DIR)/bin/jupyter
PIP=$(VENV_DIR)/bin/pip

run:
	$(JUPYTER) lab

install/extension: $(JUPYTER) install
	$(JUPYTER) labextension install @krassowski/jupyterlab-lsp

install: $(VENV_DIR)
	$(PIP) install -r requirements.txt

$(VENV_DIR):
	$(PYTHON) -m venv $(VENV_DIR)

$(JUPYTER): install

