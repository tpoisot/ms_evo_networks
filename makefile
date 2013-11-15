pdf = ms_evo_networks.pdf
md = maintext.md
bib = /home/tpoisot/texmf/bibtex/bib/local/library.bib
csl = bes.csl
opts = --bibliography=$(bib) --csl=$(csl) --template=paper.latex
viewer = zathura


$(pdf): $(md)
	pandoc $(md) -o $(pdf) $(opts)

view: $(pdf)
	$(viewer) $(pdf) &
