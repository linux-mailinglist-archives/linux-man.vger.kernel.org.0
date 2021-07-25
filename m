Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23FE43D4EE7
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:09:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229689AbhGYQ2p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:28:45 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229545AbhGYQ2p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:28:45 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8002.0000000060FD9ABA.000041C8; Sun, 25 Jul 2021 19:09:14 +0200
Date:   Sun, 25 Jul 2021 19:09:14 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: shmop.2
Message-ID: <20210725170914.GA16816@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16840-1627232954-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16840-1627232954-0001-2
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

Man page: shmop.2
Issue: file =E2=86=92 files

"The following header file is included by the \"reader\" and \"writer\" "
"programs."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16840-1627232954-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIyBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mroACgkQQbqlJmgq
5nChmw/4q6zHnkhTBhnk/HrgdFGSsnHh2QSvC9vLWR94j3sUAe3pQzMK60KCqT4t
rCXHdkTZxNUsF07NGmId+JjMCDLheC0MMsAXIi66Fta0UhzEqmRWVzsmH8lc32/0
muiglvKjKgBKS8xPCRW1y5hZlo1H9MpDJ5q+HsBr/eNcHAKlVMpcjrY1JHACMRMK
+qbnl8rsZknhscH+Zg2zrejYDxK0/3tgLohJ5NP34nC/DJguxW2Ol7huuDlYPB7J
SxxjlDphRpH7JgKA3reVBBiSUpTsVOlO2M0X7p76KQs2po0kPR4/QAU7qkYUqKuc
RMEVQYv+76s71gr8fNarRnQqo+UMfvkJtCt6ruiZHDL3/yVh8sagCc9r80SJyp3t
wFLTMyrJSaOKWCCzI4RwFAcEY9HoO5rdhm2RLY92sdg3RkcKfteNnZfPyVbAJo5T
z1P1dJQXquJPVDWy4pOgokzd/BWTsz2CwnPRntkE0WMYm7auCuKGyxf5pm/pHea+
shQH/ZI5AeAJ694GkncS8AG6S91REy1mfRt1OywsYN1q7B83POykOq+wKhLr560E
fBnsEUSqFOqmyUJGXnIXOfRQ8nMIp9DA5Kc3rguJ98d+GXjvJxkh3PnY7H1C4h6j
yybqpiQxpLfI/WgV/MvWCw//pppYoFTpoUBBIdtYii6WA/W5Pg==
=uqIa
-----END PGP SIGNATURE-----

--=_luckmann.name-16840-1627232954-0001-2--
