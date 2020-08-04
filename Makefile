HUGO_CMD := "hugo"

all: clean production

clean:
	rm -rf public/ resources/

preview:
	$(HUGO_CMD)

production:
	$(HUGO_CMD) --minify

serve:
	$(HUGO_CMD) serve --appendPort=false -b https://tonyburns.dev/ -D --liveReloadPort=443 --noHTTPCache

.PHONY: all preview production
