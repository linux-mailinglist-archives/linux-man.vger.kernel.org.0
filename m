Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A45C23D4EF2
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:11:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229831AbhGYQa3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:30:29 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229584AbhGYQa3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:30:29 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8002.0000000060FD9B22.00004294; Sun, 25 Jul 2021 19:10:58 +0200
Date:   Sun, 25 Jul 2021 19:10:58 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: uri.7
Message-ID: <20210725171058.GA17019@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-17044-1627233058-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-17044-1627233058-0001-2
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

Man page: uri.7.po
Issue: uppercase and lowercase English letters =E2=86=92 uppercase and lowe=
rcase Latin letters

"Unreserved characters may be included in a URI.  Unreserved characters "
"include uppercase and lowercase English letters, decimal digits, and the "
"following limited set of punctuation marks and symbols:"

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-17044-1627233058-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9myIACgkQQbqlJmgq
5nCL3A/+PlSn6JvOpMft4xaVkzc1ics17SWtmylAAOMVH62HHqnrX2KFzlY1Oq40
oUCU97oMYWzkdmbmX0fso1Xzp/g8u7NSLMaamElOo0cttbgxUffvEohCEadWYLI5
zTbFh1WdsqOFPtqXpyR+OqZgnUGKpTtVwhIksdW6LzascGgPEei853EreNj0a2Ai
fi3/D9NkK2YGK/FjRCQdMInG2KDnG7Uv4i4blHCXDv06T8MA7EUfgH5T3neid4Zr
/esmrDXT8hq3Z+pAlImFqhntOc+srVJBXjtNHhupTEzcn29GzhlpdzJzt6H+5oZz
8dnuRkWtgK4Ttx+FVbISG2+7yb6FXfOzFSTrSJASdkMTHweU2O8omqS9WqQy6MBh
wWork2R/uI0Bd6inztVz6WpIwWVfZdKcFVRSIBqEGkX3jOXLXCqBlpLbhjoxFpVO
+NbkoM1ucN7tml22aQjv81svaj5Kl2Da69VxcWtYEJfjZz+3DCCtvBabSq0NZgqZ
6JF3i/Tor4fH5ilrWCizKQjludiDcSqH3ffeMTrs37+haW0yEveEmYLL/3ZD7afy
mhtbrH70TxpjE/0NqOe4rhmoH0Y/R2NF2pEifJiZegsG0s/eXIt86nQ/DwlEL0Wt
H4pIb2Z7V1B4eQ1hDgyst1f74hPKRhVQtJRjNXaeViIsKEAobRs=
=g40d
-----END PGP SIGNATURE-----

--=_luckmann.name-17044-1627233058-0001-2--
