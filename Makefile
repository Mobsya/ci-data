# make some files for Aseba ci at https://github.com/Mobsya/ci-data/releases/tag/data

files = \
	thonny-3.3.13.tar.gz \
	vpl3-thymio-suite.tar.gz

files_thonny = \
	thonny-3.3.13.exe \
	ifaddr-0.2.0-py3-none-any.whl \
	tdmclient_ty-0.1.4-py3-none-any.whl \
	tdmclient_ty-0.1.6-py3-none-any.whl \
	tdmclient-0.1.18-py3-none-any.whl \
	tdmclient-0.1.19-py3-none-any.whl \
	zeroconf-0.38.7-py3-none-any.whl 

.PHONY: all
all: $(files)

thonny-3.3.13.tar.gz: $(files_thonny)
	tar cfz $@ $^

thonny-3.3.13.exe:
	wget https://github.com/thonny/thonny/releases/download/v3.3.13/thonny-3.3.13.exe

ifaddr-0.2.0-py3-none-any.whl:
	wget https://files.pythonhosted.org/packages/9c/1f/19ebc343cc71a7ffa78f17018535adc5cbdd87afb31d7c34874680148b32/ifaddr-0.2.0-py3-none-any.whl

tdmclient_ty-0.1.4-py3-none-any.whl:
	wget https://files.pythonhosted.org/packages/4a/a0/6c40187ca969f14b7d2d13b1a56fa2dfe30e081952cb258868ead90232df/tdmclient_ty-0.1.4-py3-none-any.whl

tdmclient_ty-0.1.6-py3-none-any.whl:
	wget https://files.pythonhosted.org/packages/03/37/58ccce7b349c1f68e3f5649d01077dec2129f69f2e9bbc83d4d499b43999/tdmclient_ty-0.1.6-py3-none-any.whl

tdmclient-0.1.18-py3-none-any.whl:
	wget https://files.pythonhosted.org/packages/c9/fb/7bc913ec5e50028caafb0020d442be792049e5e05c69b4aecef9efdfbffa/tdmclient-0.1.18-py3-none-any.whl

tdmclient-0.1.19-py3-none-any.whl:
	wget https://files.pythonhosted.org/packages/12/92/843717961dcfbfedbb996911524c65f400ef66879e4abc6188b4cba5e215/tdmclient-0.1.19-py3-none-any.whl

zeroconf-0.38.7-py3-none-any.whl:
	wget https://files.pythonhosted.org/packages/c2/43/140e2fefeed540a6747020c29eebcb2a770cee474026b644bd2c4156d166/zeroconf-0.38.7-py3-none-any.whl

vpl3-thymio-suite.tar.gz:
	wget https://github.com/Mobsya/vpl-web/releases/download/v20221010.3/vpl3-thymio-suite.tar.gz

.PHONY: clean
clean:
	rm -f $(files) $(files_thonny)

