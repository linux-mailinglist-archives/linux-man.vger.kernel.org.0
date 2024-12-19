Return-Path: <linux-man+bounces-2173-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A14B39F7A15
	for <lists+linux-man@lfdr.de>; Thu, 19 Dec 2024 12:08:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B35D188E5A6
	for <lists+linux-man@lfdr.de>; Thu, 19 Dec 2024 11:08:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DAC1223328;
	Thu, 19 Dec 2024 11:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqOaAPqZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24150222D6B
	for <linux-man@vger.kernel.org>; Thu, 19 Dec 2024 11:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734606519; cv=none; b=RRJchhAJdmaml5Mrk+uRjbCcl7W9I+YerK2dkMODBJbQoSzUepiaId0JjsAmef/1QIhThVSwz5mjToQp0gq1g6207BLNbZKAJKpdlUwlTdKXTMCMkKxiN+9C0SLXBII7S8Xyb093ohJ98ESlIAOPgd9VGzHBtIXNnyRq6YwFMbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734606519; c=relaxed/simple;
	bh=gxNltHEOKBSiXvjAjwYSF54Qlu7/MGpN6UhEH7a6dCU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e3tzm8XYzSS4fSG8iWMg1vpa9hAPqbiFqEpsQJIw1jjywYsmsLun/7YutT3JJtaeAGVNkrLVBw2VLz5Qu3p/jCbXty083uYSSgfDWxUemdcCb56HlTgev1/Ggsj1S0VRWmE/iHxPZ7O3yKDb9tYe130tbjk08vp5C24mZBxcjvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqOaAPqZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DABD6C4CECE;
	Thu, 19 Dec 2024 11:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734606518;
	bh=gxNltHEOKBSiXvjAjwYSF54Qlu7/MGpN6UhEH7a6dCU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CqOaAPqZl3Ljiq4gac8RgwPc6gvjhOo9wqqLc216wHMnDzVzhrsSfLAqg7bGO4Xs2
	 U69W+KXXd6eKegvcnM27jQVOUgUPAc/oT9N5UzdHBABdQqtUgbdH9emH0u3W9Ye3bU
	 0gkVgXeTfah8FxykhTBoaQ9j8SYZh2lnM5ulxMFoVDcecJGCwIQQ+GD81rkyBD4/pW
	 BRWzGtQzrFTjCL0qrV5JW9qaJCi1BZKMyCSWUYrY28OGurpbmVGUfOfptrxbwUKXg8
	 WRGxXYcLCgdJHiMfhh5AqhXZT+ANQJYraef88yNndc2NEPYTqPwLeoMxfiOnkzPut3
	 xUFZBtqGAhZHA==
Date: Thu, 19 Dec 2024 12:08:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Eugene Syromyatnikov <evgsyr@gmail.com>
Subject: Re: [PATCH v2] getopt.3: remove _<PID>_GNU_nonoption_argv_flags_
 description
Message-ID: <20241219110835.gtn34v2syxtg2jlg@devuan>
References: <3oaxdb2364nqty4fxts6i2fx66dksiw2vq3s5nlzfukztakg3j@iyl3vwrgrfe2>
 <dwfybzlb5ydbsc4puo6igj7nm7iregquv6hxhhqb53bwrvqswb@tarta.nabijaczleweli.xyz>
 <20241218184538.fuf3334vyg53qqx4@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uw5cxixjpbar7hro"
Content-Disposition: inline
In-Reply-To: <20241218184538.fuf3334vyg53qqx4@devuan>


--uw5cxixjpbar7hro
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] getopt.3: remove _<PID>_GNU_nonoption_argv_flags_
 description
MIME-Version: 1.0

Hi,

On Wed, Dec 18, 2024 at 07:45:42PM +0100, Alejandro Colomar wrote:
> > Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
>=20
> Thanks!  I've applied the patch, plus minor tweaks for the issues above.
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3Dfed899f4cd6149daa8c9a0f4c352728eadfd9d77>

I've had to amend the patch again.  I didn't notice that it caused many
warnings in -Tutf8, -Thtml, -Tps, and -Tpdf output.  I've applied the
following diff.

diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
index 3b0025528..cb946355a 100644
--- a/man/man3/getopt.3
+++ b/man/man3/getopt.3
@@ -384,7 +384,7 @@ .SH HISTORY
 .IR <stdio.h> .
 .P
 Very old versions of glibc were affected by a
-.UR https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3Dbf079e19f=
50d64aa5e05b5e17ec29afab9aabb20
+.UR https://\:sourceware.org/\:git/\:?p=3Dglibc.git;a=3Dcommitdiff;h=3Dbf0=
79e19f50d64aa5e05
 .BI _ PID _GNU_nonoption_argv_flags_
 environment variable
 .UE .


That adds break points, and also reduces the hash by half (which should
hold without clashes forever, hopefully).  I've kept the full URI in the
commit message, just in case (and BTW, it's good to have the URI in the
commit message anyway).  After this diff, the warning disappears.

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dbc34639b160d8bd3d3daf748e8a54bc1df429901>


Have a lovely day!
Alex


> > ---
> >  man/man3/getopt.3 | 15 ++++++---------
> >  1 file changed, 6 insertions(+), 9 deletions(-)
> >=20
> > diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
> > index 67c3ec9b3..9a84e2f44 100644
> > --- a/man/man3/getopt.3
> > +++ b/man/man3/getopt.3
> > @@ -318,15 +318,6 @@ .SH ENVIRONMENT
> >  .B POSIXLY_CORRECT
> >  If this is set, then option processing stops as soon as a nonoption
> >  argument is encountered.
> > -.TP
> > -.B _<PID>_GNU_nonoption_argv_flags_
> > -This variable was used by
> > -.BR bash (1)
> > -2.0 to communicate to glibc which arguments are the results of
> > -wildcard expansion and so should not be considered as options.
> > -This behavior was removed in
> > -.BR bash (1)
> > -2.01, but the support remains in glibc.
> >  .SH ATTRIBUTES
> >  For an explanation of the terms used in this section, see
> >  .BR attributes (7).
> > @@ -391,6 +382,12 @@ .SH HISTORY
> >  for this purpose as LEGACY.
> >  POSIX.1-2001 does not require the declaration to appear in
> >  .IR <stdio.h> .
> > +.P
> > +Very old versions of glibc were affected by a
> > +.UR https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3Dbf079=
e19f50d64aa5e05b5e17ec29afab9aabb20
> > +.BI _ PID _GNU_nonoption_argv_flags_
> > +environment variable
> > +.UE .
> >  .SH NOTES
> >  A program that scans multiple argument vectors,
> >  or rescans the same vector more than once,
> > --=20
> > 2.39.5
>=20
>=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--uw5cxixjpbar7hro
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdj/rMACgkQnowa+77/
2zIa+Q/8DWHOju75nHNZy9nRw8q9cJIs2S5LY4IYxDZX68wMXVo72dfja248Fa3X
1vED1FqT5G7E4cXd+0maHP2G9W3uZWKFGgDNhrCx7mfcY3p/4IcwLRcnmwWNUcNa
hBlMDOrgZSVVjpscJRj0eUrOHu6wawGzMpCCkBCZX7/K1p9C2bptZod7BckfOA5X
Q9Yf8OWkdPE+nohQ8DeqgTWFtFdTdrWGDnaBynI6enC7ZAmLt5AmY2jGkwOumZ5Y
74tTqEAdD0mrQayanTBw3s6xHXLZtkax5td7OkF8YNo7PZgQjEp6NSLQApbn0fVK
bDaZVXFHpKMhf6lZ46jQE4JmRLzpmWBob/Whi4w3tFV0pdoz8QQIrOfbavRKSnn9
en/dfLRbTBuOaCvpFJakPBhoIvR7r9iE1sNRup03k9Q25Q/0OS7VmQ2s4BpZy9Dm
yISX08QUVZK8kYR5iXNBWXi0OjHLujWw962YmBgtcfwTVlbrLIjTO7uQja5jxEqA
84GS0ypK5vLPRDS2X/pXiOhYd8h8YsWYRpj85v8uy+2T7iK5xyP2tYqn7vdjLN53
sTZEwOsFOlJKld5w6nwQLEMKor7hgl7WEotLsbVMd4gJbx6mX9KFAHzm+MoC3Y9B
7JWzXF5xNez83YJ5ZrszMo96Jh4BxFXrI++tZNanZohF0xsPy9g=
=UQod
-----END PGP SIGNATURE-----

--uw5cxixjpbar7hro--

