Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D2933D4EEB
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:09:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbhGYQ30 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:29:26 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229545AbhGYQ30 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:29:26 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8002.0000000060FD9AE3.0000421E; Sun, 25 Jul 2021 19:09:55 +0200
Date:   Sun, 25 Jul 2021 19:09:55 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: sysvipc.7
Message-ID: <20210725170955.GA16896@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16926-1627232995-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16926-1627232995-0001-2
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

Man page: sysvipc.7
Issue: Missing full stop after actions

"System V semaphores allow processes to synchronize their actions System V "
"semaphores are allocated in groups called sets; each semaphore in a set is=
 a "
"counting semaphore.  POSIX semaphores provide an alternative API for "
"achieving the same result; see B<sem_overview>(7)."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16926-1627232995-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9muMACgkQQbqlJmgq
5nBFuA/+KjxERTuvnMxs4771ZJF8WyLxsAcafa5fcqNSBd72jiZsVc5K4gX9VIfa
uQFwoRXtGLH175f3tVhyeSanqg1eOXOY15ctkGGZhGflgJ/WhPDCe0oeH92wYRxF
+uh4tZREEPgY/za0fyAXVv36AT7XsIa4e8EYqL49/d2HM3kN3JhIVzhxhrqMe3Am
wcVX2MaU7+nW2zuJd470I5rgvXvoLbmaDger6YGgMxZSIgOJbBlZuzN9ycYuH9fr
LoRSqD5dR/IBtgjIuibV4fjD1VvBKzac3RKJKrxQbYBmyD7+mDG8HOcRtPvmoQA1
8NsZ+IGbf7xZvG40gHQAYpyhCzmA423J5zqJuGHcLxIFZqxGem/2254mXyZXLr85
EXvGzpWSnvSfLKq1IWPcRmwJV7UwtXQF/jtQaV2iXPCeaC3kctnIWlkUNR4i+toD
ubX0PTw9eoS3UG4j/VAuZ0FdqooWkAd0x86s+8VkHQQ+j4GosL+z/AH/ew/3YNI0
NpQ+YpDt1UbIG2ZTeIdo1kdFinoldhd3CcKB39Fy2YfcMOxDVz6XdjlBLD0CIM1e
IYfNBd1r2ZIe9JIsKByZ/UHUjsPPvx3R68K9Su3/qGNfk87dq6Vfy0MzQTOZNSn3
60HdSLPkbSY4k1+Q3XcLg32ANmca+N6I1kENY+x23HzZX8aIem0=
=Kxo7
-----END PGP SIGNATURE-----

--=_luckmann.name-16926-1627232995-0001-2--
