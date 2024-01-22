.venv:
	python -m venv .venv

.PHONY: install
install: .venv duckdb
	.venv/bin/python3 -m pip install --upgrade pip
	.venv/bin/python3 -m pip install -r requirements.txt

duckdb: bin/duckdb_cli.zip
	cd bin && unzip duckdb_cli.zip
	cp bin/duckdb duckdb
	mkdir state

bin/duckdb_cli.zip:
	mkdir bin | echo 'bin exists'
	wget -O bin/duckdb_cli.zip https://github.com/duckdb/duckdb/releases/download/v0.9.2/duckdb_cli-linux-amd64.zip

data:
	mkdir data | echo 'data exists'
	wget -O data/data.zip https://www.ibm.com/docs/en/SSS9AV2/developing/attachments/Sample%20data%20v2.zip
	cd data && unzip data.zip
	rm -rf data/data.zip

.PHONY: convert_files
convert_files: data
	for file in $(wildcard data/*.csv); do \
		echo "Processing file: $$file"; \
		new_file=$$(echo $$file | sed 's/\.csv/_clean.csv/'); \
		iconv --verbose -f ISO88591 -t UTF8 $$file -o $$new_file; \
	done

clean:
	-rm -rf bin
	-rm -rf .venv
	-rm duckdb
	-rm -rf state
	-rm -rf data
	-rm -rf logs
	-rm -rf target
