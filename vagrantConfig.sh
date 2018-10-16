# !/bin/bash

#########################################################################################
# AANDACHTIG DOORNEMEN ALVORENS VERDER TE GAAN:											#
#																						#
# Welkom gebruiker																		#
# Dit bestand bevat de configuraties die u naar persoonlijke voorkeur kan aanpassen		#
# Wat u configureert staat steeds boven de sectie aangegeven. Deze basisinstellingen	#
# vergemakkelijken het werken voor uzelf later, zo kan u reeds op voorhand wachtwoorden # 
# kiezen.																				#
#																					    #
# Configuraties die u kunt aanpassen staan steeds in ht formaat van:					#
# export NAAM_CONFIGURATIE="Waarde"														#
# Wanneer u de waarde wenst te wijzigen, dan dient u enkel de Waarde binnen de			#
# aanhalingstekens ("...") te wijzigen.													#
#										  												#
# Niets anders in het document aanpassen, dit zou problemen kunnen opleveren en 		#
# het mislukken van de installatie tot gevolg hebben!									#
#########################################################################################

# Instellingen voor Linux
# Root paswoord dat u wenst te gebruiken

	export FEDORA_ROOT="class"

#########################################################################################

# SQL settings die je wenst aan te passen
# SQL paswoord voor de root gebruiker
# username: root

	export MYSQL_ROOT_PASS="class"

#########################################################################################

# Installatie optionele softwarepaketten
# In volgende lijn kan u kiezen om een CMS systeem te installeren
# u kan kiezen voor drupal8
# Wenst u geen CMS systeem te installeren? Plaats dan # voor  'export SOFTWARE="drupal8"'

	#export SOFTWARE="drupal8"

#########################################################################################



source /home/vagrant/lampStack.sh