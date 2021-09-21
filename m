Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BECED413AEA
	for <lists+linux-man@lfdr.de>; Tue, 21 Sep 2021 21:45:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231468AbhIUTqm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Sep 2021 15:46:42 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:35770 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S234636AbhIUTql (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Sep 2021 15:46:41 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 5E063360ECB;
        Tue, 21 Sep 2021 18:06:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1632240370;
        bh=e1yBTQrr/6Lr3vsNf6KQye8bwqUlzmdShNkbAy5V09I=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=cncTZUkH6kMM8k6aTQ5C8HobfGye0qmFvjs7hynHKa6m6LrOWlvazGiZPlPz8Jx6p
         Uw1vpavRIMC0kaHsIKIa8GzOrI+OKcsd+523q/tYZmvqSgsq0RuZI68uJcHh67RPdW
         q2TWCeTfXlq3lr1WnDhYQxvu5uDf61DRBrsVEzAEJmZwIPD81aCprXm6zhJXs4xxt8
         S/y6MeXZL1DgMM9WnMQY3OppjaPbnXKQNOJwITG1aXZAahVhoJlPOAtCkJGHV4MMg/
         n7fwQIkElPh6d9/yH7iL43cy+uuMT2iUGWlPWz4jQeat8rj8eMPH4oHdYu1bEw3Rn/
         +O5Jgn/ms+gcA==
Date:   Tue, 21 Sep 2021 18:06:09 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] rpmatch.3: remove first-character-only FUD
Message-ID: <20210921160609.cq6vg2wqwchthqmt@tarta.nabijaczleweli.xyz>
References: <8f5f9b7d4f067a4a479fe400dee99120bf0a1abd.1632231952.git.nabijaczleweli@nabijaczleweli.xyz>
 <be1eaa87-3fa3-2e1f-7e6c-80362adbb935@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="55fqnttsv7nfjlhr"
Content-Disposition: inline
In-Reply-To: <be1eaa87-3fa3-2e1f-7e6c-80362adbb935@gmail.com>
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--55fqnttsv7nfjlhr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Tue, Sep 21, 2021 at 05:20:32PM +0200, Alejandro Colomar (man-pages) wro=
te:
> Are you sure?
>=20
> So, it seems to me that by using {yes,no}expr and not {yes,no}str, it is
> limiting itself to the first letter, as the current BUGS section specifie=
s.
> Right?
Quite sure:
	localedata/locales/am_ET:yesexpr "^([+1yY<U12CE>]|<U12A0><U12CE><U1295>)"
Granted, I, unfortunately, don't strictly read Aramaic
(but a cursory glance at a dictionary shows "=E1=8A=A0=E1=8B=8E=E1=8A=95" m=
eans yes),
but I do Ukrainian:
	localedata/locales/uk_UA:yesexpr "^([+1Yy]|[<U0422><U0442>][<U0410><U0430>=
][<U041A><U043A>]?)$"
which works out to
	"^([+1Yy]|[=D0=A2=D1=82][=D0=90=D0=B0][=D0=9A=D0=BA]?)$"

This is odd, data-wise, but it's decidedly not just the first letter
(but it does match, what, "^y$", "^=D1=82=D0=B0$", and "^=D1=82=D0=B0=D0=BA=
$"? very odd!!).

On current glibc, if I was in a uk_UA locale,
"nyes" is -1, not 0 like this page would lead me to believe,
and, similarly, in an_ET, "=E1=8A=A0" (-1) is not the same as "=E1=8A=A0=E1=
=8B=8E=E1=8A=95" (1).

FreeBSD (and, presumably, everyone else) uses CLDR data,
which provides something much more sensible:
  [1] ^(([yY]([eE][sS])?)|([yY]))
  [2] ^(([=D0=B4=D0=94]([=D0=B0=D0=90])?)|([=D0=B4=D0=94])|([yY]([eE][sS])?=
)|([yY]))

This, admittedly, is not perfect, but the code that generates it [3]
explicitly handles full yesstr words because the data itself [4] is
constructed around yesstr, and yesexpr is a generated expression that
matches yesstr =E2=80=92 they're the same.

rpmatch() is a correct (well, /the/ correct) approach to handling this
(or, well, an equivalent on libcs that lack it, it's like seven lines) =E2=
=80=92
if a similar warning were prudent, and I very much believe it is /not/,
it'd belong in nl_langinfo() {YES,NO}EXPR or langinfo.h,
but it'd be a warning /for the end-user/, who, presumably,
knows the language they speak, not for the programmer.

=D0=BD=D0=B0=D0=B1

1. https://github.com/freebsd/freebsd-src/blob/373ffc62c158e52cde86a5b934ab=
4a51307f9f2e/share/msgdef/en_US.UTF-8.src
2. https://github.com/freebsd/freebsd-src/blob/373ffc62c158e52cde86a5b934ab=
4a51307f9f2e/share/msgdef/ru_RU.UTF-8.src
3. https://github.com/unicode-org/cldr/blob/62c90a357dc25911db60fcdf7d5a801=
19df27963/tools/cldr-code/src/main/java/org/unicode/cldr/posix/POSIXUtiliti=
es.java#L336
4. https://github.com/unicode-org/cldr/blob/62c90a357dc25911db60fcdf7d5a801=
19df27963/common/main/ru.xml#L15789

--55fqnttsv7nfjlhr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmFKAu4ACgkQvP0LAY0m
WPG3JRAAluhyMQSXU9sQgAsU6WyS3qnF79CTeZ8zvCTU/OpE4gjx+9IvA1DW+n4Y
ts/+ZWkQtYgcUjHSfGP9lG5EOrGpQJbO+2LT5YNtVi+Titd7t8itkAIuVV8+Ss4q
K6DHIeyXO+JJpVcc55N1DHl60sIaRB+xh430tDJPmEiqzFr0n1+5U/0H0xjRiEUY
pVHfq7EITtyksQKo+2OuTz6c+kq6ikyBaIF/gpLQJNM8odumsLG4C7LAhWLFedIv
7ZnCHiHuMCS6LBdLqGnotmOFrK6ioYb5PL7HPpM2vf+O+yFxhQiq935Dh5mLN9tr
MKZcwYXZTVGMfN0oy4lU5O0rDGvMDrfHgLjkrkJyZLyo7MLH2hhd3K4sjHwXQa6U
9cUtoCheDT/YjD/2M2dBsm4XrR+NSM//LJRuVOnvcDltOro25S2VqKQcfR3pWHCi
EFiwmkYlubX5U6UueSQr2sbWHBGyR08GMwzqTA7JRQFwJ/ntXxuW2z2sZW+esaPm
ere9Bnpwd0Xi568c3qEfbbWuhSqtQ8n0kxvVzQkS8v5lCjFhKb45x2okSBu7MPfP
3qzYOYSp/mLAZ+C3KPSX3AAboDTPcYLeU1rYdTLvtnhxi42avlP0hiWuqesBAIgm
npM3PuOfxx1PxzpHzNLyWbUeVhPXBRL5KqysKIzM5R0HqnkmXbU=
=V60w
-----END PGP SIGNATURE-----

--55fqnttsv7nfjlhr--
