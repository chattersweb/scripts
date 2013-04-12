;Stop deze Variabelen in de 'Variables' tab. 
;%hchan #kanaal
;%hdesc beschrijving
;%hmail mail@adres.hier
;%hname naam
;%hpass wachtwoord
;%hprefix Typ:


menu channel {
  Help berichten
  .Algemeen: say http://chattersweb.nl/algemeen
  .Chatrooms
  ..Info: say http://chattersweb.nl/chatrooms
  ..Commands
  ...Registreren: say %hprefix /cs register %hchan %hpass %hdesc
  ...Droppen: say %hprefix /cs drop %hchan

  ...-
  ...$style(2) -- Toegangs beheer -- : return
  ...Autovoice: say %hprefix /cs levels %hchan set AUTOVOICE -1
  ...halfOP geel (tijdelijk): say %hprefix /mode %hchan +h %hname
  ...halfOP geel (vast): say %hprefix /cs access %hchan add %hname 4
  ...OP roze (tijdelijk): say %hprefix /mode %hchan +o %hname
  ...OP roze (vast): say %hprefix /cs access %hchan add %hname 5
  ...Protected lichtblauw (tijdelijk): say %hprefix /mode %hchan +a %hname
  ...Protected lichtblauw (vast): say %hprefix /cs access %hchan add %hname 10
  ...Owner paars (tijdelijk): say %hprefix /mode %hchan +q %hname
  ...Owner paars (vast): say %hprefix /cs access %hchan add %hname 9999
  ...Owner veranderen: say %hprefix /cs set %hchan founder %hname

  ...-
  ...$style(2) -- Akick -- : return
  ...Lijst bekijken: say %hprefix /cs akick %hchan list
  ...Toevoegen: say %hprefix /cs akick %hchan add %hname
  ...Verwijderen: say %hprefix /cs akick %chan del %hname


  .Nickname
  ..Info: say http://chattersweb.nl/nickname
  ..Commands
  ...Registreren: say %hprefix /ns register %hpass %hmail
  ...Inloggen: say %hprefix /ns identify %hpass
  ...Wachtwoord wijzigen: say %hprefix /ns set password %hpass
  ...Naam recover: say %hprefix /ns recover %hname %hpass

  .Vhost
  ..Info: say http://chattersweb.nl/vhost
  ..Instellen: hs set $$?="nick" $$?="Vhost"

  .Botjes:
  ..Info: say http://chattersweb.nl/botjes
  ..Lijst bekijken: say %hprefix /bs botlist
  ..Toewijzen: say %hprefix /bs assign %hchan %hname


  .Regels
  ..Info: say http://chattersweb.nl/regels
}
