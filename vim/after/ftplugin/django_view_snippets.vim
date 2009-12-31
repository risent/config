<!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
 <title>UsingVimWithDjango: django_view_snippets.vim - Django - Trac</title><link rel="start" href="/wiki" /><link rel="search" href="/search" /><link rel="help" href="/wiki/TracGuide" /><link rel="stylesheet" href="http://media.djangoproject.com/trac/css/trac.css" type="text/css" /><link rel="stylesheet" href="http://media.djangoproject.com/trac/css/code.css" type="text/css" /><link rel="stylesheet" href="/pygments/trac.css" /><link rel="icon" href="/favicon.ico" type="image/x-icon" /><link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" /><link rel="up" href="/wiki/UsingVimWithDjango" title="UsingVimWithDjango" /><link rel="alternate" href="/attachment/wiki/UsingVimWithDjango/django_view_snippets.vim?format=raw" title="Original Format" /><style type="text/css">/* SETUP */

body { margin: 0; padding: 0; background:#092e20; color:white; }
body, th, td { font:12px/1.4em Verdana,sans-serif; }

/* LINKS */

a { text-decoration: none; }
a:link, a:visited { border: 0px none; }
a:visited { border: 0px none; }
a img { border: 0px none; }
a:link, a:visited { color:#ffc757; }
#main a:link, #main a:visited { color:#ab5603; text-decoration:none; }
#main a:hover { background-color:#E0FFB8; color:#234f32; text-decoration:none; }
a:hover { color:#ffe761; }
#main h2 a, #content-main h3 a { text-decoration:none !important; }
#main a.closed { text-decoration: line-through; }

/* DJANGO BRANDING */

#django-header { position:relative; height:6.5em; background:#092e20; }
#django-header h1 { margin:0; width:111px; height:41px; position:absolute; bottom:10px; left:25px; }
#django-header a:hover { color: transparent; border: 0px none; }

#django-nav-global { position:absolute; margin:0; top:-9px; right:0; font-family:"Trebuchet MS",sans-serif; white-space:nowrap; }
#django-nav-global li { display:block; float:left; list-style-type:none; margin:0; padding:0; }
#django-nav-global a { display:block; float:left; padding:5em 16px 10px 16px; background:#092e20; }
#django-nav-global a:hover { color:white; background:#234f32; }
#django-nav-code a { color:white; background:#092e20 url(http://media.djangoproject.com/img/site/nav_bg.gif) bottom repeat-x; }

#billboard { margin:0; padding:0; background: #94da3a url(http://media.djangoproject.com/img/site/bbdsm_bg.gif) repeat-x; border-bottom:9px solid #092e20; }
#billboard h2 { margin:0; padding: 0; background: transparent; }
#billboard h2 a { display:block; margin:0; padding:0; text-indent:-5000px; height:60px; width:184px; background:url(http://media.djangoproject.com/img/site/bbd_code.gif) no-repeat; }

/* CONTENT */

#main { background: white; color: black; padding-bottom: 22px; }
#main * { margin-left:22px; margin-right:24px; }
#main * * { margin-left:0; margin-right:0; }
#main h1,h2,h3 { margin-top:.8em; font-family:"Trebuchet MS",sans-serif; font-weight:normal; }
#main h1 { font-size:218%; margin-top:0; padding-top: 1em; margin-bottom:.6em; color:#092e20; line-height:1.1em; }
#main h2 { font-size:150%; margin-top:1em; margin-bottom:.2em; line-height:1.2em; color:#092e20; }
#main h3 { font-size:125%; font-weight:bold; margin-bottom:.2em; color:#487858; }
#main h4 { font-size:100%; font-weight:bold; margin-bottom:-3px; margin-top:1.2em; text-transform:uppercase; letter-spacing:1px; }
#main h4 pre, h4 tt, h4 .literal { text-transform:none; }
#main h5 { font-size:1em; font-weight:bold; margin-top:1.5em; margin-bottom:3px; }
#main p, ul, dl { margin-top:.6em; margin-bottom:.8em; }
#main hr { color:#ccc; background-color:#ccc; height:1px; border:0; }
#main p.date { color:#487858; margin-top:-.2em; }
#main p.more { margin-top:-.4em; }
#main h2.deck { margin-top:-.5em !important; margin-bottom:.6em; color:#487858; }

/* TRAC BRANDING REMOVAL AND OVERRIDES */

#header #logo { display: none; } 
#footer { clear: all; }
#footer * { display: none; }
#banner { margin: -4.5em 1em 1.4em 0; }
#search { margin-bottom: 0.2em; }
#proj-search { width: 20em; }

#metanav, #metanav a { color: black; }

#mainnav { margin: 0; border: 0px none; background: transparent; }
#mainnav li { background: #487858; border-right: 3px #092e20 solid; }
#mainnav li.active { background: white; }
#mainnav li.last { border-right-width: 0.5em; }
#mainnav li a:link, #mainnav a:visited { background: transparent; border: 0px none; color: white; }
#mainnav li.active a:link, #mainnav li.active a:visited { background: transparent; border: 0px none; color: black; }
#mainnav *:link:hover, #mainnav *:visited:hover { border: 0px none; background: transparent; }
#mainnav li.active *:link:hover, #mainnav li.active *:visited:hover { border: 0px none; background: transparent; }

#main #ctxtnav { margin-right: 1em; height: auto; }
#ctxtnav ul { padding-top: 1em; }

#prefs { margin-top: -4em; }

/* SPECIFIC TRAC PAGE FIXES */

#main div.admin div.tabcontents { margin-left: 12em; }
#main div.browser h1 { padding-top: 0; padding-bottom: 0; margin-bottom: 0; }
#main #content { width: auto; }


/*  CLEARFIX KLUDGE */

#main:after {
    content: "."; 
    display: block; 
    height: 0; 
    clear: both; 
    visibility: hidden;
}
#main { display: inline-block; }

/* Hides from IE-mac \*/
* html #main { height: 1%; }
#main { display: block; }
/* End hide from IE-mac */
</style>
 <script type="text/javascript" src="http://media.djangoproject.com/trac/js/trac.js"></script>
</head>
<body>
<div id="django-header">
	<h1><a href="http://www.djangoproject.com/"><img src="http://media.djangoproject.com/img/site/hdr_logo.gif" alt="Django" /></a></h1>
	<ul id="django-nav-global">
		<li id="django-nav-homepage"><a href="http://www.djangoproject.com/">Home</a></li>
		<li id="django-nav-download"><a href="http://www.djangoproject.com/download/">Download</a></li>
		<li id="django-nav-documentation"><a href="http://docs.djangoproject.com/">Documentation</a></li>
		<li id="django-nav-weblog"><a href="http://www.djangoproject.com/weblog/">Weblog</a></li>
		<li id="django-nav-community"><a href="http://www.djangoproject.com/community/">Community</a></li>
		<li id="django-nav-code"><a href="http://code.djangoproject.com/">Code</a></li>
	</ul>
</div>
<div id="billboard"><h2><a href="http://code.djangoproject.com/">Code</a></h2></div>

<div id="banner">

<div id="header"><a id="logo" href="http://djangoproject.com/"><img src="http://media.djangoproject.com/img/site/hdr_logo.gif" alt="Django" /></a><hr /></div>

<form id="search" action="/search" method="get">
 <div>
  <label for="proj-search">Search:</label>
  <input type="text" id="proj-search" name="q" size="10" accesskey="f" value="" />
  <input type="submit" value="Search" />
  <input type="hidden" name="wiki" value="on" />
  <input type="hidden" name="changeset" value="on" />
  <input type="hidden" name="ticket" value="on" />
 </div>
</form>



<div id="metanav" class="nav"><ul><li class="first"><a href="/login">Login</a></li><li><a href="http://www.djangoproject.com/accounts/register/">Register</a></li><li class="last"><a href="/settings">Settings</a></li></ul></div>
</div>

<div id="mainnav" class="nav"><ul><li class="active first"><a accesskey="1" href="/wiki">Wiki</a></li><li><a accesskey="2" href="/timeline">Timeline</a></li><li><a href="/browser">Browse Source</a></li><li><a href="/wiki/Reports">Reports</a></li><li><a href="/query">View Tickets</a></li><li><a href="/simpleticket">New Ticket</a></li><li><a accesskey="3" href="/roadmap">Roadmap</a></li><li class="last"><a accesskey="4" href="/search">Search</a></li></ul></div>
<div id="main">




<div id="ctxtnav" class="nav"></div>

<div id="content" class="attachment">


 <h1><a href="/wiki/UsingVimWithDjango">UsingVimWithDjango</a>: django_view_snippets.vim</h1>
 <table id="info" summary="Description"><tbody><tr>
   <th scope="col">
    File django_view_snippets.vim, 310 bytes 
    (added by httpdss,  1 year ago)
   </th></tr><tr>
   <td class="message"><p>
<a class="wiki" href="/wiki/SnippetsEmu">SnippetsEmu</a> for views.py
</p>
</td>
  </tr>
 </tbody></table>
 <div id="preview">
   <table class="code"><thead><tr><th class="lineno">Line</th><th class="content">&nbsp;</th></tr></thead><tbody><tr><th id="L1"><a href="#L1">1</a></th>
<td>if !exists(&#39;loaded_snippet&#39;) || &amp;cp</td>
</tr><tr><th id="L2"><a href="#L2">2</a></th>
<td>&nbsp; &nbsp; finish</td>
</tr><tr><th id="L3"><a href="#L3">3</a></th>
<td>endif</td>
</tr><tr><th id="L4"><a href="#L4">4</a></th>
<td></td>
</tr><tr><th id="L5"><a href="#L5">5</a></th>
<td>let st = g:snip_start_tag</td>
</tr><tr><th id="L6"><a href="#L6">6</a></th>
<td>let et = g:snip_end_tag</td>
</tr><tr><th id="L7"><a href="#L7">7</a></th>
<td></td>
</tr><tr><th id="L8"><a href="#L8">8</a></th>
<td>exec &quot;Snippet vview def &quot;.st.et.&quot;(request):&lt;CR&gt;\&quot;\&quot;\&quot;&quot;.st.et.&quot;\&quot;\&quot;\&quot;&lt;CR&gt;&quot;.st.et.&quot;&quot;</td>
</tr><tr><th id="L9"><a href="#L9">9</a></th>
<td>exec &quot;Snippet rr render_to_response(&#39;&quot;.st.et.&quot;&#39;,&lt;CR&gt;&quot;.st.et.&quot;,&lt;CR&gt;context_instance=RequestContext(request)&lt;CR&gt;)&quot;.st.et.&quot;&quot;</td>
</tr></tbody></table>
 </div>
 


</div>
<script type="text/javascript">searchHighlight()</script>
<div id="altlinks"><h3>Download in other formats:</h3><ul><li class="first last"><a href="/attachment/wiki/UsingVimWithDjango/django_view_snippets.vim?format=raw">Original Format</a></li></ul></div>

</div>

<div id="footer">
 <hr />
 <a id="tracpowered" href="http://trac.edgewall.org/"><img src="http://media.djangoproject.com/trac/trac_logo_mini.png" height="30" width="107"
   alt="Trac Powered"/></a>
 <p class="left">
  Powered by <a href="/about"><strong>Trac 0.10.4</strong></a><br />
  By <a href="http://www.edgewall.org/">Edgewall Software</a>.
 </p>
 <p class="right">
  
 </p>
</div>

<div id="django-footer">
  
</div>
 </body>
</html>

