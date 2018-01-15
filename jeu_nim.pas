{PROGRAM jeu_Nim1;
//BUT: Créer un programme qui reproduit les principes du jeu des allumettes. A chaque tour, on tire entre 1 et 3 allumettes, le dernier à tirer perd.
//ENTREE: Nombre d'allumettes tirées.
//SORTIE : Nombre d'allumettes qu'il reste, et le nom du vainqueur. 

USES crt;

CONST 
	max_allumettes=3;
	min_allumettes=1;

VAR
	nmbre_allumettes, tour, nmbre : INTEGER;
	//nmbre_allumettes désigne combien d'allumettes il reste à jouer.
	//tour désigne le compteur de tours.
	//nmbre désigne les allumettes que l'on enlève du jeu.

BEGIN
	tour:=1;
	nmbre_allumettes:=21;
	nmbre:=0;

	writeln('Bienvenue dans le jeu de Nim');
	writeln('Il sagit dun jeu pour deux avec 21 allumettes. Chacun doit retirer 1, 2 ou 3 allumettes à tour de rôle.');
	writeln('Celui qui retire la derniere allumette perd.');
	writeln('Bonne chance !');

		REPEAT
			IF tour MOD 2=0 THEN
				writeln 'Cest au Joueur 1';
			ELSE
				writeln 'Cest au Joueur 2';
			END

			REPEAT
				writeln 'Combien voulez-vous retirer dallumettes?';
				readln nmbre;
			UNTIL (nmbre>max_allumettes) OR (nmbre<min_allumettes);

			nmbre_allumettes:=nmbre_allumettes-nmbre

			writeln 'Il reste 'nmbre_allumettes 'allumettes';
			tour:=tour+1;

		UNTIL (nmbre_allumettes<=1);

		IF (tour-1 MOD 2=0) THEN
			writeln 'Le Joueur 1 GAGNE !';
		ELSE 
			writeln 'Le Joueur 2 GAGNE !';
		END

END.}




PROGRAM jeu_Nim2;

USES crt;

CONST 
	PAQUET=21;

VAR 
	compteur, compteur_joueur, randomize, nmbre: INTEGER;
	//Compteur désigne le compteur de l'ordinateur, et compteur_joueur celui du joueur.
	//Randomize désigne la partie aléatoire.
	//nmbre est le nombre d'allumettes qui sont retirées.

BEGIN
	randomize(2)+1;
	compteur:=paquet;
	compteur_joueur:=2;

	writeln('Bienvenue dans le jeu de Nim');
	writeln('Il sagit dun jeu pour deux avec 21 allumettes. Chacun doit retirer 1, 2 ou 3 allumettes à tour de rôle.');
	writeln('Celui qui retire la derniere allumette perd.');
	writeln('Bonne chance !');

		REPEAT
			IF compteur_joueur MOD 2=0 THEN
			writeln(' Cest au Joueur 1');
			END 

				writeln('Veuillez entrer le nombre dallumettes que vous souhaitez retirer');
				readln nmbre; 

					IF nombre>=1 ET nombre <=3 THEN
						compteur_joueur:=compteur_joueur+1;
						compteur:=compteur-nmbre;
					ELSE
						writeln('Le nombre nest pas valide. Veuillez sélectionner entre 1 et 3 allumettes');
					END 

					IF compteur_joueur MOD 2=1 THEN 
						writeln('Au tour de lordinateur');

						IF randomize>=1 ET randomize <=3 THEN
							compteur_joueur:=compteur_joueur+1;
							compteur:=compteur-randomize;
							writeln compteur;
						ELSE 
							writeln('Cest une erreur de lordinateur. Il doit entrer un chiffre entre 1 et 3');
						END

						compteur_joueur:=compteur_joueur+1; 
					END

		UNTIL (compteur<=1);
		
		IF compteur_joueur MOD2=0 THEN
			writeln('Cest lordinateur qui a gagne. Oups !');
		ELSE
			writeln('Bravo, vous avez battu un ordinateur. Youhou !');
				END
END.