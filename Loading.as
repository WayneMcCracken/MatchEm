﻿package  {		import flash.display.MovieClip;	import flash.events.ProgressEvent;	import flash.display.Loader;	import flash.net.URLRequest;	import flash.events.Event;	import flash.text.TextFormat;			public class Loading extends MovieClip {				private var preLoader: Loader = new Loader();		private var percent: Number;		private var total: Number;		private var loaded: Number;		private var loadBox: TextBox = new TextBox("0", 260, 160, 150, 50);		private var loadingBar: PreLoadingBar = new PreLoadingBar();		private var loadingTextFormat: TextFormat = new TextFormat("_sans", 46);						public function Loading() {			preLoader.load(new URLRequest("Preloader.swf"));			addChild(loadBox);			addChild(loadingBar);			loadBox.setTextFormat(loadingTextFormat);			preLoader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, whileProgressing);			preLoader.contentLoaderInfo.addEventListener(Event.COMPLETE, onComplete);		}				private function whileProgressing(e: Event): void {			percent = Math.floor((preLoader.contentLoaderInfo.bytesLoaded *100)/preLoader.contentLoaderInfo.bytesTotal);			loadBox.text = (percent + " %");			loadBox.setTextFormat(loadingTextFormat);			loadingBar.width = preLoader.contentLoaderInfo.bytesLoaded / 2515; //Max width is 438		}				private function onComplete(e: Event): void {			//preLoader.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS, whileProcessing);			preLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE, onComplete);			removeChild(loadBox);			removeChild(loadingBar);			addChild(preLoader);		}	}	}