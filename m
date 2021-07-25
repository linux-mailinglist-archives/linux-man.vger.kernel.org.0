Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 935D33D4EE9
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:09:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229825AbhGYQ3A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:29:00 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229709AbhGYQ3A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:29:00 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8002.0000000060FD9AC9.000041E3; Sun, 25 Jul 2021 19:09:29 +0200
Date:   Sun, 25 Jul 2021 19:09:29 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: signal.2
Message-ID: <20210725170929.GA16841@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16867-1627232969-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16867-1627232969-0001-2
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

Man page: signal.2
Issue: Such paragraphs shouldn't be no-wrap

"B<WARNING>:\n"
" the behavior of\n"
"B<signal>()\n"
"varies across UNIX versions,\n"
"and has also varied historically across different versions of Linux.\n"
"B<Avoid its use>: use\n"
"B<sigaction>(2)\n"
"instead.\n"
"See I<Portability> below.\n"

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16867-1627232969-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mskACgkQQbqlJmgq
5nDsGg//YGwV1O0NIum95QkNSU2k8myS0KrRyeaSWTMU8LLoPKCzXoUC0C8wQo9X
UKZB3roljB4nW3J0sf7JBkBR2HOGrXTBm8PP/q5ECDJeIw4y49aLFDZMStwxMvKH
YBbkvknr3l9y6FfKjHDSgmKytM3UzBaC6ESLpQ4Dg6Npf3fIKN5OAyFxqjsLNorS
lgGJ2ke2lshg7Q420Xsbij8pgQnYQ/hb600bRbxyH7nLE/LtKC9ysn15B3RIH4cO
xe1PEPbfua/fGbnKfRCP4fJ1we8X9dVfDq7x3nCuHY3+kA6h1IKYT0PHdojSEpZt
St9q7J9MPoFykNXRHRj3QPL8KK20kMZh40dBo5GtCDoqqRHwpGbrTJJecjYM4HqF
g+UDD/U1PE0hE5BFqglPLdvJPg2aAABR1zEIfAO+3++6JBT6vQLg3zx15LshkPWI
ip5clqqu5Ho4rWgX90S0w4XKoFkepOnUVu3QDgBPgFWppFOx907OWbFdL709pxbV
/NX0Ue/WMs+A+Yq+IoZnUYKc3I7rS7qYHJYkDmUS7YPpoovPYOzt7DlaRmwko6uM
2YtHFcokh6aFkDXb2u/HXo6kUJ9X3RPxmBaWWGsiKmw51SCkAlUdbjBfjsEssYAi
KpXWaR3JzTCipL/l/Wgq1+FxCaKL/lhrLK6mI7TJfg4xh3myJt4=
=osVh
-----END PGP SIGNATURE-----

--=_luckmann.name-16867-1627232969-0001-2--
