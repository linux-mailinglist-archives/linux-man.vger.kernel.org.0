Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30C653F5C24
	for <lists+linux-man@lfdr.de>; Tue, 24 Aug 2021 12:29:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236205AbhHXK3o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Aug 2021 06:29:44 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:36020 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S236217AbhHXK3l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Aug 2021 06:29:41 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id A9115360272;
        Tue, 24 Aug 2021 12:28:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1629800933;
        bh=CkJNr64nuAdA7Ad5S2c2uP02zb0jkwasWQlMYR9ObSM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MgtTfw38Xo8nQ1ro+FR2XHq+INBIUsfD9mUm29EFHRuC3fkYzzReuMSSeZdBT7YHT
         h279wNUiRK/CsVY1yN7epRQxAOQmxdRvQbPGTwDYeF6LiZQtijP3YFr595t4Er1jmc
         JvznbFFYmnPMTLX6F995sfKk3aHqiof/aJNf/MAcSQ7ygiEjJNRdFHClHSpioSnQKd
         E0peO8xRa6Y2HIPR4LnCymxaYYqxulksEiigs9oeq6LmVfc0sD2BWgcHre3pVHgcqi
         eJo5A4PygrYWALTPnbi3qMECZxGXmW5zeJTgteE+WkPQkFjkX7E6X3BtzImq4qP0IQ
         hYHEYvsGNQhDA==
Date:   Tue, 24 Aug 2021 12:28:52 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH 1/2] strdup.3: drop mention of "the GNU GCC suite"
Message-ID: <20210824102852.b7sadpaqiuja7nj4@tarta.nabijaczleweli.xyz>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <CAKgNAkgAO8_37aoQPPY1=jprfnzM6_vtpFMZodDBFwb_9YJhYA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="7ww7ih3fdhvqapnt"
Content-Disposition: inline
In-Reply-To: <CAKgNAkgAO8_37aoQPPY1=jprfnzM6_vtpFMZodDBFwb_9YJhYA@mail.gmail.com>
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--7ww7ih3fdhvqapnt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Tue, Aug 24, 2021 at 11:21:15AM +0200, Michael Kerrisk (man-pages) wrote:
> On Mon, 23 Aug 2021 at 23:01, =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijacz=
leweli.xyz> wrote:
> > ---
> >  man3/strdup.3 | 3 ---
> >  1 file changed, 3 deletions(-)
> >
> > diff --git a/man3/strdup.3 b/man3/strdup.3
> > index 1e1ac34de..963de7d48 100644
> > --- a/man3/strdup.3
> > +++ b/man3/strdup.3
> > @@ -99,9 +99,6 @@ and
> >  are similar, but use
> >  .BR alloca (3)
> >  to allocate the buffer.
> > -They are available only when using the GNU
> > -GCC suite, and suffer from the same limitations described in
> > -.BR alloca (3).
>=20
> Dropping mention of GCC seems reasonable, but why drop the piece about
> "same limitations..."?
That paragraph now reads
  strdupa() and strndupa() are similar, but use alloca(3) to allocate the b=
uffer.

I think this is short and unflowery enough that nothing more is needed
(or, indeed, anything more would be detrimental) =E2=80=92 and clearly poin=
ts to
"see alloca(3) for the limitations of that allocator".

Plus, it's not like malloc(3) doesn't have its problems, too,
but I don't see those being touted in the first paragraph;
reducing these to the bare minimum,
  strdup() copies into malloc(3) and you can free it with free(3),
  strndup() likewise, but up to n, and
  str[n]dupa() use alloca(3) instead =E2=80=92 be wary of what alloca(3) do=
es!
doesn't really make sense =E2=80=92 it's obvious that, ex definitione,
alloca(3) suffers from alloca(3) problems and input limits,
just like malloc(3) from the malloc(3) suite's.

> > Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> This patch could do with a short commit message I think. See below.

How about something like this for the message?
  str[n]dupa() are available on every modern platform, incl. Clang,
  ICC, &c.; by shortening the third paragraph, it now points squarely
  to alloca(3), which is scary enough, so drop the extraneous warning

Best,
=D0=BD=D0=B0=D0=B1

--7ww7ih3fdhvqapnt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmEkyeIACgkQvP0LAY0m
WPHFvw//XOb2m5bIYnOs5hKJG0ttjGXiW8BnlFiuWiAn6JUtUkYi135HuSGRmR1w
winQefL9XUTks54gpoCUVC+OWVfMDhqBPS+lG4oiocAiHrTnjma9rHifuTWKJty+
RK9NqLTVTmRQ9pvzRwXe8tqmuXkdVkHzfHZuY6UBm9axKvyerCXNZbv0Ilf36p6w
RIaWGMGg8/zbWdzD/JJza8DyaeakeJdgspQpUUuduSaHidD4Fsnci/8VONqGZDwS
tYbuR9USoDC6vCY0tIoXyelf2DuRIFHx636aQoHwQE4Akd6+T4pYB+sZ+k4gi4/Z
7OUiw/QVcL6cIHOJLhWc4QT1i2ZMEfQ4PppgAG7nhZeYnKRfp68gS9KKIXBGmelp
FVw4zMf8isDZmJX5zRL6XD/LLyTZHrSdjrqHeyt6bP8vcHF/4Mpec8gS2L7/6Dz0
f+Lgv71Y7+NEtbYHU2pVDOQ7gjPSuFyeheREf17B7X7mQZUrSKv+5f0Yqz2BUAa8
tNmccSohHsHFBLHzM2bK0EJsGkbEXnVDQiVr3aeUiXpg7PSGYMDStBSD6jiMVG9N
JvkWfFS28sY/ZPvdsRHvQy6CDkP3oBQjqbWq7PYrDyoFAyMnEUNcZp2oKMuj+iEm
ywjEkXArjePuVSy7XhaLDYPvQcxYO7mnA3ty322Con05o2oTmP4=
=VeTN
-----END PGP SIGNATURE-----

--7ww7ih3fdhvqapnt--
