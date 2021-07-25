Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 906243D4F01
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:13:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229689AbhGYQd1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:33:27 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229545AbhGYQd1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:33:27 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8025.0000000060FD9AA7.0000416D; Sun, 25 Jul 2021 19:08:55 +0200
Date:   Sun, 25 Jul 2021 19:08:55 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: rmdir.2
Message-ID: <20210725170855.GA16724@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16749-1627232935-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16749-1627232935-0001-2
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

Man page: rmdir.2
Issue: Unmatched ( in 'See also'

"Write access to the directory containing I<pathname> was not allowed, or o=
ne "
"of the directories in the path prefix of I<pathname> did not allow search "
"permission.  (See also B<path_resolution>(7)."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16749-1627232935-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mqcACgkQQbqlJmgq
5nBMbA/+JbpEtjEuTvaK+1SRGKjtATAPB4+Dff6qxrlhxNPMkI4isj46cBVoqXvF
ffTb0KrRZqBEI9+Pm4uogiqWi4V0eCbSgjo4ze55BNiNTEJbK7ihnRgHiRjfoG4Y
2NJzpuNsGxnh9j6GbPscqESo4Z6ToJYlQwqKa/wpw2nDAqeu5/n8WiATCzkCc61t
Y52qjSbeLp2HyC56QmscisH67oFW3jbdm6cvyl7iPtfqgZvjtVc6nYraLt2B2ysD
+YNBWeerXVqc8taRBDBFwOwomBIL56HfNQ0uSb62VNcaaSVxkbcFWgoalekWYWc8
ekmifedg4TO1L0cC67RDvRJTxYSo7bE13SytZVneNJjvENwh9DB0TUaUcv/rwzVw
buKtxd7DBuN00AZQNcuMKxxq4m0qybTbe/gxZdgXECTcUPqMGO8nIf4o8qeR6trO
5/V9mvjNAZIHBnE2HD1ZVYINwC4OqO0NfREiGTYesWL+XtzYpuFqBGJJTizvC40l
RncrwP1/2hAbJiK686VubMuGP/JG04B4BLISF+CFEbVPYht7Y4RFA/UwiZNEBg03
rAV1v5SzLuMKGP7LqM5eoe6IvSrQqPZdhT7wK3jYnEAC9EXH9FUJUhsQLSfpNIrm
J4RIb3WfNdYgHAwGEBTL+z6pF6zqN6AP2Xc96gpxghBT7hVgvzA=
=OoCK
-----END PGP SIGNATURE-----

--=_luckmann.name-16749-1627232935-0001-2--
