Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7BE9C3D4EF3
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:11:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229829AbhGYQai (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:30:38 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229584AbhGYQai (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:30:38 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8009.0000000060FD99FF.00003FE8; Sun, 25 Jul 2021 19:06:07 +0200
Date:   Sun, 25 Jul 2021 19:06:07 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: clock.3
Message-ID: <20210725170607.GA16334@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16360-1627232767-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16360-1627232767-0001-2
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

Man page: clock.3
Issue: Previously POSIX, now XSI requires?

"POSIX.1-2001, POSIX.1-2008, C89, C99.  XSI requires that B<CLOCKS_PER_SEC>=
 "
"equals 1000000 independent of the actual resolution."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16360-1627232767-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mf8ACgkQQbqlJmgq
5nBlEw/8DPszRqmn37W12n0xvHtL4QTeURbIP6fKiKfHpQiT9Qe8f/2OCloiHjyv
WUJSJtr+7L27jBJfk0XRMU2o6EMonk1KbWauGbcfHasSD6trTn2PRfkELil/dKAm
nYrATiDcOs157Kd8NNDn41ju9Btca6Wbc3J04/r3W/V2rsslkT5mkHdXtpcEVOjB
7CDV5OTuX8M6cUnkFrAg/HrjAomcFECNcC+4fVjDnA1oy8lqULNg/QLxd76HNiMp
/4WAjP9H8OyGzFaKCXSJgsmgTKelF32IDeswIPGZTJTVaWxaYgyzFU1ziNPQWs4z
sFl3/pv4B7HUFNyq/Gt2ixV1t+6637mVjT2EWccEKEFG/ljnzUFKCrCnAIiNOYUu
G7uupSzL7s4QaJ0QsZ3FJ+rQKB8BB7tolNnLBd9wwukIOCSmp+iPDXeFonJaivHO
IWSfZOrpNlAeHf+C6lv/+fXEkH3aXVB4uTx9IV8MdpZhgvPxsjEdpSDzUGsBnlZl
hmi2ZEg09f1WeSIW7aR3rYNHMTi9xNtLeVIFEJwbS8fktq//PgKu2Co1bgrw7Jly
Do2pPsYh0lHV1+Bp7/MuSzPchrggX20tLxNKGQBvYKz9mEpn5ogiDOl2bjapEpDk
ExcTc2Z66Pj7GdqeW/L2xPvTwZOz9hcyMyCrll+dn46yAUlEzYE=
=33+D
-----END PGP SIGNATURE-----

--=_luckmann.name-16360-1627232767-0001-2--
