Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C09D641FA3
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:51:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230254AbiLDUv3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:51:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230108AbiLDUv2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:51:28 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DDE51260A
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:51:27 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5E0DD.00000000638CFDC0.00003CDC; Sun, 04 Dec 2022 21:06:24 +0100
Date:   Sun, 4 Dec 2022 21:06:24 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page syscall.2
Message-ID: <20221204200624.GC15305@Debian-50-lenny-64-minimal>
References: <20221204090716.GA757@Debian-50-lenny-64-minimal>
 <130212f5-5efe-b5ce-b3c8-360911585ff0@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-15580-1670184384-0001-2"
Content-Disposition: inline
In-Reply-To: <130212f5-5efe-b5ce-b3c8-360911585ff0@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE,URIBL_SBL_A autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-15580-1670184384-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Sun, Dec 04, 2022 at 09:00:20PM +0100, Alejandro Colomar wrote:
> On 12/4/22 10:07, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    of 0 =E2=86=92 of I<r0>?
> >=20
> > "Since the offset argument is 64 bits, and the first argument (I<fd>)  =
is"
> > "passed in I<r0>, the caller must manually split and align the 64-bit v=
alue"
> > "so that it is passed in the I<r2>/I<r3> register pair.  That means ins=
erting"
> > "a dummy value into I<r1> (the second argument of 0).  Care also must b=
e"
> > "taken so that the split follows endian conventions (according to the C=
 ABI"
> > "for the platform)."
>=20
> The report is invalid:
>=20
>=20
>            syscall(SYS_readahead, fd, 0,
>                    (unsigned int) (offset & 0xFFFFFFFF),
>                    (unsigned int) (offset >> 32),
>                    count);
>=20
>        Since the offset argument is 64 bits, and the first argu=E2=80=90
>        ment (fd) is passed in r0, the caller must manually split
>        and align the 64=E2=80=90bit value so that it is  passed  in  the
>        r2/r3  register pair.  That means inserting a dummy value
>        into r1 (the second argument of 0).  Care  also  must  be
>        taken  so  that the split follows endian conventions (ac=E2=80=90
>        cording to the C ABI for the platform).
>=20
> It's saying that the second argument in the call above is the value 0.

Noted and thanks for the clarification!

Greetings

        Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-15580-1670184384-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOM/b8ACgkQQbqlJmgq
5nAKOw//cjV2A9biL1bk9zuXLpNL3c7KP4hTKVAv5aYMBnkwCMO/0MDsIQuJdjcY
6nwolUZGpSBAMtIz2hVBBhtQmEhX0FXt2Ssu0tFBIRiK+fkK11Go/ahH/XFu0XaW
sRm8PWeiVrZUNS+1NfjPkYhmzUp6ZhqlzVM7MXtDKlv8gFLuIrxD9nr5OAbZ8Yo2
8wEL+vOD5CKGNRf/Dhfegb0Gf9l8Jp+aFb4WCSMz8VcZ5xw1cBN46m191IifkmhH
hv3Wt2bquP3m8+ym7pgiSl1MrS28ayTuKojzBvOGBrTfxCR/mhZYEhZm/8VeQx1Q
z/lgLtgDxWUJ+ParRTk/L8hOgugdIZmynBzA+0pluOVcMUYkJbfeSKXDIZCdpebv
ymBtEeKYTdX5hF5q6Tx3v1RusctgJ8EMF7wyL70/BddCqlGpHDfimnY8EP4jqVBc
gAQCyCSRgpib4kx18Damzv8bR/DdSi12uNLQbZKj4i6c62LICayOxQTFTWaDUX6/
tq67VzbTKjqD0gZhGSZeLNSqAjXgzhDD7FSGncVpuUUcJmQm8WLwUa77vJnXENEx
8tEI9qaEWaBu2D8BFSrfMPryOQYVqCWUGZ+VSZuGpKzi/owOf3yT0fLs6lLioeoY
Ecw0w/XcO5USh0Ck5feSn9CZ/8CnYEti2ofZE32Ow4ke2Tlx+ro=
=XZ0N
-----END PGP SIGNATURE-----

--=_luckmann.name-15580-1670184384-0001-2--
