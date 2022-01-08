Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA0634884DB
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 18:09:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234778AbiAHRJV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 12:09:21 -0500
Received: from 14.mo582.mail-out.ovh.net ([46.105.56.113]:49247 "EHLO
        14.mo582.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232548AbiAHRJV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 12:09:21 -0500
Received: from player699.ha.ovh.net (unknown [10.109.138.157])
        by mo582.mail-out.ovh.net (Postfix) with ESMTP id 4CD4C227B2
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 17:09:20 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player699.ha.ovh.net (Postfix) with ESMTPSA id 948602612A2D8;
        Sat,  8 Jan 2022 17:09:14 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-102R004c64eaaff-6805-49fe-9833-b1a3c1fa605b,
                    E73EBA98AEB195A144C17DE4F959AB65BE9739A6) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
Date:   Sat, 8 Jan 2022 18:09:07 +0100
From:   Stephen Kitt <steve@sk2.org>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH 9/9] malloc_info.3: Use intptr_t to store pointers
Message-ID: <20220108180907.7e06d7d3@heffalump.sk2.org>
In-Reply-To: <20220108103041.ui4uiqfpdrn5mt33@jwilk.net>
References: <20220107164621.275794-1-steve@sk2.org>
        <20220107164621.275794-9-steve@sk2.org>
        <b4622fe8-ec81-654f-fa32-bf2efa0459ea@gmail.com>
        <20220108103041.ui4uiqfpdrn5mt33@jwilk.net>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/HbsGdyXdO_sHUYusCDroIm/";
 protocol="application/pgp-signature"; micalg=pgp-sha512
X-Ovh-Tracer-Id: 14213360426964059782
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudeghedgjedvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfgjfhfogggtsehgtderreertdejnecuhfhrohhmpefuthgvphhhvghnucfmihhtthcuoehsthgvvhgvsehskhdvrdhorhhgqeenucggtffrrghtthgvrhhnpeevledvueefvdeivefftdeugeekveethefftdffteelheejkeejjeduffeiudetkeenucfkpheptddrtddrtddrtddpkedvrdeihedrvdehrddvtddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehplhgrhigvrheileelrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepshhtvghvvgesshhkvddrohhrghdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--Sig_/HbsGdyXdO_sHUYusCDroIm/
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, 8 Jan 2022 11:30:41 +0100, Jakub Wilk <jwilk@jwilk.net> wrote:
> For the record, this is what you get when you compile the original code=20
> on a 64-bit architecture:
>=20
>     $ gcc -Wall -pthread malloc_info-example.c
>     malloc_info-example.c: In function 'thread_func':
>     malloc_info-example.c:16:14: warning: cast from pointer to integer of
> different size [-Wpointer-to-int-cast] 16 |     int tn =3D (int) arg;
>           |              ^
>     malloc_info-example.c: In function 'main':
>     malloc_info-example.c:57:32: warning: cast to pointer from integer of
> different size [-Wint-to-pointer-cast] 57 |
> (void *) tn); |                                ^
>=20
> * Alejandro Colomar <alx.manpages@gmail.com>, 2022-01-08, 03:25:
> >On 1/7/22 17:46, Stephen Kitt wrote: =20
> >>int isn't large enough to store pointers on all platforms, use=20
> >>intptr_t instead. =20
> >
> >Well, since the pointer came from a previous 'int', there should be no=20
> >problem.  But since the C language (or even POSIX) is very permissive=20
> >about what a conforming implementation can do with pointers, and it=20
> >only guarantees conversions to/from [u]intptr_t, I'd take this patch=20
> >for correctness.  However... =20
>=20
> The standards guarantee that void* =E2=86=92 intptr_t =E2=86=92 void* rou=
nd-trips,=20
> but that's not what this code does.
>=20
> The example converts int =E2=86=92 void* =E2=86=92 int. Changing int to i=
ntptr_t makes=20
> the compiler warnings go away, but I don't think it improves correctness=
=20
> in any way.

Agreed, the example is just trying to pass an int into the function given to
pthread_create. AFAICT the only requirement for correctness is that the type
used is at most the size of void *.

It=E2=80=99s probably not worth bothering about the compiler warning...

Regards,

Stephen

--Sig_/HbsGdyXdO_sHUYusCDroIm/
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEnPVX/hPLkMoq7x0ggNMC9Yhtg5wFAmHZxTMACgkQgNMC9Yht
g5xKeg//allM09DjQYOQdgbcKK/b22EEZadwNtcOEHKIniUXeKjMgRzVd+CX0MzB
SnIULQiQxixqnAUl8zUehMUkflM8ziIAiFPP12AgKI9A5HK7hnKQA2Rvz63mPvqK
xyCHqbYJqUtP/L3sG+kISA8B8BlZ+DuLgWDrzqGVG0sZr2y4W4zXA74pULklGWu9
ATt1ozNP7HKm6JaYufQ+9wJWp9RFYazgXzuoWq0WYbdUW6Uh1hMuRG1I88DFxD5k
PupnJUvYmO7FKMQLsrKr1w+HIVTDKVC1YHM7iE6xew6/CZkqwdY/vXQ9Io7u5A/e
5nMGdFG+56/WFQoiIMICEeLIhNlyAC/f4t7MR5b0ibJw1cWZ8g8MHfQDZu2lZZYm
255QhV2ynG25W7cWm4pBvFH/bGe/ZxSeb32c6x768B3oJ+GFTLlOhRJDTF/RPVGb
wIluaKX995zU1/JIZ52q2j5e2jhLsygjaanzldg6nP7hgQLqZ0+Yk3mwLjWRnsn5
oVvwU2JNGFUsDBNxj8UsrMo+3q1Pe9M9RuSTQVtgCGORnhKlF4iwmFiINGugb2Jf
DB+bp0x3JYJYq7cp3uh2GN+1wswu39a1P6RZ74NuYFC3yJ+VCdyKehuMD6OK7ris
4hZie+YY36zHUhS7Ul3ADiVx8/H1GlL9vLtKR6oOwmSG8pUuMgM=
=tLQk
-----END PGP SIGNATURE-----

--Sig_/HbsGdyXdO_sHUYusCDroIm/--
