pdf = ms_evo_networks.pdf
md = maintext.md
bib = /home/tpoisot/texmf/bibtex/bib/local/library.bib
csl = oikos.csl
opts = --bibliography=$(bib)
viewer = zathura


$(pdf): $(md)
	pandoc $(md) -o $(pdf) $(opts)

view: $(pdf)
	$(viewer) $(pdf)
