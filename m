Return-Path: <linux-man+bounces-2472-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D93B6A38C14
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 20:09:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A4CC1882862
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 19:09:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F223422B8BC;
	Mon, 17 Feb 2025 19:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=myzen.co.uk header.i=@myzen.co.uk header.b="Ig35sFQL"
X-Original-To: linux-man@vger.kernel.org
Received: from queue02a.mail.zen.net.uk (queue02a.mail.zen.net.uk [212.23.3.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D401235BFF
	for <linux-man@vger.kernel.org>; Mon, 17 Feb 2025 19:09:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.23.3.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739819371; cv=none; b=MBobLPycJ+pXDPRDh24JJvwsfyP5SGJB9INNT04rG37/4IIAHCxbL8YFrEGsNRYhVtIuP9P6K0jSN1Il1OwHD207V4CKiJ6lniFNPIqGDn2g6o2t+9A5Bros1DyiO8uOE3yGjPt1dHVYvly0i6cbJge9sBNLWbs4a4P7M82QF2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739819371; c=relaxed/simple;
	bh=YhQeEEZarpDMkrCpK3g4bZ/O2BxmT0VX3zToJzeilZE=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ByHmpQDFXeH3Y8i4kj9zpi+gxdKFvNEGpnKYZHe5TsnOqSVYNf3wyXbY9KEXDlPW+MSXXKVRpHyyAcxwzFXTzqr4e+SZ/Zw+OTuHeYkbT0mlEzmI0ifrQwVvalubugkYIQvNXlDL9N3WpTxxjIdTWDfxfYLd3RAy41irwMhz3xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk; dkim=pass (2048-bit key) header.d=myzen.co.uk header.i=@myzen.co.uk header.b=Ig35sFQL; arc=none smtp.client-ip=212.23.3.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk
Received: from [212.23.1.20] (helo=smarthost01a.ixn.mail.zen.net.uk)
	by queue02a.mail.zen.net.uk with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1tk6Eo-00BDzo-VR
	for linux-man@vger.kernel.org;
	Mon, 17 Feb 2025 18:53:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=myzen.co.uk
	; s=sh20250120; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=xnBQwhxFwNMGrClQpZkMquqsFxcNo+8spMTFHzHxITg=; b=Ig35sFQLN8f38LYrNtrRKeqfgi
	mF7a1SY4Z0uCOY+ou5NzxK1CeawH+va7VQ9pZywIaY763kxwt4exJ+NC39Psf/3pERo9d6KmaD2/0
	ZWRVuMTVQQReDtRcsSUV37LxfUNEmtCR+cs8/v6PAx1eqrBPZhZmeVWZ4gCoLGW6zKAlx4cTqbp6U
	/TqY8Mks6sJHEHFCbj2ZUtLfveSRXUbWvyeG44LF8ynCkqMBngooINZRJkJeB1KkKiw7nknRTLQBe
	c8BIRMYeuO0yWeLwhgy/ExZqZtODhty/HrwpLw92TpdeqY4QXlR+u6AZB+Q9LVyg/FpqyrcGa2Ul3
	CyXwTIDA==;
Received: from [82.71.22.80] (helo=pip.localnet)
	by smarthost01a.ixn.mail.zen.net.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1tk6EY-004PAT-Kp;
	Mon, 17 Feb 2025 18:52:48 +0000
From: Deri <deri@chuzzlewit.myzen.co.uk>
To: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject:
 Re: Problem in prepare.pl (PDF book script) when handling Unix V10 manual
 pages
Date: Mon, 17 Feb 2025 18:52:46 +0000
Message-ID: <144994063.NCV6AghAH5@pip>
In-Reply-To: <ydrwk436ykp6qbl7mc4huswr4sp2rolev6mzxo4j3ccwweesbd@sdogm3kxgxew>
References: <ydrwk436ykp6qbl7mc4huswr4sp2rolev6mzxo4j3ccwweesbd@sdogm3kxgxew>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nextPart15825730.9zrtIqC6qo"
Content-Transfer-Encoding: 7Bit
X-Originating-smarthost01a-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80

This is a multi-part message in MIME format.

--nextPart15825730.9zrtIqC6qo
Content-Type: multipart/alternative; boundary="nextPart6940747.HmHdyVhiH3"
Content-Transfer-Encoding: 7Bit

This is a multi-part message in MIME format.

--nextPart6940747.HmHdyVhiH3
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 13 February 2025 16:08:39 GMT Alejandro Colomar wrote:
> Hi Deri,
> 
> I tried generating a PDF book from the Unix v10 manual pages, and found
> some issues with the Perl script.  I don't understand Perl, as you know,
> so I don't know what to do.
> 
> I've attached a tarball with the manual pages that I'm trying to handle.
> They're slightly modified V10 files, in order to make them slightly more
> conventional (e.g., the =.1 page is now called eq.1, and the manx/ dir
> and other dirs than didn't have a digit in their names are now divided
> into dirs that have one digit after the name (e.g., man1x/, ...)).
> 
> The command I'm trying to run is:
> 
> 	$ make -R build-pdf-book MANDIR=~/Downloads/unix/man/
> 
> (Of course, replace that path with wherever you untar the tarball.)
> 
> The error I see is a forever loop (or so it seems) with the following
> error line:
> 
> 	Use of uninitialized value $v in exists at
> /srv/alx/src/linux/man-pages/man-pages/contrib/share/mk/build/pdf/book/prep
> are.pl line 67.
> 
> Would you mind having a look at it?
> In case it matters:
> 
> 	alx@devuan:~$ groff --version
> 	GNU groff version 1.23.0.2695-49927
> 	Copyright (C) 1989-2023 Free Software Foundation, Inc.
> 	This is free software, distributed under the terms of the GNU General
> Public License, version 3, or any later version, at your option.  There is
> NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR
> PURPOSE.
> 
> 	programs in constructed pipeline:
> 
> 	GNU grops (groff) version 1.23.0.2695-49927
> 	GNU troff (groff) version 1.23.0.2695-49927
> 
> 
> Have a lovely day!
> Alex

Hi Alex,

This was caused by nonsense "aliases", see man1w/splitrules.1, and man1b/pins.
1g, which looks like an alias, but is not. This has now been fixed by being 
more tolerant of weird entries which look like aliases.

There are a lot of pages which should have aliases added.

I found some other issues which I have fixed:-

When an alias points to another alias the code was meant to keep looking until 
the real page is found. This affects the recent 6.11 (an example is 
fchown32(2) which has no associated page number in the overview panel, it now 
works properly.

Since the v10 pages are intended to run on a version of troff with a two 
character name limit (I think). Code such as ".ne4" cause a problem for groff, 
which needs ".ne 4" to work (otherwise groff looks for a macro called "ne4" 
and fails. Many of these issues are now corrected.

A strange issue is that if a page contained a "$" character it sent eqn into 
the stratosphere (thinking was dealing with an inline equation), I killed it 
when eqn chewed up over 24gb of memory. I have no idea why, and it is not 
triggered by a single page containing a "$", so it must be triggered by 
something in an earlier man page which triggers it, but changing some "$" to 
"\[Do]" fixed the problem.

One page redefined the ".P" man macro, which then affects all following man 
pages.

One page introduced a string register called "mc" which then masks the groff 
command ".mc" with very strange results .

Font L is used in many entries, no clue what font this is, but I convert to 
font CB. Please change to taste (see lines 130 onwards).

Several pages use lower case macro names, i.e. ".th" rather than ".TH".

I have "fixed" a lot of the problems but there are still many warnings when 
running groff. I have attached two parthes, one for the V10 man pages, and one 
for prepare.pl. You should be able to produce a "useful" book after applying 
these.

If you wish to see the fruits of my labour as a pdf, it is here:-

http://chuzzlewit.co.uk/UnixV10.pdf

Cheers 

Deri


--nextPart6940747.HmHdyVhiH3
Content-Transfer-Encoding: 7Bit
Content-Type: text/html; charset="us-ascii"

<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
</head>
<body><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">On Thursday, 13 February 2025 16:08:39 GMT Alejandro Colomar wrote:</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Hi Deri,</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; I tried generating a PDF book from the Unix v10 manual pages, and found</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; some issues with the Perl script.&nbsp; I don't understand Perl, as you know,</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; so I don't know what to do.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; I've attached a tarball with the manual pages that I'm trying to handle.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; They're slightly modified V10 files, in order to make them slightly more</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; conventional (e.g., the =.1 page is now called eq.1, and the manx/ dir</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; and other dirs than didn't have a digit in their names are now divided</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; into dirs that have one digit after the name (e.g., man1x/, ...)).</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; The command I'm trying to run is:</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &nbsp;&nbsp;&nbsp; $ make -R build-pdf-book MANDIR=~/Downloads/unix/man/</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; (Of course, replace that path with wherever you untar the tarball.)</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; The error I see is a forever loop (or so it seems) with the following</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; error line:</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &nbsp;&nbsp;&nbsp; Use of uninitialized value $v in exists at</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; /srv/alx/src/linux/man-pages/man-pages/contrib/share/mk/build/pdf/book/prep</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; are.pl line 67.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Would you mind having a look at it?</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; In case it matters:</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &nbsp;&nbsp;&nbsp; alx@devuan:~$ groff --version</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &nbsp;&nbsp;&nbsp; GNU groff version 1.23.0.2695-49927</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &nbsp;&nbsp;&nbsp; Copyright (C) 1989-2023 Free Software Foundation, Inc.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &nbsp;&nbsp;&nbsp; This is free software, distributed under the terms of the GNU General</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Public License, version 3, or any later version, at your option.&nbsp; There is</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; PURPOSE.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &nbsp;&nbsp;&nbsp; programs in constructed pipeline:</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &nbsp;&nbsp;&nbsp; GNU grops (groff) version 1.23.0.2695-49927</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &nbsp;&nbsp;&nbsp; GNU troff (groff) version 1.23.0.2695-49927</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Have a lovely day!</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Alex</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Hi Alex,</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">This was caused by nonsense &quot;aliases&quot;, see man1w/splitrules.1, and man1b/pins.1g, which looks like an alias, but is not. This has now been fixed by being more tolerant of weird entries which look like aliases.</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">There are a lot of pages which should have aliases added.</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">I found some other issues which I have fixed:-</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">When an alias points to another alias the code was meant to keep looking until the real page is found. This affects the recent 6.11 (an example is fchown32(2) which has no associated page number in the overview panel, it now works properly.</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Since the v10 pages are intended to run on a version of troff with a two character name limit (I think). Code such as &quot;.ne4&quot; cause a problem for groff, which needs &quot;.ne 4&quot; to work (otherwise groff looks for a macro called &quot;ne4&quot; and fails. Many of these issues are now corrected.</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">A strange issue is that if a page contained a &quot;$&quot; character it sent eqn into the stratosphere (thinking was dealing with an inline equation), I killed it when eqn chewed up over 24gb of memory. I have no idea why, and it is not triggered by a single page containing a &quot;$&quot;, so it must be triggered by something in an earlier man page which triggers it, but changing some &quot;$&quot; to &quot;\[Do]&quot; fixed the problem.</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">One page redefined the &quot;.P&quot; man macro, which then affects all following man pages.</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">One page introduced a string register called &quot;mc&quot; which then masks the groff command &quot;.mc&quot; with very strange results .</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Font L is used in many entries, no clue what font this is, but I convert to font CB. Please change to taste (see lines 130 onwards).</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Several pages use lower case macro names, i.e. &quot;.th&quot; rather than &quot;.TH&quot;.</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">I have &quot;fixed&quot; a lot of the problems but there are still many warnings when running groff. I have attached two parthes, one for the V10 man pages, and one for prepare.pl. You should be able to produce a &quot;useful&quot; book after applying these.</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">If you wish to see the fruits of my labour as a pdf, it is here:-</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">http://chuzzlewit.co.uk/UnixV10.pdf</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Cheers </p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Deri</p>
<br /><br /></body>
</html>
--nextPart6940747.HmHdyVhiH3--

--nextPart15825730.9zrtIqC6qo
Content-Disposition: attachment; filename="v10.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="x-UTF_8J"; name="v10.patch"

diff -ru alex-v10b/man/man1b/as80.1 alex-v10/man/man1b/as80.1
--- alex-v10b/man/man1b/as80.1	1982-01-13 01:40:00.000000000 +0000
+++ alex-v10/man/man1b/as80.1	2025-02-17 13:27:09.225671117 +0000
@@ -1,27 +1,27 @@
 .h 1 1 2/3/78
-.th as80
-.sh NAME
+.TH as80
+.SH NAME
 as80 \*- assembler for the 8080 and Z80 microprocessors
-.sh SYNOPSIS
-.bd as80
+.SH SYNOPSIS
+.B as80
 [
-.bd \*-lhzi
+.B \*-lhzi
 ] name ...
-.sh DESCRIPTION
-.it as80
+.SH DESCRIPTION
+.I as80
 assembles the concatenation of the named files.
 The output of the assembly is left on the file
-.bd "80.out".
+.B "80.out".
 It is executable if no errors occurred
 during the assembly,
 and if there were no unresolved external references.
-.s1
+.LP
 The -l option causes as80 to produce a listing
 on the standard output.
-.s1
+.LP
 The -h option causes as80 to produce the output listing
 in hex. Octal is default.
-.s1
+.LP
 Register names:		a,b,c,d,e,h,l,af,bc,de,hl,ix,iy,sp
 .br
 Condition codes:		nz,z,nc,c,po,pe,p,m
@@ -30,15 +30,15 @@
 .br
 			.bss,.bssorg,.byte,.word,.list,
 .br
-.s1
-.s3
-.sh FILES
+.LP
+.LP
+.SH FILES
 as80	the assembler
 .br
 "80.out"
 .br
 OPCODES	the external instruction set
-.sh DIAGNOSTICS
+.SH DIAGNOSTICS
 When
 an input file cannot be read, its name and
 a "can't open" diagnostic is produced and assembly
@@ -47,7 +47,7 @@
 encountered,
 a single-character diagnostic is produced.
 The possible diagnostics are:
-.s3
+.LP
 .ta 3
 \. moving dot backwards
 .br
@@ -73,8 +73,8 @@
 .br
 X	Syntax error
 .br
-.sh BUGS
-.s1
+.SH BUGS
+.LP
 If  .list 1  is ever encountered,
 a listing will start to come out
 whether or not  -l  was selected.
diff -ru alex-v10b/man/man1b/ksh.1 alex-v10/man/man1b/ksh.1
--- alex-v10b/man/man1b/ksh.1	1989-06-05 20:16:39.000000000 +0100
+++ alex-v10/man/man1b/ksh.1	2025-02-13 22:37:11.994677266 +0000
@@ -2,9 +2,9 @@
 .ds CK \|]
 .ds ' \s+4\v@.3m@\'\v@-.3m@\s-4
 .ds ` \s+4\v@.3m@\`\v@-.3m@\s-4
-.de P
-.br
-..
+.\" .de P
+.\" .br
+.\" ..
 .TH KSH 1
 .SH NAME
 ksh \- Korn shell, the not standard command programming language
diff -ru alex-v10b/man/man1b/ld80.1 alex-v10/man/man1b/ld80.1
--- alex-v10b/man/man1b/ld80.1	1982-01-13 01:40:01.000000000 +0000
+++ alex-v10/man/man1b/ld80.1	2025-02-17 13:32:33.675178737 +0000
@@ -1,35 +1,35 @@
-.th "ld80" 1 1/2/78
-.sh NAME
+.TH "ld80" 1 1/2/78
+.SH NAME
 "ld80"  \*-  link editor for the 8080/Z80 load moduals.
-.sh SYNOPSIS
-.bd "ld80"
+.SH SYNOPSIS
+.B "ld80"
 [
-.bd \*-ultdb
+.B \*-ultdb
 ] name ...
-.sh DESCRIPTION
-.it "ld80"
+.SH DESCRIPTION
+.I "ld80"
 combines several
 object programs into one; resolves external
 references; and searches libraries.
 In the simplest case the names of several object
 programs are given, and
-.it "ld80"
+.I "ld80"
 combines them, producing
 an object module which can be either executed or
 become the input for a further
-.it "ld80"
+.I "ld80"
 run.
 The output of
-.it "ld80"
+.I "ld80"
 is left on
-.bd "80.out".
+.B "80.out".
 This file is made executable
 only if no errors occurred during the load.
-.s3
+.LP
 The argument routines are concatenated in the order
 specified.  The entry point of the output is the
 beginning of the first routine.
-.s3
+.LP
 If any argument is a library, it is searched exactly once
 at the point it is encountered in the argument list.
 Only those routines defining an unresolved external
@@ -40,14 +40,14 @@
 referencing routine in the library.
 Thus the order of programs within libraries
 is important.
-.s3
-.it "ld80"
+.LP
+.I "ld80"
 understands several flag arguments which are written
 preceded by a `\*-'.
 Except for \fB\*-l\fR,
 they should appear before the file names.
-.s3
-.lp +4 4
+.LP
+.LP +4 4
 \fB\*-b\fR	This
 option is used to provide an absolute origin for the bss segment
 of the resultant "80.out".
@@ -58,8 +58,8 @@
 segment.
 Use of this option will cause the relocation information to
 be suppressed from the output.
-.s3
-.lp +4 4
+.LP
+.LP +4 4
 \fB\*-d\fR	This
 option is used to provide an absolute origin for the data segment
 of the resultant "80.out".
@@ -70,15 +70,15 @@
 after the text.
 Use of this option will cause the relocation information to
 be suppressed from the output.
-.s3
-.lp +4 4
+.LP
+.LP +4 4
 \fB\*-u\fR	take the following argument as a symbol and enter
 it as undefined in the symbol table.  This is useful
 for loading wholly from a library, since initially the symbol
 table is empty and an unresolved reference is needed
 to force the loading of the first routine.
-.s3
-.lp +4 4
+.LP
+.LP +4 4
 \fB\*-t\fR	This
 option is used to provide an absolute origin for the text segment
 of the resultant "80.out".
@@ -88,8 +88,8 @@
 The default origin is 0.
 Use of this option will cause the relocation information to
 be suppressed from the output.
-.s3
-.lp +4 4
+.LP
+.LP +4 4
 \fB\*-l\fR	This
 option is an abbreviation for a library name.
 \fB\*-l\fR
@@ -103,18 +103,18 @@
 is significant.
 .i0
 .dt
-.sh FILES
+.SH FILES
 /usr/z8080/lib/z80	libraries
 .br
 "80.out"		 output file
-.sh "SEE ALSO"
+.SH "SEE ALSO"
 "as80" (I), ar (I)
-.sh BUGS
+.SH BUGS
 Most diagnostics are self explanatory.
 The strangest is 'origin - conflict' and
 occurs whenever an origin supplied by the user via
 the -t -d or -b options causes segments to overlap.
 The numbers printed out correspond
 origins and sizes(both in octal) of each resultant segment.
-.bd "80.out"
+.B "80.out"
 is produced.
diff -ru alex-v10b/man/man1b/nm80.1 alex-v10/man/man1b/nm80.1
--- alex-v10b/man/man1b/nm80.1	1982-01-13 01:40:01.000000000 +0000
+++ alex-v10/man/man1b/nm80.1	2025-02-17 13:36:36.879877170 +0000
@@ -1,19 +1,19 @@
-.th NM80 1 03/01/77
-.sh NAME
+.TH NM80 1 03/01/77
+.SH NAME
 nm80  \*-  print name list
-.sh SYNOPSIS
-.bd nm80
+.SH SYNOPSIS
+.B nm80
 [
-.bd \-cnrupgfabdth
+.B \-cnrupgfabdth
 ]
 [ name ]
-.sh DESCRIPTION
+.SH DESCRIPTION
 .it Nm80
 prints the symbol table from the output file of an
 assembler or loader run.
 Each symbol name is preceded by its value (blanks if undefined)
 and one of the letters:
-.s1
+.LP
 \fBU\fR (undefined)
 .br
 \fBA\fR (absolute)
@@ -27,59 +27,59 @@
 \fBF\fR (file name)
 .br
 \fBC\fR (common symbol)
-.s3
+.LP
 If the symbol is local (non-external)
 the type letter is in lower case.
 The output is sorted alphabetically.
-.s3
+.LP
 If no file is given, the symbols in
-.bd 80.out
+.B 80.out
 are listed.
 Absolute symbols have their values printed in octal.
 Non-absolute symbols are assumed to be addresses
 and are printed in a "low byte:high byte" format.
-.s3
+.LP
 Options are:
-.s3
-.lp +4 4
+.LP
+.LP +4 4
 \fB\-a\fR	list only absolute symbols
-.s3
-.lp +4 4
+.LP
+.LP +4 4
 \fB\-b\fR	list only bss symbols
-.s3
-.lp +4 4
+.LP
+.LP +4 4
 \fB\-c\fR	list only C-style external symbols, that is
 those beginning with underscore `\*_'.
-.s3
-.lp +4 4
+.LP
+.LP +4 4
 \fB\-d\fR	list only data symbols
 those beginning with underscore `\*_'.
-.s3
-.lp +4 4
+.LP
+.LP +4 4
 \fB\-f\fR	print only the file names.
-.s3
-.lp +4 4
+.LP
+.LP +4 4
 \fB\-g\fR	print only global (external) symbols
-.s3
-.lp +4 4
+.LP
+.LP +4 4
 \fB\-n\fR	sort by value instead of by name
-.s3
-.lp +4 4
+.LP
+.LP +4 4
 \fB\-p\fR	don't sort; print in symbol-table order
-.s3
-.lp +4 4
+.LP
+.LP +4 4
 \fB\-r\fR	sort in reverse order
-.s3
-.lp +4 4
+.LP
+.LP +4 4
 \fB\-t\fR	list only text symbols
 those beginning with underscore `\*_'.
-.s3
-.lp +4 4
+.LP
+.LP +4 4
 \fB\-u\fR	print only undefined symbols.
-.s3
-.lp +4 4
+.LP
+.LP +4 4
 \fB\-h\fR	print output in hex.
 .i0
-.sh FILES
+.SH FILES
 80.out
-.sh BUGS
+.SH BUGS
diff -ru alex-v10b/man/man1b/size80.1 alex-v10/man/man1b/size80.1
--- alex-v10b/man/man1b/size80.1	1982-01-13 01:40:02.000000000 +0000
+++ alex-v10/man/man1b/size80.1	2025-02-17 13:39:14.607646591 +0000
@@ -1,17 +1,17 @@
-.th SIZE80 1 "2/23/77"
-.sh NAME
+.TH SIZE80 1 "2/23/77"
+.SH NAME
 size80 \*- size of an object file for the 8008/8080 or Z80
-.sh SYNOPSIS
-.bd size80
+.SH SYNOPSIS
+.B size80
 [ object ... ]
-.sh DESCRIPTION
-.it Size80
+.SH DESCRIPTION
+.I Size80
 prints the decimal and octal number of bytes
 required by the
 text, data, and bss
 portions
 of each object-file argument.
 If no file is specified,
-.bd 80.out
+.B 80.out
 is used.
-.sh BUGS
+.SH BUGS
diff -ru alex-v10b/man/man1x/mailx.1 alex-v10/man/man1x/mailx.1
--- alex-v10b/man/man1x/mailx.1	1989-12-13 20:56:52.000000000 +0000
+++ alex-v10/man/man1x/mailx.1	2025-02-13 21:58:36.104243216 +0000
@@ -38,7 +38,7 @@
 .ds nu \\f2number\\f1
 .ds ms \\f2message\f1
 .ds sh \\f2shell-command\\f1
-.ds mc \\f2mail-command\\f1
+.ds mC \\f2mail-command\\f1
 .ds dl \\fBdead.letter\\f1
 .ds mr \\f2.mailrc\\f1
 .ds mb \\f2mbox\\f1
@@ -419,20 +419,20 @@
 .Cm ho ld \*(om
 Holds the specified messages in the \*(mx.
 .Cm i f \fBs\f1 | \fBr\f1
-.C "" \*(mcs
+.C "" \*(mCs
 .C el se
-.C "" \*(mcs
+.C "" \*(mCs
 .C en dif
 Conditional execution, where
 .B s
-will execute following \*(mcs, up to an
+will execute following \*(mCs, up to an
 .BR el se
 or
 .BR en dif,
 if the program is in
 send mode, and
 .B r
-causes the \*(mcs to be executed only in
+causes the \*(mCs to be executed only in
 receive mode.
 Useful in the \*(mr file.
 .Cm l ist
@@ -569,7 +569,7 @@
 .PD 0
 .Ti ! \*(sh
 Escape to the shell.
-.Ti : \*(mc
+.Ti : \*(mC
 Perform the command-level request.
 .Ti ?
 Print a summary of tilde escapes.
diff -ru alex-v10b/man/man5b/80.out.5 alex-v10/man/man5b/80.out.5
--- alex-v10b/man/man5b/80.out.5	1982-01-13 01:41:59.000000000 +0000
+++ alex-v10/man/man5b/80.out.5	2025-02-17 13:20:47.393796842 +0000
@@ -1,149 +1,149 @@
-.th "80.out" 5 "March 1,1977"
-.sh NAME
+.TH "80.out" 5 "March 1,1977"
+.SH NAME
 80.out \*- assembler and link editor output
-.sh DESCRIPTION
-.it "80.out"
+.SH DESCRIPTION
+.I "80.out"
 is the output file of the assembler
-.it "as80"
+.I "as80"
 and the link editor
-.it "ld80".
+.I "ld80".
 Both programs make
-.it "80.out"
+.I "80.out"
 executable if there were no
 errors and no unresolved external references.
-.s3
-.it 80.out
+.LP
+.I 80.out
 has five sections:
 header, text, data, relocation information and a symbol table (in that order).
 The last two sections may be empty if the program was loaded with
 the ``\*-b'', ``\*-d'' or ``\*-t'' option of
-.it ld80.
-.s1
+.I ld80.
+.LP
 (Constants beginning with `0' are octal values.)
-.s3
-.it HEADER
-.s3
+.LP
+.I HEADER
+.LP
 The header always contains 040 bytes:
-.lp +10 8
+.LP +10 8
 Address	Contents
-.lp +10 8
+.LP +10 8
 (octal)
-.s1
-.lp +10 8
+.LP
+.LP +10 8
 0-1	Magic number (0413)
-.lp +10 8
+.LP +10 8
 2-3	Size of text segment
-.lp +10 8
+.LP +10 8
 4-5	Size of data segment
-.lp +10 8
+.LP +10 8
 6-7	Size of bss segment
-.lp +10 8
+.LP +10 8
 10-11	Size of symbol table
-.lp +10 8
+.LP +10 8
 12-13	Load origin of text segment
-.lp +10 8
+.LP +10 8
 14-15	Load origin of data segment
-.lp +10 8
+.LP +10 8
 16-20	Load origin of bss segment
-.lp +10 8
+.LP +10 8
 20-21	Size of relocation table
-.lp +10 8
+.LP +10 8
 22-23	A word of flags
-.lp +10 8
+.LP +10 8
 24-37	Padding
-.s3
+.LP
 .i0
 The size of each segment is in bytes.
 The size of the header is not included in any of the other sizes.
-.s3
+.LP
 The flag values are:
-.lp +20 7
+.LP +20 7
 Bit	Meaning
-.lp +20 7
+.LP +20 7
 0	If set, no relocation information is present.
 .i0
-.s3
+.LP
 The start of the text segment in the file is 040,
 the start of the data is (040 + text size),
 the start of the relocation is (040 + text + data size),
 and the start of the symbol table is (040 + text size + data size + relocation size).
-.s3
-.it "RELOCATION INFORMATION"
-.s3
+.LP
+.IP "RELOCATION INFORMATION"
+.LP
 The relocation information (if present)
 occupies one or two bytes for each byte or word of text or data.
 The bits of the relocation word (or byte) are:
-.s3
-.lp +10 8
+.LP
+.LP +10 8
 Bit	Meaning
-.s3
-.lp +10 8
+.LP
+.LP +10 8
 6-15	Symbol number in symbol table for external references.
 The firat symbol is numbered 0.
-.lp +10 8
+.LP +10 8
 5	High-byte flag: If set, the next byte of text or data is to be treated as the high
 order byte of a 16-bit quantity for relocation purposes.
-.lp +10 8
+.LP +10 8
 4	Two-byte flag: If set, the next two bytes of text or data are to be
 treated as a 16-bit quantity for relocation purposes.
-.lp +10 8
+.LP +10 8
 3	External flag: If set, bits 15-6 contain a symbol number, otherwise, only one byte
 of relocation information is present.
-.lp +10 8
+.LP +10 8
 0-2	Segment information:
-.lp +20 5
+.LP +20 5
 0	absolute
-.lp +20 5
+.LP +20 5
 1	text
-.lp +20 5
+.LP +20 5
 2	data
-.lp +20 5
+.LP +20 5
 3	bss
 .i0
-.s3
-.sh "SEE ALSO"
+.LP
+.SH "SEE ALSO"
 "as80" (I), "ld80" (I), "nm80" (I)
-.s3
-.it "SYMBOL TABLE"
-.s1
+.LP
+.SH "SYMBOL TABLE"
+.LP
 The symbol table entries consist of six words:
-.s3
-.lp +10 8
+.LP
+.LP +10 8
 Word 	Meaning
-.s1
-.lp 1-4	The first four words contain the left justified, null-padded ASCII symbol name.
-.lp +10 8
+.LP
+.LP 1-4	The first four words contain the left justified, null-padded ASCII symbol name.
+.LP +10 8
 The fifth word is a flag indicating the type of the symbol.
 The following values are possible:
-.lp +20 5
+.LP +20 5
 00	undefined
-.lp +20 5
+.LP +20 5
 01	absolute
-.lp +20 5
+.LP +20 5
 02	text
-.lp +20 5
+.LP +20 5
 03	data
-.lp +20 5
+.LP +20 5
 04	bss
-.lp +20 5
+.LP +20 5
 05	file name symbol (produced by ld80)
-.lp +20 5
+.LP +20 5
 010	undefined external
-.lp +20 5
+.LP +20 5
 011	absolute external
-.lp +20 5
+.LP +20 5
 012	text segment external
-.lp +20 5
+.LP +20 5
 013	data segment external
-.lp +20 5
+.LP +20 5
 014	bss segment external
-.lp +10 8
+.LP +10 8
 6	The sixth word is the value of the symbol.
 .i0
-.s3
+.LP
 The sixth word of a symbol table entry contains the value of the symbol.
-.s3
-.s3
+.LP
+.LP
 The value of a word in the text or data portions which is not
 a reference to an undefined external symbol
 is exactly that value which will appear in core
@@ -158,4 +158,4 @@
 link editor and the external symbol becomes
 defined, the value of the symbol will
 be added into the word in the file.
-.s3
+.LP
diff -ru alex-v10b/man/man5b/prtx.5g alex-v10/man/man5b/prtx.5g
--- alex-v10b/man/man5b/prtx.5g	1982-01-28 20:36:25.000000000 +0000
+++ alex-v10/man/man5b/prtx.5g	2025-02-13 22:16:11.998799451 +0000
@@ -135,7 +135,7 @@
 is required if "m" is present. Otherwise they must be omitted.
 If "m" is omitted then text must be present.
 .TP 10
-$X [ point ]
+\[Do]X [ point ]
 Macro Command: Invoke macro 
 .I X. 
 The the body of macro
diff -ru alex-v10b/man/man6/ascii.6 alex-v10/man/man6/ascii.6
--- alex-v10b/man/man6/ascii.6	1991-03-19 22:48:38.000000000 +0000
+++ alex-v10/man/man6/ascii.6	2025-02-14 15:39:57.666577228 +0000
@@ -14,7 +14,7 @@
 |010 bs |011 ht |012 nl |013 vt |014 np |015 cr |016 so |017 si |
 |020 dle|021 dc1|022 dc2|023 dc3|024 dc4|025 nak|026 syn|027 etb|
 |030 can|031 em |032 sub|033 esc|034 fs |035 gs |036 rs |037 us |
-|040 sp |041  ! |042  " |043  # |044  $ |045  % |046  & |047  \' |
+|040 sp |041  ! |042  " |043  # |044  \[Do] |045  % |046  & |047  \' |
 |050  ( |051  ) |052  * |053  + |054  , |055  - |056  . |057  / |
 |060  0 |061  1 |062  2 |063  3 |064  4 |065  5 |066  6 |067  7 |
 |070  8 |071  9 |072  : |073  ; |074  < |075  = |076  > |077  ? |
diff -ru alex-v10b/man/man6a/atc.6 alex-v10/man/man6a/atc.6
--- alex-v10b/man/man6a/atc.6	1986-08-18 21:06:06.000000000 +0100
+++ alex-v10/man/man6a/atc.6	2025-02-15 00:35:29.366966259 +0000
@@ -138,7 +138,7 @@
 Commands are terminated by newline.
 Backspace may be used to correct errors.
 The following kinds of commands can be issued.
-.IP $ \n()Mu
+.IP \[Do] \n()Mu
 End the game (game normally ends after 26 planes)
 .PD0
 .TP "\w'ALNW 'u"
@@ -153,7 +153,7 @@
 QA0
 .B Q
 will land (go to 0 feet altitude)
-.Tp
+.TP
 .B HRE
 .B H
 will turn right until it is heading east
diff -ru alex-v10b/man/man8/ship.8 alex-v10/man/man8/ship.8
--- alex-v10b/man/man8/ship.8	1989-09-21 19:40:23.000000000 +0100
+++ alex-v10/man/man8/ship.8	2025-02-17 17:37:30.965310889 +0000
@@ -54,11 +54,11 @@
 Other options are the same as those of
 .IR mkpkg :
 .PP
-.TP \w'\-X file 'u
+.TP 10n
 .B -v
 Emit running commentary on the standard error file.
 .TP
-.BI -D path1 = path2
+.BI -D "path1 = path2"
 Pretend that any
 .I file
 name that begins with

--nextPart15825730.9zrtIqC6qo
Content-Disposition: attachment; filename="V10prepare.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="x-UTF_8J"; name="V10prepare.patch"

diff --git a/share/mk/build/pdf/book/prepare.pl b/share/mk/build/pdf/book/prepare.pl
index 4620072ca..a41a877c5 100755
--- a/share/mk/build/pdf/book/prepare.pl
+++ b/share/mk/build/pdf/book/prepare.pl
@@ -1,4 +1,4 @@
-#!/usr/bin/perl -w
+#!/usr/bin/perl -wd
 #
 #	BuildLinuxMan.pl		: Build Linux manpages book
 #	Deri James (& Brian Inglis)	: 15 Dec 2022
@@ -50,6 +50,7 @@ my $dir2=$dir;
 $dir2=~tr[.][_];
 my %files;
 my %aliases;
+my $secQ=qr/\.\d+[\w.]*/;
 
 foreach my $al (`find "$dir"/man*/ -type f \\
 		| grep "\\.[[:digit:]]\\([[:alpha:]][[:alnum:]]*\\)\\?\\>\$" \\
@@ -58,14 +59,16 @@ foreach my $al (`find "$dir"/man*/ -type f \\
 	#$al=~tr[.][_];
 	$al=~m/^$dir\/man\d[a-z]*\/(.*):\.\s*so\s*man\d[a-z]*\/(.*)/o;
 
-	$aliases{$1}=$2;
+	$aliases{$1}=$2 if defined($1) and defined($2);
 }
 
 while (my ($k,$v)=each %aliases)
 {
 	while (exists($aliases{$v})) {
-		$v=$aliases{$v};
+	    $v=$aliases{$v};
 	}
+
+	$aliases{$k}=$v;
 }
 
 foreach my $fn (`find "$dir"/man*/ -type f \\
@@ -73,7 +76,7 @@ foreach my $fn (`find "$dir"/man*/ -type f \\
 {
 	$fn=~s/\n//;
 
-	my ($nm,$sec)=GetNmSec($fn,qr/\.\d[a-z]*/);
+	my ($nm,$sec)=GetNmSec($fn,$secQ);
 	$files{"${nm}.$sec"}=[$fn,(exists($aliases{"${nm}.$sec"}))?$aliases{"${nm}.$sec"}:"${nm}.$sec"];
 }
 
@@ -95,7 +98,7 @@ sub BuildPage
 	my $bkmark=shift;
 
 	my $fn=$files{$bkmark}->[0];
-	my ($nm,$sec,$srt)=GetNmSec($bkmark,qr/\.[\da-z]+/);
+	my ($nm,$sec,$srt)=GetNmSec($bkmark,$secQ);
 
 	my $title= "$nm\\($sec\\)";
 
@@ -106,8 +109,9 @@ sub BuildPage
 	# if new section add top level bookmark
 
 	if ($sec ne $Section) {
+		my $SecHd=(exists($Sections{$sec}))?$Sections{$sec}:"Section $sec";
 		print ".nr PDFOUTLINE.FOLDLEVEL 1\n";
-		print ".pdfbookmark 1 $Sections{$sec}\n";
+		print ".pdfbookmark 1 $SecHd\n";
 		print ".nr PDFOUTLINE.FOLDLEVEL 2\n";
 		$Section=$sec;
 	}
@@ -126,6 +130,19 @@ sub BuildPage
 
 			chomp;
 
+			# typo fixes for v10!!
+			s/^\.PD0/.PD 0/;
+			s/^\.ta1i/.ta 1i/;
+			s/\\fL/\f[CB]/g;
+			s/^\.ft\s*L/.ft CB/;
+			s/^\.ne(\d+)/.ne $1/;
+			s/^\.ft(\S)/.ft $1/;
+			s/^\.ps(\S)/.ps $1/;
+			s/^\.vs(\S)/.vs $1/;
+			s/^\.ti(\S)/.ti $1/;
+			s/\.if([tn])/.if $1/;
+			next if m/\.SH\s*$/;
+
 			# This code is to determine whether we are within a tbl block and in a text block
 			# T{ and T}. This is fudge code particularly for the syscalls(7) page.
 
@@ -135,12 +152,13 @@ sub BuildPage
 			next if !$_;
 #			s/^\s+//;
 
-			s/\\-/-/g if /^\.[BM]R\s+/;
+			s/\\-/-/g if /^\.[BMI]R\s+/;
 
-			if (m/^\.BR\s+([-\w\\.]+)\s+\((.+?)\)(.*)/ or m/^\.MR\s+([-\w\\.]+)\s+(\w+)\s+(.*)/ or m/^\\fB([-\w\\.]+)\\fR\((.+?)\)(.*)$/) {
+			if (m/^\.[BI]R\s+([-\w\\.]+)\s+\((.+?)\)(.*)/ or m/^\.MR\s+([-\w\\.]+)\s+(\w+)\s+(.*)/ or m/^\\fB([-\w\\.]+)\\fR\((.+?)\)(.*)$/) {
 				my $bkmark="$1";
 				my $sec=$2;
-				my $after=$3;
+				$sec=~s/\.\d//;
+				my $after=$3 || '';
 				$after=~s/\s\\".*//;
 				my $dest=$bkmark;
 				$dest=~s/\\-/-/g;
@@ -206,16 +224,25 @@ sub doMR
 	}
 }
 
+sub ns
+{
+    my $sec=shift;
+    $sec=~m/^(\d+)/;
+    $sec="0$1" if $1 < 10;
+    return $sec;
+}
+
 sub GetNmSec
 {
 	my ($nm,$pth,$sec)=fileparse($_[0],$_[1]);
 	$sec=substr($sec,1);
+	$sec=int($sec) if $sec=~m/^\d+\.\d+$/;
 	my $srt=$nm;
 	$srt=~s/\..+?$//;
 	$srt=~s/^_+//;
 	$srt=$1.sprintf("%04d",$2) if $srt=~m/^(.+)(\d+)$/;
 	#$srt="$sec/$srt";
-	return($nm,$sec,$srt);
+	return($nm,$sec,$srt,ns($sec));
 }
 
 # add rpmvercmp
@@ -226,16 +253,18 @@ sub sortman
 {
 # Sort - ignore case but frig it so that intro is the first entry.
 
-	my (undef,$s1,$c)=GetNmSec($a,qr/\.\d[a-z]*/);
-	my (undef,$s2,$d)=GetNmSec($b,qr/\.\d[a-z]*/);
+	my (undef,$s1,$c,$ns1)=GetNmSec($a,$secQ);
+	my (undef,$s2,$d,$ns2)=GetNmSec($b,$secQ);
 
-	my $cmp=$s1 cmp $s2;
+	my $cmp=$ns1 cmp $ns2;
 
 	return $cmp if $cmp;
 	return -1 if ($c=~m/^intro/ and $d!~m/^intro/);
 	return  1 if ($d=~m/^intro/ and $c!~m/^intro/);
 	$c=~tr[-_(][!" ];
 	$d=~tr[-_(][!" ];
+	$cmp=$s1 cmp $s2;
+	return($cmp) if $cmp;
 	$cmp=lc($c) cmp lc($d);
 	return($c cmp $d) if $cmp == 0;
 	return($cmp);

--nextPart15825730.9zrtIqC6qo--




