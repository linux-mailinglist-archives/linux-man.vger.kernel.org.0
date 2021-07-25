Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 974FE3D4F02
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:14:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230077AbhGYQdg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:33:36 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229545AbhGYQdg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:33:36 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8027.0000000060FD9AB0.000041AF; Sun, 25 Jul 2021 19:09:04 +0200
Date:   Sun, 25 Jul 2021 19:09:04 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: shmop.2
Message-ID: <20210725170904.GA16750@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16815-1627232944-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16815-1627232944-0001-2
Content-Type: text/plain; charset=us-ascii
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

Man page: shmop.2
Issue: "I<errno>" correct here? errno indicates the error, but does it fail=
 itself?

"B<shmdt>()  I<errno> can fail with one of the following errors:"

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16815-1627232944-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mrAACgkQQbqlJmgq
5nA3Aw//UpRMe+qTg9TLTar08i2dz1qn7UJMxZo1m9N1IC8NgYF8cw5n9oqeHVjl
5enNV1mUkqcewICdplfwraV4SdHHeAgy/jCmzr0Wpwv1ESlR5FibkVKg0eP4eg0I
QMtoi+q8RT2dQqaIP/XW8sh/LTwA//b3CuAmaZiHdb9SuD2ekEffNuu+8AdbXO/Z
mwWB646wUORRsaK7D0GXhTj4XcksPbFh90PWbCm88FLg5ZX9VqJNl6pC+ejgw6jn
y6PNYftddCRYWHLerfrQGhDTiMMIju0LkUlsSM2u4oxWODUZzR/1f8YKtAci1Omf
mJ+tE1xOpsz6BNperSIkwaIYs8yZPe0NudvkZWAlt38FON/4X+6kLP7l9cd/JWyP
PxQHM4lsUnCBl/KDtzHjtV08/8pHq13vbVSVZyor6p0a8VsK7T6oWPtQVlxwlIf8
VQy1Ge9DaGRfLcTn0snZEtM4fRG/5boBFR93RHt6JktKOkTpXABAIsmsLYDnaSWS
P4+go+X5lkxx4mLblLdoejAqFIQMrS1LwyhNJTN2xkWi24pZbBp7g69rCge3VY2x
0a3mZ0tcSb4AzLGreeAyU3aKyxMzhndbtzbIyB1pQ3IghwmDq8kAAvMjh500vVAs
TBqjCRp+/taBMjwi5U8KJ9ax5T+ce7bP9O9or4U4riCpn503k8E=
=cyWa
-----END PGP SIGNATURE-----

--=_luckmann.name-16815-1627232944-0001-2--
