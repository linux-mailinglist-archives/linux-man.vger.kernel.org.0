Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C96E4882B1
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 10:06:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233963AbiAHJG1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 04:06:27 -0500
Received: from 3.mo560.mail-out.ovh.net ([46.105.58.226]:58827 "EHLO
        3.mo560.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231402AbiAHJG1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 04:06:27 -0500
Received: from player791.ha.ovh.net (unknown [10.109.156.220])
        by mo560.mail-out.ovh.net (Postfix) with ESMTP id B034423211
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 09:06:25 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player791.ha.ovh.net (Postfix) with ESMTPSA id DC9BD2605A5CC;
        Sat,  8 Jan 2022 09:06:21 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-100R003e6b047b0-80fb-4b5a-9196-92b4543fb41c,
                    E73EBA98AEB195A144C17DE4F959AB65BE9739A6) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
Date:   Sat, 8 Jan 2022 10:06:09 +0100
From:   Stephen Kitt <steve@sk2.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH 3/9] inet.3: Switch to _DEFAULT_SOURCE in the example
Message-ID: <20220108100609.026b3cc9@heffalump.sk2.org>
In-Reply-To: <92e9abea-7be0-c22d-d407-05a12e250af4@gmail.com>
References: <20220107164621.275794-1-steve@sk2.org>
        <20220107164621.275794-3-steve@sk2.org>
        <92e9abea-7be0-c22d-d407-05a12e250af4@gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/.B=KFyD6KL.j.d2kWrjWABP";
 protocol="application/pgp-signature"; micalg=pgp-sha512
X-Ovh-Tracer-Id: 6057622974917674630
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudegfedguddthecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkjghfofggtgesghdtreerredtjeenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepveelvdeufedvieevffdtueegkeevteehffdtffetleehjeekjeejudffieduteeknecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjeeluddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--Sig_/.B=KFyD6KL.j.d2kWrjWABP
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Sat, 8 Jan 2022 02:26:51 +0100, "Alejandro Colomar (man-pages)"
<alx.manpages@gmail.com> wrote:
> On 1/7/22 17:46, Stephen Kitt wrote:
> > _BSD_SOURCE has been obsolete for long enough that it seems reasonable
> > to update the example program to use _DEFAULT_SOURCE instead. >
> > Signed-off-by: Stephen Kitt <steve@sk2.org> =20
>=20
> Deprecated, yes; obsolete, almost but not yet.
>=20
> glibc 2.17 is still supported in CentOS 7, IIRC, and _BSD_SOURCE was=20
> deprecated since glibc 2.20 (see feature_test_macros(7)).
>=20
> However, since this is an example program, which should mainly teach how=
=20
> to write new code, I'm inclined to use the non-deprecated version.

My reasoning here is that, from a distribution perspective, man-pages=E2=80=
=99s main
branch describes the future. CentOS 7 carries glibc 2.17, but it also carri=
es
an old version of man-pages, which (hopefully) accurately describes the
environment there. Many example programs in man pages don=E2=80=99t build o=
n older
distributions ;-).

Regards,

Stephen

--Sig_/.B=KFyD6KL.j.d2kWrjWABP
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEnPVX/hPLkMoq7x0ggNMC9Yhtg5wFAmHZVAEACgkQgNMC9Yht
g5x6GA/+JMDRtBBQF7z7We1k2881E4Kc29bmUEuIlo0wFf9Beha7OwZU2PTpnbOY
PkP5d/r/u1idZfadzEfstE1tZz4aB/3jcN+JY6LDEpcF0PBGJNAb/wUdhXF6ElLd
zSqeNqFS+WESpYuPRqBntGxriXoEP3GY2gCZjXVJBq1qr/vlRUWr4qUORJXrJr73
SyfGtSR8IF77ObTC9CxG/C5CMiuBaRd6suzR1nx/eOjNA4OExtNVGOioYe+6vAFw
r8uuu28ZFUoxStsRQ3Thxw68egdn7T0Fwct7vL0WA0CKwUIwmDOY5GdfErDIZJX2
BNTLqqHnJKSGbT4A5zgjSfRTqWzBN5TurLxPmSU/+gSs0woTZFvCSa8EIOni7HqA
zbDw1mzWu7WwZCLg5zh6zlChiHvw9wkG2degwtkyS3YhCF6SCjZuDGQV9nOUtjNO
SNf6yO1S5+YkDePbXGTPzAJdNeEhKDIA9XuA9qjAb5HHSmpyIngdnvZ5ZOADpBOh
3UVdP3Q0N1ShcDGDxl7ONrSXrWM9rX+2Y+KdYgRg7+jIxRmdg+1pRFAx1qvQnyeH
+JQFxsuMWRtsk0BpqRmo8PSE0noxgxKWYkSjD3f9EdxgTW/GBWwDRA3coDrL7Rq6
UkWkUiTf+pa7dIDMv5hfqBla0H76UUl4hYS8bkz118F3HcQ6Q0c=
=MuCL
-----END PGP SIGNATURE-----

--Sig_/.B=KFyD6KL.j.d2kWrjWABP--
