Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14B711C0E7F
	for <lists+linux-man@lfdr.de>; Fri,  1 May 2020 09:11:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728246AbgEAHLv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 1 May 2020 03:11:51 -0400
Received: from luckmann.name ([213.239.213.133]:49893 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728212AbgEAHLv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 1 May 2020 03:11:51 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E56034.000000005EABCBB4.000005C5; Fri, 01 May 2020 09:11:48 +0200
Date:   Fri, 1 May 2020 09:11:48 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     =?utf-8?B?IkthaSBNw6RraXNhcmEgKEtvbHVtYnVzKSI=?= 
        <kai.makisara@kolumbus.fi>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: st.4.po: Wording
Message-ID: <20200501071148.GA938@Debian-50-lenny-64-minimal>
References: <20200419064826.GA32071@Debian-50-lenny-64-minimal>
 <9342d9e7-5629-6908-918a-44270d4e7b4f@gmail.com>
 <60355D0B-FEDB-4F67-8B38-E3614B9BAC97@kolumbus.fi>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-1477-1588317108-0001-2"
Content-Disposition: inline
In-Reply-To: <60355D0B-FEDB-4F67-8B38-E3614B9BAC97@kolumbus.fi>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-1477-1588317108-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Kai,
On Mon, Apr 20, 2020 at 06:59:07PM +0300, "Kai M=C3=A4kisara (Kolumbus)" wr=
ote:
> > On 20. Apr 2020, at 12.48, Michael Kerrisk (man-pages) <mtk.manpages@gm=
ail.com> wrote:
> >=20
> > [CC +=3D Kai]
> >=20
> > On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> >> Dear manpages maintainers.
> >>=20
> ...
> >> **
> >>=20
> >> media =E2=86=92 data
> >>=20
> >> msgid "Go to the end of the recorded media (for appending files)."
> >>=20
> End of media is the end of the tape. End of recorded media means
> after the last record/filemark that has been written to the tape. Usually
> (not always) you can write more data after what has been written
> so far. End of recorded media is standard tape terminology.
>=20
> >> --
> >> drive =E2=86=92 media
> >>=20
> >> "B<GMT_WR_PROT>(I<x>): The drive is write-protected.  For some drives =
this "
> >> "can also mean that the drive does not support writing on the current =
medium "
> >> "type."
> >=20
> This basically means that the drive refuses to write to the media. It can=
 be
> write-protected by the user. The additional text hints at the possibility
> that the drive can only read the media type in the drive. It is quite
> common that drives can read, for instance, several old formats
> (usually with smaller capacity) but can write only the newest types.
> Many times the user may not know very well the properties of the
> drive and wonders, why can=E2=80=99t I write even if the tape can be read
> and the write protect tab is off.

Thanks for the explanations.

Greetings

         Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-1477-1588317108-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6ry64ACgkQQbqlJmgq
5nB/RRAAqpPMrmWZqsJeaFt4h11vLAYihwkaf8HbbASHRgxeHVLYYuJFJ3IEi4gt
ZHCpsYKsB1kSDkmrk4gGRzkMN6IbmS7wq4Wk9Fe/6hU4CUeLXAhr9wMMRn98/b3U
Wa9/E51k2x3qc/kn4FMip17RDst/pUK7bO/WZrXtchaaWVUgL3USJMz8y+C1MWxn
ws3Xp5Td/KxRTg52xhAdHh+oY995PLW2Sjc0K+h4/holLDUXaXapsOmV5ojMDOO1
Bmj8UHgKBzWgY9uR4pbjZ3xcACz3K1gD5pxsINr+9ETiksRKO6EAYRJzcqqEUoXg
TESnHtvcY/lr+irALJy0lfiaotyHUI8wUrjiGS7IAZXk9VMNMPob3uIRhbVYVTV3
ItpXkbamNwrVrmsPmuLum3LjLg8mBIe/rop615xOl1iFH6stkk4L3lyZ+T21aoJd
HfUzYgdI1lmDkoOL9vPuAQhMfKdJqoSW5lym+VWIZ4XGsH8CANXiNMm2Godil9li
Sz5yKFfzuHIx707FrykBC/2qWXctfFaEEe+JDe+DbScNdOnxunnwH/vI3vjZtC3s
CNqycq+8TxZrGgpv1rLDeKHPIzgRIm7EJZvHIOOda/8eEc4zNdjz5JDPwIQoCfUI
Gi/lbuJkjiAEc2pdfpLs8iDpZ4pvPtWKK4JxyMzBXkK821iZpkw=
=/kCw
-----END PGP SIGNATURE-----

--=_luckmann.name-1477-1588317108-0001-2--
