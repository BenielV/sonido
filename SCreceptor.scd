// Recuerda activar el servidor con las teclas CTRL+b para que se puedan reproducirlo los sonidos

OSCFunc({Synth.new(\arre)},'/chat').fix;  //Activa para conectar el objeto "chat" con Pure Data

(
SynthDef.new(\arre,{
	|msg=2500, amp=0.1|
	var sig, env;
	sig=Pulse.ar(msg);
	env=EnvGen.ar(Env.perc,doneAction:2);
	sig=sig*amp*env;
	sig=Pan2.ar(sig,0);
	Out.ar([0],sig);
}).add
)                                                                 // Define el sintetizador "arre"
Synth.new(\arre);                                     // Reproduce el sintetizador "arre"




OSCFunc({Synth.new(\are)},'/oxo').fix;         //Activa para conectar el objeto "oxo" con Pure Data
(
SynthDef.new(\are,{
	|freq=100, amp=0.7|
	var sig, env;
	sig=Saw.ar(freq)*LFNoise1.ar(1000);
	env=EnvGen.ar(Env.perc,doneAction:2);
	sig=sig*amp*env;
	sig=Pan2.ar(sig,0);
	Out.ar([0],sig);
}).add                                                        // Define el sintetizador "are"
)
Synth.new(\are);                                   // Reproduce el sintetizador "are"

