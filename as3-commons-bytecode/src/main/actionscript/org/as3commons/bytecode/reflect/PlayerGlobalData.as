/*
* Copyright 2007-2011 the original author or authors.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
package org.as3commons.bytecode.reflect {
	import flash.display.GraphicsGradientFill;
	import flash.system.ApplicationDomain;
	import flash.text.engine.FontDescription;
	import flash.utils.Dictionary;

	import org.as3commons.bytecode.abc.enum.NamespaceKind;
	import org.as3commons.reflect.AccessorAccess;
	import org.as3commons.reflect.as3commons_reflect;

	public final class PlayerGlobalData {
		public static const optionalArgumentDefaultValues:Dictionary = new Dictionary();
		{
			optionalArgumentDefaultValues['Object.isPrototypeOf'] = ['*:null'];
			optionalArgumentDefaultValues['Object.hasOwnProperty'] = ['*:null'];
			optionalArgumentDefaultValues['Object.propertyIsEnumerable'] = ['*:null'];
			optionalArgumentDefaultValues['Function.call'] = ['*:null'];
			optionalArgumentDefaultValues['Function.apply'] = ['*:null', '*:null'];
			optionalArgumentDefaultValues['Number.toString'] = ['*:10'];
			optionalArgumentDefaultValues['Number.toExponential'] = ['*:0'];
			optionalArgumentDefaultValues['Number.toPrecision'] = ['*:0'];
			optionalArgumentDefaultValues['Number.toFixed'] = ['*:0'];
			optionalArgumentDefaultValues['int.toString'] = ['*:10'];
			optionalArgumentDefaultValues['int.toExponential'] = ['*:0'];
			optionalArgumentDefaultValues['int.toPrecision'] = ['*:0'];
			optionalArgumentDefaultValues['int.toFixed'] = ['*:0'];
			optionalArgumentDefaultValues['uint.toString'] = ['*:10'];
			optionalArgumentDefaultValues['uint.toExponential'] = ['*:0'];
			optionalArgumentDefaultValues['uint.toPrecision'] = ['*:0'];
			optionalArgumentDefaultValues['uint.toFixed'] = ['*:0'];
			optionalArgumentDefaultValues['String._indexOf'] = ['int:0'];
			optionalArgumentDefaultValues['String.indexOf'] = ['String:undefined', 'Number:0'];
			optionalArgumentDefaultValues['String._lastIndexOf'] = ['int:2147483647'];
			optionalArgumentDefaultValues['String.lastIndexOf'] = ['String:undefined', 'Number:2147483647'];
			optionalArgumentDefaultValues['String._charAt'] = ['int:0'];
			optionalArgumentDefaultValues['String.charAt'] = ['Number:0'];
			optionalArgumentDefaultValues['String._charCodeAt'] = ['int:0'];
			optionalArgumentDefaultValues['String.charCodeAt'] = ['Number:0'];
			optionalArgumentDefaultValues['String.localeCompare'] = ['String:null'];
			optionalArgumentDefaultValues['String.match'] = ['*:null'];
			optionalArgumentDefaultValues['String.replace'] = ['*:null', '*:null'];
			optionalArgumentDefaultValues['String.search'] = ['*:null'];
			optionalArgumentDefaultValues['String._slice'] = ['int:0', 'int:2147483647'];
			optionalArgumentDefaultValues['String.slice'] = ['Number:0', 'Number:2147483647'];
			optionalArgumentDefaultValues['String.split'] = ['*:null', '*:4294967295'];
			optionalArgumentDefaultValues['String._substring'] = ['int:0', 'int:2147483647'];
			optionalArgumentDefaultValues['String.substring'] = ['Number:0', 'Number:2147483647'];
			optionalArgumentDefaultValues['String._substr'] = ['int:0', 'int:2147483647'];
			optionalArgumentDefaultValues['String.substr'] = ['Number:0', 'Number:2147483647'];
			optionalArgumentDefaultValues['Array.join'] = ['*:null'];
			optionalArgumentDefaultValues['Array.slice'] = ['*:0', '*:4294967295'];
			optionalArgumentDefaultValues['Array.sortOn'] = ['*:0'];
			optionalArgumentDefaultValues['Array.indexOf'] = ['*:0'];
			optionalArgumentDefaultValues['Array.lastIndexOf'] = ['*:2147483647'];
			optionalArgumentDefaultValues['Array.every'] = ['*:null'];
			optionalArgumentDefaultValues['Array.filter'] = ['*:null'];
			optionalArgumentDefaultValues['Array.forEach'] = ['*:null'];
			optionalArgumentDefaultValues['Array.map'] = ['*:null'];
			optionalArgumentDefaultValues['Array.some'] = ['*:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$object.newThisType'] = ['uint:0'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$object.join'] = ['String:,'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$object.every'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$object.forEach'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$object.map'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$object.some'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$object._slice'] = ['Number:0', 'Number:2147483647'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$object.filter'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$object.slice'] = ['Number:0', 'Number:2147483647'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$object.indexOf'] = ['Number:0'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$object.lastIndexOf'] = ['Number:2147483647'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$int.join'] = ['String:,'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$int.every'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$int.forEach'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$int.map'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$int.some'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$int._slice'] = ['Number:0', 'Number:2147483647'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$int.filter'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$int.slice'] = ['Number:0', 'Number:2147483647'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$int.indexOf'] = ['Number:0'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$int.lastIndexOf'] = ['Number:2147483647'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$uint.join'] = ['String:,'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$uint.every'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$uint.forEach'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$uint.map'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$uint.some'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$uint._slice'] = ['Number:0', 'Number:2147483647'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$uint.filter'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$uint.slice'] = ['Number:0', 'Number:2147483647'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$uint.indexOf'] = ['Number:0'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$uint.lastIndexOf'] = ['Number:2147483647'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$double.join'] = ['String:,'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$double.every'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$double.forEach'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$double.map'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$double.some'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$double._slice'] = ['Number:0', 'Number:2147483647'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$double.filter'] = ['Object:null'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$double.slice'] = ['Number:0', 'Number:2147483647'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$double.indexOf'] = ['Number:0'];
			optionalArgumentDefaultValues['__AS3__.vec.Vector$double.lastIndexOf'] = ['Number:2147483647'];
			optionalArgumentDefaultValues['flash.events.IEventDispatcher.IEventDispatcher'] = ['Boolean:false', 'int:0', 'Boolean:false'];
			optionalArgumentDefaultValues['flash.events.IEventDispatcher.IEventDispatcher'] = ['Boolean:false'];
			optionalArgumentDefaultValues['flash.events.EventDispatcher.addEventListener'] = ['Boolean:false', 'int:0', 'Boolean:false'];
			optionalArgumentDefaultValues['flash.events.EventDispatcher.removeEventListener'] = ['Boolean:false'];
			optionalArgumentDefaultValues['flash.utils.IDataInput.IDataInput'] = ['uint:0', 'uint:0'];
			optionalArgumentDefaultValues['flash.utils.ObjectInput.readBytes'] = ['uint:0', 'uint:0'];
			optionalArgumentDefaultValues['flash.net.drm.DRMManager.downloadVoucher'] = ['Boolean:false'];
			optionalArgumentDefaultValues['flash.net.drm.DRMVoucherDownloadContext.download'] = ['Boolean:false'];
			optionalArgumentDefaultValues['flash.display.DisplayObject.hitTestPoint'] = ['Boolean:false'];
			optionalArgumentDefaultValues['flash.globalization.DateTimeFormatter.getMonthNames'] = ['String:full', 'String:standalone'];
			optionalArgumentDefaultValues['flash.globalization.DateTimeFormatter.getWeekdayNames'] = ['String:full', 'String:standalone'];
			optionalArgumentDefaultValues['flash.geom.Matrix.createBox'] = ['Number:0', 'Number:0', 'Number:0'];
			optionalArgumentDefaultValues['flash.geom.Matrix.createGradientBox'] = ['Number:0', 'Number:0', 'Number:0'];
			optionalArgumentDefaultValues['flash.media.Microphone.setSilenceLevel'] = ['int:-1'];
			optionalArgumentDefaultValues['flash.media.Microphone.setLoopBack'] = ['Boolean:true'];
			optionalArgumentDefaultValues['flash.display.Stage.addEventListener'] = ['Boolean:false', 'int:0', 'Boolean:false'];
			optionalArgumentDefaultValues['flash.display.ShaderJob.start'] = ['Boolean:false'];
			optionalArgumentDefaultValues['flash.net.NetStream.attachCamera'] = ['int:-1'];
			optionalArgumentDefaultValues['flash.net.NetStream.publish'] = ['String:null', 'String:null'];
			optionalArgumentDefaultValues['flash.net.FileReference.browse'] = ['Array:null'];
			optionalArgumentDefaultValues['flash.net.FileReference.download'] = ['String:null'];
			optionalArgumentDefaultValues['flash.net.FileReference.upload'] = ['String:Filedata', 'Boolean:false'];
			optionalArgumentDefaultValues['flash.net.FileReference.save'] = ['String:null'];
			optionalArgumentDefaultValues['flash.net.URLLoader.addEventListener'] = ['Boolean:false', 'int:0', 'Boolean:false'];
			optionalArgumentDefaultValues['Date.setTime'] = ['*:null'];
			optionalArgumentDefaultValues['Date.setFullYear'] = ['*:null', '*:null', '*:null'];
			optionalArgumentDefaultValues['Date.setMonth'] = ['*:null', '*:null'];
			optionalArgumentDefaultValues['Date.setDate'] = ['*:null'];
			optionalArgumentDefaultValues['Date.setHours'] = ['*:null', '*:null', '*:null', '*:null'];
			optionalArgumentDefaultValues['Date.setMinutes'] = ['*:null', '*:null', '*:null'];
			optionalArgumentDefaultValues['Date.setSeconds'] = ['*:null', '*:null'];
			optionalArgumentDefaultValues['Date.setMilliseconds'] = ['*:null'];
			optionalArgumentDefaultValues['Date.setUTCFullYear'] = ['*:null', '*:null', '*:null'];
			optionalArgumentDefaultValues['Date.setUTCMonth'] = ['*:null', '*:null'];
			optionalArgumentDefaultValues['Date.setUTCDate'] = ['*:null'];
			optionalArgumentDefaultValues['Date.setUTCHours'] = ['*:null', '*:null', '*:null', '*:null'];
			optionalArgumentDefaultValues['Date.setUTCMinutes'] = ['*:null', '*:null', '*:null'];
			optionalArgumentDefaultValues['Date.setUTCSeconds'] = ['*:null', '*:null'];
			optionalArgumentDefaultValues['Date.setUTCMilliseconds'] = ['*:null'];
			optionalArgumentDefaultValues['flash.utils.IDataOutput.IDataOutput'] = ['uint:0', 'uint:0'];
			optionalArgumentDefaultValues['flash.net.Socket.readBytes'] = ['uint:0', 'uint:0'];
			optionalArgumentDefaultValues['flash.net.Socket.writeBytes'] = ['uint:0', 'uint:0'];
			optionalArgumentDefaultValues['flash.media.Camera.setLoopback'] = ['Boolean:false'];
			optionalArgumentDefaultValues['flash.media.Camera.setMode'] = ['Boolean:true'];
			optionalArgumentDefaultValues['flash.media.Camera.setMotionLevel'] = ['int:2000'];
			optionalArgumentDefaultValues['flash.display.BitmapData.copyPixels'] = ['flash.display.BitmapData:null', 'flash.geom.Point:null', 'Boolean:false'];
			optionalArgumentDefaultValues['flash.display.BitmapData.draw'] = ['flash.geom.Matrix:null', 'flash.geom.ColorTransform:null', 'String:null', 'flash.geom.Rectangle:null', 'Boolean:false'];
			optionalArgumentDefaultValues['flash.display.BitmapData.getColorBoundsRect'] = ['Boolean:true'];
			optionalArgumentDefaultValues['flash.display.BitmapData.hitTest'] = ['flash.geom.Point:null', 'uint:1'];
			optionalArgumentDefaultValues['flash.display.BitmapData.noise'] = ['uint:0', 'uint:255', 'uint:7', 'Boolean:false'];
			optionalArgumentDefaultValues['flash.display.BitmapData.paletteMap'] = ['Array:null', 'Array:null', 'Array:null', 'Array:null'];
			optionalArgumentDefaultValues['flash.display.BitmapData.perlinNoise'] = ['uint:7', 'Boolean:false', 'Array:null'];
			optionalArgumentDefaultValues['flash.display.BitmapData.pixelDissolve'] = ['int:0', 'int:0', 'uint:0'];
			optionalArgumentDefaultValues['flash.display.BitmapData.threshold'] = ['uint:0', 'uint:4294967295', 'Boolean:false'];
			optionalArgumentDefaultValues['flash.display.BitmapData.unlock'] = ['flash.geom.Rectangle:null'];
			optionalArgumentDefaultValues['flash.display.BitmapData.histogram'] = ['flash.geom.Rectangle:null'];
			optionalArgumentDefaultValues['XML.hasOwnProperty'] = ['*:null'];
			optionalArgumentDefaultValues['XML.propertyIsEnumerable'] = ['*:null'];
			optionalArgumentDefaultValues['XML.descendants'] = ['*:*'];
			optionalArgumentDefaultValues['XML.elements'] = ['*:*'];
			optionalArgumentDefaultValues['XML.namespace'] = ['*:null'];
			optionalArgumentDefaultValues['XML.processingInstructions'] = ['*:*'];
			optionalArgumentDefaultValues['XMLList.hasOwnProperty'] = ['*:null'];
			optionalArgumentDefaultValues['XMLList.propertyIsEnumerable'] = ['*:null'];
			optionalArgumentDefaultValues['XMLList.descendants'] = ['*:*'];
			optionalArgumentDefaultValues['XMLList.elements'] = ['*:*'];
			optionalArgumentDefaultValues['XMLList.processingInstructions'] = ['*:*'];
			optionalArgumentDefaultValues['XMLList.namespace'] = ['*:null'];
			optionalArgumentDefaultValues['flash.net.SharedObject.connect'] = ['String:null'];
			optionalArgumentDefaultValues['flash.net.SharedObject.flush'] = ['int:0'];
			optionalArgumentDefaultValues['flash.net.SharedObject.setProperty'] = ['Object:null'];
			optionalArgumentDefaultValues['RegExp.exec'] = ['String:'];
			optionalArgumentDefaultValues['RegExp.test'] = ['String:'];
			optionalArgumentDefaultValues['adobe.utils.ProductManager.launch'] = ['String:null'];
			optionalArgumentDefaultValues['adobe.utils.ProductManager.download'] = ['String:null', 'String:null', 'Array:null'];
			optionalArgumentDefaultValues['flash.geom.Matrix3D.decompose'] = ['String:eulerAngles'];
			optionalArgumentDefaultValues['flash.geom.Matrix3D.recompose'] = ['String:eulerAngles'];
			optionalArgumentDefaultValues['flash.geom.Matrix3D.appendRotation'] = ['flash.geom.Vector3D:null'];
			optionalArgumentDefaultValues['flash.geom.Matrix3D.prependRotation'] = ['flash.geom.Vector3D:null'];
			optionalArgumentDefaultValues['flash.geom.Matrix3D.pointAt'] = ['flash.geom.Vector3D:null', 'flash.geom.Vector3D:null'];
			optionalArgumentDefaultValues['flash.net.NetConnection.addHeader'] = ['Boolean:false', 'Object:null'];
			optionalArgumentDefaultValues['flash.text.TextField.getTextFormat'] = ['int:-1', 'int:-1'];
			optionalArgumentDefaultValues['flash.text.TextField.getTextRuns'] = ['int:0', 'int:2147483647'];
			optionalArgumentDefaultValues['flash.text.TextField.getXMLText'] = ['int:0', 'int:2147483647'];
			optionalArgumentDefaultValues['flash.text.TextField.insertXMLText'] = ['Boolean:false'];
			optionalArgumentDefaultValues['flash.text.TextField.setTextFormat'] = ['int:-1', 'int:-1'];
			optionalArgumentDefaultValues['flash.printing.PrintJob.addPage'] = ['flash.geom.Rectangle:null', 'flash.printing.PrintJobOptions:null', 'int:0'];
			optionalArgumentDefaultValues['flash.net.GroupSpecifier.setPublishPassword'] = ['String:null', 'String:null'];
			optionalArgumentDefaultValues['flash.net.GroupSpecifier.setPostingPassword'] = ['String:null', 'String:null'];
			optionalArgumentDefaultValues['flash.net.GroupSpecifier.addIPMulticastAddress'] = ['*:null', 'String:null'];
			optionalArgumentDefaultValues['flash.display.Graphics.beginFill'] = ['Number:1'];
			optionalArgumentDefaultValues['flash.display.Graphics.beginGradientFill'] = ['flash.geom.Matrix:null', 'String:pad', 'String:rgb', 'Number:0'];
			optionalArgumentDefaultValues['flash.display.Graphics.beginBitmapFill'] = ['flash.geom.Matrix:null', 'Boolean:true', 'Boolean:false'];
			optionalArgumentDefaultValues['flash.display.Graphics.beginShaderFill'] = ['flash.geom.Matrix:null'];
			optionalArgumentDefaultValues['flash.display.Graphics.lineGradientStyle'] = ['flash.geom.Matrix:null', 'String:pad', 'String:rgb', 'Number:0'];
			optionalArgumentDefaultValues['flash.display.Graphics.lineStyle'] = ['Number:null', 'uint:0', 'Number:1', 'Boolean:false', 'String:normal', 'String:null', 'String:null', 'Number:3'];
			optionalArgumentDefaultValues['flash.display.Graphics.drawRoundRect'] = ['Number:null'];
			optionalArgumentDefaultValues['flash.display.Graphics.lineBitmapStyle'] = ['flash.geom.Matrix:null', 'Boolean:true', 'Boolean:false'];
			optionalArgumentDefaultValues['flash.display.Graphics.lineShaderStyle'] = ['flash.geom.Matrix:null'];
			optionalArgumentDefaultValues['flash.display.Graphics.drawPath'] = ['String:evenOdd'];
			optionalArgumentDefaultValues['flash.display.Graphics.drawTriangles'] = ['__AS3__.vec.Vector:null', '__AS3__.vec.Vector:null', 'String:none'];
			optionalArgumentDefaultValues['flash.net.FileReferenceList.browse'] = ['Array:null'];
			optionalArgumentDefaultValues['flash.text.engine.TextBlock.createTextLine'] = ['flash.text.engine.TextLine:null', 'Number:1000000', 'Number:0', 'Boolean:false'];
			optionalArgumentDefaultValues['flash.text.engine.TextBlock.recreateTextLine'] = ['flash.text.engine.TextLine:null', 'Number:1000000', 'Number:0', 'Boolean:false'];
			optionalArgumentDefaultValues['flash.text.engine.TextBlock.DoCreateTextLine'] = ['Number:0', 'Boolean:false', 'flash.text.engine.TextLine:null'];
			optionalArgumentDefaultValues['flash.geom.Vector3D.equals'] = ['Boolean:false'];
			optionalArgumentDefaultValues['flash.geom.Vector3D.nearEquals'] = ['Boolean:false'];
			optionalArgumentDefaultValues['flash.desktop.Clipboard.setData'] = ['Boolean:true'];
			optionalArgumentDefaultValues['flash.desktop.Clipboard.setDataHandler'] = ['Boolean:true'];
			optionalArgumentDefaultValues['flash.desktop.Clipboard.getData'] = ['String:originalPreferred'];
			optionalArgumentDefaultValues['flash.display.Sprite.startDrag'] = ['Boolean:false', 'flash.geom.Rectangle:null'];
			optionalArgumentDefaultValues['flash.display.Sprite.startTouchDrag'] = ['Boolean:false', 'flash.geom.Rectangle:null'];
			optionalArgumentDefaultValues['flash.text.ime.IIMEClient.IIMEClient'] = ['String:null', 'Boolean:false'];
			optionalArgumentDefaultValues['flash.utils.ByteArray.readBytes'] = ['uint:0', 'uint:0'];
			optionalArgumentDefaultValues['flash.utils.ByteArray.writeBytes'] = ['uint:0', 'uint:0'];
			optionalArgumentDefaultValues['flash.media.Sound.load'] = ['flash.media.SoundLoaderContext:null'];
			optionalArgumentDefaultValues['flash.media.Sound.play'] = ['Number:0', 'int:0', 'flash.media.SoundTransform:null'];
			optionalArgumentDefaultValues['flash.media.Sound.extract'] = ['Number:-1'];
			optionalArgumentDefaultValues['flash.net.URLStream.readBytes'] = ['uint:0', 'uint:0'];
			optionalArgumentDefaultValues['flash.globalization.CurrencyFormatter.format'] = ['Boolean:false'];
			optionalArgumentDefaultValues['flash.text.TextSnapshot.getSelectedText'] = ['Boolean:false'];
			optionalArgumentDefaultValues['flash.text.TextSnapshot.getText'] = ['Boolean:false'];
			optionalArgumentDefaultValues['flash.text.TextSnapshot.hitTestTextNearPos'] = ['Number:0'];
			optionalArgumentDefaultValues['flash.text.TextSnapshot.setSelectColor'] = ['uint:16776960'];
			optionalArgumentDefaultValues['flash.display.Loader.load'] = ['flash.system.LoaderContext:null'];
			optionalArgumentDefaultValues['flash.display.Loader.loadBytes'] = ['flash.system.LoaderContext:null'];
			optionalArgumentDefaultValues['flash.display.Loader.unloadAndStop'] = ['Boolean:true'];
			optionalArgumentDefaultValues['flash.utils.ObjectOutput.writeBytes'] = ['uint:0', 'uint:0'];
			optionalArgumentDefaultValues['flash.display.MovieClip.gotoAndPlay'] = ['String:null'];
			optionalArgumentDefaultValues['flash.display.MovieClip.gotoAndStop'] = ['String:null'];
		}
	}
}