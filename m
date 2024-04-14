Return-Path: <linux-man+bounces-756-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE388A43A9
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 17:58:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C1B531C20F47
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 15:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 035E5134CC6;
	Sun, 14 Apr 2024 15:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdG9mdoQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B844B4204F
	for <linux-man@vger.kernel.org>; Sun, 14 Apr 2024 15:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713110298; cv=none; b=qxyWICfDqrJo4FXbvy9prXO9qUbJKNdtkREzt+H6M9lhIDDibOAgrikk/NDO39wWe2U6/STa8zve2068ml2V51NczXPrVXTEIFLi/hp3SYl7V/cdStZg65WSbu7EffHRGSuDABL2q1LhJa/dAR9W8ZSFNdNu3YGhRqPzhrzTFko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713110298; c=relaxed/simple;
	bh=i9RbrGjsgg/owpcPqpgzxQUYqcCAQGwfgVCXY8gIfNs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RwjjSLtrglYli6uqtoh6FoVnQ66GkKT8jK3qKtg8IY2cdOaqK1p2DXor0+AM1FJX8vQnLIfXumFBb447YkYRE3mDkDuElg53WgK4wY9TfoHeGz6END2rMwDZQp//IKDQqyzc7v5zA3XMEyv2646sO883Cdz/0DvWFQezvOMwhhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdG9mdoQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37C50C072AA;
	Sun, 14 Apr 2024 15:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713110298;
	bh=i9RbrGjsgg/owpcPqpgzxQUYqcCAQGwfgVCXY8gIfNs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mdG9mdoQUOqFoiNYO5JdfEB4g0dV+GMzZjLIm09A09iNUTbscyTDGdETicWPTnJFv
	 bPbjaczABAMmCpBNNby5uU/4pFJW+nmo0cJvT4bXrJE9SXWFScvPeeRbNo1Aoajhb0
	 xY5RSSG9jWpVvRjWiasOclksUS925JorSRewzuQJyx3n+NpMNTidt9bzzRAKNGSDZn
	 fKgAT9jTSlaVOVWvAyQrPyE8wcxzXejbqnQJLeoo0EWajzqDG/ujtA+eBjCHRizAzR
	 PaFX7ue7TrQVzIfP16LIANjbAItcd/nKL5xfnU+1SuKkuvAZ7Fbh6UboBvpJghuB7J
	 wcVpilnnHvJ6g==
Date: Sun, 14 Apr 2024 17:58:09 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri James <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <Zhv9F9VuAi6qEQ2L@debian>
References: <ZhvLPvqHzpw2Jl3o@debian>
 <ZhvM2Yy6lWGJLhtg@debian>
 <20240414125653.h7y7y66yt7cgtgwm@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/742Q1V3z9khrIJA"
Content-Disposition: inline
In-Reply-To: <20240414125653.h7y7y66yt7cgtgwm@illithid>


--/742Q1V3z9khrIJA
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="TQ9U5IUj1wvd1vRT"
Content-Disposition: inline
Date: Sun, 14 Apr 2024 17:58:09 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri James <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book


--TQ9U5IUj1wvd1vRT
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Branden, Deri,

On Sun, Apr 14, 2024 at 07:56:53AM -0500, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2024-04-14T14:25:28+0200, Alejandro Colomar wrote:
> > On Sun, Apr 14, 2024 at 07:01:45AM -0500, G. Branden Robinson wrote:
> > > I've since refactored everything that hyperlinked book generation
> > > needed in that respect into groff's "an.tmac" (in Git), leaving the
> > > cover page to do only cover page things.
> > >=20
> > > https://git.savannah.gnu.org/cgit/groff.git/tree/doc/GMPfront.t.in
> >=20
> > Hmmm.  I notice that your cover page has a few things that we have as
> > part of the prepare.pl script:
> > <https://git.savannah.gnu.org/cgit/groff.git/tree/doc/GMPfront.t.in#n7>
> > <https://git.savannah.gnu.org/cgit/groff.git/tree/doc/GMPfront.t.in#n42>
> > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/share=
/mk/build/pdf/book/prepare.pl#n86>
> >=20
> > Maybe we could do the same, to reduce the work of prepare.pl?
>=20
> I didn't look closely at that complicated Perl script, but it seems
> likely.  Essentially, anything that didn't need to be parameterized
> (i.e., lines you write out with Perl but don't need to do any Perl
> variable interpolation in), I would keep in a plain text document.

I'd like to see how you build your book.

> > Our front page is also clean from an.tmac stuff.  We have the an.tmac
> > fork here:
> > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/share=
/mk/build/pdf/book/an.tmac>
>=20
> Might be worth diffing that with groff Git HEAD.

Attached are diffs against HEAD and against 1.23.0.

> > And the front page is:
> > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/share=
/mk/build/pdf/book/front.roff>
>=20
> Yup, that's pretty clean and focused.
>=20
> > However, our an.tmac is not for appending, but for replacing man(7).
> > :( I'd like to get rid of that an.tmac fork.  Does your message mean
> > that if I use groff git HEAD to build our book I can just drop the
> > fork and use man(7), and groff(1) will do the right thing?
>=20
> I think so, and want to know if it doesn't.  Also, fair warning, Deri
> said he observed a CRAZY bad performance regression when building the
> Linux man-pages book with groff Git HEAD.  If you can reproduce that,
> then I have some work to do.  Let me know.

Can't reproduce.  I've removed the an.tmac fork, and added -man to
troff(1)'s invocation, and get the same times.

$ time make build-pdf-book 2>/dev/null
GROPDF		.tmp/man-pages-6.7-53-g5125d867d.pdf

real	0m13.307s
user	0m16.229s
sys	0m0.481s

$ time make build-pdf-book 2>/dev/null
GROPDF		.tmp/man-pages-6.7-53-g5125d867d-dirty.pdf

real	0m13.564s
user	0m17.060s
sys	0m0.510s

(I've built all the dependencies before hand, so that only the PDF is
 built in these invocations.)
(The -dirty one uses -man.)

>=20
> > Also, what does .t mean (in GMPfront.t.in)?  I changed the file
> > extension to .roff (so, <front.roff>) in the Linux man-pages, as it's
> > just a roff(7) file.
>=20
> It was Deri's choice.  Some people have historically used the `t` suffix
> to indicate a "troff" file.  I don't employ that practice, personally,
> because it's also popular as a suffix for "test script", and troff
> documents can also be rendered with nroff.
>=20
> Personally, I use `.roff` for *roff documents I intend to be portable
> between AT&T/DWB troff and GNU troff, and `.groff` for ones that use GNU
> extensions.

Hmmm.  Does the front use GNU features?  Should I change the extension?

> At 2024-04-14T14:32:25+0200, Alejandro Colomar wrote:
> > Hmmmm.  Maybe I should follow v7's tradition and restart the page
> > number at each TH.  Let's call it an accidental improvement, and not a
> > regression.  :)
>=20
> I think it's a matter of taste.  This issue came up last month on the
> groff list.  As often happens with me, it turned into an episode of Unix
> History Detectives.  :-|
>=20
> https://lists.gnu.org/archive/html/groff/2024-03/msg00163.html

Hmmm.  Your obvservation about matching the PDF navigator makes sense.
Deri, was the removal of -rC1 on purpose?

> > Although it would be interesting to learn when/why this changed.
>=20
> The default has never changed in groff as far as I know, and I'm certain
> I haven't personally touched it--I'd remember writing the usual 20,000
> word essay with 2 dozen citations that usually accompanies my breaks
> with tradition.
>=20
> Regards,
> Branden

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--TQ9U5IUj1wvd1vRT
Content-Type: text/x-diff; charset=utf-8
Content-Disposition: attachment; filename="1.23.0.diff"

--- /home/alx/src/gnu/groff/1.23.0/tmac/an.tmac	2024-04-14 17:36:42.193578307 +0200
+++ /home/alx/src/linux/man-pages/man-pages/contrib/share/mk/build/pdf/book/an.tmac	2024-03-29 18:34:19.737411869 +0100
@@ -203,9 +203,25 @@
 .  ds an*section9 Kernel Developer's Manual\"
 ..
 .
+.de an*cln
+.  ds \\$1
+.  als an*cln:res \\$1
+.  shift
+.  ds an*cln:res \\$*\"
+.  ds an*cln:char \\*[an*cln:res]
+.  stringdown an*cln:res
+.  substring an*cln:char 0 0
+.  if '\\*[an*cln:char]'\%' .substring an*cln:res 1
+.  rm an*cln:char
+..
+.
 .\" Write a bookmark/anchor/link target $2 at hierarchical depth $1.
 .de an*bookmark
-.  if \\n[an*is-output-pdf] .pdfbookmark \\$1 \\$2
+.  if \\n[an*is-output-pdf] \{\
+.    if (\\n[.$]>2) .an*cln an*page-ref-nm \\$3\"
+.    ie (\\$1=1) .pdfbookmark -T "\\*[an*page-ref-nm]" \\$1 \\$2
+.    el .pdfbookmark \\$1 \\$2
+.  \}
 ..
 .
 .\" Begin man page.
@@ -293,7 +309,11 @@
 .    \" Simulate switch/case in roff.
 .          ie '\\$2'1' .ds an-extra3 \\*[an*section1]\"
 .    el \{.ie '\\$2'2' .ds an-extra3 \\*[an*section2]\"
+.    el \{.ie '\\$2'2type' .ds an-extra3 \\*[an*section2type]\"
 .    el \{.ie '\\$2'3' .ds an-extra3 \\*[an*section3]\"
+.    el \{.ie '\\$2'3const' .ds an-extra3 \\*[an*section3const]\"
+.    el \{.ie '\\$2'3head' .ds an-extra3 \\*[an*section3head]\"
+.    el \{.ie '\\$2'3type' .ds an-extra3 \\*[an*section3type]\"
 .    el \{.ie '\\$2'4' .ds an-extra3 \\*[an*section4]\"
 .    el \{.ie '\\$2'5' .ds an-extra3 \\*[an*section5]\"
 .    el \{.ie '\\$2'6' .ds an-extra3 \\*[an*section6]\"
@@ -301,7 +321,7 @@
 .    el \{.ie '\\$2'8' .ds an-extra3 \\*[an*section8]\"
 .    el \{.ie '\\$2'9' .ds an-extra3 \\*[an*section9]\"
 .    el                .ds an-extra3 \" empty
-.    \}\}\}\}\}\}\}\}
+.    \}\}\}\}\}\}\}\}\}\}\}\}
 .  \}
 .
 .  ds an-extra1 "\\$3\"
@@ -420,7 +440,7 @@
 .  ie \\n[cR] .pl +1v
 .  el         .sp .5i
 .  if !\\n[an*was-TH-bookmark-emitted] \{\
-.    an*bookmark 1 \E*[an*page-ref-string]
+.\" .    an*bookmark 2 \E*[an*page-ref-string]
 .    nr an*was-TH-bookmark-emitted 1
 .  \}
 .  tl '\\*[an-pageref]'\\*[an-extra3]'\\*[an-pageref]'
@@ -458,6 +478,8 @@
 .  \" PDF bookmarks.
 .  ds an*page-ref-string \\*[an*topic](\\*[an*section])\"
 .  ds an-pageref \\*[an*topic-abbv](\\*[an*section])\"
+.  an*cln an*page-ref-bm-nm \\*[an*topic]_\\*[an*section]\"
+.  stringdown an*page-ref-bm-nm
 .  nr an-header-width \\w'\\*[an-pageref]\\*[an-extra3]\\*[an-pageref]'
 .  while (\\n[an-header-width] >= \\n[.lt]) \{\
 .    \" The page topic is too long; trim some bits out of the middle.
@@ -695,8 +717,8 @@
 .  if \\n[.$] \{\
 .    ds an-section-heading \\$*\"
 .    if \\n[CS] .stringup an-section-heading
-.    an*bookmark 2 \E*[an-section-heading]
-.    nop \&\\*[an-section-heading]
+.    an*bookmark 3 "\\*[an-section-heading]"
+\&\\*[an-section-heading]
 .  \}
 .  if \\n[an-remap-I-style-in-headings] .ftr I I
 ..
@@ -721,7 +743,7 @@
 .  if \\n[an-remap-I-style-in-headings] .ftr I \\*[an-heading-family]BI
 .  if \\n[.$] \{\
 .    ds an*subsection-heading \\$*\"
-.    an*bookmark 3 \E*[an*subsection-heading]
+.    an*bookmark 4 "\\*[an*subsection-heading]"
 .    nop \&\\$*
 .  \}
 .  if \\n[an-remap-I-style-in-headings] .ftr I I
@@ -1169,30 +1191,45 @@
 .\" Set a man page cross reference.
 .\" .MR page-topic page-section [trailing-text]
 .de1 MR
-.  if ((\\n[.$] < 2) : (\\n[.$] > 3)) \
-.    an-style-warn .\\$0 expects 2 or 3 arguments, got \\n[.$]
-.  ds an*url man:\\$1(\\$2)\" used everywhere but macOS
-.  if (\\n[an*MR-URL-format] = 2) \
-.    ds an*url x-man-page://\\$2/\\$1\" macOS/Mac OS X since 10.3
-.  if (\\n[an*MR-URL-format] = 3) \
-.    ds an*url man:\\$1.\\$2\" Bwana (Mac OS X)
-.  if (\\n[an*MR-URL-format] = 4) \
-.    ds an*url x-man-doc://\\$2/\\$1\" ManOpen (Mac OS X pre-2005)
-.  nh
-.  if \\n[an*do-hyperlink] \{\
-.    if \\n[an*is-output-html] \
-.      nop \X^html:<a href="\\*[an*url]">^\c
-.    if \\n[an*is-output-terminal] \
-.      nop \X^tty: link \\*[an*url]^\c
-.  \}
-.      nop \&\\*[an-lic]\f[\\*[MF]]\\$1\\*[an-ic]\f[R](\\$2)\c
-.  if \\n[an*do-hyperlink] \{\
-.    if \\n[an*is-output-html] \
-.      nop \X^html:</a>^\c
-.    if \\n[an*is-output-terminal] \
-.      nop \X^tty: link^\c
+.  if ((\\n[.$] < 2) : (\\n[.$] > 4)) \
+.    an-style-warn .\\$0 expects 2 to 4 arguments, got \\n[.$]
+.  ie \\n[an*is-output-pdf] \{\
+.    nh
+.    ds an*title \\\\$4
+.    if '\\\\*[an*title]'' .ds an*title \\\\$1
+.    ie \\n(.$=1 \
+.      I \\$1
+.    el \{\
+.      an*cln an*page-ref-nm \\*[an*title]_\\$2
+.      ie d pdf:look(\\*[an*page-ref-nm]) .pdfhref L -D \\*[an*page-ref-nm] -A "\\$3" -- \fI\\$1\fP(\\$2)
+.      el .IR \\$1 (\\$2)\\$3
+.    \}
+.    hy \\n(mJ
+.  \}
+.  el \{\
+.    ds an*url man:\\$1(\\$2)\" used everywhere but macOS
+.    if (\\n[an*MR-URL-format] = 2) \
+.      ds an*url x-man-page://\\$2/\\$1\" macOS/Mac OS X since 10.3
+.    if (\\n[an*MR-URL-format] = 3) \
+.      ds an*url man:\\$1.\\$2\" Bwana (Mac OS X)
+.    if (\\n[an*MR-URL-format] = 4) \
+.      ds an*url x-man-doc://\\$2/\\$1\" ManOpen (Mac OS X pre-2005)
+.    nh
+.    if \\n[an*do-hyperlink] \{\
+.      if \\n[an*is-output-html] \
+.        nop \X^html:<a href="\\*[an*url]">^\c
+.      if \\n[an*is-output-terminal] \
+.        nop \X^tty: link \\*[an*url]^\c
+.    \}
+.        nop \&\\*[an-lic]\f[\\*[MF]]\\$1\\*[an-ic]\f[R](\\$2)\c
+.    if \\n[an*do-hyperlink] \{\
+.      if \\n[an*is-output-html] \
+.        nop \X^html:</a>^\c
+.      if \\n[an*is-output-terminal] \
+.        nop \X^tty: link^\c
+.    \}
+.    nop \&\\$3
 .  \}
-.  nop \&\\$3
 .  hy \\n[an*hyphenation-mode]
 ..
 .
@@ -1294,7 +1331,7 @@
      : \n[an*is-output-terminal]) \
 .  nr an*can-hyperlink 1
 .
-.ds an*body-family T \" Times
+.ds an*body-family \n[.fam] \" Times
 .ds an*example-family C \" Courier
 .
 .\" Map monospaced fonts to standard styles for groff's nroff devices.

--TQ9U5IUj1wvd1vRT
Content-Type: text/x-diff; charset=utf-8
Content-Disposition: attachment; filename="HEAD.diff"
Content-Transfer-Encoding: quoted-printable

--- /home/alx/src/gnu/groff/master/tmac/an.tmac	2024-04-14 17:34:47.9727283=
99 +0200
+++ /home/alx/src/linux/man-pages/man-pages/contrib/share/mk/build/pdf/book=
/an.tmac	2024-03-29 18:34:19.737411869 +0100
@@ -1,6 +1,6 @@
 .\" groff implementation of man(7) package
 .\"
-.\" Copyright (C) 1989-2024 Free Software Foundation, Inc.
+.\" Copyright (C) 1989-2023 Free Software Foundation, Inc.
 .\"      Written by James Clark (jjc@jclark.com)
 .\" Enhanced by: Werner Lemberg <wl@gnu.org>
 .\"              Larry Kollar <kollar@alltel.net>
@@ -110,8 +110,6 @@
 .\" continuous rendering mode.
 .de1 an-end
 .  if !r an-TH-was-called .return
-.  an-input-trap
-.  if '\\n[.z]'an*paragraph-tag' .an*TP-trap
 .  if \\n[cR] \{\
 .    \" We might have a pending output line that is not yet broken, and
 .    \" also be 1v from the bottom of the page.  If we break (or flush)
@@ -130,14 +128,11 @@
 .      pl +1v
 .      nf
 .      ti 0
-.      nr an*rule-length (\\n[LL]u - 1n)
-.      nop \D'l \\n[an*rule-length]u 0'
-.      rr an*rule-length
+.      nop \D'l \\n[LL]u 0'
 .      fi
 .    \}
 .  \}
 .  rr an-TH-was-called
-.  ds an*previous-page-ref-string \" empty
 .  ch an-header
 .  an*break-page-with-new-number
 ..
@@ -148,6 +143,7 @@
 .  rn bp an-real-bp
 .  rn an-ne ne
 .  rn an-bp bp
+.  em an-end
 ..
 .
 .de an*reset-hyphenation-mode
@@ -170,17 +166,14 @@
 .de an-reset-paragraph-spacing
 .  ie \\n[.$] .nr PD (v;\\$1)
 .  el         .nr PD (.4v >? \n[.V])
-.  \" Restore spacing to handle a "belated" `PD` call immediately after
-.  \" a paragraphing macro (`P`, `HP`, or `IP` with no marker argument).
-.  rs
 ..
 .
 .de an-reset-margin-and-inset-level
 .  nr an-inset-level 1
-.  nr an-margin \\n[BP]
-.  nr an-saved-margin!1 \\n[BP]
+.  nr an-margin \\n[IN]
+.  nr an-saved-margin1 \\n[IN]
 .  nr an-prevailing-indent \\n[IN]
-.  nr an-saved-prevailing-indent!1 \\n[IN]
+.  nr an-saved-prevailing-indent1 \\n[IN]
 ..
 .
 .\" Break the page and update its number depending on the C (consecutive
@@ -210,33 +203,27 @@
 .  ds an*section9 Kernel Developer's Manual\"
 ..
 .
-.\" Customize this at the command line to, for example, group multiple
-.\" man pages within a collection or containing document.
-.nr an*bookmark-base-level 0
+.de an*cln
+.  ds \\$1
+.  als an*cln:res \\$1
+.  shift
+.  ds an*cln:res \\$*\"
+.  ds an*cln:char \\*[an*cln:res]
+.  stringdown an*cln:res
+.  substring an*cln:char 0 0
+.  if '\\*[an*cln:char]'\%' .substring an*cln:res 1
+.  rm an*cln:char
+..
 .
 .\" Write a bookmark/anchor/link target $2 at hierarchical depth $1.
 .de an*bookmark
-.  an*bookmark*\*[.T] \\$@
-..
-.
-.ds an*bookmark*ascii \" empty
-.ds an*bookmark*cp1047 \" empty
-.ds an*bookmark*dvi \" empty
-.ds an*bookmark*html \" empty
-.ds an*bookmark*latin1 \" empty
-.ds an*bookmark*lbp \" empty
-.ds an*bookmark*lj4 \" empty
-.ds an*bookmark*ps \" empty
-.ds an*bookmark*utf8 \" empty
-.
-.de an*bookmark*pdf
-.  ie (\\$1 =3D 1) \
-.    pdfbookmark -T "\\$2" \\$1 \\$2
-.  el \
-.    pdfbookmark \\$1 \\$2
+.  if \\n[an*is-output-pdf] \{\
+.    if (\\n[.$]>2) .an*cln an*page-ref-nm \\$3\"
+.    ie (\\$1=3D1) .pdfbookmark -T "\\*[an*page-ref-nm]" \\$1 \\$2
+.    el .pdfbookmark \\$1 \\$2
+.  \}
 ..
 .
-.
 .\" Begin man page.
 .\" .TH topic section[ extra1[ extra2[ extra3]]]
 .de1 TH
@@ -291,7 +278,7 @@
 .  \}
 .
 .  \" The previous document rendered in a batch may have been in a
-.  \" different language.
+.  \" different language.  If this one is in English, (re-)init strings.
 .  if '\\*[locale]'english' .an*localize-strings
 .
 .  ps \\n[PS]u
@@ -308,11 +295,11 @@
 .  an-reset-paragraph-spacing
 .  an-reset-margin-and-inset-level
 .
+.  nr an-tag-separation 1n
 .  nr an-need-no-space-mode 0
 .  nr an-need-break 0
-.  nr an*have-paragraph-tag 0
+.  nr an-is-in-diversion 0
 .  nr an*is-in-example 0
-.  nr an*is-in-link-text-diversion 0
 .
 .  ds an*topic "\\$1\"
 .  if \\n[CT] .stringup an*topic
@@ -322,7 +309,11 @@
 .    \" Simulate switch/case in roff.
 .          ie '\\$2'1' .ds an-extra3 \\*[an*section1]\"
 .    el \{.ie '\\$2'2' .ds an-extra3 \\*[an*section2]\"
+.    el \{.ie '\\$2'2type' .ds an-extra3 \\*[an*section2type]\"
 .    el \{.ie '\\$2'3' .ds an-extra3 \\*[an*section3]\"
+.    el \{.ie '\\$2'3const' .ds an-extra3 \\*[an*section3const]\"
+.    el \{.ie '\\$2'3head' .ds an-extra3 \\*[an*section3head]\"
+.    el \{.ie '\\$2'3type' .ds an-extra3 \\*[an*section3type]\"
 .    el \{.ie '\\$2'4' .ds an-extra3 \\*[an*section4]\"
 .    el \{.ie '\\$2'5' .ds an-extra3 \\*[an*section5]\"
 .    el \{.ie '\\$2'6' .ds an-extra3 \\*[an*section6]\"
@@ -330,7 +321,7 @@
 .    el \{.ie '\\$2'8' .ds an-extra3 \\*[an*section8]\"
 .    el \{.ie '\\$2'9' .ds an-extra3 \\*[an*section9]\"
 .    el                .ds an-extra3 \" empty
-.    \}\}\}\}\}\}\}\}
+.    \}\}\}\}\}\}\}\}\}\}\}\}
 .  \}
 .
 .  ds an-extra1 "\\$3\"
@@ -376,19 +367,21 @@
 .    DEVTAG-EO-TL
 .  \}
 .
+.  \" A bookmark is attached to the page header, but only on the first
+.  \" page of the document.
+.  nr an*was-TH-bookmark-emitted 0
 .  an-header
 .
 .  if !\\n[cR] \{\
 .    wh 0 an-header
 .    ie r FT .nr an*footer-location \\n[FT]
-.    el      .nr an*footer-location (-.5i - 1v)
+.    el      .nr an*footer-location (-.5i)
 .    wh \\n[an*footer-location]u an-footer
 .    wh (\\n[an*footer-location]u - .5i) an-break-body-text
 .    rr an*footer-location
 .    \}
 .  \}
 .
-.  em an-end
 .  nr an*need-titles-reset 1
 ..
 .
@@ -445,20 +438,17 @@
 .if d PT .ig
 .de1 PT
 .  ie \\n[cR] .pl +1v
-.  el         .sp (.5i - .5m)
-.  \" Attach a bookmark to the page header on the first page of a new
-.  \" man(7) document; a changed identifier and section indicates this.
-.  if !'\\*[an*page-ref-string]'\\*[an*previous-page-ref-string]' \{\
-.    nr an*bookmark-level (\\n[an*bookmark-base-level] + 1)
-.    an*bookmark \\n[an*bookmark-level]  "\\*[an*page-ref-string]"
-.    ds an*previous-page-ref-string "\\*[an*page-ref-string]
+.  el         .sp .5i
+.  if !\\n[an*was-TH-bookmark-emitted] \{\
+.\" .    an*bookmark 2 \E*[an*page-ref-string]
+.    nr an*was-TH-bookmark-emitted 1
 .  \}
 .  tl '\\*[an-pageref]'\\*[an-extra3]'\\*[an-pageref]'
 .  ie \\n[cR] \{\
 .    pl +1v
 .    sp 1v
 .  \}
-.  el .sp |(1i - 1m)
+.  el .sp |1i
 ..
 .
 .\" Write the page footer; can be redefined by man.local.
@@ -488,6 +478,8 @@
 .  \" PDF bookmarks.
 .  ds an*page-ref-string \\*[an*topic](\\*[an*section])\"
 .  ds an-pageref \\*[an*topic-abbv](\\*[an*section])\"
+.  an*cln an*page-ref-bm-nm \\*[an*topic]_\\*[an*section]\"
+.  stringdown an*page-ref-bm-nm
 .  nr an-header-width \\w'\\*[an-pageref]\\*[an-extra3]\\*[an-pageref]'
 .  while (\\n[an-header-width] >=3D \\n[.lt]) \{\
 .    \" The page topic is too long; trim some bits out of the middle.
@@ -537,9 +529,9 @@
 .  while (\\n[an*index] < \\n[an*max-index]) \{\
 .    ds an*char \\$*
 .    substring an*char \\n[an*index] \\n[an*index]
-.    ec =7F
+.    ec @
 .    \" Use a weird delimiter to reduce lexical colorizer confusion.
-.    if _=7F*[an*char]_\\_ .nr an*string-contains-backslash 1
+.    if _@*[an*char]_\\_ .nr an*string-contains-backslash 1
 .    ec
 .    if \\n[an*string-contains-backslash] .break
 .    nr an*index +1
@@ -616,7 +608,6 @@
 .  PT
 .  ev
 .  ns
-.  if '\*[.T]'pdf' .pdfmarkrestart
 ..
 .
 .\" Schedule a page break when the next output line is written (not
@@ -628,7 +619,6 @@
 .\" Prepare the footer for a page of the document.
 .de1 an-footer
 .  if \\n[an-suppress-header-and-footer] .return
-.  if '\*[.T]'pdf' .pdfmarksuspend
 .  ev an*env-header-and-footer
 .  ie \\n[cR] \
 .    ds an*ofoot "\\*[an-pageref]\"
@@ -649,9 +639,14 @@
 .\" Output the tag of a tagged paragraph, or of an indented paragraph
 .\" (IP) that has a tag.  Whether we break depends on the tag width.
 .de an-write-paragraph-tag
+.  br
+.  di
+.  ad \\*[AD]
+.  nr an-is-in-diversion 0
+.  ll
 .  \" We must emit the diversion in a separate environment to ensure
 .  \" that a possible margin character is printed correctly.
-.  ev an*temporary-env
+.  ev an-env-paragraph-tag
 .  evc 0
 .  mc
 .  nf
@@ -660,12 +655,9 @@
 .  ne (2v + 1u)
 .  \" Does the tag fit within the paragraph indentation?
 .  nr an-tag-fits \
-     (\\n[dl] + (\\n[TS]*\\n[an*enforce-tag-separation]) \
-        <=3D \\n[an-prevailing-indent])
+     (\\n[dl] + \\n[an-tag-separation] <=3D \\n[an-prevailing-indent])
 .  if \\n[an-tag-fits] .DEVTAG-COL 1
-.  an*paragraph-tag
-.  rm an*paragraph-tag
-.  nr an*have-paragraph-tag 0
+.  an-div
 .  if \\n[an-tag-fits] .sp -1v
 .  ev
 .  in (\\n[an-margin]u + \\n[an-prevailing-indent]u)
@@ -674,8 +666,8 @@
 ..
 .
 .\" Handle macros that may take an "argument" on the next input line
-.\" producing written or drawn output: .SH, .SS, .B, .I, .SM, .SB.
-.\" For .TP, see below.
+.\" producing written or drawn output: .SH, .SS, .B, .I, .SM, .SB--and
+.\" .TP, which does so mandatorily.
 .de1 an-input-trap
 .  if \\n[an-devtag-needs-end-of-heading] .DEVTAG-EO-H
 .  nr an-devtag-needs-end-of-heading 0
@@ -692,24 +684,7 @@
 .    ns
 .    nr an-need-no-space-mode 0
 .  \}
-.  \" Handle nested traps, as with
-.  \"   .TP
-.  \"   .B foo
-.  \" for instance.
-.  if '\\n[.z]'an*paragraph-tag' \{\
-.    an*TP-trap
-.    gcolor \m[default]
-.  \}
-..
-.
-.\" The TP macro _requires_ a one-line input trap.
-.de1 an*TP-trap
-.  br
-.  di
-.  ad \\n[an*saved-adjustment-mode]
-.  rr an*saved-adjustment-mode
-.  ll
-.  if \\n[an*have-paragraph-tag] .an-write-paragraph-tag
+.  if \\n[an-is-in-diversion] .an-write-paragraph-tag
 ..
 .
 .\" Break a paragraph.  Restore defaults, except for indentation.
@@ -728,7 +703,7 @@
 .  an-break-paragraph
 .  an-reset-margin-and-inset-level
 .  fi
-.  in \\n[BP]u
+.  in \\n[an-margin]u
 .  ti 0
 .  nr an-devtag-needs-end-of-heading 1
 .  DEVTAG-SH 1
@@ -741,11 +716,10 @@
 .  if \\n[an-remap-I-style-in-headings] .ftr I \\*[an-heading-family]BI
 .  if \\n[.$] \{\
 .    ds an-section-heading \\$*\"
-.    if \\n[CS] \
-.      stringup an-section-heading
-.    nr an*bookmark-level (\\n[an*bookmark-base-level] + 2)
-.    an*bookmark \\n[an*bookmark-level] "\\*[an-section-heading]"
-.    nop \&\\*[an-section-heading]
+.    if \\n[CS] .stringup an-section-heading
+.    an*bookmark 3 "\\*[an-section-heading]"
+\&\\*[an-section-heading]
+.  \}
 .  if \\n[an-remap-I-style-in-headings] .ftr I I
 ..
 .
@@ -756,7 +730,7 @@
 .  an-break-paragraph
 .  an-reset-margin-and-inset-level
 .  fi
-.  in \\n[BP]u
+.  in \\n[IN]u
 .  ti \\n[SN]u
 .  nr an-devtag-needs-end-of-heading 1
 .  DEVTAG-SH 2
@@ -769,8 +743,7 @@
 .  if \\n[an-remap-I-style-in-headings] .ftr I \\*[an-heading-family]BI
 .  if \\n[.$] \{\
 .    ds an*subsection-heading \\$*\"
-.    nr an*bookmark-level (\\n[an*bookmark-base-level] + 3)
-.    an*bookmark \\n[an*bookmark-level] "\\*[an*subsection-heading]"
+.    an*bookmark 4 "\\*[an*subsection-heading]"
 .    nop \&\\$*
 .  \}
 .  if \\n[an-remap-I-style-in-headings] .ftr I I
@@ -800,24 +773,9 @@
 .  if \\n[.$] \&\\$*
 ..
 .
-.\" Deprecated: Set arguments (or next input line producing written or
-.\" drawn output if none) in bold style at smaller type size.
-.\"
-.\" This is a SunOS 4.0 extension.
-.\"
-.\" Instead of
-.\"   .SB whatever
-.\" say
-.\"   .SM
-.\"   .B whatever
-.\" or
-.\"   .B
-.\"   .SM whatever
-.\" to portably get an identical effect.
-.\"
-.\" .SB [text]
+.\" Set arguments (or next input line producing written or drawn output
+.\" if none) in bold style at smaller type size.
 .de1 SB
-.  nop \\*[an-deprecation-warn]\\
 .  it 1 an-input-trap
 .  ps -1
 .  ft B
@@ -841,23 +799,19 @@
 .de1 TP
 .  an-break-paragraph
 .  if \\n[.$] .nr an-prevailing-indent (n;\\$1)
-.  if '\\n[.z]'an*paragraph-tag' \{\
-.    an-warn cannot nest .\\$0 or .TQ inside .\\$0; supply a tag
-.    return
-.  \}
-.  nr an*have-paragraph-tag 1
 .  itc 1 an-input-trap
 .  in 0
-.  ll -\\n[an-margin]u
-.  nr an*saved-adjustment-mode \\n[.j]
-.  di an*paragraph-tag
-.  na
+.  if !\\n[an-is-in-diversion] \{\
+.    ll -\\n[an-margin]u
+.    di an-div
+.    na
+.  \}
+.  nr an-is-in-diversion 1
 ..
 .
 .\" Set an indented paragraph.
 .\" .IP [marker[ indentation-amount]]
 .de1 IP
-.  nr an*enforce-tag-separation 0
 .  an-break-paragraph
 .  ie !\\n[.$] \{\
 .    ne (1v + 1u)
@@ -868,13 +822,12 @@
 .    el               .TP
 .    nop \&\\$1
 .  \}
-.  nr an*enforce-tag-separation 1
 ..
 .
 .\" Set a paragraph with a hanging indentation.
 .\" .HP [indent]
 .de1 HP
-.  if !\\n[mS] \\*[an-deprecation-warn]\\
+.  if !\\n[mS] \\*[an-deprecation-warn]\c
 .  an-break-paragraph
 .  ne (1v + 1u)
 .  if \\n[.$] .nr an-prevailing-indent (n;\\$1)
@@ -1019,8 +972,8 @@
 .\" Start a relative inset level (by the amount given in the argument).
 .\" .RS [inset-amount]
 .de1 RS
-.  nr an-saved-margin!\\n[an-inset-level] \\n[an-margin]
-.  nr an-saved-prevailing-indent!\\n[an-inset-level] \
+.  nr an-saved-margin\\n[an-inset-level] \\n[an-margin]
+.  nr an-saved-prevailing-indent\\n[an-inset-level] \
      \\n[an-prevailing-indent]
 .  ie \\n[.$] .nr an-margin +(n;\\$1)
 .  el         .nr an-margin +\\n[an-prevailing-indent]
@@ -1051,19 +1004,14 @@
 .  ie \\n[.$] .nr an-inset-level ((;\\$1) <? \\n[an-inset-level])
 .  el         .nr an-inset-level -1
 .  nr an-inset-level (1 >? \\n[an-inset-level])
-.  nr an-margin \\n[an-saved-margin!\\n[an-inset-level]]
+.  nr an-margin \\n[an-saved-margin\\n[an-inset-level]]
 .  nr an-prevailing-indent \
-     \\n[an-saved-prevailing-indent!\\n[an-inset-level]]
+     \\n[an-saved-prevailing-indent\\n[an-inset-level]]
 .  in \\n[an-margin]u
 ..
 .
 .\" Deprecated: Style an option with an argument (mandatory if
 .\" specified) for a command synopsis.
-.\"
-.\" This is a Documenter's Workbench troff extension.  It is not
-.\" flexible enough to handle GNU-style options like
-.\" `--input=3Dfile-name`.  Use font alternation macros instead.
-.\"
 .\" .OP flag [option-parameter]
 .de1 OP
 .  nop \\*[an-deprecation-warn]\\
@@ -1087,29 +1035,16 @@
 .  nr an*saved-paragraph-distance \\n[PD]
 .  nr PD 1v
 .  nf
-.  nr an*unmap-fonts 0
 .  \" If using the DVI output device, we have no constant-width fonts of
 .  \" bold weight and, relatedly, no constant-width family (because that
 .  \" requires all four styles).  Remap the bold styles to normal ones.
-.  \"
-.  \" Use the "switch/case" style of nested `ie`/`el` requests.
-.        ie '\*[.T]'dvi' \{\
+.  ie '\*[.T]'dvi' \{\
 .    ftr R CW
 .    ftr B CW
 .    ftr I CWI
 .    ftr BI CWI
-.    nr an*unmap-fonts 1
-.  \}
-.  \" The LBP output device lacks a Courier bold-italic face.
-.  el \{.ie '\*[.T]'lbp' \{\
-.    ftr R CR
-.    ftr B CB
-.    ftr I CI
-.    ftr BI CI
-.    nr an*unmap-fonts 1
-.  \}
-.  el                    .fam \\*[an*example-family]
 .  \}
+.  el .fam \\*[an*example-family]
 .  ft R
 .  nr an*is-in-example 1
 ..
@@ -1122,12 +1057,11 @@
 .    return
 .  \}
 .  \" Undo the remappings from `EX`.
-.  if \\n[an*unmap-fonts] \{\
+.  ie '\*[.T]'dvi' \{\
 .    ftr R
 .    ftr B
 .    ftr I
 .    ftr BI
-.    rr an*unmap-fonts
 .  \}
 .  fam \\*[an*saved-family]
 .  ft \\n[an*saved-font]
@@ -1141,20 +1075,22 @@
 .
 .\" Store the argument and begin a diversion for link text.
 .de an*begin-hyperlink
-.  ds an*hyperlink \\*[an*prefix]\\$1\"
-.  ds an*visible-hyperlink \\$1\" in case there is no link text
+.  ds an*hyperlink \\$1\"
 .  \" We want the diversion to format as if it has an indentation of
 .  \" zero (that comes for free when we switch environments), and we
-.  \" want the line length reduced by the amount of indentation in
-.  \" effect at the start of the link text.
+.  \" want the line length reduced by the amount of indentation that
+.  \" obtains when we output it.
 .  nr an*saved-line-length \\n[.l]
 .  nr an*saved-indentation \\n[.i]
-.  if \\n[an*do-hyperlink] \{\
+.  \" We can only hyperlink if we're not in a diversion.
+.  \" XXX: There's no fundamental reason for that, just a simple matter
+.  \" of macro programming.
+.  nr an*is-in-link-text-diversion 0
+.  if '\\n(.z'' .nr an*is-in-link-text-diversion 1
+.  if (\\n[an*is-in-link-text-diversion] & \\n[an*do-hyperlink]) \{\
 .    \" Start diversion in a new environment.
-.    nr an*is-in-link-text-diversion 1
 .    ev an*link-text-env
-.    if '\*[.T]'pdf' \&\m[\\*[PDFHREF.TEXT.COLOUR]]\c
-.    di an*link-text
+.    di an*link-text-div
 .    ll (\\n[an*saved-line-length]u - \\n[an*saved-indentation]u)
 .  \}
 .  rr an*saved-indentation
@@ -1168,73 +1104,55 @@
 .\" "mailto:", but this need not be visible when rendering an email
 .\" address on a device incapable of hyperlinking.
 .de an*end-hyperlink
-.  ds an*trailing-text \\$1\"
 .  ie (\\n[an*is-in-link-text-diversion] & \\n[an*do-hyperlink]) \{\
 .    br
 .    di
 .    ev
-.    nr an*is-in-link-text-diversion 0
-.    \" If the diversion width is nonzero, assume there was link text.
-.    ie \\n[dl] \{\
-.      if '\*[.T]'html' \
-.        nop \X'html:<a href=3D"\\*[an*hyperlink]">'\c
-.      if '\*[.T]'pdf' \
-.        pdfhref W -S -D \\*[an*hyperlink]
+.
+.    \" Was any link text present?
+.    ie \\n[dn] \{\
+.      if \\n[an*is-output-html] \
+.        nop \X^html:<a href=3D"\\*[an*prefix]\\*[an*hyperlink]">^\c
 .      if \\n[an*is-output-terminal] \
-.        nop \X'tty: link \\*[an*hyperlink]'\c
-.      unformat an*link-text \" ...so it adjusts in its new context.
-.      \" Replace the final newline of the diversion.
-.      chop an*link-text
-.      as an*link-text \&\c
-.      an*link-text
-.      nop \"
-.      if '\*[.T]'html' \
-.        nop \X'html:</a>'\c
+.        nop \X^tty: link \\*[an*prefix]\\*[an*hyperlink]^\c
+.      \" Strip off the final newline of the diversion and emit it.
+.      chop an*link-text-div
+.      an*link-text-div
+\c\" XXX: If we .nop this, HTML output is corrupted (Savannah #63470).
+.      if \\n[an*is-output-html] \
+.        nop \X^html:</a>^\c
 .      if \\n[an*is-output-terminal] \
-.        nop \X'tty: link'\c
-.      if '\*[.T]'pdf' \X'pdf: markend'\m[default]\c
-.      nop \&\\*[an*trailing-text]\"
+.        nop \X^tty: link^\c
 .    \}
 .    \" If there was no link text, format URI as its own link text.  We
-.    \" don't add angle brackets here; we assume that the application
-.    \" uses some means of indicating the hyperlinked text.
+.    \" don't add angle brackets here.
 .    el \{\
-.      if '\*[.T]'html' \
-.        nop \X'html:<a href=3D"\\*[an*hyperlink]">\
-\\*[an*visible-hyperlink]</a>'\c
-.      if '\*[.T]'pdf' \
-.        pdfhref W -D \\*[an*hyperlink] -A "\\*[an*trailing-text]" \
--- \\*[an*visible-hyperlink]\c
+.      if \\n[an*is-output-html] \
+.        nop \X^html:<a href=3D"\\*[an*prefix]\\*[an*hyperlink]">\
+\\*[an*hyperlink]</a>^\c
 .      if \\n[an*is-output-terminal] \
-.        nop \X'tty: link \\*[an*hyperlink]'\
-\\*[an*visible-hyperlink]\X'tty: link'\c
-.      if !'\*[.T]'pdf' \
-.        nop \&\\*[an*trailing-text]\"
+.        nop \X^tty: link \\*[an*prefix]\\*[an*hyperlink]^\
+\\*[an*hyperlink]\X^tty: link^\c
 .    \}
+.    nop \&\\$1\"
 .  \}
 .  \" If not hyperlinking, format URI in angle brackets.  There was no
 .  \" diversion, so the link text has already been formatted normally.
 .  el \{\
 .    nh
-.    nop \\[la]\\*[an*visible-hyperlink]\\[ra]\\*[an*trailing-text]
+.    nop \\[la]\\*[an*hyperlink]\\[ra]\\$1
 .    hy \\n[an*hyphenation-mode]
 .  \}
-.  rm an*link-text
-.  rm an*hyperlink
-.  rm an*visible-hyperlink
-.  rm an*trailing-text
+.
+.  rr an*is-in-link-text-diversion
 ..
 .
 .\" Begin email hyperlink.  Input until the next `ME` call is stored in
 .\" a diversion; it becomes the link text for the hyperlinked address.
 .\" .MT nobody@example.com
 .de1 MT
-.  if d an*prefix \{\
-.    an-warn cannot nest .\\$0 inside .MT or .UR
-.    return
-.  \}
 .  if !(\\n[.$] =3D 1) \
-.    an-warn .\\$0 expects 1 argument, got \\n[.$]
+.    an-style-warn .\\$0 expects 1 argument, got \\n[.$]
 .  ds an*prefix mailto:
 .  an*begin-hyperlink \\$1
 ..
@@ -1243,24 +1161,16 @@
 .\" punctuation (or, rarely, other text) after link text.
 .\" .ME [trailing-text]
 .de1 ME
-.  if !d an*prefix \{\
-.    an-warn .\\$0 requires a preceding .MT
-.    return
-.  \}
 .  an*end-hyperlink \\$1
 .  rm an*prefix
 ..
 .
 .\" Begin web hyperlink.  Input until the next `UE` call is stored in
 .\" a diversion; it becomes the link text for the hyperlinked address.
-.\" .UR http://example.com/
+.\" .UR nobody@example.com
 .de1 UR
-.  if d an*prefix \{\
-.    an-warn cannot nest .\\$0 inside .MT or .UR
-.    return
-.  \}
 .  if !(\\n[.$] =3D 1) \
-.    an-warn .\\$0 expects 1 argument, got \\n[.$]
+.    an-style-warn .\\$0 expects 1 argument, got \\n[.$]
 .  ds an*prefix \" empty
 .  an*begin-hyperlink \\$1
 ..
@@ -1269,10 +1179,6 @@
 .\" punctuation (or, rarely, other text) after link text.
 .\" .UE [trailing-text]
 .de1 UE
-.  if !d an*prefix \{\
-.    an-warn .\\$0 requires a preceding .UR
-.    return
-.  \}
 .  an*end-hyperlink \\$1
 .  rm an*prefix
 ..
@@ -1280,63 +1186,50 @@
 .\" There is no standardized format for man page URLs, but the default
 .\" is expected to work (or be harmlessly ignored) everywhere except
 .\" macOS.  Override in man.local if desired.
-.\"
-.\" Given a man page reference id(section) (like ls(1)), we have these.
-.\"
-.\" man:id(section)                  - GNOME, KDE   (Linux)
-.\" x-man-page://section/id          - Terminal.app (macOS 10.3+)
-.\" man:id.section                   - Bwana        (macOS)
-.\" x-man-doc://section/id(section)  - ManOpen      (macOS)
-.\"
-.\" A configurable prefix/schema string is inadequate because the
-.\" arrangement of the rest of the URL is variable.  Further, the schema
-.\" doesn't unambiguously indicate the remainder of the URL format.
 .nr an*MR-URL-format 1
 .
 .\" Set a man page cross reference.
 .\" .MR page-topic page-section [trailing-text]
 .de1 MR
-.  if ((\\n[.$] < 2) : (\\n[.$] > 3)) \
-.    an-style-warn .\\$0 expects 2 or 3 arguments, got \\n[.$]
-.  ds an*url man:\\$1(\\$2)\"
-.  if (\\n[an*MR-URL-format] =3D 2) \
-.    ds an*url x-man-page://\\$2/\\$1\"
-.  if (\\n[an*MR-URL-format] =3D 3) \
-.    ds an*url man:\\$1.\\$2\"
-.  if (\\n[an*MR-URL-format] =3D 4) \
-.    ds an*url x-man-doc://\\$2/\\$1(\\$2)\"
-.  nh
-.  ie (\\n[.$] =3D 1) \
-.    nop \&\\*[an-lic]\f[\\*[MF]]\\$1\\*[an-ic]\f[]\c
+.  if ((\\n[.$] < 2) : (\\n[.$] > 4)) \
+.    an-style-warn .\\$0 expects 2 to 4 arguments, got \\n[.$]
+.  ie \\n[an*is-output-pdf] \{\
+.    nh
+.    ds an*title \\\\$4
+.    if '\\\\*[an*title]'' .ds an*title \\\\$1
+.    ie \\n(.$=3D1 \
+.      I \\$1
+.    el \{\
+.      an*cln an*page-ref-nm \\*[an*title]_\\$2
+.      ie d pdf:look(\\*[an*page-ref-nm]) .pdfhref L -D \\*[an*page-ref-nm=
] -A "\\$3" -- \fI\\$1\fP(\\$2)
+.      el .IR \\$1 (\\$2)\\$3
+.    \}
+.    hy \\n(mJ
+.  \}
 .  el \{\
+.    ds an*url man:\\$1(\\$2)\" used everywhere but macOS
+.    if (\\n[an*MR-URL-format] =3D 2) \
+.      ds an*url x-man-page://\\$2/\\$1\" macOS/Mac OS X since 10.3
+.    if (\\n[an*MR-URL-format] =3D 3) \
+.      ds an*url man:\\$1.\\$2\" Bwana (Mac OS X)
+.    if (\\n[an*MR-URL-format] =3D 4) \
+.      ds an*url x-man-doc://\\$2/\\$1\" ManOpen (Mac OS X pre-2005)
+.    nh
 .    if \\n[an*do-hyperlink] \{\
-.      if '\*[.T]'html' \
-.        nop \X'html:<a href=3D"\\*[an*url]">'\c
-.      if '\*[.T]'pdf' \{\
-.        ds an*destination-bookmark-tag \\$1(\\$2)\"
-.        pdf:lookup \\*[an*destination-bookmark-tag]
-.        ie !'\\*[pdf:lookup-result]'' \
-.          pdfhref L -S -D \\*[an*destination-bookmark-tag]
-.        el \{\
-.          nop \&\m[\\*[PDFHREF.TEXT.COLOUR]]\c
-.          pdfhref W -S -D \\*[an*url]
-.        \}
-.      \}
+.      if \\n[an*is-output-html] \
+.        nop \X^html:<a href=3D"\\*[an*url]">^\c
 .      if \\n[an*is-output-terminal] \
-.        nop \X'tty: link \\*[an*url]'\c
+.        nop \X^tty: link \\*[an*url]^\c
 .    \}
-.    nop \&\\*[an-lic]\f[\\*[MF]]\\$1\\*[an-ic]\f[R](\\$2)\c
+.        nop \&\\*[an-lic]\f[\\*[MF]]\\$1\\*[an-ic]\f[R](\\$2)\c
 .    if \\n[an*do-hyperlink] \{\
-.      if '\*[.T]'html' \
-.        nop \X'html:</a>'\c
-.      if '\*[.T]'pdf' \{\
-.        nop \X'pdf: markend'\m[default]\c
-.      \}
+.      if \\n[an*is-output-html] \
+.        nop \X^html:</a>^\c
 .      if \\n[an*is-output-terminal] \
-.        nop \X'tty: link'\c
+.        nop \X^tty: link^\c
 .    \}
+.    nop \&\\$3
 .  \}
-.  nop \&\\$3
 .  hy \\n[an*hyphenation-mode]
 ..
 .
@@ -1417,22 +1310,15 @@
 .nr an-devtag-needs-end-of-heading 0
 .nr an-devtag-needs-second-column 0
 .
-.ds an*previous-page-ref-string \" empty
-.
-.nr an*enforce-tag-separation 1
-.
 .\" Track whether the strings that set header and footer text need to be
 .\" reconfigured.  This happens when batch-rendering and starting a new
 .\" page.
 .nr an*need-titles-reset 0
 .
-.\" We don't have to worry about "xhtml" (it's mapped to "html"), but we
-.\" do need to account for pre-grohtml(1)'s use of "groff -Tps".
 .nr an*is-output-html 0
 .if '\*[.T]'html' .nr an*is-output-html 1
-.if r ps4html     .nr an*is-output-html 1
-.
-.\" For most purposes, we treat the nroff devices equivalently.
+.nr an*is-output-pdf 0
+.if '\*[.T]'pdf' .nr an*is-output-pdf 1
 .nr an*is-output-terminal 0
 .if '\*(.T'ascii'  .nr an*is-output-terminal 1
 .if '\*(.T'cp1047' .nr an*is-output-terminal 1
@@ -1441,13 +1327,11 @@
 .
 .nr an*can-hyperlink 0
 .if (  \n[an*is-output-html] \
+     : \n[an*is-output-pdf] \
      : \n[an*is-output-terminal]) \
 .  nr an*can-hyperlink 1
 .
-.if '\*[.T]'pdf' \
-.  nr an*can-hyperlink 1
-.
-.ds an*body-family \n[.fam]
+.ds an*body-family \n[.fam] \" Times
 .ds an*example-family C \" Courier
 .
 .\" Map monospaced fonts to standard styles for groff's nroff devices.
@@ -1471,16 +1355,12 @@
 .\" Set each rendering parameter only if its -[dr] option or man.local
 .\" did not.
 .
-.if '\*[.T]'pdf' \{\
+.if \n[an*is-output-pdf] \{\
 .  \" FIXME: The following registers are documented only in pdf.tmac.
 .  if !r PDFOUTLINE.FOLDLEVEL .nr PDFOUTLINE.FOLDLEVEL 1
 .  if !r PDFHREF.VIEW.LEADING .nr PDFHREF.VIEW.LEADING 10p
 .\}
 .
-.\" base paragraph indentation
-.if !r BP \
-.  nr BP 5n
-.
 .\" continuous rendering (one long page)
 .if !r cR \{\
 .  ie n .nr cR 1
@@ -1491,7 +1371,8 @@
 .\"
 .\" We must use consecutive page numbers when using PostScript to
 .\" generate HTML images; we must not reset the page number at the
-.\" beginning of each document.
+.\" beginning of each document (the 'ps4html' register is automatically
+.\" added to the command line by the pre-HTML preprocessor).
 .ie !r C \
 .  nr C 0
 .el \
@@ -1502,6 +1383,8 @@
 .    \}
 .if \n[an*is-output-html] \
 .  nr C 1
+.if r ps4html \
+.  nr C 1
 .
 .\" diagnostics desired for man page style problems
 .if !r CHECKSTYLE \
@@ -1581,7 +1464,7 @@
 .  \" If in troff mode, respect device default.
 .  ie t .nr LL \n[.l]
 .  \" Otherwise, override nroff mode default of 65n.
-.  el   .nr LL 80n
+.  el   .nr LL 78n
 .\}
 .
 .\" title (header, footer) length
@@ -1620,7 +1503,7 @@
 .\" and whose state is shared with mdoc (and andoc.tmac, if necessary).
 .\"
 .\" Also, we can't use the `P` register with grohtml at all.
-.ie \n[an*is-output-html] \{\
+.ie r ps4html \{\
 .  if r P \{\
 .     tm \*[an]: ignoring starting page number in HTML output
 .     rr P
@@ -1633,10 +1516,6 @@
 .  \}
 .\}
 .
-.\" page offset
-.if r PO \
-.  po \n[PO]u
-.
 .\" type size
 .if !r S \{\
 .  nr S 10
@@ -1646,10 +1525,6 @@
 .    nr S 12
 .\}
 .
-.\" required paragraph tag separation
-.if !r TS \
-.  nr TS 2n
-.
 .\" subsection indentation
 .if !r SN \
 .  nr SN 3n
@@ -1724,6 +1599,7 @@
 .\" If rendering HTML, suppress headers and footers.
 .nr an-suppress-header-and-footer 0
 .if \n[an*is-output-html] .nr an-suppress-header-and-footer 1
+.if r ps4html             .nr an-suppress-header-and-footer 1
 .
 .cp \n[*groff_an_tmac_C]
 .do rr *groff_an_tmac_C

--TQ9U5IUj1wvd1vRT--

--/742Q1V3z9khrIJA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYb/REACgkQnowa+77/
2zJVMA/+LogAYWY/AQAAMRIgGVTy0lXHUp5mrDusOGJS9DFh/6Ysbi4PNh9KaTfL
gV7l2XKMgK/2FSjxdR+VnzVQ79elUPLPcZkSXmonX6IxwDog/U+y3HFHNq5dlMwk
0WghDfri9QYG/1CLVpYuad9/ELZQBJTVTGmKsxUoGELNjqzeYBUD+EQ8nX33gCaC
xp5QOl0OeQK4mWIU3lArjrHku991CuLocCejcleKYDDW+ClBztG218VBPbUToLJx
DVpYQDpB+j35EaNnvB3UQ60awPuTVU2Pq5K52C3E3GsxNikmvn06SpKh5G53JZcW
gzZWv76DqIvQN/IqWldGYCwpWWFnPa4bdruxG6axZ99CPL6MQagLuHNy2+5RtP2x
1/3u6A0UE4ietA8e7nPnurqVXIUcmonlHdrLVFPP1kj5vrTc87ygnBtueNzltzpc
WNQdTf819XbQ8p/yFRkpbuSCVIOAEMQiVoz+OB1XrsN2amHvfTSRg1d31SV59QYX
A6AphNIy7PkW6SvKr0TcdfIyFNB07iHkUr3epigCPM7vnUypkpvSb0fWjjhRNDhe
8gyS6jhdZHik5l2YtUvFrm0x1hJTI7BnnFhNQZTUtjunG9hZ6wv9OITfdeTtqWhA
TMydedmtxQXx1grlBfsnFuiSV3asKShRD9CGGWupzrPSTXnOy1k=
=NcOz
-----END PGP SIGNATURE-----

--/742Q1V3z9khrIJA--

