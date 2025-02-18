Return-Path: <linux-man+bounces-2479-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DA2A39084
	for <lists+linux-man@lfdr.de>; Tue, 18 Feb 2025 02:41:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BF1641880557
	for <lists+linux-man@lfdr.de>; Tue, 18 Feb 2025 01:41:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9862674040;
	Tue, 18 Feb 2025 01:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=myzen.co.uk header.i=@myzen.co.uk header.b="aHpItXa6"
X-Original-To: linux-man@vger.kernel.org
Received: from queue02a.mail.zen.net.uk (queue02a.mail.zen.net.uk [212.23.3.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA031E522
	for <linux-man@vger.kernel.org>; Tue, 18 Feb 2025 01:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.23.3.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739842884; cv=none; b=WFh0zOQOWtJiOczHWaPOa+IXqwGxZkW7LXx/hUGWzYEOCsIhyrN5Zssr/9j52MzB08S0Q2PoCqi6carmurpQ1KMC+xErGVABOiLx3j5tGJMvkx/vZqGwzAQtsvkNUDBT6NPQPSMeWsnZh+KfAu8eIKZbLAQo3JlyOd3E/o3WX9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739842884; c=relaxed/simple;
	bh=UJLFCMZnn6Sg1uOJ6VpA4rpiItCEtSmhCyU2qR4h0Yw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=R26DM8z1RmQgVRnsDspL/jsBQW2DOLc1QFp+dw1hwXM6LUCjjfzxOOTc5P6KEXsoi8mA9r9ExySHLJryLdqRDeA1ks83B84O0oQGVk48GPZaiSN4dEP8Sxum7HfifzRcWTtPAtZg+BhOoezr2HAdyE6yJz4cTa6bAQdkJ/JKvGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk; dkim=pass (2048-bit key) header.d=myzen.co.uk header.i=@myzen.co.uk header.b=aHpItXa6; arc=none smtp.client-ip=212.23.3.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk
Received: from [212.23.1.1] (helo=smarthost01a.sbp.mail.zen.net.uk)
	by queue02a.mail.zen.net.uk with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1tkCbr-00BN6v-OR
	for linux-man@vger.kernel.org;
	Tue, 18 Feb 2025 01:41:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=myzen.co.uk
	; s=sh20250120; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=e9mOJD5NZvNOUBWdBoOoM97VaaGFPUij5LO4BY3dNL4=; b=aHpItXa6IvEdr+1khlRplQW1xK
	PoKvWLJrC/ZNSPpg/xMcHvCbi+crNK6KJ6J2yN99C/Re7PY8aqWKE5rc2ItDnpY7e1GAViTW4F7nY
	wdijrCRwyo7XAUeaVa8enc5GboS9ewXesKtgS/K7jpqbByV3QioL1CmMbQ6DVmK51VDwxoLVOV853
	3uIJBJwwzLLja1GMJ9yVS/AMUeh59q+esWnGOGRt2htn2UTHy3dq78+TyRcajyJ3xA6fcBfu1IIdC
	HdYDWiHIZb3urrY9ZfRwjksQ7XTXFuJTcGgh8vaImgK3CYylDVY3zkdb2GY92nPkOpQWL/k2crb8g
	OLnZge4Q==;
Received: from [82.71.22.80] (helo=pip.localnet)
	by smarthost01a.sbp.mail.zen.net.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1tkCb6-009QMh-JH;
	Tue, 18 Feb 2025 01:40:36 +0000
From: Deri <deri@chuzzlewit.myzen.co.uk>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 groff@gnu.org
Subject:
 Re: Problem in prepare.pl (PDF book script) when handling Unix V10 manual
 pages
Date: Tue, 18 Feb 2025 01:40:35 +0000
Message-ID: <12526054.rSIqT0gH7E@pip>
In-Reply-To: <20250217222246.ibbqlp4erhghafjb@illithid>
References:
 <ydrwk436ykp6qbl7mc4huswr4sp2rolev6mzxo4j3ccwweesbd@sdogm3kxgxew>
 <144994063.NCV6AghAH5@pip> <20250217222246.ibbqlp4erhghafjb@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nextPart6752776.WOMb1dXTlo"
Content-Transfer-Encoding: 7Bit
X-Originating-smarthost01a-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80

This is a multi-part message in MIME format.

--nextPart6752776.WOMb1dXTlo
Content-Type: multipart/alternative; boundary="nextPart1763073.EzofI0F45H"
Content-Transfer-Encoding: 7Bit

This is a multi-part message in MIME format.

--nextPart1763073.EzofI0F45H
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 17 February 2025 22:22:46 GMT G. Branden Robinson wrote:
> [CCing groff@gnu list because some problems arise here that merit being
>  findable by search of its list archives]
> 
> Hi Deri,
> 
> At 2025-02-17T18:52:46+0000, Deri wrote:
> > > 	programs in constructed pipeline:
> > > 	
> > > 	GNU grops (groff) version 1.23.0.2695-49927
> > > 	GNU troff (groff) version 1.23.0.2695-49927
> 
> [...]
> 
> > Since the v10 pages are intended to run on a version of troff with a
> > two character name limit (I think). Code such as ".ne4" cause a
> > problem for groff, which needs ".ne 4" to work (otherwise groff looks
> > for a macro called "ne4" and fails. Many of these issues are now
> > corrected.
> 
> We do have compatibility mode to support old-style AT&T troff input.
> 
> troff(1):
>      -C       Enable AT&T troff compatibility mode; implies -c.  See
>               groff_diff(7).
> 
> However...
> 
> [skipping ahead]
> 
> > but changing some "$" to "\[Do]" fixed the problem.
> 
> ...if you're doing that, you foreclose use of `\[Do]` for 2 reasons.
> 
> 1.  That syntax is a groff extension (the AT&T troff form would be
>     `\(Do`)...but worse...
> 2.  `Do` is not a special character identifier generally recognized by
>     AT&T-family troffs.  And there's no way within the AT&T *roff
>     language to define new ones.  Fortunately, in Kernighan troff, it's
>     not hard to add them to font description files.  As long as you have
>     superuser privileges.

Hi Branden,

My prepare.pl is only supported for our groff, so I have no interest in making 
it compatible to AT&T troffs.

> > A strange issue is that if a page contained a "$" character it sent
> > eqn into the stratosphere (thinking was dealing with an inline
> > equation), I killed it when eqn chewed up over 24gb of memory. I have
> > no idea why, and it is not triggered by a single page containing a
> > "$", so it must be triggered by something in an earlier man page which
> > triggers it, but changing some "$" to "\[Do]" fixed the problem.
> 
> I surmise that this book building system either runs groff with the `-e`
> option, or pipes the pages through eqn(1) explicitly, so that every page
> gets preprocessed by eqn.  That's not wrong--in fact it's probably the
> sanest thing to do--but it does expose you to scenarios like this.
> 
> I'd bet a U.S. 50-cent piece that some page had this in it:
> 
> .EQ
> ...
> delim $$
> ...
> .EN
> 
> and then never did this later:
> 
> .EQ
> ...
> delim off
> ...
> .EN
> 
> ...because who ever formats more than one man page at a time?
> 
> So upon encountering a `$` in an eqnless man page later, the eqn
> preprocessor would indeed then start gobbling up the entire remainder of
> the input for attempted conversion to troff input.
> 
> GNU eqn added an option that strongly mitigates this and another
> problem:
> 
> eqn(1):
>      -N      Prohibit newlines within delimiters, allowing eqn to
>              recover better from missing closing delimiters.
> 
> ...and the groff(1) front-end exposes it too, for convenience:
> 
> groff(1):
>      -N       Prohibit newlines between eqn delimiters: pass -N to
>               eqn(1).
> 
> ...however before reaching for this solution, the corpus of pages being
> formatted needs to be audited to ensure that no multiline, inline use of
> eqn is attempted.  If it is, the pages must be altered to either:
> 
> 1.  stop doing that--maybe by joining lines--enabling use of `-N`;
> 2.  migrate the "inline" math to EQ/EN bracketing (groff man(7) doesn't
>     define `EQ` and `EN` to set the math as a display, so this _should_
>     work okay), also enabling use of `-N`; or
> 3.  find the spot where `delim off` should have been and add it.

Alex is in charge of the workflow pipeline, prepare.pl runs first and produces 
a [con]catenation (I remembered your preference :-) ) of all the man pages 
which is then run through all the pre-processors and groff -Z and finally 
gropdf. I'm tempted by your 3rd idea, since I am doing other "fixes" this is 
trivial to add, although adding -N is the simplest it does require what may be 
a difficult audit.

> > One page redefined the ".P" man macro, which then affects all
> > following man pages.
> 
> Naughty, naughty!  I've wondered in the past about adding support for
> "burning it all down and redefining all interface macros" in groff's
> "an.tmac" (specifically when hitting a new `TH`).[1]  But I decided that
> people wouldn't believe me that this was a practical hazard.  Thanks for
> pointing me to a real-world case!  :D
> 
> > One page introduced a string register called "mc" which then masks the
> > groff command ".mc" with very strange results .
> 
> That's not just a groff request name, but an AT&T one.  Hard to imagine
> how that isn't a bug, or at least a deeply unwise practice.  People
> might want to use {g,}diffmk(1) on man pages, and trashing the mechanism
> for setting up the margin character defeats such usage.
> 
> Unfortunately man page authorship culture did not evolve in a direction
> such that people making changes to the formatter's environment (in the
> broad sense, not the *roff concept) put things back the way they found
> them.  Approximately every man page is written in the expectation that
> the formatter will exit once the last line of _this_ man page document
> is read.
> 
> Just like how you don't need to bother to free heap-allocated memory in
> your programs unless you think _you'll_ need it.  It's the free store!
> Grab as much as you want and forget about it!  When your process dies
> the OS will reclaim it all anyway, no harm, no foul.
> 
> It's no wonder Unix culture produced so many code cowboys.
> 
> > Font L is used in many entries, no clue what font this is, but I
> > convert to font CB. Please change to taste (see lines 130 onwards).
> 
> Good call.  `L` (presumably abbreviating "literal") was a latter-day
> Research Unix convention for font and macro names that I have not seen
> in materials originating outside the 1980s CSRC.  AT&T Documenter's
> Workbench (~1984-~1994), for example, did not appear to embrace it.
> 
> > Several pages use lower case macro names, i.e. ".th" rather than
> > ".TH".
> 
> Wow.  Those could be hangovers from pre-Seventh Edition Unix "man".
> But I thought Doug McIlroy got all of those ported/rewritten for Seventh
> Edition.
> 
> Nevertheless, at least System III,[2] v8, and v10 retained support for
> Sixth Edition style man pages.  For example:
> 
> $ head -n 5 v8/usr/lib/macros/an
> '''\"   PWB Manual Entry Macros - 1.36 of 11/11/80
> '''\"   Nroff/Troff Version     @(#)1.36
> .deth
> .tmwrong version of man entry macros - use -man6
> .ab
> 
> So be careful out there if you don't want Dave Mustaine to snarl at you!
> 
> > I have "fixed" a lot of the problems but there are still many warnings
> > when running groff. I have attached two parthes, one for the V10 man
> > pages, and one for prepare.pl. You should be able to produce a
> > "useful" book after applying these.
> > 
> > If you wish to see the fruits of my labour as a pdf, it is here:-
> > 
> > http://chuzzlewit.co.uk/UnixV10.pdf
> 
> This looks really good!  It's wonderful to see a working, useful
> navigation pane, and at least some internal hyperlinks are working.
> Some aren't, and at a glance it's not obvious to me why.  (It's not the
> first argument to `TH` being in shouting capitals that hoses things, and
> that's not practiced with 100% reliability anyway--see as80(1) and
> ld80(1), for example.)

I think these are outliers, written in 1977, and using macro calls I have 
never heard of (.s1, .s3, .i0, ...). If you look at the V10 patch for the man 
pages you will see heavy editing of these pages, mainly changing anything I 
did not understand to .LP, since, whatever they are, they definitely expected 
a line break!

The majority of hyperlinks are fine, but remember that AT&T did not have a 
nice .MR macro to identify hyperlinks. The LinuxManBook is fairly consistent 
in using:-

.BR name (section)

Where fortunately this corresponds to the filename.section, rather than what 
is in the .TH line. The V10 corpus mainly uses:-

.IR name (section)

Again ignoring the actual .TH entry, but unfortunately it is not as consistent 
and there are anomalies. The 80.out.5 page codes it this way:-

.SH "SEE ALSO"
"as80" (I), "ld80" (I), "nm80" (I)

It's not really giving me much chance!

> In fact those two pages are a weird in a few respects.  Obvious spelling
> errors on the one hand ("moduals"?), and the latter uses a really old
> Unix manual convention, identifying the section numbers with roman
> numerals.
> 
> Where modernization for PDF rendering purposes stops and the Research
> Tenth Edition Programmer's Manual, Volume 1 editorial effort begins anew
> may prove a difficult boundary to draw.

I have done my best with "difficult" source, I gave myself a pretty low target 
"produce something at least readable", rather than fidelity to how it would 
have looked printed in 1980. Manually working through the groff errors would 
certainly improve the finished product. I have attached my log.

Cheers 

Deri

> Regards,
> Branden
> 
> [1] One bad approach, IMO, would be to define all interface macros
>     except `TH` _inside_ its own definition.  Apart from being
>     super-disruptive for change tracking purposes, since it would touch
>     nearly every line in the macro file, I would expect this to be
>     harder to understand and maintain.  Nested macro definitions are
>     fully countenanced by the *roff language but not, I think, a widely
>     mastered technique.
> 
>     Better, I think, would be to define all interface macros using "long
>     names", like `an*SH`, and then have `TH` redeclare the public names
>     as aliases, as in `.als SH an*SH`.
> 
>     Care and testing would be required, as "andoc.tmac" uses the same
>     technique to permit switching between man(7) and mdoc(7) input.  I
>     am therefore not in a hurry to pick up this task, even though we do
>     already have automated tests to detect failure of such switching.
> 
> [2] But not, interestingly, System V.
>     https://github.com/ryanwoodsmall/oldsysv/


--nextPart1763073.EzofI0F45H
Content-Transfer-Encoding: 7Bit
Content-Type: text/html; charset="us-ascii"

<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
</head>
<body><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">On Monday, 17 February 2025 22:22:46 GMT G. Branden Robinson wrote:</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; [CCing groff@gnu list because some problems arise here that merit being</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp; findable by search of its list archives]</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Hi Deri,</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; At 2025-02-17T18:52:46+0000, Deri wrote:</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; &gt; &nbsp;&nbsp;&nbsp; programs in constructed pipeline:</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; &gt; &nbsp;&nbsp;&nbsp; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; &gt; &nbsp;&nbsp;&nbsp; GNU grops (groff) version 1.23.0.2695-49927</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; &gt; &nbsp;&nbsp;&nbsp; GNU troff (groff) version 1.23.0.2695-49927</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; [...]</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; Since the v10 pages are intended to run on a version of troff with a</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; two character name limit (I think). Code such as &quot;.ne4&quot; cause a</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; problem for groff, which needs &quot;.ne 4&quot; to work (otherwise groff looks</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; for a macro called &quot;ne4&quot; and fails. Many of these issues are now</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; corrected.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; We do have compatibility mode to support old-style AT&amp;T troff input.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; troff(1):</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enable AT&amp;T troff compatibility mode; implies -c.&nbsp; See</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; groff_diff(7).</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; However...</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; [skipping ahead]</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; but changing some &quot;$&quot; to &quot;\[Do]&quot; fixed the problem.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; ...if you're doing that, you foreclose use of `\[Do]` for 2 reasons.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; 1.&nbsp; That syntax is a groff extension (the AT&amp;T troff form would be</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; `\(Do`)...but worse...</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; 2.&nbsp; `Do` is not a special character identifier generally recognized by</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; AT&amp;T-family troffs.&nbsp; And there's no way within the AT&amp;T *roff</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; language to define new ones.&nbsp; Fortunately, in Kernighan troff, it's</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; not hard to add them to font description files.&nbsp; As long as you have</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; superuser privileges.</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Hi Branden,</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">My prepare.pl is only supported for our groff, so I have no interest in making it compatible to AT&amp;T troffs.</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; A strange issue is that if a page contained a &quot;$&quot; character it sent</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; eqn into the stratosphere (thinking was dealing with an inline</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; equation), I killed it when eqn chewed up over 24gb of memory. I have</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; no idea why, and it is not triggered by a single page containing a</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; &quot;$&quot;, so it must be triggered by something in an earlier man page which</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; triggers it, but changing some &quot;$&quot; to &quot;\[Do]&quot; fixed the problem.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; I surmise that this book building system either runs groff with the `-e`</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; option, or pipes the pages through eqn(1) explicitly, so that every page</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; gets preprocessed by eqn.&nbsp; That's not wrong--in fact it's probably the</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; sanest thing to do--but it does expose you to scenarios like this.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; I'd bet a U.S. 50-cent piece that some page had this in it:</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; .EQ</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; ...</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; delim $$</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; ...</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; .EN</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; and then never did this later:</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; .EQ</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; ...</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; delim off</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; ...</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; .EN</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; ...because who ever formats more than one man page at a time?</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; So upon encountering a `$` in an eqnless man page later, the eqn</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; preprocessor would indeed then start gobbling up the entire remainder of</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; the input for attempted conversion to troff input.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; GNU eqn added an option that strongly mitigates this and another</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; problem:</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; eqn(1):</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -N&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Prohibit newlines within delimiters, allowing eqn to</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; recover better from missing closing delimiters.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; ...and the groff(1) front-end exposes it too, for convenience:</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; groff(1):</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -N&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Prohibit newlines between eqn delimiters: pass -N to</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; eqn(1).</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; ...however before reaching for this solution, the corpus of pages being</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; formatted needs to be audited to ensure that no multiline, inline use of</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; eqn is attempted.&nbsp; If it is, the pages must be altered to either:</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; 1.&nbsp; stop doing that--maybe by joining lines--enabling use of `-N`;</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; 2.&nbsp; migrate the &quot;inline&quot; math to EQ/EN bracketing (groff man(7) doesn't</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; define `EQ` and `EN` to set the math as a display, so this _should_</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; work okay), also enabling use of `-N`; or</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; 3.&nbsp; find the spot where `delim off` should have been and add it.</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Alex is in charge of the workflow pipeline, prepare.pl runs first and produces a [con]catenation (I remembered your preference :-) ) of all the man pages which is then run through all the pre-processors and groff -Z and finally gropdf. I'm tempted by your 3rd idea, since I am doing other &quot;fixes&quot; this is trivial to add, although adding -N is the simplest it does require what may be a difficult audit.</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; One page redefined the &quot;.P&quot; man macro, which then affects all</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; following man pages.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Naughty, naughty!&nbsp; I've wondered in the past about adding support for</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &quot;burning it all down and redefining all interface macros&quot; in groff's</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &quot;an.tmac&quot; (specifically when hitting a new `TH`).[1]&nbsp; But I decided that</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; people wouldn't believe me that this was a practical hazard.&nbsp; Thanks for</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; pointing me to a real-world case!&nbsp; :D</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; One page introduced a string register called &quot;mc&quot; which then masks the</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; groff command &quot;.mc&quot; with very strange results .</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; That's not just a groff request name, but an AT&amp;T one.&nbsp; Hard to imagine</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; how that isn't a bug, or at least a deeply unwise practice.&nbsp; People</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; might want to use {g,}diffmk(1) on man pages, and trashing the mechanism</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; for setting up the margin character defeats such usage.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Unfortunately man page authorship culture did not evolve in a direction</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; such that people making changes to the formatter's environment (in the</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; broad sense, not the *roff concept) put things back the way they found</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; them.&nbsp; Approximately every man page is written in the expectation that</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; the formatter will exit once the last line of _this_ man page document</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; is read.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Just like how you don't need to bother to free heap-allocated memory in</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; your programs unless you think _you'll_ need it.&nbsp; It's the free store!</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Grab as much as you want and forget about it!&nbsp; When your process dies</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; the OS will reclaim it all anyway, no harm, no foul.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; It's no wonder Unix culture produced so many code cowboys.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; Font L is used in many entries, no clue what font this is, but I</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; convert to font CB. Please change to taste (see lines 130 onwards).</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Good call.&nbsp; `L` (presumably abbreviating &quot;literal&quot;) was a latter-day</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Research Unix convention for font and macro names that I have not seen</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; in materials originating outside the 1980s CSRC.&nbsp; AT&amp;T Documenter's</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Workbench (~1984-~1994), for example, did not appear to embrace it.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; Several pages use lower case macro names, i.e. &quot;.th&quot; rather than</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; &quot;.TH&quot;.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Wow.&nbsp; Those could be hangovers from pre-Seventh Edition Unix &quot;man&quot;.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; But I thought Doug McIlroy got all of those ported/rewritten for Seventh</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Edition.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Nevertheless, at least System III,[2] v8, and v10 retained support for</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Sixth Edition style man pages.&nbsp; For example:</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; $ head -n 5 v8/usr/lib/macros/an</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; '''\&quot;&nbsp;&nbsp; PWB Manual Entry Macros - 1.36 of 11/11/80</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; '''\&quot;&nbsp;&nbsp; Nroff/Troff Version&nbsp;&nbsp;&nbsp;&nbsp; @(#)1.36</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; .deth</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; .tmwrong version of man entry macros - use -man6</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; .ab</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; So be careful out there if you don't want Dave Mustaine to snarl at you!</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; I have &quot;fixed&quot; a lot of the problems but there are still many warnings</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; when running groff. I have attached two parthes, one for the V10 man</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; pages, and one for prepare.pl. You should be able to produce a</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; &quot;useful&quot; book after applying these.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; If you wish to see the fruits of my labour as a pdf, it is here:-</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; http://chuzzlewit.co.uk/UnixV10.pdf</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; This looks really good!&nbsp; It's wonderful to see a working, useful</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; navigation pane, and at least some internal hyperlinks are working.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Some aren't, and at a glance it's not obvious to me why.&nbsp; (It's not the</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; first argument to `TH` being in shouting capitals that hoses things, and</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; that's not practiced with 100% reliability anyway--see as80(1) and</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; ld80(1), for example.)</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">I think these are outliers, written in 1977, and using macro calls I have never heard of (.s1, .s3, .i0, ...). If you look at the V10 patch for the man pages you will see heavy editing of these pages, mainly changing anything I did not understand to .LP, since, whatever they are, they definitely expected a line break!</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">The majority of hyperlinks are fine, but remember that AT&amp;T did not have a nice .MR macro to identify hyperlinks. The LinuxManBook is fairly consistent in using:-</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">.BR name (section)</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Where fortunately this corresponds to the filename.section, rather than what is in the .TH line. The V10 corpus mainly uses:-</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">.IR name (section)</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Again ignoring the actual .TH entry, but unfortunately it is not as consistent and there are anomalies. The 80.out.5 page codes it this way:-</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">.SH &quot;SEE ALSO&quot;</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&quot;as80&quot; (I), &quot;ld80&quot; (I), &quot;nm80&quot; (I)</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">It's not really giving me much chance!</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; In fact those two pages are a weird in a few respects.&nbsp; Obvious spelling</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; errors on the one hand (&quot;moduals&quot;?), and the latter uses a really old</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Unix manual convention, identifying the section numbers with roman</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; numerals.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Where modernization for PDF rendering purposes stops and the Research</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Tenth Edition Programmer's Manual, Volume 1 editorial effort begins anew</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; may prove a difficult boundary to draw.</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">I have done my best with &quot;difficult&quot; source, I gave myself a pretty low target &quot;produce something at least readable&quot;, rather than fidelity to how it would have looked printed in 1980. Manually working through the groff errors would certainly improve the finished product. I have attached my log.</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Cheers </p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Deri</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Regards,</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; Branden</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; [1] One bad approach, IMO, would be to define all interface macros</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; except `TH` _inside_ its own definition.&nbsp; Apart from being</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; super-disruptive for change tracking purposes, since it would touch</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; nearly every line in the macro file, I would expect this to be</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; harder to understand and maintain.&nbsp; Nested macro definitions are</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; fully countenanced by the *roff language but not, I think, a widely</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; mastered technique.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; Better, I think, would be to define all interface macros using &quot;long</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; names&quot;, like `an*SH`, and then have `TH` redeclare the public names</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; as aliases, as in `.als SH an*SH`.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; Care and testing would be required, as &quot;andoc.tmac&quot; uses the same</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; technique to permit switching between man(7) and mdoc(7) input.&nbsp; I</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; am therefore not in a hurry to pick up this task, even though we do</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; already have automated tests to detect failure of such switching.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; [2] But not, interestingly, System V.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt;&nbsp;&nbsp;&nbsp;&nbsp; https://github.com/ryanwoodsmall/oldsysv/</p>
<br /><br /></body>
</html>
--nextPart1763073.EzofI0F45H--

--nextPart6752776.WOMb1dXTlo
Content-Disposition: attachment; filename="t.log"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-log; charset="x-UTF_8J"; name="t.log"

troff:<standard input>:38: error: cannot load font 'TinosR' to mark it as special
an.tmac:apsend.1:47: warning: cannot nest .TP or .TQ inside .TP; supply a tag
an.tmac:at.1:92: warning: cannot nest .TP or .TQ inside .TP; supply a tag
troff:awk.1:77: warning: font name 'CW' is deprecated
troff:bcp.1:51: warning: character with input code 12 not defined
an.tmac:calendar.1:100: warning: cannot nest .TP or .TQ inside .TP; supply a tag
an.tmac:calendar.1:102: warning: cannot nest .TP or .TQ inside .TP; supply a tag
an.tmac:calendar.1:104: warning: cannot nest .TP or .TQ inside .TP; supply a tag
an.tmac:cbt.1:137: warning: cannot nest .TP or .TQ inside .TP; supply a tag
an.tmac:cbt.1:139: warning: cannot nest .TP or .TQ inside .TP; supply a tag
troff:cu.1:131: warning: expected numeric expression, got character '`'
troff:dag.1:100: warning: name 'BIwidth' not defined (possibly missing space after 'BI')
an.tmac:dag.1:101: warning: cannot nest .TP or .TQ inside .TP; supply a tag
troff:ftp.1:458: warning: cannot select font '\'
troff:gcc.1:500: error: a space character is not allowed in an escape sequence argument
troff:ideal.1:350: warning: name '..width' not defined (possibly missing space after '..')
troff:ideal.1:351: warning: name '..libfile' not defined (possibly missing space after '..')
troff:ideal.1:352: warning: name '..minx' not defined (possibly missing space after '..')
troff:ld80.1:105: error: cannot clear diversion trap when not diverting output
troff:memo.1:22: error: unterminated transparent embedding escape sequence
troff:mkstr.1:86: warning: name '..SH' not defined (possibly missing space after '..')
troff:mkstr.1:87: warning: name '..All' not defined (possibly missing space after '..')
troff:nm80.1:11: warning: expected numeric expression, got character 'N'
troff:sml.1:44: warning: expected numeric expression, got character 'e'
troff:snocone.1:218: warning: expected numeric expression, got character 'P'
troff:snocone.1:237: warning: expected numeric expression, got character 'I'
troff:splitrules.1:2: error: cannot open '/usr/man/man1/splitinf.1': No such file or directory
troff:tbl.1:271: warning: name 'sp3' not defined (possibly missing space after 'sp')
troff:gplot.1g:3: error: cannot load font 'G' for mounting
troff:pins.1g:0: error: cannot open 'CDL': No such file or directory
troff:pins.1g:24: warning: name 'sp.5' not defined (possibly missing space after 'sp')
troff:vtimes.2v:26: warning: expected numeric expression, got character 't'
troff:erf.3:39: warning: character with input code 4 not defined
troff:manip.3:112: warning: expected numeric expression, got character 'o'
troff:sbuf.prot.3:193: warning: expected numeric expression, got character 'e'
troff:strstream.3:64: warning: expected numeric expression, got character 't'
troff:plot.5:373: warning: expected numeric expression, got character 'd'
troff:ipa.6:0: error: cannot load font 'P1' from file 'IPA1' for mounting
troff:ipa.6:1: error: cannot load font 'P2' from file 'IPA2' for mounting
troff:ipa.6:39: warning: cannot select font 'L'
troff:ipa.6:39: warning: cannot select font 'L'
troff:ipa.6:39: warning: cannot select font 'L'
troff:ipa.6:39: warning: cannot select font 'L'
troff:ipa.6:39: warning: cannot select font 'L'
troff:ipa.6:40: warning: cannot select font 'L'
troff:ipa.6:40: warning: cannot select font 'L'
troff:ipa.6:40: warning: cannot select font 'L'
troff:ipa.6:40: warning: cannot select font 'L'
troff:ipa.6:40: warning: cannot select font 'L'
troff:ipa.6:41: warning: cannot select font 'L'
troff:ipa.6:41: warning: cannot select font 'L'
troff:ipa.6:41: warning: cannot select font 'L'
troff:ipa.6:41: warning: cannot select font 'L'
troff:ipa.6:41: warning: cannot select font 'L'
troff:ipa.6:42: warning: cannot select font 'L'
troff:ipa.6:42: warning: cannot select font 'L'
troff:ipa.6:42: warning: cannot select font 'L'
troff:ipa.6:42: warning: cannot select font 'L'
troff:ipa.6:42: warning: cannot select font 'L'
troff:ipa.6:43: warning: cannot select font 'L'
troff:ipa.6:43: warning: cannot select font 'L'
troff:ipa.6:43: warning: cannot select font 'L'
troff:ipa.6:43: warning: cannot select font 'L'
troff:ipa.6:43: warning: cannot select font 'L'
troff:ipa.6:44: warning: cannot select font 'L'
troff:ipa.6:44: warning: cannot select font 'L'
troff:ipa.6:44: warning: cannot select font 'L'
troff:ipa.6:44: warning: cannot select font 'L'
troff:ipa.6:44: warning: cannot select font 'L'
troff:ipa.6:45: warning: cannot select font 'L'
troff:ipa.6:45: warning: cannot select font 'L'
troff:ipa.6:45: warning: cannot select font 'L'
troff:ipa.6:45: warning: cannot select font 'L'
troff:ipa.6:45: warning: cannot select font 'L'
troff:ipa.6:46: warning: cannot select font 'L'
troff:ipa.6:46: warning: cannot select font 'L'
troff:ipa.6:46: warning: cannot select font 'L'
troff:ipa.6:46: warning: cannot select font 'L'
troff:ipa.6:46: warning: cannot select font 'L'
troff:ipa.6:47: warning: cannot select font 'L'
troff:ipa.6:47: warning: cannot select font 'L'
troff:ipa.6:47: warning: cannot select font 'L'
troff:ipa.6:47: warning: cannot select font 'L'
troff:ipa.6:47: warning: cannot select font 'L'
troff:ipa.6:48: warning: cannot select font 'L'
troff:ipa.6:48: warning: cannot select font 'L'
troff:ipa.6:48: warning: cannot select font 'L'
troff:ipa.6:48: warning: cannot select font 'L'
troff:ipa.6:48: warning: cannot select font 'L'
troff:ipa.6:49: warning: cannot select font 'L'
troff:ipa.6:49: warning: cannot select font 'L'
troff:ipa.6:49: warning: cannot select font 'L'
troff:ipa.6:49: warning: cannot select font 'L'
troff:ipa.6:49: warning: cannot select font 'L'
troff:ipa.6:50: warning: cannot select font 'L'
troff:ipa.6:50: warning: cannot select font 'L'
troff:ipa.6:50: warning: cannot select font 'L'
troff:ipa.6:50: warning: cannot select font 'L'
troff:ipa.6:50: warning: cannot select font 'L'
troff:ipa.6:51: warning: cannot select font 'L'
troff:ipa.6:51: warning: cannot select font 'L'
troff:ipa.6:51: warning: cannot select font 'L'
troff:ipa.6:51: warning: cannot select font 'L'
troff:ipa.6:51: warning: cannot select font 'L'
troff:ipa.6:52: warning: cannot select font 'L'
troff:ipa.6:52: warning: cannot select font 'L'
troff:ipa.6:52: warning: cannot select font 'L'
troff:ipa.6:52: warning: cannot select font 'L'
troff:ipa.6:52: warning: cannot select font 'L'
troff:ipa.6:53: warning: cannot select font 'L'
troff:ipa.6:53: warning: cannot select font 'L'
troff:ipa.6:53: warning: cannot select font 'L'
troff:ipa.6:53: warning: cannot select font 'L'
troff:ipa.6:53: warning: cannot select font 'L'
troff:ipa.6:54: warning: cannot select font 'L'
troff:ipa.6:39: warning: cannot select font 'L'
troff:ipa.6:39: warning: cannot select font 'L'
troff:ipa.6:39: warning: cannot select font 'L'
troff:ipa.6:39: warning: cannot select font 'L'
troff:ipa.6:39: warning: cannot select font 'L'
troff:ipa.6:40: warning: cannot select font 'L'
troff:ipa.6:40: warning: cannot select font 'L'
troff:ipa.6:40: warning: cannot select font 'L'
troff:ipa.6:40: warning: cannot select font 'L'
troff:ipa.6:40: warning: cannot select font 'L'
troff:ipa.6:41: warning: cannot select font 'L'
troff:ipa.6:41: warning: cannot select font 'L'
troff:ipa.6:41: warning: cannot select font 'L'
troff:ipa.6:41: warning: cannot select font 'L'
troff:ipa.6:41: warning: cannot select font 'L'
troff:ipa.6:42: warning: cannot select font 'L'
troff:ipa.6:42: warning: cannot select font 'L'
troff:ipa.6:42: warning: cannot select font 'L'
troff:ipa.6:42: warning: cannot select font 'L'
troff:ipa.6:42: warning: cannot select font 'L'
troff:ipa.6:43: warning: cannot select font 'L'
troff:ipa.6:43: warning: cannot select font 'L'
troff:ipa.6:43: warning: cannot select font 'L'
troff:ipa.6:43: warning: cannot select font 'L'
troff:ipa.6:43: warning: cannot select font 'L'
troff:ipa.6:44: warning: cannot select font 'L'
troff:ipa.6:44: warning: cannot select font 'L'
troff:ipa.6:44: warning: cannot select font 'L'
troff:ipa.6:44: warning: cannot select font 'L'
troff:ipa.6:44: warning: cannot select font 'L'
troff:ipa.6:45: warning: cannot select font 'L'
troff:ipa.6:45: warning: cannot select font 'L'
troff:ipa.6:45: warning: cannot select font 'L'
troff:ipa.6:45: warning: cannot select font 'L'
troff:ipa.6:45: warning: cannot select font 'L'
troff:ipa.6:46: warning: cannot select font 'L'
troff:ipa.6:46: warning: cannot select font 'L'
troff:ipa.6:46: warning: cannot select font 'L'
troff:ipa.6:46: warning: cannot select font 'L'
troff:ipa.6:46: warning: cannot select font 'L'
troff:ipa.6:47: warning: cannot select font 'L'
troff:ipa.6:47: warning: cannot select font 'L'
troff:ipa.6:47: warning: cannot select font 'L'
troff:ipa.6:47: warning: cannot select font 'L'
troff:ipa.6:47: warning: cannot select font 'L'
troff:ipa.6:48: warning: cannot select font 'L'
troff:ipa.6:48: warning: cannot select font 'L'
troff:ipa.6:48: warning: cannot select font 'L'
troff:ipa.6:48: warning: cannot select font 'L'
troff:ipa.6:48: warning: cannot select font 'L'
troff:ipa.6:49: warning: cannot select font 'L'
troff:ipa.6:49: warning: cannot select font 'L'
troff:ipa.6:49: warning: cannot select font 'L'
troff:ipa.6:49: warning: cannot select font 'L'
troff:ipa.6:49: warning: cannot select font 'L'
troff:ipa.6:50: warning: cannot select font 'L'
troff:ipa.6:50: warning: cannot select font 'L'
troff:ipa.6:50: warning: cannot select font 'L'
troff:ipa.6:50: warning: cannot select font 'L'
troff:ipa.6:50: warning: cannot select font 'L'
troff:ipa.6:51: warning: cannot select font 'L'
troff:ipa.6:51: warning: cannot select font 'L'
troff:ipa.6:51: warning: cannot select font 'L'
troff:ipa.6:51: warning: cannot select font 'L'
troff:ipa.6:51: warning: cannot select font 'L'
troff:ipa.6:52: warning: cannot select font 'L'
troff:ipa.6:52: warning: cannot select font 'L'
troff:ipa.6:52: warning: cannot select font 'L'
troff:ipa.6:52: warning: cannot select font 'L'
troff:ipa.6:52: warning: cannot select font 'L'
troff:ipa.6:53: warning: cannot select font 'L'
troff:ipa.6:53: warning: cannot select font 'L'
troff:ipa.6:53: warning: cannot select font 'L'
troff:ipa.6:53: warning: cannot select font 'L'
troff:ipa.6:53: warning: cannot select font 'L'
troff:ipa.6:54: warning: cannot select font 'L'
troff:mbits.6:0: error: cannot open '/usr/lib/tmac/tmac.bits': No such file or directory
troff:mbits.6:68: error: system command execution request is not allowed in safer mode
troff:mbits.6:72: error: system command execution request is not allowed in safer mode
troff:mbits.6:76: error: system command execution request is not allowed in safer mode
troff:mbits.6:80: error: system command execution request is not allowed in safer mode
troff:mbits.6:84: error: system command execution request is not allowed in safer mode
troff:mbits.6:88: error: system command execution request is not allowed in safer mode
troff:mbits.6:95: error: system command execution request is not allowed in safer mode
troff:av.7:102: warning: expected numeric expression, got character 'u'
troff:scat.7:21: warning: name 'RB(' not defined (possibly missing space after 'RB')
troff:fstat.8:37: error: cannot clear diversion trap when not diverting output
troff:mkfs.8:118: warning: name 'sp5' not defined (possibly missing space after 'sp')
troff:svcmgr.8:316: warning: name '..SH' not defined (possibly missing space after '..')
troff:svcmgr.8:317: warning: name '..to' not defined (possibly missing space after '..')
troff:upas.8:208: warning: name 'EX#' not defined (possibly missing space after 'EX')
an.tmac:blitblt.9:27: warning: cannot nest .TP or .TQ inside .TP; supply a tag
troff:faced.9:26: warning: font name 'H' is deprecated
troff:jioctl.9:61: warning: expected numeric expression, got character '"'
troff:mds.10:62: warning: expected numeric expression, got character ','

--nextPart6752776.WOMb1dXTlo--




