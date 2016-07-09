all:
	mkdir ../data/mta_turnstile
	echo 'New folder ../data/mta/turnstile'
	wget http://web.mta.info/developers/data/nyct/turnstile/turnstile_160102.txt -q --show-progress -P ../data/mta/turnstile
	wget http://web.mta.info/developers/data/nyct/turnstile/turnstile_160109.txt -q --show-progress -P ../data/mta/turnstile
	wget http://web.mta.info/developers/data/nyct/turnstile/turnstile_160116.txt -q --show-progress -P ../data/mta/turnstile
	wget http://web.mta.info/developers/data/nyct/turnstile/turnstile_160130.txt -q --show-progress -P ../data/mta/turnstile
	wget http://web.mta.info/developers/data/nyct/turnstile/turnstile_160206.txt -q --show-progress -P ../data/mta/turnstile
	wget http://web.mta.info/developers/data/nyct/turnstile/turnstile_160213.txt -q --show-progress -P ../data/mta/turnstile
	wget http://web.mta.info/developers/data/nyct/turnstile/turnstile_160220.txt -q --show-progress -P ../data/mta/turnstile
	wget http://web.mta.info/developers/data/nyct/turnstile/turnstile_160227.txt -q --show-progress -P ../data/mta/turnstile
	wget http://web.mta.info/developers/data/nyct/turnstile/turnstile_160305.txt -q --show-progress -P ../data/mta/turnstile
	wget http://web.mta.info/developers/data/nyct/turnstile/turnstile_160312.txt -q --show-progress -P ../data/mta/turnstile
	wget http://web.mta.info/developers/data/nyct/turnstile/turnstile_160319.txt -q --show-progress -P ../data/mta/turnstile
	wget http://web.mta.info/developers/data/nyct/turnstile/turnstile_160326.txt -q --show-progress -P ../data/mta/turnstile
	wget http://web.mta.info/developers/data/nyct/turnstile/turnstile_160402.txt -q --show-progress -P ../data/mta/turnstile
	python raw_to_csv.py
	echo Finish!