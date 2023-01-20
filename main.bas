'*****************************
'c64list v4.04
'*****************************


{renumber}

'supervar_tile
	{var:map_tile=t$}
'supervar_item
	{var:item_name=i$}
	{var:item_atk=ia%}
	{var:item_def=id%}
	{var:item_str=is%}
	{var:item_mana=ie%}
	{var:item_ident=it%}
	{var:inventar_slot=in%}
	{var:inventar_max=ix%}
	{var:nimm_item=ni%}
	{var:inventar_slottemp=tt%}
'supervar_player
	{var:player_name=p$}
	{var:player_hp=ph%}
	{var:player_mp=pm%}
	{var:player_level=pl%}
	{var:player_atk=pa%}
	{var:player_def=pd%}
	{var:player_str=ps%}
	{var:player_hp_max=p1%}
	{var:player_mp_max=p2%}
	{var:player_activ=p3%}
	{var:player_tile=pd$}
	{var:player_waffe=pw%}
	{var:player_ruestung=pr%}
	{var:player_exp=px%}
'supervar_monster
	{var:monster_name=m$}
	{var:monster_hp=mh%}
	{var:monster_mp=mm%}
	{var:monster_atk=ma%}
	{var:monster_def=md%}
	{var:monster_str=ms%}
	{var:monster_tile=md$}
	{var:monster_exp=mx%}
	{var:monster_res=mb%}
'supervar_speicher
	{var:bildschirmspeicher=qs}
	{var:multifarbspeicher_1=qo}
	{var:multifarbspeicher_2=qp}
	{var:bildschirmfarbe=qq}
	{var:rahmenfarbe=qr}
	{var:sprite_register=v}
'supervar_color
	{var:farbe_sw=q1%}
	{var:farbe_ws=q2%}
	{var:farbe_rd=q3%}
	{var:farbe_tk=q4%}
	{var:farbe_vi=q5%}
	{var:farbe_gn=q6%}
	{var:farbe_bl=q7%}
	{var:farbe_ge=q8%}
	{var:farbe_or=q9%}
	{var:farbe_br=qa%}
	{var:farbe_lrd=qb%}
	{var:farbe_dgr=cb%}
	{var:farbe_mgr=qc%}
	{var:farbe_lgn=qd%}
	{var:farbe_lbl=qe%}
	{var:farbe_lgr=qf%}
'supervar_multicolor
	{var:farbe_multi_sw=qg%}
	{var:farbe_multi_ws=qh%}
	{var:farbe_multi_br=qi%}
	{var:farbe_multi_tk=qj%}
	{var:farbe_multi_vi=qk%}
	{var:farbe_multi_gn=ql%}
	{var:farbe_multi_bl=qm%}
	{var:farbe_multi_ge=qn%}
'supervar_fight
	{var:fight_hp=fh%}
	{var:fight_active=ft%}
	{var:fight_rnd_str=fc%}
	{var:fight_mp=fm%}
	{var:fight_str=fs%}
	{var:fight_posx=fx%}
	{var:fight_posy=fy%}
	{var:fight_atk=fa%}
	{var:fight_def=fd%}
	{var:fight_hp_max=f1%}
	{var:fight_mp_max=f2%}
'supervar_seq
	{var:seq_select=aa$}
	{var:seq_buffer=b$}
'supervar_other
	{var:val_atk=t1%}
	{var:val_def=t2%}
'supervar_schalter
	{var:schalter_raum=s0%}
	{var:schalter_posx=s1%}
	{var:schalter_posy=s2%}
	{var:schalter_flag=s3%}
'supervar_aktor
	{var:aktor_raum=a0%}
	{var:aktor_posx=a1%}
	{var:aktor_posy=a2%}
'supervar_npc
	{var:npc_raum=n0%}
	{var:npc_posx=n1%}
	{var:npc_posy=n2%}
	{var:npc_flag=n3%}
'supervar_event
	{var:event_raum=er%}
	{var:event_posx=ex%}
	{var:event_posy=ey%}
	{var:event_item=et%}

'ini
	'basicende
		poke55,240:poke56,120:clr
		'poke55,$f0:poke56,$78=$78f0=30960
	'speicher
		{var:multifarbspeicher_1}  =53282
		{var:multifarbspeicher_2}  =53283
		{var:bildschirmfarbe}      =53281
		{var:rahmenfarbe}          =53280
		{var:bildschirmspeicher}   =49152
		{var:sprite_register}      =53248
	'super variabeln farben
		{var:farbe_sw}         =0
		'{var:farbe_ws}         =1
		'{var:farbe_rd}         =2
		'{var:farbe_tk}         =3
		'{var:farbe_vi}         =4
		'{var:farbe_gn}         =5
		{var:farbe_bl}         =6
		'{var:farbe_ge}         =7
		'{var:farbe_or}         =8
		{var:farbe_br}         =9
		'{var:farbe_lrd}        =10
		'{var:farbe_dgr}        =11
		'{var:farbe_mgr}        =12
		'{var:farbe_lgn}        =13
		'{var:farbe_lbl}        =14
		'{var:farbe_lgr}        =15
	'super variabeln farben multi
		'{var:farbe_multi_sw}   =8
		'{var:farbe_multi_ws}   =9
		'{var:farbe_multi_br}   =10
		'{var:farbe_multi_tk}   =11
		'{var:farbe_multi_vi}   =12
		'{var:farbe_multi_gn}   =13
		'{var:farbe_multi_bl}   =14
		'{var:farbe_multi_ge}   =15


		rs=165: 'pro raum 160 data
		
		dd$="{home}{down:20}{white}"
		cd$="{down:25}"
'dim
	'monster
		dim {var:monster_name}(13),{var:monster_tile}(13),{var:monster_hp}(13),{var:monster_mp}(13),{var:monster_atk}(13),{var:monster_def}(13),{var:monster_str}(13),{var:monster_res}(13),{var:monster_exp}(13)
	'fight
		dim {var:fight_hp}(11),{var:fight_active}(11),{var:fight_rnd_str}(11),{var:fight_mp}(11),{var:fight_str}(11),{var:fight_posx}(11),{var:fight_posy}(11),{var:fight_atk}(11),fd(11),{var:fight_hp_max}(11),{var:fight_mp_max}(11)
		for i=0 to 3:{var:fight_posx}(i)=37:{var:fight_posy}(i)=5+3*i:next
	'items
		dim {var:item_name}(18),{var:item_atk}(18),{var:item_def}(18),{var:item_str}(18),{var:item_mana}(18),{var:item_ident}(18)
	'event variable
		dim {var:event_raum}(12),{var:event_posx}(12),{var:event_posy}(12),{var:event_item}(12)
	'inventar
		dim {var:inventar_slot}(99),{var:inventar_slottemp}(99)
	'tile
		dim {var:map_tile}(79)
	'schlater aktor flag
		dim {var:schalter_raum}(10),{var:schalter_posx}(10),{var:schalter_posy}(10),{var:schalter_flag}(10),{var:aktor_raum}(10),{var:aktor_posx}(10),{var:aktor_posy}(10)
	'npc flag
		dim {var:npc_raum}(10),{var:npc_posx}(10),{var:npc_posy}(8),{var:npc_flag}(10)

'read monster
	for i=0 to 13
		read {var:monster_name}(i),{var:monster_hp}(i),{var:monster_mp}(i),{var:monster_str}(i)
		read {var:monster_atk}(i),{var:monster_def}(i),{var:monster_res}(i),{var:monster_exp}(i)
	next
'read player
	for i=0 to 3
		read {var:player_name}(i),{var:player_hp}(i),{var:player_mp}(i),{var:player_str}(i)
		read {var:player_atk}(i),{var:player_def}(i),{var:player_waffe}(i),{var:player_ruestung}(i)
	next
'read tile
	for i=0 to 79
		read {var:map_tile}(i)
	next
'copy tile player
	{var:player_tile}(0) = {var:map_tile}(48) 'kron
	{var:player_tile}(1) = {var:map_tile}(50) 'lena
	{var:player_tile}(2) = {var:map_tile}(52) 'dolm
	{var:player_tile}(3) = {var:map_tile}(51) 'mira
'copy tile monster
	zz=64
	for i=0 to 13
	{var:monster_tile}(i) = {var:map_tile}(zz)
	zz=zz+1
	next i
'read item
	for i=0 to 18
		read {var:item_name}(i),{var:item_atk}(i),{var:item_def}(i),{var:item_str}(i),{var:item_mana}(i),{var:item_ident}(i)
	next

'sprite speicherbank zeichensatz color
	poke {var:sprite_register}+21,0'                        sprites an
	poke 648,192'                                           bildschirspeicher ab ($c000) 49152 49152/256=192
	poke 56576,0'                                           speicherbank 3    ab ($c000) 49152
	poke 53272,8'                                           zeichensatz       ab ($d018) 53272 1024x8+49152=53272
	poke 53270,peek(53270)or16'                             multicolor (ein=16 aus=239)
	poke {var:multifarbspeicher_1},{var:farbe_br}'          multicolor 1 =9 (br)
	poke {var:multifarbspeicher_2},{var:farbe_sw}'          multicolor 2 =0 (sw)
	poke {var:rahmenfarbe},{var:farbe_sw}'                  rahmenfarbe
	poke {var:bildschirmfarbe},{var:farbe_bl}'              bildschirmfarbe
'set raster
	poke 1020,{var:farbe_bl} 'hintergrundfarbe map
	poke 1021,{var:farbe_bl} 'hintergrundfarbe schrift
	sys 820                  'start asm.raster

gosub{:gosub_raumaktion_variabeln}
goto{:goto_newgame}

'mainloop
{:mainloop}
	gosub{:gosub_print_rahmen_oben}
	gosub{:gosub_clear_screen}
	gosub{:gosub_print_rahmen_unten_map}
	gosub{:gosub_print_player_hp}
	gosub{:info_txt}
{:mainloop_cleartop}
	print"{home}{down}{right}{white}{$20:38}";
{:mainloop_print_map}
	poke 1020,{var:farbe_bl} 'hintergrundfarbe map
	gosub{:gosub_print_map}
	if peek(2)=1 then cp=30960+rs*(cr-0)
{:mainloop_print_playertile}
	print"{home}"left$(cd$,3+y*2)spc(x*2){var:player_tile}(0);
{:mainloop_oldpos}
	ox=zx:oy=zy
	zx=x:zy=y
{:mainloop_joyauswertung}
	gosub{:gosub_joymap}
	if a$=chr$(145) or a$="w"then zy=y-1:goto{:mainloop_if_newpos}
	if a$=chr$(157) or a$="a"then zx=x-1:goto{:mainloop_if_newpos}
	if a$=chr$(29)  or a$="d"then zx=x+1:goto{:mainloop_if_newpos}
	if a$=chr$(17)  or a$="s"then zy=y+1:goto{:mainloop_if_newpos}
	if a$=chr$(13) then {:mainmenu}
	goto {:mainloop_joyauswertung}

{:mainloop_if_newpos}
	'wenn event(x) = find item passt
		aa%=0
		for i=0 to 12
		if {var:event_raum}(i)=cr and {var:event_posx}(i)=zx and {var:event_posy}(i)=zy then aa%=1
		next i
	'wenn am rand der map
		if zx=-1 or zx=20 or zy=-1 or zy=8 then{:mainloop_set_newpos}
	'read nextpos map
		c=peek(cp+zx+zy*20)
	'wenn nextpos
		if c=08  then {:raumaktion_durchgang} 'wenn c=08 schwarz
		if c=09  then {:raumaktion_durchgang} 'wenn c=09 leiter
		if c=10  then {:raumaktion_durchgang} 'wenn c=10 brunnen
		if c=11  then {:raumaktion_durchgang} 'wenn c=11 tuere

		if c=12  then {:raumaktion_text}      'wenn c=12 truhe
		if c=14  then {:raumaktion_schalten}  'wenn c=14 schalter
		
		if c=25  then {:raumaktion_text}      'wenn c=25 baum
		if c=40  then {:raumaktion_heilen}    'wenn c=40 wasser
		
		if c>=48 then {:raumaktion_npc}       'wenn c>=48 npc
		if c>7   then {:mainloop_oldpos}      'wenn c>7 nicht begehbar
{:mainloop_set_newpos}
	'loesche player print tile
		print"{home}"left$(cd$,3+y*2)spc(x*2){var:map_tile}(peek(cp+x+y*20))
	'zufall monster
		if rnd(1)*100>97 and peek(cp+164)>0 then ff=0:goto{:battel}
	'set newpos
		x=zx:y=zy
	'wenn neuer raum
		if x=-1  and  peek(cp+160)=255thenx=0:goto{:mainloop_print_playertile}
		if x=-1  then cr=peek(cp+160):x=19:goto{:mainloop_print_map}
		if x=20  and  peek(cp+161)=255thenx=19:goto{:mainloop_print_playertile}
		if x=20  then cr=peek(cp+161):x=0:goto{:mainloop_print_map}
		if y=-1  and  peek(cp+162)=255theny=0:goto{:mainloop_print_playertile}
		if y=-1  then cr=peek(cp+162):y=7:goto{:mainloop_print_map}
		if y=8   and  peek(cp+163)=255theny=7:goto{:mainloop_print_playertile}
		if y=8   then cr=peek(cp+163):y=0:goto{:mainloop_print_map}
	'wenn newpos
		if c=2 then{:raumaktion_schalten} 'wenn c=2 druckplatte versteckt
		if c=3 then{:raumaktion_schalten} 'wenn c=3 druckplatte
		goto{:mainloop_print_playertile}  'else goto print player

'***edit duu***
{:raumaktion_durchgang}
	if cr=16 then cr=16:x=0:y=0 :goto{:mainloop_cleartop}
	if cr=16 then {:goto_end_game}
{:raumaktion_schalten}
	'wenn c=14 schalter (ein/aus schalten)
		if c=14 and cr={var:schalter_raum}(0) and zx={var:schalter_posx}(0) then {var:schalter_flag}(0)=1-{var:schalter_flag}(0):gosub{:gosub_raumaktion_poke_mapspeicher} :tx={var:aktor_posx}(0):ty={var:aktor_posy}(0): gosub{:gosub_raumaktion_print_one_tile} : gosub{:gosub_raumaktion_print_schalter_status} : goto{:mainloop_oldpos}
	'wenn c=3 druckplatte versteckt (ein schalten)
		if c=2  and cr={var:schalter_raum}(1) and  x={var:schalter_posx}(1) then {var:schalter_flag}(1)=1                       :gosub{:gosub_raumaktion_poke_mapspeicher} :tx={var:aktor_posx}(1):ty={var:aktor_posy}(1): gosub{:gosub_raumaktion_print_one_tile} : goto{:mainloop_print_playertile}
		if c=2  and cr={var:schalter_raum}(2) and  x={var:schalter_posx}(2) then {var:schalter_flag}(2)=1                       :gosub{:gosub_raumaktion_poke_mapspeicher} :tx={var:aktor_posx}(2):ty={var:aktor_posy}(2): gosub{:gosub_raumaktion_print_one_tile} : goto{:mainloop_print_playertile}
	'wenn c=3 druckplatte (ein schalten)
		if c=3  and cr={var:schalter_raum}(3) and  x={var:schalter_posx}(3) then {var:schalter_flag}(3)=1                       :gosub{:gosub_raumaktion_poke_mapspeicher} :tx={var:aktor_posx}(3):ty={var:aktor_posy}(3): gosub{:gosub_raumaktion_print_one_tile} : goto{:mainloop_print_playertile}
		if c=3  and cr={var:schalter_raum}(4) and  x={var:schalter_posx}(4) then {var:schalter_flag}(4)=1                       :gosub{:gosub_raumaktion_poke_mapspeicher} :tx={var:aktor_posx}(4):ty={var:aktor_posy}(4): gosub{:gosub_raumaktion_print_one_tile} : goto{:mainloop_print_playertile}
{:raumaktion_text}
	'aktion truhe
		if c=12  and aa%=0 then goto {:mainloop_oldpos}
		if c=12  and aa%=1 then va$="{white}= {cyan}in der truhe ist was"         :gosub{:gosub_info_txt}:goto{:mainloop_oldpos}
	'aktion baum
		if c=25 and aa%=0 then goto {:mainloop_oldpos}
		if c=25 and aa%=1 then va$="{white}= {cyan}der baum sieht intressant aus" :gosub{:gosub_info_txt}:goto{:mainloop_oldpos}
{:raumaktion_npc}
	'npc                                                123456789a123456789b123456789c12345678
		if c=49 then print"{white}{home}{down}{right}ein heilzauber ist unter dem baum"     :gosub {:gosub_delay_text}:gosub{:gosub_clear_top}:goto{:mainloop_oldpos}
		if c=53 then print"{white}{home}{down}{right}ein feuerzauber ist in den katakomben" :gosub {:gosub_delay_text}:gosub{:gosub_clear_top}:goto{:mainloop_oldpos}
	'player
		if c=50 then {var:seq_select}="txt.welcome.lena" : gosub{:gosub_input_seq} : {var:npc_flag}(0)=1 : gosub{:gosub_raumaktion_poke_mapspeicher} : {var:player_activ}(1)=1 :tx=12:ty=4 : gosub{:gosub_raumaktion_print_one_tile} : gosub{:gosub_print_player_hp} : goto{:mainloop_oldpos}
		if c=52 then {var:seq_select}="txt.welcome.dolm" : gosub{:gosub_input_seq} : {var:npc_flag}(1)=1 : gosub{:gosub_raumaktion_poke_mapspeicher} : {var:player_activ}(2)=1 :tx=7 :ty=2 : gosub{:gosub_raumaktion_print_one_tile} : gosub{:gosub_print_player_hp} : goto{:mainloop_oldpos}
		if c=51 then {var:seq_select}="txt.welcome.mira" : gosub{:gosub_input_seq} : {var:npc_flag}(2)=1 : gosub{:gosub_raumaktion_poke_mapspeicher} : {var:player_activ}(3)=1 :tx=3 :ty=2 : gosub{:gosub_raumaktion_print_one_tile} : gosub{:gosub_print_player_hp} : goto{:mainloop_oldpos}
	'monster
		if c=67 then print"{white}{home}{down}{right}du kannst hier nicht durch!"            :gosub {:gosub_delay_text} :ff=4 :{var:npc_flag}(3)=1 :gosub{:gosub_raumaktion_poke_mapspeicher}:goto{:battel}
		if c=72 then print"{white}{home}{down}{right}ach wie suess!"                         :gosub {:gosub_delay_text} :ff=9 :{var:npc_flag}(4)=1 :gosub{:gosub_raumaktion_poke_mapspeicher}:goto{:battel}
		if c=76 then print"{white}{home}{down}{right}du willst mich besiegen!"               :gosub {:gosub_delay_text} :ff=13:{var:npc_flag}(5)=1 :gosub{:gosub_raumaktion_poke_mapspeicher}:goto{:battel}
		if c=77 then print"{white}{home}{down}{right}du hast meine erwartung uebertroffen!"  :gosub {:gosub_delay_text} :ff=14:{var:npc_flag}(6)=1 :gosub{:gosub_raumaktion_poke_mapspeicher}:goto{:battel}
{:raumaktion_heilen}
	'wenn c=40 wasser
		if c=40 then va$="{white}= {cyan}du bist geheilt" : gosub{:gosub_heilen} : gosub{:gosub_print_player_hp} : gosub{:gosub_info_txt} : goto{:mainloop_oldpos}

{:gosub_raumaktion_print_one_tile}
	'set sp
		sp=30960+(cr*rs)+(tx+ty*20)
	'print tile
		print"{home}{down:3}"left$(cd$,ty*2)spc(tx*2){var:map_tile}(peek(sp));
	return
{:gosub_raumaktion_poke_mapspeicher}

	'poke30960+cr*rs+x+y*20,c-flag*c
		poke 30960+{var:npc_raum}(0)*rs+{var:npc_posx}(0)+{var:npc_posy}(0)*20,50-{var:npc_flag}(0)*50  'c=50 lena
		poke 30960+{var:npc_raum}(1)*rs+{var:npc_posx}(1)+{var:npc_posy}(1)*20,52-{var:npc_flag}(1)*52  'c=52 dolm
		poke 30960+{var:npc_raum}(2)*rs+{var:npc_posx}(2)+{var:npc_posy}(2)*20,51-{var:npc_flag}(2)*51  'c=51 mira
		poke 30960+{var:npc_raum}(3)*rs+{var:npc_posx}(3)+{var:npc_posy}(3)*20,67-{var:npc_flag}(3)*67  'c=67 nacho
		poke 30960+{var:npc_raum}(4)*rs+{var:npc_posx}(4)+{var:npc_posy}(4)*20,72-{var:npc_flag}(4)*72  'c=72 troll
		poke 30960+{var:npc_raum}(5)*rs+{var:npc_posx}(5)+{var:npc_posy}(5)*20,76-{var:npc_flag}(5)*76  'c=76 dracul
		poke 30960+{var:npc_raum}(6)*rs+{var:npc_posx}(6)+{var:npc_posy}(6)*20,77-{var:npc_flag}(6)*77  'c=77 glados

	'schalter aktor
		poke 30960+{var:aktor_raum}(0)*rs+{var:aktor_posx}(0)+{var:aktor_posy}(0)*20,15-{var:schalter_flag}(0)*15+1 'c=16 mauer  -> c=01 (kann 1 oder 16 sein)
		poke 30960+{var:aktor_raum}(1)*rs+{var:aktor_posx}(1)+{var:aktor_posy}(1)*20,13-{var:schalter_flag}(1)*13   'c=13 gitter -> c=00 (kann 0 oder 13 sein)
		poke 30960+{var:aktor_raum}(2)*rs+{var:aktor_posx}(2)+{var:aktor_posy}(2)*20,13-{var:schalter_flag}(2)*12   'c=13 gitter -> c=01 (kann 1 oder 13 sein)
	
	'verknuepfung
		t=13:if {var:schalter_flag}(3)+{var:schalter_flag}(4)=2 then t=0
		poke 30960+{var:aktor_raum}(3)*rs+{var:aktor_posx}(3)+{var:aktor_posy}(3)*20,t 'c=13 gitter -> c=00 (kann 0 oder 13 sein)

	return
{:gosub_raumaktion_print_schalter_status}
	'schalter status
		if cr={var:schalter_raum}(0) and zx={var:schalter_posx}(0) and {var:schalter_flag}(0)=0 then va$="{white}= {cyan}der schalter ist aus":gosub{:gosub_info_txt}
		if cr={var:schalter_raum}(0) and zx={var:schalter_posx}(0) and {var:schalter_flag}(0)=1 then va$="{white}= {cyan}schalter ist ein"    :gosub{:gosub_info_txt}
	return
{:gosub_raumaktion_variabeln}

	'schalter variabeln
		{var:schalter_raum}(0)=0 : {var:schalter_posx}(0)=11 : {var:schalter_posy}(0)=1 : {var:schalter_flag}(0)=0  'c=14 schalter
		{var:schalter_raum}(1)=0 : {var:schalter_posx}(1)=16 : {var:schalter_posy}(1)=6 : {var:schalter_flag}(1)=0  'c=02 druckplatte versteckt
		{var:schalter_raum}(2)=0 : {var:schalter_posx}(2)=18 : {var:schalter_posy}(2)=6 : {var:schalter_flag}(2)=0  'c=02 druckplatte versteckt
		{var:schalter_raum}(3)=0 : {var:schalter_posx}(3)=1  : {var:schalter_posy}(3)=6 : {var:schalter_flag}(3)=0  'c=03 druckplatte
		{var:schalter_raum}(4)=0 : {var:schalter_posx}(4)=5  : {var:schalter_posy}(4)=6 : {var:schalter_flag}(4)=0  'c=03 druckplatte

	'aktor variablen
		{var:aktor_raum}(0)=0 : {var:aktor_posx}(0)=14 : {var:aktor_posy}(0)=6  'c=16 mauer  -> c=01 (kann 1 oder 16 sein)
		{var:aktor_raum}(1)=0 : {var:aktor_posx}(1)=7  : {var:aktor_posy}(1)=4  'c=13 gitter -> c=00 (kann 0 oder 13 sein)
		{var:aktor_raum}(2)=0 : {var:aktor_posx}(2)=9  : {var:aktor_posy}(2)=5  'c=13 gitter -> c=01 (kann 1 oder 13 sein)
		{var:aktor_raum}(3)=0 : {var:aktor_posx}(3)=3  : {var:aktor_posy}(3)=4  'c=13 gitter -> c=01 (kann 1 oder 13 sein)
		{var:aktor_raum}(4)=0 : {var:aktor_posx}(4)=3  : {var:aktor_posy}(4)=4  'duplikat (3)

	'npc vaiabeln
		{var:npc_raum}(0)=0  : {var:npc_posx}(0)=12 : {var:npc_posy}(0)=4 : {var:npc_flag}(0)=0  'c=50 lena
		{var:npc_raum}(1)=0  : {var:npc_posx}(1)=7  : {var:npc_posy}(1)=2 : {var:npc_flag}(1)=0  'c=52 dolm
		{var:npc_raum}(2)=0  : {var:npc_posx}(2)=3  : {var:npc_posy}(2)=2 : {var:npc_flag}(2)=0  'c=51 mira
		{var:npc_raum}(3)=16 : {var:npc_posx}(3)=0  : {var:npc_posy}(3)=0 : {var:npc_flag}(3)=0  'c=67 nacho
		{var:npc_raum}(4)=16 : {var:npc_posx}(4)=0  : {var:npc_posy}(4)=0 : {var:npc_flag}(4)=0  'c=72 troll
		{var:npc_raum}(5)=16 : {var:npc_posx}(5)=0  : {var:npc_posy}(5)=0 : {var:npc_flag}(5)=0  'c=76 dracul
		{var:npc_raum}(6)=16 : {var:npc_posx}(6)=0  : {var:npc_posy}(6)=0 : {var:npc_flag}(6)=0  'c=77 glados

		{var:npc_raum}(7)=16 : {var:npc_posx}(7)=0  : {var:npc_posy}(7)=0 : {var:npc_flag}(7)=0  'c=49 npc
		{var:npc_raum}(8)=16 : {var:npc_posx}(8)=0  : {var:npc_posy}(8)=0 : {var:npc_flag}(8)=0  'c=53 npc

	'event
		'event(x) = find item bei gefunden event_raum(x) = -1 else raumnummer
		{var:event_raum}(0)=16  :{var:event_posx}(0)=0   :{var:event_posy}(0)=0  :{var:event_item}(1)=0   'leer
		{var:event_raum}(1)=0   :{var:event_posx}(1)=1   :{var:event_posy}(1)=2  :{var:event_item}(1)=3   'kraeuter
		{var:event_raum}(2)=0   :{var:event_posx}(2)=18  :{var:event_posy}(2)=2  :{var:event_item}(2)=15  'stock
		{var:event_raum}(3)=16  :{var:event_posx}(3)=0   :{var:event_posy}(3)=0  :{var:event_item}(3)=4   'feuer
		{var:event_raum}(4)=16  :{var:event_posx}(4)=0   :{var:event_posy}(4)=0  :{var:event_item}(4)=8   'kirsche
		{var:event_raum}(5)=16  :{var:event_posx}(5)=0   :{var:event_posy}(5)=0  :{var:event_item}(5)=5   'eis
		{var:event_raum}(6)=16  :{var:event_posx}(6)=0   :{var:event_posy}(6)=0  :{var:event_item}(6)=16  'weste
		{var:event_raum}(7)=16  :{var:event_posx}(7)=0   :{var:event_posy}(7)=0  :{var:event_item}(7)=17  'schild
		{var:event_raum}(8)=16  :{var:event_posx}(8)=0   :{var:event_posy}(8)=0  :{var:event_item}(8)=13  'stab
		{var:event_raum}(9)=16  :{var:event_posx}(9)=0   :{var:event_posy}(9)=0  :{var:event_item}(9)=15  'stock
		{var:event_raum}(10)=16 :{var:event_posx}(10)=0  :{var:event_posy}(10)=0 :{var:event_item}(10)=11 'flegel
		{var:event_raum}(11)=16 :{var:event_posx}(11)=0  :{var:event_posy}(11)=0 :{var:event_item}(11)=7  'bombe
		{var:event_raum}(12)=16 :{var:event_posx}(12)=0  :{var:event_posy}(12)=0 :{var:event_item}(12)=9  'heilen

	return


'mainmenu
{:mainmenu}
	'                                123456789a123456789b123456789c12345678
	'print"{home}{down}{white}{right}  benutzen  inventar  equipment" : rem m*10
	'                                123456789abc123456789abc123456789abc
	print"{home}{down}{white}{right}  untersuche  equipments  inventar"
	m=0
{:mainmenu_joyauswertung}
	'bildschirmspeicher 49152 + 42 (pro zeile 40 zeichen 0-39)
	poke {var:bildschirmspeicher}+42+m*12,35 : 'print cusor
	gosub{:gosub_joy}
	poke {var:bildschirmspeicher}+42+m*12,32 : 'print leerzeichen
	if a$="a" then m=m-1-3*(m=0) : goto{:mainmenu_joyauswertung}
	if a$="d" then m=m+1+3*(m=2) : goto{:mainmenu_joyauswertung}
	if a$=chr$(13) then poke {var:bildschirmspeicher}+42+m*7,32:goto{:mainmenu_on_goto}
	goto{:mainmenu_joyauswertung}
{:mainmenu_on_goto}
	print"{home}{down}{white}{right}{$20:38}";
	onm+1goto {:untersuche},{:equipment},{:inventar}
{:inventar}
	poke 1020,{var:farbe_sw} 'hintergrundfarbe map
	gosub{:gosub_clear_screen}
	'                               123456789a123456789b123456789c12345678
	print"{home}{down}{right}{white}inventar: waehle dein item           ";
	mt=2:mx=2:my=4:mc=14:gosub{:gosub_menu_item}
	if {var:inventar_slot}(m)=9 then{:mainloop_cleartop}
	if {var:inventar_slot}(m)=0 or {var:item_ident}({var:inventar_slot}(m))<>mt then{:mainloop_cleartop}
	if {var:inventar_slot}(m)=3 then gosub{:inventar_auswahl_kraueter}:{var:inventar_slot}(m)=0:gosub{:gosub_print_player_hp}:goto{:mainloop_cleartop}
	if {var:inventar_slot}(m)=8 then gosub{:inventar_auswahl_kirsche}:{var:inventar_slot}(m)=0:gosub{:gosub_print_player_hp}:goto{:mainloop_cleartop}
	goto{:mainloop_cleartop}
	{:inventar_auswahl_kraueter}
		'kraeuter
		for i=0 to 3:{var:player_hp}(i)={var:player_hp}(i)+{var:item_mana}({var:inventar_slot}(m)):if {var:player_hp}(i)>{var:player_hp_max}(i)then {var:player_hp}(i)={var:player_hp_max}(i)
		{var:fight_hp}(i)={var:player_hp}(i):next:return
	{:inventar_auswahl_kirsche}
		'kirsche
		for i=0 to 3:{var:player_mp}(i)={var:player_mp}(i)+{var:item_mana}({var:inventar_slot}(m)):if {var:player_mp}(i)>{var:player_mp_max}(i)then {var:player_mp}(i)={var:player_mp_max}(i)
		{var:fight_mp}(i)={var:player_mp}(i):next:return
{:equipment}
	poke 1020,{var:farbe_sw} 'hintergrundfarbe map
	gosub {:gosub_equipment_rahmen}
	'                               123456789a123456789b123456789c12345678
	print"{home}{down}{right}{white}equipment: waehle deinen spieler     ";
	p=0
	{:equipment_ini}
		cp={var:bildschirmspeicher}+2+(4-8*(p>1))*40:if p=1 or p=3 then cp=cp+20
	{:equipment_joy}
	
		poke cp,35 : 'print cursor
		gosub{:gosub_joy}
		poke cp,32 : 'print leerzeichen

		if p=0 and a$="d" and {var:player_activ}(1)=1 then p=1 : goto{:equipment_ini}
		if p=0 and a$="s" and {var:player_activ}(2)=1 then p=2 : goto{:equipment_ini}
		'sonderfall
		if p=0 and a$="d" and {var:player_activ}(1)=o and {var:player_activ}(2)=0 and {var:player_activ}(3)=1 then p=3 : goto{:equipment_ini}
		if p=0 and a$="s" and {var:player_activ}(1)=o and {var:player_activ}(2)=0 and {var:player_activ}(3)=1 then p=3 : goto{:equipment_ini}

		if p=1 and a$="a" and {var:player_activ}(0)=1 then p=0 : goto{:equipment_ini}
		if p=1 and a$="s" and {var:player_activ}(3)=1 then p=3 : goto{:equipment_ini}

		if p=2 and a$="d" and {var:player_activ}(3)=1 then p=3 : goto{:equipment_ini}
		if p=2 and a$="w" and {var:player_activ}(0)=1 then p=0 : goto{:equipment_ini}

		if p=3 and a$="a" and {var:player_activ}(2)=1 then p=2 : goto{:equipment_ini}
		if p=3 and a$="w" and {var:player_activ}(1)=1 then p=1 : goto{:equipment_ini}
		'sonderfall
		if p=3 and a$="a" and {var:player_activ}(2)=o and {var:player_activ}(1)=0 and {var:player_activ}(0)=1 then p=0 : goto{:equipment_ini}
		if p=3 and a$="w" and {var:player_activ}(2)=o and {var:player_activ}(1)=0 and {var:player_activ}(0)=1 then p=0 : goto{:equipment_ini}

		if a$=chr$(13)then {:equipment_waffe_ruestung}

		goto{:equipment_joy}

	{:equipment_waffe_ruestung}
		sl=0:cp=cp+81
		'                               123456789a123456789b123456789c12345678
		print"{home}{down}{right}{white}equipment: waffe oder ruestung       ";
	{:waffe_ruestung}
		pokecp+sl*40,35
		gosub{:gosub_joy}
		pokecp+sl*40,32:if a$="w"or a$="s" thensl=1-sl:goto {:waffe_ruestung} : 'plus/minus menupunkt
		if a$=chr$(13) then {:equipment_item_select}
		goto{:waffe_ruestung}

	{:equipment_item_select}
		my=4:mx=23:mc=14:ifp=1orp=3thenmx=3
		'                                            123456789a123456789b123456789c12345678
		if sl=0 then print"{home}{down}{right}{white}equipment: waehle deine waffe        ";
		if sl=1 then print"{home}{down}{right}{white}equipment: waehle deine ruestung     ";
		print"{home}"left$(cd$,my-1)spc(mx-3);"{brown}{$c1}{$c2:18}{$c3}";
		fori=0to13:print"{down}{left:20}{$c4}                  {$c5}";:next
		print"{down}{left:20}{$c6}{$c7:18}{$c8}";
		mt=sl:gosub {:gosub_menu_item}

		'zurueck item ident 9=zurueck
			if {var:item_ident}({var:inventar_slot}(m))=9 then {:mainloop_cleartop}
		'item ident <> sl=0 waffe sl=1 ruestung
			if {var:inventar_slot}(m)<>0 and {var:item_ident}({var:inventar_slot}(m))<>sl then {:mainloop_cleartop}
		'ausruesten sl=0 waffe
			if sl=0 then q={var:player_waffe}(p)   :{var:player_waffe}(p)={var:inventar_slot}(m)   :{var:inventar_slot}(m)=q  : gosub{:gosub_equipment_print_waffe_info}    :goto{:mainloop_cleartop}
		'ausruesten sl=1 ruestung
			if sl=1 then q={var:player_ruestung}(p):{var:player_ruestung}(p)={var:inventar_slot}(m) :{var:inventar_slot}(m)=q : gosub{:gosub_equipment_print_ruestung_info} :goto{:mainloop_cleartop}
{:untersuche}
	gosub {:gosub_clear_top}
	gosub {:gosub_delay_500}
	ei=0
	{:nimm}
	'item im raum und pos
		if {var:event_raum}(ei)<>cr or {var:event_posx}(ei)<>ox or {var:event_posy}(ei)<>oy then {:nimm_next}
	'add item inventar
		{var:nimm_item}={var:event_item}(ei) : gosub{:gosub_add_item_inventar}
	'inventar max
		if is=99 then va$="{white}= {cyan}du kannst nicht mehr tragen" : gosub{:gosub_info_txt} : goto{:mainloop_oldpos}
	'loesche event item
		{var:event_raum}(ei)=-1
	'inventar print
		va$="{white}> {cyan}gefunden: "+{var:item_name}({var:inventar_slot}(is)): gosub{:gosub_info_txt} : goto{:mainloop_oldpos}
	{:nimm_next}
		'wenn ei=max
		ei=ei+1
		if ei=12 then {:aktion_nichts}
		goto{:nimm}
	{:aktion_nichts}
		'wenn nichts zutrifft
		va$="{white}= {cyan}nichts besonderes": gosub{:gosub_info_txt} : goto{:mainloop_oldpos}

{:gosub_equipment_print_waffe_info}
		{var:val_atk}={var:player_atk}(p)+{var:item_atk}({var:player_waffe}(p))
		if {var:val_atk} > 999 then {var:val_atk} = 999
		va$="{white}= {cyan}"+{var:player_name}(p)+" atk"+str$({var:val_atk}) : gosub{:gosub_info_txt}:return
{:gosub_equipment_print_ruestung_info}
		{var:val_def}={var:player_def}(p)+{var:item_def}({var:player_ruestung}(p))
		if {var:val_def} > 999 then {var:val_def} = 999
		va$="{white}= {cyan}"+{var:player_name}(p)+" def"+str$({var:item_def}) : gosub{:gosub_info_txt}:return


'battel
{:battel}
	'battel ini
		for i=4 to 11:{var:fight_active}(i)=-1:next
		pp=4:cc=4:wx=0
		for i=0 to 3:{var:fight_active}(i)=-2:{var:fight_hp}(i)={var:player_hp}(i):{var:fight_mp}(i)={var:player_mp}(i):{var:fight_str}(i)={var:player_str}(i)
			if {var:player_activ}(i)=0 then {var:fight_hp}(i)=-1
			if {var:fight_hp}(i)<=0then {var:fight_active}(i)=-1:pp=pp-1 : 'wenn player nicht aktiv pp-1
			{var:fight_atk}(i)={var:player_atk}(i)+{var:item_atk}({var:player_waffe}(i)):fd(i)={var:player_def}(i)+{var:item_def}({var:player_ruestung}(i)):{var:fight_hp_max}(i)={var:player_hp_max}(i):{var:fight_mp_max}(i)={var:player_mp_max}(i)
		next
	'clear map
		print"{home}{down:3}{white}";:for i=0 to 15:print"                                        ";:next
	'print rahmen mit hp player
		gosub{:gosub_print_rahmen_unten_battel}
		gosub{:gosub_battel_monsterauswahl}
		gosub{:gosub_print_player_hp}
		gosub{:gosub_print_player_tile}
		for i=0 to 11
			if {var:fight_active}(i)<>-1 then {var:fight_rnd_str}(i)=int(rnd(0)*{var:fight_def}(i))
		next
		cc=cc-4
{:battel_print_monster_tile}
	print"{home}{down}{right}                       ";:gosub{:gosub_print_monstername}
	for i=4 to 11:if {var:fight_active}(i)=-1 then{:battel_print_monster_tile_next}
	print"{home}"left$(cd$,{var:fight_posy}(i));spc({var:fight_posx}(i));{var:monster_tile}({var:fight_active}(i))
	{:battel_print_monster_tile_next}
		next
{:battel_routine_ini}
	c=0
{:battel_routine}
	if {var:fight_active}(c)<>-1 and {var:fight_rnd_str}(c)>=100then {var:fight_rnd_str}(c)={var:fight_rnd_str}(c)-100:goto{:battel_routine_monster_attack}
	c=c+1:if c<12 then{:battel_routine}
	for i=0 to 11:{var:fight_rnd_str}(i)={var:fight_rnd_str}(i)+{var:fight_str}(i):next:goto{:battel_routine_ini}
	{:battel_routine_monster_attack}
		if {var:fight_active}(c)=-2then{:battelmenu}
		goto{:battel_monster_attack}

'battelmenu
{:battelmenu}
	'                                                 123456789a123456789b123456789c12345678
	print"{home}{white}{down}{right}"{var:player_name}(c)": ist am zug                     "
	print dd$;spc(16)"{white} angriff {down}{left:9} inventar";:m=2
	print dd$;spc(16)"{down:2}{$20:9}{down}{left:9}{$20:9}";
	if {var:player_mp}(c)>0then print dd$;spc(16)"{down:2} magie   ";:m=3
	'loeschen aktive playertile
		print"{home}"left$(cd$,5+c*3)spc(37)"  {down}{left:2}  ";
	'aktive playertile move left
		print"{left:3}{up}"{var:player_tile}(c);
	my=0 : fz=0
{:battelmenu_print_cusor}
	'bildschirmspeicher 49152 + 816 (pro zeile 40 zeichen 0-39)
	poke {var:bildschirmspeicher}+816+my*40,35 : 'print cursor
{:battelmenu_joyauswertung}
	gosub{:gosub_joy}
	'bildschirmspeicher -1
	if a$="s"then poke {var:bildschirmspeicher}+816+my*40,32:fz=0:my=my+1:goto {:battelmenu_joyauswertung_min_max}
	if a$="w"then poke {var:bildschirmspeicher}+816+my*40,32:fz=0:my=my-1:goto {:battelmenu_joyauswertung_min_max}
	if a$=chr$(13)then fz=0:goto {:battelmenu_on_goto}
	'flucht nicht moeglich (raum 14,15,16)
	if a$="fr" and cr=14 or cr=15 or cr=16 then print"{home}{down}{right}{white}flucht nicht moeglich{$20:17}":gosub{:gosub_delay_500}:gosub{:gosub_clear_top}:gosub{:gosub_delay_99}:goto{:battelmenu_joyauswertung}
	'flucht
	if a$="fr" and fz=3  then fz=0   :goto {:mainloop}
	if a$="fr" and fz<=3 then fz=fz+1:print"{home}{down}{right}{white}flucht{$20:32}":gosub{:gosub_delay_500}:gosub{:gosub_clear_top}:gosub{:gosub_delay_99}:goto{:battelmenu_print_cusor}
	goto {:battelmenu_joyauswertung}
{:battelmenu_joyauswertung_min_max}
	if my>=m then my=0
	if my<0 then my=m-1
	goto {:battelmenu_print_cusor}
'battelmenu
{:battelmenu_on_goto}
	'aktive playertile move back
		print"{home}"left$(cd$,5+c*3)spc(36)"{white}  {down}{left:2}  {left}{up}"{var:player_tile}(c);
	'clear player battelmenu
		printdd$;spc(16)"{white}{$20:9}{down}{left:9}{$20:9}{down}{left:9}{$20:9}";
	'on goto
		on my+1 goto {:battelmenu_select_attack},{:battelmenu_select_item}
'else weiter magic
		mt=3:mx=16:my=20:mc=4:gosub {:gosub_menu_item}
		if {var:item_ident}({var:inventar_slot}(m))=9 then {:battelmenu}
	'clear menuitem
		print dd$;spc(16)"{white}{$20:9}{down}{left:9}{$20:9}{down}{left:9}{$20:9}{down}{left:9}{$20:9}";
		if {var:inventar_slot}(m)=0 or {var:item_ident}({var:inventar_slot}(m))<>3then{:battelmenu}
		m={var:inventar_slot}(m)
	'nicht genug mana
		if {var:item_mana}(m)>{var:fight_mp}(c)thenprint"{home}{down}{right}nicht genug mana                     ";:gosub{:gosub_delay_text}:goto{:battelmenu}
	gosub{:gosub_choose_target}
	goto{:goto_check_other_magic}
{:battelmenu_select_magic}
	'mana kosten = schaden
	ap={var:item_mana}(m)+2-int(rnd(0)*5):{var:fight_mp}(c)={var:fight_mp}(c)-{var:item_mana}(m):{var:player_mp}(c)={var:fight_mp}(c):gosub{:gosub_print_player_hp}
	ap=ap+{var:player_level}(c)*3
	{var:fight_hp}(ce)={var:fight_hp}(ce)-ap:if{var:fight_hp}(ce)<0then{var:fight_hp}(ce)=0
	ifce<4then{var:player_hp}(ce)={var:fight_hp}(ce)
	if{var:fight_hp}(ce)>0 then goto{:battel_print_magic_damage}
	if{var:fight_active}(ce)<>-2thencc=cc-1:wx=wx+{var:monster_exp}({var:fight_active}(ce))
	if{var:fight_active}(ce)=-2thenpp=pp-1
	{var:fight_active}(ce)=-1
	goto{:battel_print_magic_damage}
{:battelmenu_select_item}
	mt=2:mx=16:my=20:mc=4:gosub {:gosub_menu_item}
	if {var:item_ident}({var:inventar_slot}(m))=9 then {:battelmenu}
	printdd$;spc(16)"{white}{$20:9}{down}{left:9}{$20:9}{down}{left:9}{$20:9}";
	print"{down}{left:9}{$20:9}";
	if {var:inventar_slot}(m)=0 or {var:item_ident}({var:inventar_slot}(m))<>mt then {:battelmenu}
	if {var:inventar_slot}(m)=3 then gosub {:inventar_auswahl_kraueter}:{var:inventar_slot}(m)=0:gosub{:gosub_print_player_hp}:goto {:battel_print_monster_tile}
	if {var:inventar_slot}(m)=8 then gosub {:inventar_auswahl_kirsche}: {var:inventar_slot}(m)=0:gosub{:gosub_print_player_hp}:goto {:battel_print_monster_tile}
	goto {:battel_print_monster_tile}
{:battelmenu_select_attack}
	gosub {:gosub_choose_target}

'damage
{:battel_damage_auswertung}
	ap={var:fight_atk}(c)-fd(ce)
	ifap<=0thenprint"{home}"left$(cd$,{var:fight_posy}(ce))spc({var:fight_posx}(ce))"{up}{left}{white}miss";:gosub {:gosub_delay_fight}:goto{:battel_print_attack_damage_sprite}
	ap=int(rnd(0)*ap)+1
	{var:fight_hp}(ce)={var:fight_hp}(ce)-ap:if{var:fight_hp}(ce)<0then{var:fight_hp}(ce)=0
	if ce<4then {var:player_hp}(ce)={var:fight_hp}(ce)
	if {var:fight_hp}(ce)>0 then goto{:battel_print_attack_damage}
		if{var:fight_active}(ce)<>-2thencc=cc-1:wx=wx+{var:monster_exp}({var:fight_active}(ce))
		if{var:fight_active}(ce)=-2thenpp=pp-1
		{var:fight_active}(ce)=-1
	goto{:battel_print_attack_damage}
{:battel_print_attack_damage}
	poke {var:sprite_register},({var:fight_posx}(ce)*8+21)and255:poke {var:sprite_register}+1,{var:fight_posy}(ce)*8+50:poke50168,16:poke {var:sprite_register}+28,0
	poke {var:sprite_register}+16,-({var:fight_posx}(ce)>30):poke {var:sprite_register}+21,1
	print"{home}"left$(cd$,{var:fight_posy}(ce))spc({var:fight_posx}(ce))"{up}{left}{white}";ap
{:battel_print_attack_damage_sprite}
	fori=0to5:poke {var:sprite_register},peek(v)+2:poke {var:sprite_register}+1,peek(v+1)+2:gosub{:gosub_delay_sprite}:nexti
	poke {var:sprite_register}+21,0:ifce<4thengosub{:gosub_print_player_hp}
	gosub {:gosub_delay_fight}
	print"{home}"left$(cd$,{var:fight_posy}(ce))spc({var:fight_posx}(ce))"{up}{left}    "
	if{var:fight_active}(ce)=-1thenprint"{home}"left$(cd$,{var:fight_posy}(ce))spc({var:fight_posx}(ce));"  {down}{left:2}  ";
	ifcc=0then{:battel_gewonnen}
	ifpp=0then{:battel_verloren}
	goto{:battel_print_monster_tile}
{:battel_print_magic_damage}
	poke {var:sprite_register},({var:fight_posx}(ce)*8+24)and255:poke {var:sprite_register}+1,{var:fight_posy}(ce)*8+50
	ifm=4thenpoke {var:sprite_register}+37,8:poke {var:sprite_register}+38,2:poke {var:sprite_register}+39,7:poke {var:sprite_register}+28,1
	b=17:ifm=6thenb=19:poke {var:sprite_register}+28,0
	ifm=5thenb=21:poke {var:sprite_register}+28,0
	ifm=7thenb=23:poke {var:sprite_register}+28,0
	poke {var:sprite_register}+16,-({var:fight_posx}(ce)>30):poke50168,b:poke {var:sprite_register}+21,1
	print"{white}";:ifm=9thenprint"{green}";
	print"{home}"left$(cd$,{var:fight_posy}(ce))spc({var:fight_posx}(ce))"{up}{left}";ap
	fork=0to3:fori=0to1:poke50168,b+i:forj=1to40:nextj,i,k
	poke {var:sprite_register}+21,0:ifce<4thengosub{:gosub_print_player_hp}
	print"{home}"left$(cd$,{var:fight_posy}(ce))spc({var:fight_posx}(ce))"{up}{left}    "
	if{var:fight_active}(ce)=-1thenprint"{home}"left$(cd$,{var:fight_posy}(ce))spc({var:fight_posx}(ce));"  {down}{left:2}  ";
	ifcc=0then{:battel_gewonnen}
	ifpp=0then{:battel_verloren}
	goto{:battel_print_monster_tile}

'monster attack
{:battel_monster_attack}
	gosub{:gosub_delay_fight}
	'                                                                    123456789a123456789b123456789c12345678
	print"{white}{home}{down}{right}"{var:monster_name}({var:fight_active}(c))": greift an                    "
	{var:fight_rnd_str}(c)={var:fight_rnd_str}(c)-100
	if{var:fight_active}(c)=7thenif{var:fight_mp}(c)>={var:item_mana}(9)thenm=9:    gosub{:gosub_delay_fight}:gosub{:gosub_find_rnd_monster}:goto{:goto_heal_magic}
	if{var:fight_active}(c)=9thenif{var:fight_mp}(c)>={var:item_mana}(6)thenm=6:    gosub{:gosub_delay_fight}:gosub{:gosub_find_rnd_player} :goto{:battelmenu_select_magic}
	if{var:fight_active}(c)=10thenif{var:fight_mp}(c)>={var:item_mana}(4)thenm=4:   gosub{:gosub_delay_fight}:gosub{:gosub_find_rnd_player} :goto{:battelmenu_select_magic}
	if{var:fight_active}(c)=11thenif{var:fight_mp}(c)>={var:item_mana}(12)thenm=12: gosub{:gosub_delay_fight}:gosub{:gosub_find_rnd_player} :goto{:goto_slow_magic}
	gosub{:gosub_delay_fight}:gosub{:gosub_find_rnd_player}:goto{:battel_damage_auswertung}
'end battel
{:battel_gewonnen}
	poke 1020,{var:farbe_sw} 'hintergrundfarbe map
	'print rahmen ohne hp monster
	printdd$;"{brown}{up}{$c1}{$c2:10}{$c3}{$c1}{$c2:12}{$c3}{$c1}{$c2:5}{white}hp{brown}{$c2:2}{white}mp{brown}{$c2}{$c3}{white}";
	'                        123456789a123456789b123456789c12345678
	print"{home}{down}{right}du hast gewonnen                     ";:gosub{:gosub_print_monstername}
	gosub{:gosub_clear_screen}
	fori=0to3:if{var:player_activ}(i)=0then{:battel_gewonnen_jmp}
	print"{home}{white}{right:3}";:if{var:player_hp}(i)=0thenprint"{red}";
	printleft$(cd$,4+i*3){var:player_name}(i)
	print"{home}"left$(cd$,5+i*3)"{right:3}lv";{var:player_level}(i)+1;" ex";{var:player_exp}(i)
	{:battel_gewonnen_jmp}
		next
		fori=0to3:if{var:player_hp}(i)=0or{var:player_activ}(i)=0then{:battel_gewonnen_next}
		tx=wx
	{:battel_gewonnen_print_tx}
		print"{home}{white}"left$(cd$,5+i*3)spc(20)"experience {left}"tx"{left} ";
		iftx=0then{:battel_gewonnen_next}
		xs=1:iftx>9thenxs=10
		iftx>99thenxs=100
		tx=tx-xs
		{var:player_exp}(i)={var:player_exp}(i)+xs
		'if {var:player_exp}(i)>999 then {var:player_exp}(i)=999
	{:battel_gewonnen_print_lv}
		ll=10+{var:player_level}(i)*{var:player_level}(i)*10:if{var:player_exp}(i)>=llthengosub{:battel_gewonnen_add_exp}:goto{:battel_gewonnen_print_lv}
		print"{home}{white}"left$(cd$,5+i*3)"{right:3}lv";{var:player_level}(i)+1;" ex";{var:player_exp}(i):goto{:battel_gewonnen_print_tx}
	{:battel_gewonnen_next}
		nexti
		goto{:battel_gewonnen_joyauswertung}
	{:battel_gewonnen_add_exp}
		{var:player_level}(i)={var:player_level}(i)+1:{var:player_atk}(i)={var:player_atk}(i)+1:{var:player_def}(i)={var:player_def}(i)+1:{var:player_str}(i)={var:player_str}(i)+1
		{var:player_hp_max}(i)={var:player_hp_max}(i)+{var:player_level}(i)*2:if{var:player_mp_max}(i)>0then{var:player_mp_max}(i)={var:player_mp_max}(i)+{var:player_level}(i)*3
		if {var:player_hp_max}(i)>999then {var:player_hp_max}(i)=999
		if {var:player_mp_max}(i)>999then {var:player_mp_max}(i)=999
		return
	{:battel_gewonnen_joyauswertung}
		gosub{:gosub_joywait_fire}
		goto{:mainloop}
{:battel_verloren}
	'                               123456789a123456789b123456789c12345678
	print"{home}{down}{right}{white}du hast verloren                     "
	gosub{:gosub_joywait_fire}
	goto{:goto_newgame}


'gosub
{:gosub_find_rnd_player}
	re=int(rnd(0)*4):ce=0
	{:battel_find_rnd_player_if_ce}
		if {var:fight_active}(ce)=-2 and {var:player_hp}(ce)>0then{:battel_find_rnd_player_if_re}
	{:battel_find_rnd_player_ce+1}
		ce=ce+1:if ce=4 then ce=0
		goto{:battel_find_rnd_player_if_ce}
	{:battel_find_rnd_player_if_re}
		if re>0then re=re-1:goto{:battel_find_rnd_player_ce+1}
		return
{:gosub_find_rnd_monster}
	re=int(rnd(0)*8):ce=4
	{:battel_find_rnd_monster_if_ft}
		if {var:fight_active}(ce)>=0then{:battel_find_rnd_monster_if_re}
	{:battel_find_rnd_monster_ce+1}
		ce=ce+1:ifce=12thence=4
		goto{:battel_find_rnd_monster_if_ft}
	{:battel_find_rnd_monster_if_re}
		if re>0thenre=re-1:goto{:battel_find_rnd_monster_ce+1}
		return
{:gosub_battel_monsterauswahl}
	'monster aus {:raumaktion_npc}
	'cr=3  ff=4
	'cr=9  ff=9
	'cr=15 ff=13
	'cr=16 ff=14
	if ff>0 then l=ff:goto{:battel_momsterauswahl_rnd}
	'monster aus map
	l=peek(cp+164):if l=0 then return
	{:battel_momsterauswahl_rnd}
		if l=3  then a=0: lc=int(rnd(0))*2+2 : for i=0 to lc : gosub{:gosub_monsterauswal_ini} :next: return
		if l=1  then a=1:                      for i=0 to 2  : gosub{:gosub_monsterauswal_ini} :next: return
		if l=2  then a=1:                      for i=0 to 1  : gosub{:gosub_monsterauswal_ini} :next: a=2:fori=0to1:gosub{:gosub_monsterauswal_ini}:next:return
		if l=4  then a=3:                                      gosub{:gosub_monsterauswal_ini} :a=1: gosub{:gosub_monsterauswal_ini} :gosub{:gosub_monsterauswal_ini}:return
		if l=5  then a=4: lc=int(rnd(0)*3)+1 : for i=0 to lc : gosub{:gosub_monsterauswal_ini} :next: return
		if l=6  then on int(rnd(1)*2)+1                        goto {:goto_monsterauswahl_moss},{:goto_monsterauswahl_spark}
		if l=7  then lc=int(rnd(0)*3)+1:a=6  : for i=0 to lc : gosub{:gosub_monsterauswal_ini} :next: return
		if l=8  then a=7:                                      gosub{:gosub_monsterauswal_ini} :lc=int(rnd(0)*2)+1:a=6:gosub{:gosub_monsterauswal_ini}:return
		if l=9  then a=9:                                      gosub{:gosub_monsterauswal_ini} :a=8 :gosub{:gosub_monsterauswal_ini} :a=5 :gosub{:gosub_monsterauswal_ini}:return
		if l=10 then a=6: lc=int(rnd(0)*2)+1 : for i=1 to lc : gosub{:gosub_monsterauswal_ini} :next: return
		if l=11 then a=7:                                      gosub{:gosub_monsterauswal_ini} :a=10: gosub{:gosub_monsterauswal_ini}:return
		if l=12 and int(rnd(1)*2)=1then a=11 :                 gosub{:gosub_monsterauswal_ini} :return
		if l=12 then a=5:                                      gosub{:gosub_monsterauswal_ini} :gosub{:gosub_monsterauswal_ini}: a=9: gosub{:gosub_monsterauswal_ini}:return
		if l=13 then a=9:                                      gosub{:gosub_monsterauswal_ini} :a=12 :gosub{:gosub_monsterauswal_ini}:a=9 :gosub{:gosub_monsterauswal_ini}:return
		if l=14 then a=9:                                      gosub{:gosub_monsterauswal_ini} :a=13 :gosub{:gosub_monsterauswal_ini}:a=7 :gosub{:gosub_monsterauswal_ini}:return
	{:goto_monsterauswahl_moss}
		a=5 : lc=int(rnd(1)*2)+1 : for i=0 to lc: gosub{:gosub_monsterauswal_ini}:next:return
	{:goto_monsterauswahl_spark}
		a=9 : lc=int(rnd(1)*2)+1 : for i=1 to lc: gosub{:gosub_monsterauswal_ini}:next:return
{:gosub_heilen}
	for i=0 to 3
		if {var:player_activ}(i) =0 then{:gosub_heilen_next}
		{var:player_hp}(i) = {var:player_hp_max}(i)
		{var:player_mp}(i) = {var:player_mp_max}(i)
	{:gosub_heilen_next}
		next:return
{:gosub_print_rahmen_map}
	'rahmen oben
	print"{brown}{home}{$c1}{$c2:38}{$c3}";
	print"{$c4}                                      {$c5}";
	print"{$c6}{$c7:38}{$c8}";
	'rahmen mehr rechts
	printdd$;"{brown}{up}{$c1}{$c2:10}{$c3}{$c1}{$c2:12}{$c3}{$c1}{$c2:5}{white}hp{brown}{$c2:2}{white}mp{brown}{$c2}{$c3}";
	fori=0to3:print"{$c4}{$20:10}{$c5}{$c4}{$20:12}{$c5}{$c4}{$20:12}{$c5}";:next
	print"{$c6}{$c7:10}{$c8}{$c6}{$c7:12}{$c8}{$c6}{$c7:12}";
	poke50151,72:poke56295,9:return
{:gosub_print_player_hp}
	printdd$;
	fori=0to3:if{var:player_activ}(i)=0thenprintspc(40);:goto{:gosub_print_player_hp_next_return}
	print"{white}";:if{var:player_hp}(i)=0thenprint"{red}";
	printspc(27){var:player_name}(i)" ";:a={var:player_hp}(i):gosub{:gosub_validate_hp_mp}
	printd$;
	a={var:player_mp}(i):gosub{:gosub_validate_hp_mp}
	print" "d$"{right}";
	{:gosub_print_player_hp_next_return}
		next:return
{:gosub_print_player_tile}
	for i=0 to 3:if {var:player_hp}(i)<=0 or {var:player_activ}(i)=0 then next:return
	print"{home}"left$(cd$,5+i*3);spc(37);{var:player_tile}(i):next
	return

{:gosub_menu_item}
	gosub{:gosub_sort_inventar}
	mi=-1:m=0:mo=0
	{:menu_item_pos}
		mi=mo-1:cy=my:mm=0
		if mc=4 then gosub {:menu_item_clear}
	{:menu_item_print}
		mi=mi+1
		'print pos menue
			print"{home}{white}"left$(cd$,cy)spc(mx)" ";
		'wenn item_ident <> menu transition
			if {var:item_ident}({var:inventar_slot}(mi))<>mt then print"{cyan}";
		'wenn item_ident 9=zurueck -1=leer
			if {var:item_ident}({var:inventar_slot}(mi))=9  then print"{white}";
			if {var:item_ident}({var:inventar_slot}(mi))=-1 then print"{cyan}";
		'print item
			print {var:item_name}({var:inventar_slot}(mi));
		'current y
			cy=cy+1
		'mm=menu zaehler
			mm=mm+1
		'wenn menue zaehler = mc
			if mm=mc then{:menu_item_auswertung}
		'wenn menue zaehler < 13
			if mi<13 then{:menu_item_print}
	{:menu_item_auswertung}
		cp={var:bildschirmspeicher}+mx+my*40
	{:menu_item_joyauswertung}
		'print cursor
			poke cp+(m-mo)*40,35
		'gosub joy
			gosub{:gosub_joy}
		'print leerzeichen
			poke cp+(m-mo)*40,32
		'joy auf/ab return
			if a$="w"then m=m-1:goto{:menu_item_auswertung_posmenu}
			if a$="s"then m=m+1:goto{:menu_item_auswertung_posmenu}
			if a$=chr$(13)then return
		goto{:menu_item_joyauswertung}
	{:menu_item_auswertung_posmenu}
		if m=-1then m=14-1:mo=14-mc:goto{:menu_item_pos}
		if m=14then m=0:mo=0:goto{:menu_item_pos}
		m%=0
	{:menu_item_auswertung_auf_ab}
		if m<mo then mo=mo-mc:m%=1:goto{:menu_item_auswertung_auf_ab}
		if m>=mo+mc then mo=mo+mc:m%=1
		if mo<0 then mo=0:m%=1
		if m%=1 then{:menu_item_pos}
		goto{:menu_item_joyauswertung}
	{:menu_item_clear}
		for i=0 to 3
			print"{home}{white}"left$(cd$,cy+i)spc(mx)" ";
			print"        ";
		next i
		return
{:gosub_sort_inventar}

	'mt=0 waffe
	'mt=1 ruestung
	'mt=2 essbar
	'mt=3 magie
	'mt=9 zurueck

	'clear temp
		a=0
		for i=0 to 99 : {var:inventar_slottemp}(i)=0 : next i

	'copy inventar -> temp : del inventar
		for i=0 to 99 : {var:inventar_slottemp}(i)={var:inventar_slot}(i): {var:inventar_slot}(i)=0 : next i

	'gosub mt
		if mt=0 then gosub {:mt=9} : gosub {:mt=0} : a=50 :gosub {:mt=1} : gosub {:mt=2} : gosub {:mt=3}
		if mt=1 then gosub {:mt=9} : gosub {:mt=1} : a=50 :gosub {:mt=0} : gosub {:mt=2} : gosub {:mt=3}
		if mt=2 then gosub {:mt=9} : gosub {:mt=2} : a=50 :gosub {:mt=0} : gosub {:mt=1} : gosub {:mt=3}
		if mt=3 then gosub {:mt=9} : gosub {:mt=3} : a=50 :gosub {:mt=0} : gosub {:mt=1} : gosub {:mt=2}

	return

	'copy temp -> inventar
	{:mt=9}
		for i=0 to 99 : if {var:item_ident}({var:inventar_slottemp}(i))=9 then {var:inventar_slot}(a)={var:inventar_slottemp}(i) : a=a+1 : 'zurueck
		next i
		return
	{:mt=0}
		for i=0 to 99 : if {var:item_ident}({var:inventar_slottemp}(i))=0 then {var:inventar_slot}(a)={var:inventar_slottemp}(i) : a=a+1 : 'weapon
		next i
		return
	{:mt=1}
		for i=0 to 99 : if {var:item_ident}({var:inventar_slottemp}(i))=1 then {var:inventar_slot}(a)={var:inventar_slottemp}(i) : a=a+1 : 'ruestung
		next i
		return
	{:mt=2}
		for i=0 to 99 : if {var:item_ident}({var:inventar_slottemp}(i))=2 then {var:inventar_slot}(a)={var:inventar_slottemp}(i) : a=a+1 : 'essbar
		next i
		return
	{:mt=3}
		for i=0 to 99 : if {var:item_ident}({var:inventar_slottemp}(i))=3 then {var:inventar_slot}(a)={var:inventar_slottemp}(i) : a=a+1 : 'magic
		next i
		return

{:gosub_clear_screen}
	print"{brown}{home}{down:3}{$c1}{$c2:38}{$c3}";
	fori=0to13
	print"{$c4}                                      {$c5}";:next
	print"{$c6}{$c7:38}{$c8}";:return
{:gosub_clear_top}
	print"{home}{down}{right}{white}{$20:38}";
	return
{:gosub_equipment_rahmen}
	print"{brown}{home}{down:3}{$c1}{$c2:18}{$c3}{$c1}{$c2:18}{$c3}";
	fori=0to5
	print"{$c4}                  {$c5}{$c4}                  {$c5}";:next
	print"{$c6}{$c7:18}{$c8}{$c6}{$c7:18}{$c8}";
	print"{$c1}{$c2:18}{$c3}{$c1}{$c2:18}{$c3}";
	fori=0to5
	print"{$c4}                  {$c5}{$c4}                  {$c5}";:next
	print"{$c6}{$c7:18}{$c8}{$c6}{$c7:18}{$c8}";
	dx=3:dy=4:p=0:gosub{:gosub_equipment_print_atk_def}:dx=23:p=1:gosub{:gosub_equipment_print_atk_def}
	dx=3:dy=12:p=2:gosub{:gosub_equipment_print_atk_def}:dx=23:p=3:gosub{:gosub_equipment_print_atk_def}
	return
{:gosub_equipment_print_atk_def}
	if {var:player_activ}(p)=0 then return
	print"{home}{white}";:if{var:player_hp}(p)=0thenprint"{red}";
	print"{home}"left$(cd$,dy)spc(dx-1)" "{var:player_name}(p)"  lv"{var:player_level}(p)+1
	print"{home}{white}{down:2}"left$(cd$,dy)spc(dx)" "{var:item_name}({var:player_waffe}(p));
	print"{home}{white}{down:3}"left$(cd$,dy)spc(dx)" "{var:item_name}({var:player_ruestung}(p));
	{var:val_atk}={var:player_atk}(p)+{var:item_atk}({var:player_waffe}(p))
	{var:val_def}={var:player_def}(p)+{var:item_def}({var:player_ruestung}(p))
	if {var:val_atk} > 999 then {var:val_atk} = 999
	if {var:val_def} > 999 then {var:val_def} = 999
	print"{home}{white}{down:2}"left$(cd$,dy)spc(dx+9)"atk"{var:val_atk};
	print"{home}{white}{down:3}"left$(cd$,dy)spc(dx+9)"def"{var:val_def};
	return
{:gosub_print_map}
	'set sp
		if peek(2)=1 then sp=30960+rs*(cr-0)
	'print down
		for i=0 to 7
		print"{home}{down:3}"left$(cd$,i*2);
	'print map tile
		for j=0 to 19
		print {var:map_tile}(peek(sp))"{up}";
		sp=sp+1
		next j,i
	return
{:gosub_add_item_inventar}
	'set is
		is=0
	{:inventar_next}
	'wenn inventar leer
		if {var:inventar_slot}(is)=0 then {var:inventar_slot}(is)={var:nimm_item}:{var:nimm_item}=-1:return
	'next inventar
		is=is+1
	'wenn inventar max
		if is=99 then return
	goto{:inventar_next}

{:gosub_monsterauswal_ini}
	ifcc>=11thenreturn
	{var:fight_hp}(cc)={var:monster_hp}(a):{var:fight_mp}(cc)={var:monster_mp}(a):{var:fight_active}(cc)=a:{var:fight_rnd_str}(cc)=int(rnd(0)*{var:monster_str}(a)):{var:fight_str}(cc)={var:monster_str}(a)
	{var:fight_posx}(cc)=2:{var:fight_posy}(cc)=5+cc*3:{var:fight_atk}(cc)={var:monster_atk}(a):fd(cc)={var:monster_def}(a):fb(cc)={var:monster_res}(a)
	{var:fight_hp_max}(cc)={var:monster_hp}(a):{var:fight_mp_max}(cc)={var:monster_mp}(a)
	ifcc>=4then{var:fight_posx}(cc)=5:{var:fight_posy}(cc)=5+(cc-4)*3
	cc=cc+1:return
{:gosub_print_monstername}
	zm=0: 'zaehler montster
	for j=4 to 7
		if {var:fight_active}(j)=-1then zm=zm-1
		zm=zm+1
	next j
	if zm<>cm then printdd$;"{right}{$20:10}{down}{left:10}{$20:10}{down}{left:10}{$20:10}{down}{left:10}{$20:10}";
	printdd$;
	cm=0: 'print
	for i=4 to 7
		if {var:fight_active}(i)=-1then next:return	:'{var:fight_active}(x) death=-1
		a={var:fight_hp}(i):gosub{:gosub_validate_hp_mp}
		print"{home}{right}"left$(cd$,20+cm){var:monster_name}({var:fight_active}(i));
		print"{home}{right}"left$(cd$,20+cm);"{right:7}";d$
		cm=cm+1
	next
	return
{:gosub_choose_target}
	'                                                      123456789a123456789b123456789c12345678
	ce=4:print"{home}{down}{right}{white}"{var:player_name}(c)": wahele dein ziel               "
	'{var:player_name}(c)

	{:choose_target_start}
		if{var:fight_active}(ce)=-1then{:choose_target_plus}
	
	{:choose_target_poke_cursor}
		'bildschirmspeicher 49152 -1 (pro zeile 40 zeichen 0-39)
		'cursor links von target
		poke {var:bildschirmspeicher}-2+{var:fight_posx}(ce)+{var:fight_posy}(ce)*40,35

	{:choose_target_joyauswertung}
		'joyauswertung
			gosub{:gosub_joy}
		'auswahl
			if a$=chr$(13)     then poke {var:bildschirmspeicher}-2+{var:fight_posx}(ce)+{var:fight_posy}(ce)*40,32 :             return                     'print leerzeichen : fire
			if a$="s"          then                                                                                               goto{:choose_target_plus}  '                 : target +
			if a$="w"          then                                                                                               goto{:choose_target_minus} '                 : target -
			if a$="d" and ce>3 then      poke {var:bildschirmspeicher}-2+{var:fight_posx}(ce)+{var:fight_posy}(ce)*40,32 : ce=0 : goto{:choose_target_start} 'print leerzeichen : target player
			if a$="a" and ce<4 then      poke {var:bildschirmspeicher}-2+{var:fight_posx}(ce)+{var:fight_posy}(ce)*40,32 : ce=4 : goto{:choose_target_start} 'print leerzeichen : tagret monster
		goto{:choose_target_joyauswertung}

	{:choose_target_plus}
		co=ce
		'loesche cusor
			poke {var:bildschirmspeicher}-2+{var:fight_posx}(ce)+{var:fight_posy}(ce)*40,32
		{:choose_target_ce+1}
			ce=ce+1
			if ce>= 12       then ce=0  'ce=max
			if co<4 and ce>3 then ce=co 'co=player  and ce=monster
			if co>3 and ce<4 then ce=co 'co=monster and ce=player
			if{var:fight_active}(ce)<>-1then{:choose_target_poke_cursor}
		goto{:choose_target_ce+1}

	{:choose_target_minus}
		co=ce
		'loesche cursor
			poke {var:bildschirmspeicher}-2+{var:fight_posx}(ce)+{var:fight_posy}(ce)*40,32
		{:choose_target_ce-1}
			ce=ce-1
			if ce<0 then          ce=11 'ce=min
			if co<4 and ce>3 then ce=co 'co=player  and ce=monster
			if co>3 and ce<4 then ce=co 'co=monster and ce=player
			if{var:fight_active}(ce)<>-1then{:choose_target_poke_cursor}
		goto{:choose_target_ce-1}

{:goto_check_other_magic}
	if{var:fight_active}(c)=-2then{:goto_player_magic}
	if{var:fight_active}(c)=7and{var:fight_mp}(c)>={var:item_mana}(9)thenm=9:goto{:goto_heal_magic}
	goto{:battelmenu_select_magic}
{:goto_heal_magic}
	ap={var:item_mana}(m)*4+2-int(rnd(0)*5):{var:fight_mp}(c)={var:fight_mp}(c)-{var:item_mana}(m):ifc<4then{var:player_mp}(c)={var:fight_mp}(c):gosub{:gosub_print_player_hp}
	{var:fight_hp}(ce)={var:fight_hp}(ce)+ap:if{var:fight_hp}(ce)>{var:fight_hp_max}(ce)then{var:fight_hp}(ce)={var:fight_hp_max}(ce)
	ifce<4then{var:player_hp}(ce)={var:fight_hp}(ce):gosub{:gosub_print_player_hp}
	print"{home}"left$(cd$,{var:fight_posy}(ce))spc({var:fight_posx}(ce))"{up}{left}{green}";ap
	gosub {:gosub_delay_500}
	print"{home}"left$(cd$,{var:fight_posy}(ce))spc({var:fight_posx}(ce))"{up}{left}    "
	goto{:battel_print_monster_tile}
{:goto_slow_magic}
	{var:fight_mp}(c)={var:fight_mp}(c)-{var:item_mana}(m):ifc<4then{var:player_mp}(c)={var:fight_mp}(c):gosub{:gosub_print_player_hp}
	{var:fight_str}(ce)={var:fight_str}(ce)/2:if{var:fight_str}(ce)<5then{var:fight_str}(ce)=5
	print"{home}"left$(cd$,{var:fight_posy}(ce))spc({var:fight_posx}(ce))"{up}{left}{green}slow";
	gosub {:gosub_delay_500}
	print"{home}"left$(cd$,{var:fight_posy}(ce))spc({var:fight_posx}(ce))"{up}{left}    "
	goto{:battel_print_monster_tile}
{:goto_player_magic}
	ifm=9then{:goto_heal_magic}
	goto{:battelmenu_select_magic}

{:goto_newgame}
	'part 1 start variabeln
		for i=0 to 3:{var:player_exp}(i)=0:next
		{var:player_atk}(0)=5:{var:player_def}(0)=2:{var:player_atk}(1)=4:{var:player_def}(1)=3:{var:player_atk}(2)=1:{var:player_def}(2)=1:{var:player_atk}(3)=1:{var:player_def}(3)=1
	'item 0-13 = 0
		for i=0 to 13:{var:inventar_slot}(i)=0:next
		{var:inventar_slot}(0)=18
	'print rahmen
		print"{white}{clear}{brown}{$c1}{$c2:38}{$c3}";
		fori=1to23:print"{$c4}"spc(38)"{$c5}";:next
		print"{$c6}{$c7:38}{up:3}";
		poke 50151,72:poke 56295,9 '50151 = letzte pos bidschirmspeicher 56295= letzte pos farbspeicher
	'raum und posx/y
		x=15:y=2:cr=0
	'player aktiv
		{var:player_activ}(0)=1:{var:player_activ}(1)=0:{var:player_activ}(2)=0:{var:player_activ}(3)=0	
	'set player hp max
		{var:player_hp_max}(0)=15:{var:player_hp_max}(1)=17:{var:player_hp_max}(2)=9:{var:player_hp_max}(3)=9:{var:player_mp_max}(0)=0:{var:player_mp_max}(1)=0:{var:player_mp_max}(2)=7:{var:player_mp_max}(3)=23
	'set player hp mp usw
		fori=0to3:{var:player_hp}(i)={var:player_hp_max}(i):{var:player_mp}(i)={var:player_mp_max}(i):{var:player_exp}(i)=0:{var:player_waffe}(i)=0:{var:player_ruestung}(i)=0:next
	'player weappon = item 1 ruestung= item 2
		{var:player_waffe}(0)=1:{var:player_ruestung}(0)=2
	'poke mapspeicher
		gosub {:gosub_raumaktion_poke_mapspeicher}
	'print text
		{var:seq_select}="intro" : gosub {:gosub_print_txt_screen}
	'print"{clr}";fre(0)
	'stop
	goto{:mainloop}
{:goto_end_game}
	print"{white}{clear}{brown}{$c1}{$c2:38}{$c3}";
	fori=1to23:print"{$c4}"spc(38)"{$c5}";:next
	print"{$c6}{$c7:38}{up:3}";
	poke 50151,72:poke 56295,9 '50151 = letzte pos bidschirmspeicher 56295= letzte pos farbspeicher
	{var:seq_select}="ende" : gosub {:gosub_print_txt_screen}
	goto{:mainloop}

'***work***
{:gosub_print_rahmen_oben}
	'rahmen oben
		print"{brown}{home}{$c1}{$c2:38}{$c3}";
		print"{$c4}                                      {$c5}";
		print"{$c6}{$c7:38}{$c8}"
	return
{:gosub_print_rahmen_unten_battel}
	'hp/mp wird nicht geloescht
		print dd$;"{brown}{up}{$c1}{$c2:7}{white}hp{brown}{$c2:1}{$c3}{$c1}{$c2:12}{$c3}{$c1}{$c2:5}{white}hp{brown}{$c2:2}{white}mp{brown}{$c2}{$c3}";
		'print dd$;"{brown}{up}{$c1}{$c2:10}{$c3}{$c1}{$c2:12}{$c3}{$c1}{$c2:5}{white}hp{brown}{$c2:2}{white}mp{brown}{$c2}{$c3}";
		for i=0 to 3:print"{$c4}{$20:10}{$c5}{$c4}{$20:12}{$c5}{$c4}{right:12}{$c5}";:next
		print"{$c6}{$c7:10}{$c8}{$c6}{$c7:12}{$c8}{$c6}{$c7:12}";
		poke 50151,72:poke 56295,9
	return
{:gosub_print_rahmen_unten_map}
	'hp/mp wird nicht geloescht
		print dd$;"{brown}{up}{$c1}{$c2:12}{$c2:12}{$c3}{$c1}{$c2:5}{white}hp{brown}{$c2:2}{white}mp{brown}{$c2}{$c3}";
		'print dd$;"{brown}{up}{$c1}{$c2:2}{white}info{brown}{$c2:6}{$c2:12}{$c3}{$c1}{$c2:5}{white}hp{brown}{$c2:2}{white}mp{brown}{$c2}{$c3}";
		for i=0 to 3:print"{$c4}{$20:12}{$20:12}{$c5}{$c4}{right:12}{$c5}";:next
		print"{$c6}{$c7:12}{$c7:12}{$c8}{$c6}{$c7:12}";
		poke 50151,72:poke 56295,9
	return

{:gosub_input_seq}
	'print "<"= pfeil links
	'print "="= i
	'print ">"= pfeil rechts
	'{green}> {white} -> {white}> {cyan}
	' {cyan}= {white} -> {white}= {cyan}
	poke 56322,224 : 'tastatur 224=aus 225=an
	if {var:seq_select}="txt.welcome.lena" then open 1,8,4,"txt.welcome.lena,s,r" : va$="{white}> {cyan}lena {cyan}ist im team"
	if {var:seq_select}="txt.welcome.dolm" then open 1,8,4,"txt.welcome.dolm,s,r" : va$="{white}> {cyan}dolm {cyan}ist im team"
	if {var:seq_select}="txt.welcome.mira" then open 1,8,4,"txt.welcome.mira,s,r" : va$="{white}> {cyan}mira {cyan}ist im team"
	if {var:seq_select}="" then return
	i=0:sb$(0)="":sb$(1)="":sb$(2)=""
	{:input_seq}
		input#1,sb$(i)
		if st=0 then i=i+1: goto{:input_seq}
	close 1
	poke 56322,225 : 'tastatur 224=aus 225=an
	'clear
		print "{home}{right}{down:20}"+"{$20:24}"
		print "{home}{right}{down:21}"+"{$20:24}"
		print "{home}{right}{down:22}"+"{$20:24}"
		print "{home}{right}{down:23}"+"{$20:24}"
	'print
		print "{home}{right}{down:20}{white}"+sb$(0)
		print "{home}{right}{down:21}{white}"+sb$(1)
		print "{home}{right}{down:22}{white}"+sb$(2)
		print "{home}{right}{down:23}{white}"+sb$(3)
	'wait fire
		gosub{:gosub_joywait_fire}
	'clear
		print "{home}{right}{down:20}"+"{$20:24}"
		print "{home}{right}{down:21}"+"{$20:24}"
		print "{home}{right}{down:22}"+"{$20:24}"
		print "{home}{right}{down:23}"+"{$20:24}"
	'print info txt
		gosub {:gosub_info_txt}
	return
{:gosub_info_txt}

	if ib$(0)="" then ib$(0)=va$ : goto{:info_txt}
	if ib$(1)="" then ib$(1)=va$ : goto{:info_txt}
	if ib$(2)="" then ib$(2)=va$ : goto{:info_txt}

	ib$(0)=ib$(1)
	ib$(1)=ib$(2)
	ib$(2)=va$
	{:info_txt}
		print"{home}{white}"
	'clear
		print "{home}{right}{down:20}"+"{$20:24}"
		print "{home}{right}{down:21}"+"{$20:24}"
		print "{home}{right}{down:22}"+"{$20:24}"
		print "{home}{right}{down:23}"+"{$20:24}"
	'print
		print "{home}{right}{down:20}"+ib$(0)
		print "{home}{right}{down:21}"+ib$(1)
		print "{home}{right}{down:22}"+ib$(2)
	return
{:gosub_print_txt_screen}
	poke 1020,{var:farbe_bl}
	poke 56322,224 : 'tastatur 224=aus 225=an
	if {var:seq_select}="intro" then open 1,8,4,"txt.intro,s,r"
	if {var:seq_select}="ende" then open 1,8,4,"txt.ende,s,r"
	if {var:seq_select}="" then return
	{:txt_screen_get}
		get#1,{var:seq_buffer}
		if {var:seq_buffer}="$" then print"{home}{down:2}{right:2}{white}"; : goto {:txt_screen_get}
		if {var:seq_buffer}="%" then print"{right:2}{white}";               : goto {:txt_screen_get}
		if {var:seq_buffer}="#" then close 1  : poke 56322,255              : gosub{:gosub_joywait_fire} : return
		print {var:seq_buffer};
		if {var:seq_buffer}<>" " then poke 162,0: wait 162,4
	goto {:txt_screen_get}

{:gosub_validate_hp_mp}
	t$=str$(a)
	d$=right$("000"+right$(t$,len(t$)-1),3):return


{:gosub_joy}
	a$=""
	{:joy_wait}
		j=peek(56320)
		'erst weiter wenn keine bewegung
		if j=127 then {:joy}
		'erst weiter wenn fire+left/right/up/down
		if j=107 or j=103 or j=110 or j=109 then {:joy}
		goto {:joy_wait}
	{:joy}
		j=peek(56320)
		'warten fire und keine bewegung return
			if j=127 and a$=chr$(13) then return
		'fire und links,rechts,oben oder unten
			if j=107 then a$="fl" : gosub {:gosub_delay_joy} : return 'fire+left
			if j=103 then a$="fr" : gosub {:gosub_delay_joy} : return 'fire+right
			if j=110 then a$="fu" : gosub {:gosub_delay_joy} : return 'fire+up
			if j=109 then a$="fd" : gosub {:gosub_delay_joy} : return 'fire+down
		'links,rechts,oben oder unten
			if j=123 then a$="a":gosub {:gosub_delay_joy}:return
			if j=119 then a$="d":gosub {:gosub_delay_joy}:return
			if j=126 then a$="w":gosub {:gosub_delay_joy}:return
			if j=125 then a$="s":gosub {:gosub_delay_joy}:return
		'fire
			if j=111 then a$=chr$(13)
		goto {:joy}
{:gosub_joymap}
	a$=""
	{:joymap_wait}
		'erst weiter wenn keine fire oder fire+richtung
		j=peek(56320)
		if j<>111 and j<>107 and j<>103 and j<>110 and j<>109 then {:joymap}
		goto {:joymap_wait}
	{:joymap}
	j=peek(56320)
	'warten fire und keine bewegung return
		if j=127 and a$=chr$(13) then return
	'links,rechts,oben oder unten
		if j=123 then a$="a":gosub {:gosub_delay_joymap}:return
		if j=119 then a$="d":gosub {:gosub_delay_joymap}:return
		if j=126 then a$="w":gosub {:gosub_delay_joymap}:return
		if j=125 then a$="s":gosub {:gosub_delay_joymap}:return
	'fire
		if j=111 then a$=chr$(13)
	goto {:joymap}
{:gosub_joywait_fire}
	a$=""
	{:joywait_fire}
	j=peek(56320)
	'warten fire und keine bewegung
		if j=127 and a$=chr$(13) then return
	'fire
		if j=111 then a$=chr$(13)
	goto {:joywait_fire}

{:gosub_delay_joy}
	poke 162,0: wait 162,16 :return
{:gosub_delay_joymap}
	poke 162,0: wait 162,8 :return
{:gosub_delay_fight}
	poke 162,0: wait 162,32:return
{:gosub_delay_sprite}
	poke 162,0: wait 162,2 :return
{:gosub_delay_text}
	poke 162,0: wait 162,32
	poke 162,0: wait 162,32
	poke 162,0: wait 162,32
	poke 162,0: wait 162,32
	return
{:gosub_delay_500}
	poke 162,0: wait 162,32
	return
{:gosub_delay_99}
	poke 162,0: wait 162,4
	return

'data
	'beispiel namen:
	'scum
	'slim
	'cobr
	'bull
	'fire
	'naga
	'kare
'monster
	'{var:monster_xxx}(x)
	'    name hp mp str atk def res exp
	data"imp",5,0,8,4,1,0,3
	data"snake",8,0,12,6,1,0,5
	data"viper",12,0,18,6,1,0,9
	data"nacho",30,0,22,15,5,0,50
	data"golem",20,0,4,20,8,0,17
	data"moss",30,0,7,26,9,0,21
	data"bones",50,0,20,18,8,0,15
	data"wisp",25,50,15,0,8,0,17
	data"troll",100,0,9,40,13,0,100
	data"spark",30,50,22,0,8,0,17
	data"burner",80,90,30,25,13,0,42
	data"tberry",120,10,60,60,20,0,150
	data"dracul",250,60,50,70,25,0,500
	data"glados",500,70,60,80,30,0,1000
'player
	'{var:player_xxx}(x)
	'    name  hp mp str atk def waffe ruestung
	data"kron",15 ,0  ,10 ,4 ,3 ,0 ,0
	data"lena",17 ,0  ,10 ,3 ,3 ,0 ,0
	data"dolm",9  ,7  ,8  ,1 ,1 ,0 ,0
	data"mira",9  ,23 ,7  ,1 ,1 ,1 ,2
'tile
	'{var:map_tile}(x)
	data"{gray1}{rvrs off}{201}{rvrs off}{gray1}{202}{down}{left:2}{rvrs off}{gray1}{202}{rvrs off}{gray1}{201}{rvrs off}"
	data"{gray1}{rvrs off}{203}{rvrs off}{gray1}{204}{down}{left:2}{rvrs off}{gray1}{201}{rvrs off}{gray1}{202}{rvrs off}"
	data"{gray1}{rvrs off}{201}{rvrs off}{gray1}{202}{down}{left:2}{rvrs off}{gray1}{202}{rvrs off}{gray1}{201}{rvrs off}"
	data"{gray1}{rvrs off}{205}{rvrs off}{gray1}{206}{down}{left:2}{rvrs off}{gray1}{207}{rvrs off}{gray1}{208}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{orange}{rvrs off}{209}{rvrs off}{orange}{209}{down}{left:2}{rvrs off}{orange}{209}{rvrs off}{orange}{209}{rvrs off}"
	data"{brown}{rvrs off}{210}{rvrs off}{brown}{211}{down}{left:2}{rvrs off}{brown}{212}{rvrs off}{brown}{213}{rvrs off}"
	data"{lt. red}{rvrs off}{214}{rvrs off}{lt. red}{215}{down}{left:2}{rvrs off}{lt. red}{216}{rvrs off}{lt. red}{217}{rvrs off}"
	data"{gray1}{rvrs off}{218}{rvrs off}{gray1}{219}{down}{left:2}{rvrs off}{gray1}{220}{rvrs off}{gray1}{221}{rvrs off}"
	data"{gray1}{rvrs off}{162}{rvrs off}{gray1}{163}{down}{left:2}{rvrs off}{gray1}{164}{rvrs off}{gray1}{165}{rvrs off}"
	data"{brown}{rvrs off}{161}{rvrs off}{brown}{161}{down}{left:2}{rvrs off}{brown}{161}{rvrs off}{brown}{161}{rvrs off}"
	data"{gray1}{rvrs off}{222}{rvrs off}{gray1}{223}{down}{left:2}{rvrs off}{gray1}{201}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{lt. red}{rvrs off}{166}{rvrs off}{lt. red}{167}{down}{left:2}{rvrs off}{lt. red}{168}{rvrs off}{lt. red}{169}{rvrs off}"
	data"{lt. red}{rvrs off}{170}{rvrs off}{lt. red}{170}{down}{left:2}{rvrs off}{lt. red}{170}{rvrs off}{lt. red}{170}{rvrs off}"
	data"{brown}{rvrs off}{171}{rvrs off}{brown}{171}{down}{left:2}{rvrs off}{brown}{172}{rvrs off}{brown}{172}{rvrs off}"
	data"{brown}{rvrs off}{171}{rvrs off}{brown}{173}{down}{left:2}{rvrs off}{brown}{172}{rvrs off}{brown}{172}{rvrs off}"
	data"{brown}{rvrs off}{173}{rvrs off}{brown}{171}{down}{left:2}{rvrs off}{brown}{172}{rvrs off}{brown}{172}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{lt. green}{rvrs off}{174}{rvrs off}{lt. green}{209}{down}{left:2}{rvrs off}{lt. green}{209}{rvrs off}{lt. green}{175}{rvrs off}"
	data"{lt. green}{rvrs off}{176}{rvrs off}{lt. green}{177}{down}{left:2}{rvrs off}{lt. green}{178}{rvrs off}{lt. green}{179}{rvrs off}"
	data"{lt. green}{rvrs off}{180}{rvrs off}{lt. green}{181}{down}{left:2}{rvrs off}{lt. green}{180}{rvrs off}{lt. green}{181}{rvrs off}"
	data"{lt. green}{rvrs off}{182}{rvrs off}{lt. green}{183}{down}{left:2}{rvrs off}{lt. green}{184}{rvrs off}{lt. green}{185}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{brown}{rvrs off}{174}{rvrs off}{brown}{209}{down}{left:2}{rvrs off}{brown}{209}{rvrs off}{brown}{175}{rvrs off}"
	data"{brown}{rvrs off}{176}{rvrs off}{brown}{177}{down}{left:2}{rvrs off}{brown}{178}{rvrs off}{brown}{179}{rvrs off}"
	data"{brown}{rvrs off}{180}{rvrs off}{brown}{181}{down}{left:2}{rvrs off}{brown}{180}{rvrs off}{brown}{181}{rvrs off}"
	data"{brown}{rvrs off}{182}{rvrs off}{brown}{183}{down}{left:2}{rvrs off}{brown}{184}{rvrs off}{brown}{185}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{209}{rvrs off}{gray1}{209}{down}{left:2}{rvrs off}{gray1}{209}{rvrs off}{gray1}{209}{rvrs off}"
	data"{gray1}{rvrs off}{186}{rvrs off}{gray1}{209}{down}{left:2}{rvrs off}{gray1}{186}{rvrs off}{gray1}{209}{rvrs off}"
	data"{gray1}{rvrs off}{186}{rvrs off}{gray1}{209}{down}{left:2}{rvrs off}{gray1}{187}{rvrs off}{gray1}{209}{rvrs off}"
	data"{gray1}{rvrs off}{188}{rvrs off}{gray1}{189}{down}{left:2}{rvrs off}{gray1}{190}{rvrs off}{gray1}{190}{rvrs off}"
	data"{gray1}{rvrs off}{191}{rvrs off}{gray1}{191}{down}{left:2}{rvrs on}{gray1}{64}{rvrs on}{gray1}{64}{rvrs off}"
	data"{gray2}{rvrs on}{65}{rvrs on}{gray2}{66}{down}{left:2}{rvrs on}{gray2}{67}{rvrs on}{gray2}{68}{rvrs off}"
	data"{gray1}{rvrs on}{69}{rvrs on}{gray1}{70}{down}{left:2}{rvrs on}{gray1}{71}{rvrs on}{gray1}{72}{rvrs off}"
	data"{brown}{rvrs on}{73}{rvrs on}{brown}{73}{down}{left:2}{rvrs on}{brown}{73}{rvrs on}{brown}{73}{rvrs off}"
	data"{lt. red}{rvrs on}{74}{rvrs on}{lt. red}{75}{down}{left:2}{rvrs on}{lt. red}{76}{rvrs on}{lt. red}{77}{rvrs off}"
	data"{gray1}{rvrs on}{78}{rvrs on}{gray1}{75}{down}{left:2}{rvrs on}{gray1}{76}{rvrs on}{gray1}{77}{rvrs off}"
	data"{lt. green}{rvrs on}{79}{rvrs on}{lt. green}{80}{down}{left:2}{rvrs on}{lt. green}{81}{rvrs on}{lt. green}{82}{rvrs off}"
	data"{gray2}{rvrs on}{83}{rvrs on}{gray2}{84}{down}{left:2}{rvrs on}{gray2}{85}{rvrs on}{gray2}{86}{rvrs off}"
	data"{gray1}{rvrs on}{87}{rvrs on}{gray1}{88}{down}{left:2}{rvrs on}{gray1}{89}{rvrs on}{gray1}{90}{rvrs off}"
	data"{gray1}{rvrs on}{91}{rvrs on}{gray1}{92}{down}{left:2}{rvrs on}{gray1}{93}{rvrs on}{gray1}{94}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{lt. green}{rvrs on}{95}{rvrs on}{lt. green}{33}{down}{left:2}{rvrs on}{lt. green}{35}{rvrs on}{lt. green}{36}{rvrs off}"
	data"{gray3}{rvrs on}{37}{rvrs on}{gray3}{38}{down}{left:2}{rvrs on}{gray3}{39}{rvrs on}{gray3}{40}{rvrs off}"
	data"{gray1}{rvrs on}{37}{rvrs on}{gray1}{38}{down}{left:2}{rvrs on}{gray1}{39}{rvrs on}{gray1}{40}{rvrs off}"
	data"{lt. green}{rvrs on}{41}{rvrs on}{lt. green}{42}{down}{left:2}{rvrs on}{lt. green}{43}{rvrs on}{lt. green}{44}{rvrs off}"
	data"{gray1}{rvrs on}{45}{rvrs on}{gray1}{46}{down}{left:2}{rvrs on}{gray1}{47}{rvrs on}{gray1}{48}{rvrs off}"
	data"{gray1}{rvrs on}{49}{rvrs on}{gray1}{50}{down}{left:2}{rvrs on}{gray1}{51}{rvrs on}{gray1}{52}{rvrs off}"
	data"{gray1}{rvrs on}{53}{rvrs on}{gray1}{54}{down}{left:2}{rvrs on}{gray1}{55}{rvrs on}{gray1}{56}{rvrs off}"
	data"{gray1}{rvrs on}{57}{rvrs on}{gray1}{58}{down}{left:2}{rvrs on}{gray1}{59}{rvrs on}{gray1}{60}{rvrs off}"
	data"{gray1}{rvrs on}{61}{rvrs on}{gray1}{62}{down}{left:2}{rvrs on}{gray1}{63}{rvrs on}{gray1}{192}{rvrs off}"
	data"{lt. green}{rvrs on}{57}{rvrs on}{lt. green}{58}{down}{left:2}{rvrs on}{lt. green}{59}{rvrs on}{lt. green}{60}{rvrs off}"
	data"{lt. red}{rvrs on}{53}{rvrs on}{lt. red}{54}{down}{left:2}{rvrs on}{lt. red}{55}{rvrs on}{lt. red}{56}{rvrs off}"
	data"{lt. green}{rvrs on}{53}{rvrs on}{lt. green}{54}{down}{left:2}{rvrs on}{lt. green}{55}{rvrs on}{lt. green}{56}{rvrs off}"
	data"{gray1}{rvrs on}{193}{rvrs on}{gray1}{194}{down}{left:2}{rvrs on}{gray1}{195}{rvrs on}{gray1}{196}{rvrs off}"
	data"{gray1}{rvrs on}{197}{rvrs on}{gray1}{198}{down}{left:2}{rvrs on}{gray1}{199}{rvrs on}{gray1}{200}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
	data"{gray1}{rvrs off}{32}{rvrs off}{gray1}{32}{down}{left:2}{rvrs off}{gray1}{32}{rvrs off}{gray1}{32}{rvrs off}"
'items
	'{var:item_ident}(0-17) 0 = weappon
	'{var:item_ident}(0-17) 1 = ruestung
	'{var:item_ident}(0-17) 2 = essbar
	'{var:item_ident}(0-17) 3 = magie
	'{var:item_ident}(0-17) 9 = zurueck
	'{var:item_xxx}(x)
	'     name      at de st ma id
	data "        ",00,00,00,00,-1 :'item 0
	data "dolch   ",03,00,00,00,00  :'item 1 kron
	data "helm    ",00,02,-1,00,01  :'item 2 kron
	data "kraeuter",00,00,-1,10,02  :'item 3 {var:event_item}(x)
	data "feuer   ",00,00,00,05,03  :'item 4 {var:event_item}(x)
	data "eis     ",00,00,00,08,03  :'item 5 {var:event_item}(x)
	data "mut     ",00,00,00,23,03  :'item 6 
	data "bombe   ",00,00,00,50,03  :'item 7 {var:event_item}(x)
	data "kirsche ",00,00,-1,15,02  :'item 8 {var:event_item}(x)
	data "heilen  ",00,00,00,04,03  :'item 9 {var:event_item}(x)
	data "skull   ",00,00,00,00,04  :'item 10
	data "flegel  ",07,00,-1,00,00  :'item 11 {var:event_item}(x)
	data "lahm    ",00,00,00,04,03  :'item 12
	data "stab    ",12,00,00,00,00  :'item 13 {var:event_item}(x)
	data "feder   ",00,10,00,00,01  :'item 14
	data "stock   ",23,00,00,00,00  :'item 15 {var:event_item}(x)
	data "weste   ",00,14,00,00,01  :'item 16 {var:event_item}(x)
	data "schild  ",00,24,00,00,01  :'item 17 {var:event_item}(x)
	data "zurueck ",00,00,00,0 ,09  :'item 18 {var:event_item}(x)

end