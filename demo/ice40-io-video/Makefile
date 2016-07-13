PROJ = example
PIN_DEF = ice40-io-video.pcf
DEVICE = hx1k

all: $(PROJ).rpt $(PROJ).bin

%.blif: %.v
	yosys -p 'synth_ice40 -top top -blif $@' $<

%.asc: $(PIN_DEF) %.blif
	arachne-pnr -d $(subst hx,,$(subst lp,,$(DEVICE))) -o $@ -p $^ -P vq100

%.bin: %.asc
	icepack $< $@

%.rpt: %.asc
	icetime -d $(DEVICE) -mtr $@ $<

prog: $(PROJ).bin
	sudo iceprogduino $<

sudo-prog: $(PROJ).bin
	@echo 'Executing prog as root!!!'
	sudo iceprogduino $<

clean:
	rm -f $(PROJ).blif $(PROJ).asc $(PROJ).bin

.PHONY: all prog clean
