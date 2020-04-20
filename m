Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BAE461B162C
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 21:48:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726141AbgDTTs6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 15:48:58 -0400
Received: from luckmann.name ([213.239.213.133]:44731 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725988AbgDTTs6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 15:48:58 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E56031.000000005E9DFCA8.000052DC; Mon, 20 Apr 2020 21:48:56 +0200
Date:   Mon, 20 Apr 2020 21:48:56 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: gethostbyname(3): Space/Formatting
Message-ID: <20200420194855.GE19913@Debian-50-lenny-64-minimal>
References: <20200419064802.GA30701@Debian-50-lenny-64-minimal>
 <2318ec0f-bc6b-c202-3fca-42c10c714372@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-21212-1587412136-0001-2"
Content-Disposition: inline
In-Reply-To: <2318ec0f-bc6b-c202-3fca-42c10c714372@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-21212-1587412136-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Michael,
On Sun, Apr 19, 2020 at 10:09:16PM +0200, Michael Kerrisk (man-pages) wrote:
> On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> > **
> >=20
> > Space between true and (1) and mark up
> >=20
> > "The B<sethostent>()  function specifies, if I<stayopen> is true (1), t=
hat a "
> > "connected TCP socket should be used for the name server queries and th=
at the "
> > "connection should remain open during successive queries.  Otherwise, n=
ame "
> > "server queries will use UDP datagrams."
>=20
> I don't understand this report. Can you elaborate please.

We translator understood the "(1)" as the section number for the man
page of true. So actually it should also contain markup, i.e.

true (1) =E2=86=92 B<true>(1)

And there is no space between the man page name and the section. If
another meaning was intended, then we translators misunderstood this
sentence completly.

Best regards

           Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-21212-1587412136-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6d/KEACgkQQbqlJmgq
5nClKQ/+KR4frro7wKP1IDoJnWIL2xL2htiYxZsTQWlKlwQ5ta40rhEPAAb8xphd
xwOraVQyvosnqJ3XJ6p9LVHSeh1UbbpmaZ6Y5/WYNYkPJfl2XBQ3191nUMOl1q08
pd4m6zdzm4ID8o1gswtKCC2b9klEDpwAEDDyki2N9oz2ls0NzruwhJUTcVtb6KNh
sKQP5Red/GrLfVauhXcRXsp4xX+znDzV9CzYFK1ztptakLC65E4Trn2DKNUb4z+l
e9I66jlCE83oRw+ArDeRu5UXUFekDWq3YJKFA2ZkqH4cKaZtOhvVNqQRe9ocr10M
OOsHOacKHatEIFwQtEEoAYgoY5oCd7GmnAhBtLGZFA3wihIFMTt9ta9ENZhU2tJo
k8vgfS8nGZyFZT4GiIZVf3q1D8qwgGKm6ccqeqy3932MmyN7CtjDtre1QsA3crha
ohjajrUO5WK8/HBg2TlreSRIfbM3+pH12XL6nPALSbOBsLZ7zB7l3IEBJxkpre6L
YqI+heOTcGLRo8SBv2Wnemav3+ZTP+w//qjuZ9zD/rglLSgxYf/wzVoxTkDfZauU
RSxCI6yhNzh6SvDC1U3O0mhwFHXD1emhBvemvdG9JIGArJHT1KSfRGsl4MugPAnJ
sd45+ezgnKxNeYZ+Y8If76yHOHDm9/GzIvjfUXHNk+feGIFXwmI=
=6XZj
-----END PGP SIGNATURE-----

--=_luckmann.name-21212-1587412136-0001-2--
