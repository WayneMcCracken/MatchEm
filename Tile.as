﻿package  {		import flash.display.MovieClip;		public class Tile extends MovieClip {				public var cardType: uint = 0;		public var ID: uint;		public var currX: Number;		public var currY: Number;		public function Tile(id: uint) {		this.width = 90;		this.height = 60;		this.ID = id;		this.name = "genTile" + id;		}				public function toName(type: uint): String {			type == cardType;			if (type == 1) return "Charmander";			if (type == 2) return "Charmeleon";			if (type == 3) return "Charizard";			if (type == 4) return "Bulbasaur";			if (type == 5) return "Ivysaur";			if (type == 6) return "Venusaur";			if (type == 7) return "Squirtle";			if (type == 8) return "Wartortle";			if (type == 9) return "Blastoise";			if (type == 10) return "Pikachu";			if (type == 0) return "Raichu";			if (type == 11) return "Psyduck";			else { return ""; }		}	}	}