@extends('layouts.frontend.web.main')
@section('title')
    {{ $data['title'] }}
@endsection
<script language="javascript" src="http://js.mafengwo.net/js/cv/js+jquery-1.8.1.min:js+global+json2:js+M+Module:js+M+M:js+M+Log:js+m.statistics^ZFw^1476350397.js" type="text/javascript"></script>
@section('style')
    <style>
        p img {
            width: 1200px;
        }
    </style>
@endsection
@section('content')
    <div>
        {!! $data['content'] !!}
    </div>
@endsection

@section('script')
    <script language="javascript" type="text/javascript">
        if (typeof M !== "undefined" && typeof M.loadResource === "function") {
            M.loadResource("http://js.mafengwo.net/js/cv/js+Dropdown:js+jquery.tmpl:js+M+module+InputListener:js+M+module+SuggestionXHR:js+M+module+DropList:js+M+module+Suggestion:js+M+module+MesSearchEvent:js+SiteSearch:js+jquery.upnum:js+M+module+dialog+Layer:js+M+module+dialog+DialogBase:js+M+module+dialog+Dialog:js+M+module+TopTip:js+AHeader:js+jquery.jplayer:js+M+module+dialog+alert:js+M+module+dialog+confirm:js+M+module+ScrollObserver:js+note+ControllerHead:js+M+module+Storage:js+M+module+ClickToggle:js+EmotionsHd:js+module+app+Page:js+M+module+FrequencyVerifyControl:js+M+module+FrequencyAppVerify:js+note+GinfoReply:js+M+module+Caret:js+M+module+HoverTip:js+note+ControllerReply:js+M+module+Slider:js+note+ControllerRelate:js+jquery.mousewheel.min:js+M+module+ScrollBar:js+M+module+StickyAndStayBlock:js+note+ASideSticky:js+note+ControllerExpand:js+purl:js+M+module+Movearound:js+note+ADetail:js+note+ADetailImageBar:js+jquery.easing.1.3:js+M+module+Toggle:js+M+module+CopyrightProtecte:js+jquery.lazyload:js+common+TextSelectionTip:js+note+ACommon:js+note+anotice:js+note+poiofnote:js+cvideo+swfobject:js+note+play.video:js+note+ALoadGoods:js+jquery.jgrowl.min:js+AMessage:js+M+module+FrequencySystemVerify:js+ALogin:js+M+module+QRCode:js+AToolbar:js+ACnzzGaLog:js+ARecruit:js+ALazyLoad^YldXRg^1476675901.js");
        }
    </script>
@endsection