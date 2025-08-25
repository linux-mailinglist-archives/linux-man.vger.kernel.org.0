Return-Path: <linux-man+bounces-3730-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBCAB34BA9
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 22:23:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D9405E4B9E
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 20:23:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99568285CAD;
	Mon, 25 Aug 2025 20:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1CaYtQi"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CC8275AF0
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 20:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756153429; cv=none; b=BjzZH3zWB5OtGuR8egP3jjTeTL3qNArSXdaUHe5oYv8n3KxW7jf7oNIITPbrJD9V5gbsHBvKqOaN2mYhveVah5DYnMispFce511MouRQ/EpNjA1jlrYzJiBR2a03SiS/vjoAj7pBkIkSAKCw11eE4wgtnqUi5zabvXgAG7a+u7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756153429; c=relaxed/simple;
	bh=aGpAMI1jMjcqHN4QVik/4W7yKoLW9YLf1Cj9UKLMi9k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g5Rse6j9wB60V5X1zaB8d+REJVCF4qblVRZ0Bt9RSEyV6NtB1TLKasTaxJ7iDCRD8zkeBDU54LcQiNaOnpQ/XocKIIf+SCdWpovzu8WkiXGtdX1sARS6Wjm7yGKABkgiwiwenyv782bVR7m4WEaZ+wrrazSC+EesYVXgONCVxoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1CaYtQi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1BF5C4CEED;
	Mon, 25 Aug 2025 20:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756153428;
	bh=aGpAMI1jMjcqHN4QVik/4W7yKoLW9YLf1Cj9UKLMi9k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E1CaYtQigMMrdQFoDDppdojjXPw+MBgBC/uPoNaSMu7XUEshZUu7O5STNlHkGc4K6
	 xiM/CJJgvqFYdUTBLgdNGUxaAfbC5dOTT+xKnj6TavEksabvOuKjzgysfS2GDGC+Ay
	 +8zig9iYFaWCYISdZMGbWr1ToOv5nrHirXXFKCdvg12ZjOHuTUSpvV24sBuiX1XVa1
	 rffFW5cSqVIjm4/WZorEKFqWZvxleukGfCkx5WP2wV4bY0AfEJ/elGTiFTWUa+nBoZ
	 Lvrcj4KoD+2q49zISL5wMH+bwLPW0SmP8oFOCA2D2dUj4mw47y8scW+ErP4h3QiLQf
	 G31ElyJEQ0JAQ==
Date: Mon, 25 Aug 2025 22:23:44 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, groff@gnu.org, 
	Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com
Subject: Re: Issue in man page pathname.7
Message-ID: <2xy5yjzdlcqyxtdhfdnw7bek4ovy5boje7bnwb7aimbc4ksubb@yq3iegevjzjs>
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
 <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
 <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>
 <67todkk4wpqgskfy3s75uy7cbtahfpcaxymdse7pjzrjk72r7w@25dwgnvj5imm>
 <20250825201000.dnkrcjnzjf5cdr22@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ftc6nxdtdtdppc5q"
Content-Disposition: inline
In-Reply-To: <20250825201000.dnkrcjnzjf5cdr22@illithid>


--ftc6nxdtdtdppc5q
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, groff@gnu.org, 
	Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com
Subject: Re: Issue in man page pathname.7
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
 <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
 <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>
 <67todkk4wpqgskfy3s75uy7cbtahfpcaxymdse7pjzrjk72r7w@25dwgnvj5imm>
 <20250825201000.dnkrcjnzjf5cdr22@illithid>
MIME-Version: 1.0
In-Reply-To: <20250825201000.dnkrcjnzjf5cdr22@illithid>

Hi Branden,

On Mon, Aug 25, 2025 at 03:10:00PM -0500, G. Branden Robinson wrote:
> Hi Alex & Helge,
>=20
> At 2025-08-25T20:57:22+0200, Alejandro Colomar wrote:
> > On Mon, Aug 25, 2025 at 04:17:32PM +0000, Helge Kreutzmann wrote:
> > > Am Sun, Aug 24, 2025 at 10:04:04PM +0200 schrieb Alejandro Colomar:
> > > > On Sun, Aug 24, 2025 at 02:48:46PM +0000, Helge Kreutzmann wrote:
> > > > > Without further ado, the following was found:
> > > > >=20
> > > > > Issue:    The URL is invalid
> > > > >=20
> > > > > "For maximum interoperability, programs and users should also lim=
it the "
> > > > > "characters that they use for their own pathnames to characters i=
n the POSIX "
> > > > > "E<.UR https://pubs.opengroup.org/\\:onlinepubs/\\:9799919799/\\:=
basedefs/"
> > > > > "\\:V1_chap03.html#tag_03_265> Portable Filename Character Set E<=
=2EUE .>"
> > > >=20
> > > > Hi Helge,
> > > >=20
> > > > That URI has '\\:' in it, which is correct in roff(7) (and in man(7=
))
> > > > source code.  That is removed by troff(1) when formatting the page.
> > > > If you read the formatted page that's not there.
> > >=20
> > > Yes, then no URL is there :))
> >=20
> > Hmmm, that depends on your terminal.  If there's no URL or hyperlink,
> > this might be an issue in either the terminal or groff(1).
>=20
> I need clarification on what you're seeing, Helge.

I see the text between the UR/UE pair, but not the link itself, nor a
hyperlink.  See yourself one of the last paragraphs on pathname(7) on
tty1, and let me know if you can't reproduce it.  (Or any page with a
UR/UE pair with text in the middle.)

Essentially, I see the same as this:

	$ man pathname | tail -n 10
	       ing shorter filenames, or restricting the allowed bytes in a filena=
me.

	       For maximum interoperability, programs and users should also  limit=
  the
	       characters  that  they  use for their own pathnames to characters i=
n the
	       POSIX Portable Filename Character Set.

	SEE ALSO
	       limits.h(0p), open(2), fpathconf(3), path_resolution(7), mount(8)

	Linux man-pages 6.15-24-g3d3ffa... 2025-05-17                       pathna=
me(7)

But of course, without piping to cat(1).  On the other hand, I wonder...
Shouldn't we get a proper URL if we're piping to cat?  Of course there's
no terminal with hyperlink support in a pipe!

>=20
> The presence or absence of `\:` escape sequences should not make the
> entire URL fail to format.  The visibility of the URL is dependent on
> the output device's ability to hyperlink it.
>=20
> groff_man(7):
>      .UR uri
>      .UE [trailing=E2=80=90text]
>             Identify uri as an RFC 3986 URI hyperlink with the text
>             between the two macro calls as the link text.  An argument
>             to UE is placed after the link text without intervening
>             space.  uri may not be visible in the rendered document if
>             hyperlinks are enabled and supported by the output driver.
>             If they are not, uri is set in angle brackets after the link
>             text and before trailing=E2=80=90text.  If hyperlinking is en=
abled
>             but there is no link text, uri is formatted and hyperlinked
>             without angle brackets.
>=20
> As far as I can tell, groff man's `UR` and `UE` extension macros were
> designed to degrade well on systems that don't implement them; recall
> that the man(7) macro language was designed in 1979 and did not
> anticipate hypertext.  (mdoc(7), sometimes touted as an alternative, was
> designed in about 1990 and had a similar lacuna--but like man(7), later
> saw a groff extension to fill the gap.)
>=20
> Since the link text itself is not in the arguments to a (possibly
> undefined) macro, it should get formatted in the page.  A _man_
> formatter that doesn't implement `UE` might leave off some trailing text
> (usually punctuation), but that too can be worked around portably[1] if
> one cares to.
>=20
> .TH foo 1 2024-08-25 "groff test suite"
> .SH Name
> foo \- frobnicate a bar
> .SH Description
> Visit
> .UR https://my.example.com
> my awesome website\c
> .if \n(.g \~
> .UE \c
> \&.

This should work as a reproducer; I expect you wouldn't see the URI in
tty1 (unless it's a problem caused by some Debian patch that you lack).


Have a lovely night!
Alex

> Admittedly, the supply of man page maintainers concerned about
> portability to DWB, Solaris 10, or Plan 9 troffs seems to be dwindling.
> I've never seen any page go to the foregoing trouble.
>=20
> > > > The effect of '\\:' is telling troff(1) that those are good points
> > > > to break the line if needed.
> > >=20
> > > Thanks for the explanation. Checking the URL after removing the \\:
> > > is a valid URL.
>=20
> It's worth noting that `\:` is also a groff extension; this time to the
> formatter, and dating back to about 1990.
>=20
>      \:        Insert a non=E2=80=90printing break point.  A word can bre=
ak at
>                such a point, but a hyphen glyph is not written to the
>                output if it does.  The remainder of the word is subject
>                to hyphenation as normal.  You can use \: and \% in
>                combination to control breaking of a file name or URI or
>                to permit hyphenation only after certain explicit hyphens
>                within a word.  See subsection =E2=80=9CHyperlink macros=
=E2=80=9D above
>                for an example.
>=20
>                \: is a GNU extension also supported by Heirloom Doctools
>                troff 050915 (September 2005), mandoc 1.13.1
>                (2014=E2=80=9008=E2=80=9010), and neatroff (commit 399a493=
6, 2014=E2=80=9002=E2=80=9017),
>                but not by DWB, Plan 9, or Solaris 10 troffs.
>=20
> There's a portability workaround for that, too.  Here's a real-world
> example.[2]
>=20
> I mention these issues because Helge's project intakes a huge variety of
> man pages.
>=20
> Regards,
> Branden
>=20
> [1] except to po4a: https://github.com/mquinson/po4a/issues/527
> [2] https://github.com/ThomasDickey/ncurses-snapshots/blob/ec918320a42c0d=
d57c1ea8481419bcaf862d16fd/man/curs_getch.3x#L46
>     https://github.com/ThomasDickey/ncurses-snapshots/blob/ec918320a42c0d=
d57c1ea8481419bcaf862d16fd/man/curs_getch.3x#L783



--=20
<https://www.alejandro-colomar.es/>

--ftc6nxdtdtdppc5q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmisxkkACgkQ64mZXMKQ
wqmmcQ//VxtMTHO7SQ7wJaYE1+5pctVgHoqzr5ENOZx1qdhyQBgab9oUllFAty9q
rynlSflxAHWAWOwzXPLhw/AVuwHuHfeRx8PuUhdXeOKtmKodOD+GAUU2eh0CakJj
bGC9ExyZU+VtJkXf8okQ7+EeuBtsygraBl7E5EqM6AZHo0G1vlUoszJlZg3DAR6D
mIp+23iGVpPWsI2DYEaGNSygUfvSm8R+kR5uJJeK+CHnfDXBB7U6y9oN7qMMpAHV
xM/p2CwAf1bASToGRmyFeWkCLUuCqAE8jMSUGDJ67l+HCu+O0iF+10fjPNenZbNF
Ke/5vXra0NvpdONTDkaOJffmzkwfTWdApAHxpAX8me3B94Q1Na/k03Mwnjq8dJqD
TUwZ8GCOz792il8sKS+xPGC7Mww3LYiUXQxVcNU2nwZLFt+Cp7cx0z64KPjF9OLm
K9rahwKdPaLl49vSt4qRQxYPgrUYe8vARCLixwArV9xTm+N2aCVLcZX9hC+yQWby
CWBQu7B6VLrkFJ3hCWEb0gBSobsRitGrAOnO1MYMRXKaVhkvveM4T21j6lkycTgU
7RKu0Kbc6o4nWCp5dJCUNQAt3ThGmX8Jfh1mQLWoj9/9Rn/3zwtZQ6mNN1jpriGp
//1nj4IGtkbfyojLndJ95qpJfF5ibvCaPcEAii16aJjivO+rMTQ=
=Q730
-----END PGP SIGNATURE-----

--ftc6nxdtdtdppc5q--

