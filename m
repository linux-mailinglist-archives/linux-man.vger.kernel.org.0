Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D50E1B9199
	for <lists+linux-man@lfdr.de>; Sun, 26 Apr 2020 18:17:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726155AbgDZQRG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 26 Apr 2020 12:17:06 -0400
Received: from luckmann.name ([213.239.213.133]:54137 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725778AbgDZQRG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 26 Apr 2020 12:17:06 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5600C.000000005EA5B400.00005B38; Sun, 26 Apr 2020 18:17:04 +0200
Date:   Sun, 26 Apr 2020 18:17:04 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: Errors in man pages, here: rename(2): Content
Message-ID: <20200426161704.GA23062@Debian-50-lenny-64-minimal>
References: <20200419064820.GA31701@Debian-50-lenny-64-minimal>
 <4a026c82-7dc1-164b-186d-b4dceb3ebea9@gmail.com>
 <20200426111252.GE2031@Debian-50-lenny-64-minimal>
 <CAKgNAkiRBUkOgu47JqEML=hhV=Ra4zh9WRJjWxWVG+LHZGgC4A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-23352-1587917824-0001-2"
Content-Disposition: inline
In-Reply-To: <CAKgNAkiRBUkOgu47JqEML=hhV=Ra4zh9WRJjWxWVG+LHZGgC4A@mail.gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-23352-1587917824-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Michael,
On Sun, Apr 26, 2020 at 04:24:14PM +0200, Michael Kerrisk (man-pages) wrote:
> On Sun, 26 Apr 2020 at 13:12, Helge Kreutzmann <debian@helgefjell.de> wro=
te:
> > On Mon, Apr 20, 2020 at 11:40:26AM +0200, Michael Kerrisk (man-pages) w=
rote:
> > > On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> > > > **
> > > >
> > > > If newpath exists, this is already the reason for the failure?
> > > >
> > > > "If I<newpath> exists but the operation fails for some reason, B<re=
name>()  "
> > > > "guarantees to leave an instance of I<newpath> in place."
> > >
> > > I do not understand this report. Please elaborate.
> >
> > Trying to 2nd guess what the original translator, who unfortunately is
> > no longer active, might have thought:
> >
> > If you want to rename but the new path already exists, how can there
> > be other reasons for failure at all?
>=20
> Because renaming onto an existing 'newpath' is permitted! Earlier, the
> man page says:
>=20
>        If newpath already exists, it will be atomically replaced, so that
>        there is no point at which another process  attempting  to  access
>        newpath  will  find it missing.
>=20
> I think the translator must not have understood this.
>=20
> > If this still does not make sense, please close this report without
> > changes, of course.
>=20
> Please close.

Thanks & Done

Greetings

           Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-23352-1587917824-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6ls/oACgkQQbqlJmgq
5nAr5BAAlcvu+4NIboVyRx9PA8XXxc6YbSOdSrzMQLDoQZX66b1eKYf51udx2OTR
NraxMKyjUnmz3TYEIxsyUAh1QkaQpTif1tA1QabrdR8kjKYYl5oAbRdQ98aYS8Cg
3M3Vh8i5n1v0WOkOJKfVElLVrk2Tf4Fuo9Cz2zVBRWZ9pVIWVtKB/Fg8BJDxZ4Ay
0FUmFkvK+Pcdq/d5D5sagjgBwTv9BDdU8O4gK8ME+2fmxxiZ8Xw5XHEIWc2KEakC
RPm0OG2seI/c2C7kVEX9TScy+KPb2idQBY7yHOh5i1D1TxzSA+lT4juKRHsq+61o
O7wI+YAvLzT2Di4QnWW54L9FMELNfOfSO9CKWQ3GfVmzvVpr/mtL2SxJ8s6gHTow
eGCknW74hAsk1icx6CUU+5ZkToPlSVCdjdRNGpdzLc3DQ7XMf58OnDRr098xr8sD
7gi434bBR78lBg/GfACVL0ECQmJyYhw7OpI8B6GnvElGRtZuYFb1sUH15QjyJYfR
KvC3jiyY/tEPgGB9iySIsU0DDAXWeRy+qx3+tl7b2rCiSLFXwklEE/bCFVa1CW2O
AVVqgkeKxqlL0VcC8bUt/Nmr+olMaPQPYqPbkQCn2yEbrzWR0qdgKHKo2t9rQ2Q4
0Zp24peAB92UqllLeAS06WDT3jrFJJPOdTYs/gnLJZpcPw+JMp8=
=vn/u
-----END PGP SIGNATURE-----

--=_luckmann.name-23352-1587917824-0001-2--
