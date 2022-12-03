Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 631B5641731
	for <lists+linux-man@lfdr.de>; Sat,  3 Dec 2022 15:06:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229491AbiLCOG0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Dec 2022 09:06:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229477AbiLCOGZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Dec 2022 09:06:25 -0500
X-Greylist: delayed 302 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 03 Dec 2022 06:06:21 PST
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC85E17E21
        for <linux-man@vger.kernel.org>; Sat,  3 Dec 2022 06:06:21 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E62051.00000000638B56AD.00003CEC; Sat, 03 Dec 2022 15:01:17 +0100
Date:   Sat, 3 Dec 2022 15:01:17 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>
Subject: Conflicting alias for some man pages
Message-ID: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-15596-1670076077-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=2.1 required=5.0 tests=BAYES_40,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE,URIBL_SBL_A autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-15596-1670076077-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
hello Michael,
short description:
Please remove duplicates in the alias (alternative) names of man
pages. (List of known examples at the end).

Long description:

I support Mario in maintaining the translation of manpages
(manpages-l10n) and I'm also the Debian maintainer of manpages-l10n.

Some man pages describe multiple, related commands, functions,
interfaces, =E2=80=A6. In the english case, man automatically figures this
out, so that you can call the man page under each name without any
further manual configuration (at least in Debian, where I tried it).

Up to recently, manpages-l10n shipped the translated main man page,
e.g. if
command1.1
contains=20

NAME
commmand1, command2 - Description

manpages-l10n shipped e.g. de/man1/command1.1

Under Debian then the following happend:
If I ran
man command1
I saw the German version, however, with
man command2
I got the english version, if it exists, otherwise the German version.=20

The maintainer of man requested that I provide explicit symlinks for
these man pages[1], which I implemented for the last upload of
manpages-l10n to Debian.

While doing this, I noticed that some alternative names (aliases)
where used multiple times. This caused link creation to fail (for the
second and further occurences) and should also cause "random"
behaviour for the english pages (as man could select from several
pages).

Could you remove these duplicates in your next upload?

I found the following duplicates, I did not do an extensive search:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
rindex - Both in index.3 and in string.3
strncasecmp - Both in strcasecmp.3 and in string.3
strncat - Both in strcat.3 and in string.3
strncmp - Both in strcmp.3 and in string.3
strncpy - Both in strcpy.3 and in string.3
__fpurge - Both in fpurge.3 and in stdio_ext.3
strcspn - Both in strspn.3 and in string.3
strrchr - Both in strchr.3 and in string.3
pselect - Both in select.2 and in select_tut.2

Thanks!

Greetings

            Helge

[1] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D1020742

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-15596-1670076077-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOLVqQACgkQQbqlJmgq
5nAbLw/+Ke6TFV1wO7fcRMPMUZsCjE9mY8lRVuzVau5BmmRK1vvaqTV1BCYlhfKn
4SU6NEuXmxiDALc+gmxNUkbf/fm3mtxAwIrnoM2Bi3mCWWF49CrexSFLLJ3ZgKT+
czDUEi0NiA+5JbKggVtmHvL/T/0kyjs2BzjohBRBpgRrsLE4/j+Msk1ey34jeW6Z
R/Actna8HuNUmxROQwlfXbZcBPBXw98GYVmaPzF+Oe8yz17Na2xnwjNCERinyGLh
w+thi4pNTPd27CeZHSA1rZE4exHvv17GMaX5RVlzSNjPwOwoIhVkLAnJYVdk0Zc4
QB2hxNaOTy1hfVQBiRQybR/UCxFifdgeKUU1QylFtIP3rmzsa+z+KgDZ4N0AYAFD
k7f9KjoT7jKcVGPW63brkW1SAUJMMkD4P1fcAZs6n8LNnMHOTwPOLGp6ExYNioTX
JgQSLCTWihcb+c9i2fYur/2c1wccoJV9LHPk0b7BTm5+U/JjhR3y9xnL2Zbgd6Hv
mWMsgiFWRbJep9VlQMR15XW2Gt64Bp5K12d5Ky+P3MQwT0fdSBv8SmZMoRMtaBSx
R217V0G5h12KzRH6R85MbYVRnQogWKtMPbvSvuHPFAx4C9JrDDY+CoMUCYwh8acB
n4ssEXTcDh8zLdsD/PKwADECCfIGvdiZf01+j63VXsxi/OQHX4o=
=O1si
-----END PGP SIGNATURE-----

--=_luckmann.name-15596-1670076077-0001-2--
