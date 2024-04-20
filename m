Return-Path: <linux-man+bounces-790-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E87D8ABB84
	for <lists+linux-man@lfdr.de>; Sat, 20 Apr 2024 14:26:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC457281C8C
	for <lists+linux-man@lfdr.de>; Sat, 20 Apr 2024 12:26:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 272A7374C1;
	Sat, 20 Apr 2024 12:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMYtLHsw"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC50C17584
	for <linux-man@vger.kernel.org>; Sat, 20 Apr 2024 12:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713615987; cv=none; b=ROUCtJOMzwRN3sQZC9y/oFHOuQ6vXwzqIbrDrc+fRMorBayajrJ2vDZquBb5qQhvKhNb1GB2ML//ey4I+r2rM8/4sNUHngDEuJ+WQ9qSqa/x0qVvumrYPFegQKND8nkM3V5BawSRJSKjveiWNFqBUtfmbMd+WUz1ZTSOctIjR4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713615987; c=relaxed/simple;
	bh=w1qUPYSUcvVnka4pslk5GqLjln4TAB3r6vfgwR71wuI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=uRIAVnydc3XiWhcMtpX/smbZl0GkvmenCaczwMZb2P3+g1K1kbyMNdHQQu9iLiAWxyK62Hxmdd5rFaYvAAmZQoYgJ11PoDCRmpY0D0iWjSkPjVTFky+BT9fNCx2mtqOClc2dnFOLO4EcWBhY8QN54YD8+EO1kM8H2DKWyLO/Ots=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMYtLHsw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BACEC072AA;
	Sat, 20 Apr 2024 12:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713615987;
	bh=w1qUPYSUcvVnka4pslk5GqLjln4TAB3r6vfgwR71wuI=;
	h=Date:From:To:Cc:Subject:From;
	b=ZMYtLHswrstH35/L+9u71bGcWz/j93XamGc3tKoEOgxhC9gg1oJ042yVn5RniOssY
	 /XPiavGuJTICun7A8VBRhUOZyOF2hLeRbcJGjqEQsaWmrI9z5mFilZH/ErDemZ/5bF
	 5+PQn1W+1qGlxlNeA8Vi6T2wtXSf1Pw2LVXGUvu11veCkplsHuXig4NGYAkCy+BwgP
	 WMJqPheA7XrQ2nIRFDvD4mq9upfkUB5ROAKMIGKE7NaTVsr9+1RQmaPE+D+FyVJAdv
	 qbyclNzS8Z0YtAAlrbt04mWBvEBhOwWVBURhE/LDy6JRnvOhdZEJbVm+pM2dfMZ9sO
	 QXZd3fsUw1gkw==
Date: Sat, 20 Apr 2024 14:26:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, groff@gnu.org
Cc: "G. Branden Robinson" <branden@debian.org>,
	Deri James <deri@chuzzlewit.myzen.co.uk>
Subject: Problems building the unifont PFA and DIT files for the PDF book
Message-ID: <ZiO0cHOWPyuiJGQq@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CSImlHfbS91kfnQq"
Content-Disposition: inline


--CSImlHfbS91kfnQq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 20 Apr 2024 14:26:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, groff@gnu.org
Cc: "G. Branden Robinson" <branden@debian.org>,
	Deri James <deri@chuzzlewit.myzen.co.uk>
Subject: Problems building the unifont PFA and DIT files for the PDF book

Hi,

I've tried groff-ifying the Unifont, in the same way I do it with the
Tinos font.  However, I've had a few problems.

Here's the Tinos font that's packaged with Debian:

	$ apt-file find tinos | grep ttf
	texlive-fonts-extra-links: /usr/share/texlive/texmf-dist/fonts/truetype/go=
ogle/tinos/Tinos-Bold.ttf
	texlive-fonts-extra-links: /usr/share/texlive/texmf-dist/fonts/truetype/go=
ogle/tinos/Tinos-BoldItalic.ttf
	texlive-fonts-extra-links: /usr/share/texlive/texmf-dist/fonts/truetype/go=
ogle/tinos/Tinos-Italic.ttf
	texlive-fonts-extra-links: /usr/share/texlive/texmf-dist/fonts/truetype/go=
ogle/tinos/Tinos-Regular.ttf

And here's the Unifont:

	$ apt-file find unifont | grep otf | grep fonts | grep -v japanese
	fonts-unifont: /usr/share/fonts/opentype/unifont/unifont.otf
	fonts-unifont: /usr/share/fonts/opentype/unifont/unifont_csur.otf
	fonts-unifont: /usr/share/fonts/opentype/unifont/unifont_jp.otf
	fonts-unifont: /usr/share/fonts/opentype/unifont/unifont_jp_sample.otf
	fonts-unifont: /usr/share/fonts/opentype/unifont/unifont_sample.otf
	fonts-unifont: /usr/share/fonts/opentype/unifont/unifont_upper.otf
	fonts-unifont: /usr/share/fonts/opentype/unifont/unifont_upper_sample.otf

First problem:

In the Unifont, I don't see a "Regular" font.  I assumed I should take
the unifont.otf file.

Here's how I've been groff-ifying the Tinos font:

	$ make build-fonts-tinos -B --debug=3Dpretty
	MKDIR		.tmp/fonts/devpdf/
	install -m 755 -d .tmp/fonts/devpdf/
	PFBTOPS		.tmp/fonts/devpdf/Tinos.pfa
	pfbtops </usr/share/texlive/texmf-dist/fonts/type1/google/tinos/Tinos.pfb =
>.tmp/fonts/devpdf/Tinos.pfa
	FONTFORGE	.tmp/fonts/devpdf/TinosR.afm
	fontforge   -lang=3Dff -c 'Open("/usr/share/texlive/texmf-dist/fonts/truet=
ype/google/tinos/Tinos-Regular.ttf");Generate(".tmp/fonts/devpdf/TinosR.afm=
");'
	Copyright (c) 2000-2024. See AUTHORS for Contributors.
	 License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.h=
tml>
	 with many parts BSD <http://fontforge.org/license.html>. Please read LICE=
NSE.
	 Version: 20230101
	 Based on sources from 2024-03-07 23:15 UTC-ML-D-GDK3.
	PythonUI_Init()
	copyUIMethodsToBaseTable()
	Program root: /usr
	The following table(s) in the font have been ignored by FontForge
	  Ignoring 'DSIG' digital signature table
	The glyph named null is mapped to U+0000.
	  But its name indicates it should be mapped to U+2400.
	The glyph named periodcentered is mapped to U+2219.
	  But its name indicates it should be mapped to U+00B7.
	The glyph named Delta is mapped to U+0394.
	  But its name indicates it should be mapped to U+2206.
	The glyph named Omega is mapped to U+03A9.
	  But its name indicates it should be mapped to U+2126.
	The glyph named mu is mapped to U+03BC.
	  But its name indicates it should be mapped to U+00B5.
	AFMTODIT	.tmp/fonts/devpdf/TinosR
	afmtodit -e /usr/share/groff/current/font/devpdf/enc/text.enc .tmp/fonts/d=
evpdf/TinosR.afm /usr/share/groff/current/font/devpdf/map/text.map .tmp/fon=
ts/devpdf/TinosR
	/usr/local/bin/afmtodit: AGL name 'mu' already mapped to groff name 'mc'; =
ignoring AGL name 'uni00B5'
	/usr/local/bin/afmtodit: AGL name 'periodcentered' already mapped to groff=
 name 'pc'; ignoring AGL name 'uni00B7'
	/usr/local/bin/afmtodit: both gravecomb and uni0340 map to u0300 at /usr/l=
ocal/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both acutecomb and uni0341 map to u0301 at /usr/l=
ocal/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both uni0313 and uni0343 map to u0313 at /usr/loc=
al/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both uni02B9 and uni0374 map to u02B9 at /usr/loc=
al/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both alphatonos and uni1F71 map to u03B1_0301 at =
/usr/local/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both epsilontonos and uni1F73 map to u03B5_0301 a=
t /usr/local/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both etatonos and uni1F75 map to u03B7_0301 at /u=
sr/local/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both iotatonos and uni1F77 map to u03B9_0301 at /=
usr/local/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both omicrontonos and uni1F79 map to u03BF_0301 a=
t /usr/local/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both omegatonos and uni1F7D map to u03C9_0301 at =
/usr/local/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both Alphatonos and uni1FBB map to u0391_0301 at =
/usr/local/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both Epsilontonos and uni1FC9 map to u0395_0301 a=
t /usr/local/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both Etatonos and uni1FCB map to u0397_0301 at /u=
sr/local/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both iotadieresistonos and uni1FD3 map to u03B9_0=
308_0301 at /usr/local/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both Iotatonos and uni1FDB map to u0399_0301 at /=
usr/local/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both Upsilontonos and uni1FEB map to u03A5_0301 a=
t /usr/local/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both dieresistonos and uni1FEE map to u00A8_0301 =
at /usr/local/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both Omicrontonos and uni1FF9 map to u039F_0301 a=
t /usr/local/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both Omegatonos and uni1FFB map to u03A9_0301 at =
/usr/local/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both uni2000 and uni2002 map to u2002 at /usr/loc=
al/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both uni2001 and uni2003 map to u2003 at /usr/loc=
al/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both Ohm and uni2126 map to u03A9 at /usr/local/b=
in/afmtodit line 6586.
	/usr/local/bin/afmtodit: both uni1FE3 and upsilondieresistonos map to u03C=
5_0308_0301 at /usr/local/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both uni1F7B and upsilontonos map to u03C5_0301 a=
t /usr/local/bin/afmtodit line 6586.
	/usr/local/bin/afmtodit: both patah and yodyod_patah map to u05B7 at /usr/=
local/bin/afmtodit line 6586.

Are any of those warnings something I should take care of?  Or should I
just ignore them?  If they're unimportant, can I ask that low severity
warnings not be printed?  Or should I just 2>/dev/null?

Well, apart from those warnings, that works.  Now, I repeat the process
with the Unifont:

	$ make build-fonts-unifont -B --debug=3Dpretty
	MKDIR		.tmp/fonts/devpdf/
	install -m 755 -d .tmp/fonts/devpdf/
	FONTFORGE	.tmp/fonts/devpdf/Unifont.pfa
	fontforge   -lang=3Dff \
		-c 'Open("/usr/share/fonts/opentype/unifont/unifont.otf");Generate(".tmp/=
fonts/devpdf/Unifont.pfa");'
	Copyright (c) 2000-2024. See AUTHORS for Contributors.
	 License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.h=
tml>
	 with many parts BSD <http://fontforge.org/license.html>. Please read LICE=
NSE.
	 Version: 20230101
	 Based on sources from 2024-03-07 23:15 UTC-ML-D-GDK3.
	PythonUI_Init()
	copyUIMethodsToBaseTable()
	Program root: /usr
	AFMTODIT	.tmp/fonts/devpdf/UnifontR
	afmtodit -e /usr/share/groff/current/font/devpdf/enc/text.enc .tmp/fonts/d=
evpdf/Unifont.afm /usr/share/groff/current/font/devpdf/map/text.map .tmp/fo=
nts/devpdf/UnifontR

Much nicer on stderr, which gave me hope at first.

But then I try to build the PDF book with both fonts.

	$ grep -rh -e Tinos -e Unifont share/mk/build/pdf/book/
		print ".pdfpagenumbering D . 1\n.nr PDFOUTLINE.FOLDLEVEL 0\n.defcolor pdf=
:href.colour rgb 0.00 0.25 0.75\n.pdfinfo /Title \"The Linux man-pages Book=
\"\n.special TinosR UnifontR S\n";

And I get a warning about the Unifont:

	$ make build-pdf-book
	GROPDF		.tmp/man-pages-6.7-70-gd80376b08.pdf
	troff:.tmp/fonts/devpdf/UnifontR: error: font description 'spacewidth' dir=
ective missing
	troff:fanotify_init.2:322: warning [page 192, 4.2i]: cannot adjust line
	troff:membarrier.2:272: warning [page 475, 3.0i]: cannot adjust line
	statx.2:240: warning: table wider than line length minus indentation
	troff:syscall.2:171: warning: cannot select font 'CW'
	troff:syscall.2:301: warning: cannot select font 'CW'
	troff:syscalls.2:205: warning [page 1074, 5.7i (diversion '3tbd17,0', 0.0i=
)]: cannot adjust line
	troff:syscalls.2:760: warning [page 1074, 5.7i (diversion '3tbd174,0', 0.0=
i)]: cannot break line
	troff:syscalls.2:1278: warning [page 1074, 5.7i (diversion '3tbd317,0', 0.=
0i)]: cannot break line
	^Cmake: *** [/home/alx/src/linux/man-pages/man-pages/contrib/share/mk/buil=
d/pdf/book/_.mk:39: .tmp/man-pages-6.7-70-gd80376b08.pdf] Interrupt

Did I do anything wrong with the Unifont?  I suspect of treating it as a
Regular font without any indication that I should.

(The Tinos changes are already in master.  The Unifont changes are in
 the contrib branch, since I'm not yet happy with them.)

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--CSImlHfbS91kfnQq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYjtGkACgkQnowa+77/
2zLJqBAAnZRXFKluapF59BsI5Et6+3dDBJsZek+YZl047Hra9Tjq80/g8KCYgyk8
hw4vzaqXZkB4nfMFrsnQHS2X9SHKUhpA++SGqLWRQhvzGV4S9DeTHjdtZIHqYRO6
DcfihDLpJ+YH5PXZ7SqtMANlMwoqUMHlJRQeB0cGJwk+FpuW6Bub8T5zVVF3jBp1
JzZxzq6UBhof3K46l86XgvxZjyhI8t0xk6T3y+Wb3e8wAup/NnpUz6eD/WMY8enF
M7Kz/zzGbrp/Xgey0c3aKFtZyRayssOkxBffJJ5Lt6Q+TT4Wbnvq9gbV0NIhLe1I
cDD+nBa4ju5cNvw1YPmVGo6gazjKW/zrndzKnisT8y5G85D80pMEC4Gci4iRllBo
YRU/nAiiLNqD5TU6CFZ7oaNWwCR6vyIorrhik0tTu+kFdoCU9hlQ7nRT/VY4HGdx
D/aBFDf9SZ3q9xNdqWTlj7TtpwR4W5GlaZsvT+XgJZ5upDbWxINM59t+bx2mGgGQ
WHAXazd9Vc2vfadtM+yNDDytov1g/CrTLM7OzVZZPpR35Tw57vF8+rSGxy0yh5X2
VpQUOXPkA02IXHSAGYhEg2C32ZERtF8gRlN5WFRMeh7ub0FQO1wVoa/Fo9SF68UD
1Q8IpDYXozNrAyhx/ev17NIbU8uQjH4YeNSiNoehF54jxF2K5IM=
=IRhR
-----END PGP SIGNATURE-----

--CSImlHfbS91kfnQq--

