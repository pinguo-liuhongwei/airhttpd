package com.tilfin.air.http.server
{
	import flash.utils.ByteArray;
	
	public class HttpRequest
	{
		private var _method:String;
		private var _path:String;
		private var _version:String;
		
		private var _headers:Object;
		
		private var _bytes:ByteArray;
		
		public function HttpRequest(request:String, headers:Object):void {
			var req:Array = request.split(" ", 3);
			_method = req[0];
			_path = req[1];
			_version = req[2];
			_headers = headers;
		}
		
		public function get method():String {
			return _method;
		}
		
		public function get path():String {
			return _path;
		}
		
		public function get version():String {
			return _version;
		}
		
		public function get headers():Object {
			return _headers;
		}
		
		public function get host():String {
			return _headers.host;
		}
		
		public function get acceptLanguage():String {
			return _headers["accept-language"];
		}
		
		public function get keepAlive():String {
			return _headers["keep-alive"];
		}
		
		public function get connection():String {
			return _headers.connection;
		}
		
		public function get referer():String {
			return _headers.referer;
		}
		
		public function get cookie():String {
			return _headers.cookie;
		}
		
		public function get userAgent():String {
			return _headers["user-agent"];
		}
		
		public function get contentLength():Number {
			return parseInt(_headers["content-length"], 10);
		}
		
		public function get requestBody():ByteArray {
			return _bytes;
		}
		
		public function set requestBody(bytes:ByteArray):void {
			_bytes = bytes;
		}
		
		public function getHeader(key:String):String {
			return _headers[key];
		}
	}
}