Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EADF61B4D32
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2020 21:18:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726071AbgDVTS4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Apr 2020 15:18:56 -0400
Received: from luckmann.name ([213.239.213.133]:58663 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725913AbgDVTS4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Apr 2020 15:18:56 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E56034.000000005EA0989D.00006854; Wed, 22 Apr 2020 21:18:53 +0200
Date:   Wed, 22 Apr 2020 21:18:53 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: Errors in man pages, here: msr(4): Content
Message-ID: <20200422191853.GA26557@Debian-50-lenny-64-minimal>
References: <20200419064812.GA31256@Debian-50-lenny-64-minimal>
 <CAKgNAkgkNcUiV=Tc38Kd46fECzaZZ0hyVw8U2visf5absJq=Gg@mail.gmail.com>
 <20200421191051.GC4951@Debian-50-lenny-64-minimal>
 <CAKgNAkiizD62V=Yi5Pt+3kzsgqwzzoYY+J5h2SskrHwQMd591w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-26708-1587583133-0001-2"
Content-Disposition: inline
In-Reply-To: <CAKgNAkiizD62V=Yi5Pt+3kzsgqwzzoYY+J5h2SskrHwQMd591w@mail.gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-26708-1587583133-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Michael,
On Tue, Apr 21, 2020 at 09:38:33PM +0200, Michael Kerrisk (man-pages) wrote:
> On Tue, 21 Apr 2020 at 21:10, Helge Kreutzmann <debian@helgefjell.de> wro=
te:
> > On Sun, Apr 19, 2020 at 10:47:38PM +0200, Michael Kerrisk (man-pages) w=
rote:
> > > > can read proc as regular user (etch)
> > > >
> > > > "This file is protected so that it can be read and written only by =
the user "
> > > > "I<root>, or members of the group I<root>."
> > >
> > > I need more context here to find which part of the
> > > page this note refers to.
> >
> > This is the last paragraph before NOTES, i.e. the last one in
> > DESCRIPTION.
>=20
>=20
> Ooops _ I must have been looking at the wrong file.
>=20
> > Having a brief look this FIXME probably is (no) longer correct, but
> > the translator who noticed this 2011 is no longer active, so please
> > close if it is (no longer) applicable.
>=20
> Close it, I think. Certainly on my system /dev/cpu/N/msr is readable
> only by root.

Closed, and sorry if some of the reports are obsoleted, I tried to
check but did not always succeed.

Greetings

          Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-26708-1587583133-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6gmJ0ACgkQQbqlJmgq
5nDhpBAAqXLWAzsW+0VsEO6/bGY3QSNhNAhQlQG7+HKVy9658mODVxNIT3cv0bCx
l2J0le5H/O6hXJXC4sMx1UiEYSLqnCNucgFWAeZF8fPqzbUxVPuVAZpGQAd9zt0L
JqxmjQ/bmDu3Y4MBaV20P4ZKd48zBf38vZ5UCZNxedv+u8OkPVc/MFTqcIcYTAa+
Im3geAypdNxIyMl75g5hKVeu9NPFvBteII2S9c3cDEEN8gRE4a0bcDygcURYLMe0
Xf+iP5iT1lMbhdUpBKdlepBrl+vnKnEg/x1qp2RYHN3wtCeXqcDtNyelCaV0/zXy
7A+8055AG6nCw0h/AeOL2TJpjnMXgWP09ive/h21GbE162e7kgKSdqMAJmdYvczg
ediDqAGQVVFT8mmN+p5VSky7vImWsaeeL1XzwJ8TWkspS+Msga56spN4Vq1SI4/2
drF7QTGxbYTp9ugQ3EAf2RdjNCRmgWzbBVdryTTbfUQixWJohX0/z6QNBcJtyqW0
OkhTHREngopd1TIKyFZhkwI0267/Y29H9dOgE+WdrnG1tV1jf4gg/pmtCdj56Z6c
xkz3Jhea2APLf00McCY2sjCE0BiAfvfE3yQ1zcVT7tke8sg4tQ+RwT6PAdjOIYKD
VK6iCjUUlS+WwV8FyAwOxCBLmruoJENA1SyOOyDCf0Ko/ilrSww=
=QG0s
-----END PGP SIGNATURE-----

--=_luckmann.name-26708-1587583133-0001-2--
