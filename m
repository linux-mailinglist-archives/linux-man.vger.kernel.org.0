Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A94DC3D529C
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 06:51:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229683AbhGZELD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Jul 2021 00:11:03 -0400
Received: from luckmann.name ([213.239.213.133]:43991 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229658AbhGZEKs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Jul 2021 00:10:48 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E54073.0000000060FE3F44.00002204; Mon, 26 Jul 2021 06:51:16 +0200
Date:   Mon, 26 Jul 2021 06:51:16 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: Errors in man pages, here: rename.2
Message-ID: <20210726045116.GB19395@Debian-50-lenny-64-minimal>
References: <20210725170844.GA16696@Debian-50-lenny-64-minimal>
 <CAKgNAkiuPrqBvoFv-11SAxfEfvRvqLP-yvOA7sKBkr60PreJ=g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-8708-1627275076-0001-2"
Content-Disposition: inline
In-Reply-To: <CAKgNAkiuPrqBvoFv-11SAxfEfvRvqLP-yvOA7sKBkr60PreJ=g@mail.gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-8708-1627275076-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Michael,
On Mon, Jul 26, 2021 at 12:58:36AM +0200, Michael Kerrisk (man-pages) wrote:
> > Man page: rename.2
> > Issue: So far, the manpage does not mention a variable I<pathname>
> >
> > "The directory containing I<oldpath> has the sticky bit (B<S_ISVTX>)  s=
et and "
> > "the process's effective user ID is neither the user ID of the file to =
be "
> > "deleted nor that of the directory containing it, and the process is no=
t "
> > "privileged (Linux: does not have the B<CAP_FOWNER> capability); or "
> > "I<newpath> is an existing file and the directory containing it has the=
 "
> > "sticky bit set and the process's effective user ID is neither the user=
 ID of "
> > "the file to be replaced nor that of the directory containing it, and t=
he "
> > "process is not privileged (Linux: does not have the B<CAP_FOWNER> "
> > "capability); or the filesystem containing I<pathname> does not support=
 "
> > "renaming of the type requested."
>=20
> Wow. That bug has been present for 28 years (since the page was first
> added in 1993)!

I noticed it when I was trying to make the translation more
consistent. And this one stood out. Hopefully not too many users got
confused.

Greetings

        Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-8708-1627275076-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD+P0QACgkQQbqlJmgq
5nAsTA/+MOLUbcw/8Peay+VW+4E8NmoqVM3tGzgV/Nzv6s8F7TpSw4jIv0oKif4m
UpYArX53eRBJB/lc41S4fSCVS6IB4HtdinQJRJ8q1UKN/IJ2zTMsuL+M3Og9JQBR
EABPvwnnsS/9s1DBst/SrjdLlVSPTA1mhmtCf5GaBdDgNM956vosIlobJE0Ps+ce
8aqJK9wyGfpiAGAaHO84K/gL+/9aRlywULt6PgctBlAin1pNQfbrwCbouGd00jch
rQQlhSkcLnMbIxPjsUnu+a+EmTeYWEGQx7lUGTcy1+BbI4p2I6taCxQn9o7LucKt
YabP8P+Ri24H27uy11aM4QWnP9B/uf9xuVGnhrXHKlUFex3Aa34NJ+LZJIUBWM46
HY1yjKU8QRPsQFflF9pt58H2BXsT0Pizbk+g2cOcrjVoFOzld87yhYBPeDrO3LYJ
Kr26jyazbghQ5fF0bnCLJxNXmUOVVEgJrasf09ZzW5z0sQxZ/ITiDUuBMiS8RSzn
PEZuL/Jz/adOwhb/f5bbMwGABf1ZWHcZbrRjJYl/tcooUD9G8Sda/EUnKB9ii5wX
ltqitH8P1k9eLF4CS2Wb5hF26KDsoknBqnkJFxoRDh5Z3G78swe+8F/6y/++FCEo
VrsqGtTg5MZrLJFjiRyG0m0w8gAcOGyJWuvdSNEvHg5sOwhgz0U=
=dEPY
-----END PGP SIGNATURE-----

--=_luckmann.name-8708-1627275076-0001-2--
