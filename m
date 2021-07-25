Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21A253D4EFD
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:13:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229689AbhGYQco (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:32:44 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229545AbhGYQco (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:32:44 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD801D.0000000060FD9A7C.00004102; Sun, 25 Jul 2021 19:08:12 +0200
Date:   Sun, 25 Jul 2021 19:08:12 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: mremap.2
Message-ID: <20210725170812.GA16615@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16642-1627232892-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16642-1627232892-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear Linux manpages maintainer,
the manpage-l10n project maintains a large number of translations of
man pages both from a large variety of sources (including Linux
Manpages) as well for a large variety of target languages.

During their work translators notice different possible issues in the
original (english) man pages. Sometimes this is a straightforward
typo, sometimes a hard to read sentence, sometimes this is a
convention not held up and sometimes we simply do not understand the
original.

We use several distributions as sources and update regularly (at
least every 2 month). This means we are fairly recent (some
distributions like archlinux also update frequently) but might miss
the latest upstream version once in a while, so the error might be
already fixed. We apologize and ask you to close the issue immediately
if this should be the case, but given the huge volume of projects and
the very limited number of volunteers we are not able to double check
each and every issue.

Secondly we translators see the manpages in the neutral po format,
i.e. converted and harmonized, but not the original source (be it man,
groff, xml or other). So we cannot provide a true patch (where
possible), but only an approximation which you need to convert into
your source format.

Finally the issues I'm reporting have accumulated over time and are
not always discovered by me, so sometimes my description of the
problem my be a bit limited - do not hesitate to ask so we can clarify
them.

I'm now reporting the errors for your project. If future reports
should use another channel, please let me know.

Man page: mremap.2
Issue: Randolf =E2=86=92 Randolph

"Your favorite text book on operating systems for more information on paged=
 "
"memory (e.g., I<Modern Operating Systems> by Andrew S.\\& Tanenbaum, "
"I<Inside Linux> by Randolph Bentson, I<The Design of the UNIX Operating "
"System> by Maurice J.\\& Bach)"

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16642-1627232892-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mnwACgkQQbqlJmgq
5nDuFxAAqNSTY5TUlpekhtDxeXCBbqbGvWhaa7OCd0VFQRaIT+CCaPOQJfOgnu8V
s692rN4l6yG2isE0MeNoe3k4SdoxtfeWnKCsdYR0hFfO6b84KCvJyJh4wBOorQ7U
TtlaU1C+amLavzCwL8uhJ9OI74JgnOqMX71NpY7OtZ3/CXXkHCBuphXsMu7NWd3g
MJaoUCcphZJ0EmkFkjMN9iZkaHWN+kyqz1lC/Zs8kFY6zAs+Kgxa7H6zN34zoSyk
ssa1sKbsGCShO8bCAELETF5/1N3KA4+UXWFPolnZSRANSVNAsh71VIlYPxnHR3xw
wJgTf9uEj+a/rImlC1ZyDByIrJx6p8YCeaDeKPEINN1AmSjbdv6a+ifuWZZLLIIE
DA3Xk8dV0REautPvPcY1w8lTqXRV/EAaj5lpQqd5laRtvCZs1sWrF3n27qJ2OVMO
i4V9X3rqToA+webC+uMqsv2iH0tQ2EByfGpgz7T7po5mIO9ibfpUZef3Prv3emyq
FBckVsw/NiP6Ylm4BoXsn38oDC4/pQKFKH4eW2qbulpIc3j27LbUpaQwtxFyyK5j
E3gEN94mxIxFLzul3uwyRpxcjz+wNtJOrfmkHHpufYes741CaksoxGVkRifx2gFp
lqG9i04A+dYWfdo/zvDFflUKssmTEBh88P3Zq1aA18qLSR/ctFc=
=XEtV
-----END PGP SIGNATURE-----

--=_luckmann.name-16642-1627232892-0001-2--
