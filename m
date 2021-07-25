Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D49763D4F00
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:13:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230075AbhGYQdR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:33:17 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229545AbhGYQdQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:33:16 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8023.0000000060FD9A9C.00004153; Sun, 25 Jul 2021 19:08:44 +0200
Date:   Sun, 25 Jul 2021 19:08:44 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: rename.2
Message-ID: <20210725170844.GA16696@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16723-1627232924-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16723-1627232924-0001-2
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

Man page: rename.2
Issue: So far, the manpage does not mention a variable I<pathname>

"The directory containing I<oldpath> has the sticky bit (B<S_ISVTX>)  set a=
nd "
"the process's effective user ID is neither the user ID of the file to be "
"deleted nor that of the directory containing it, and the process is not "
"privileged (Linux: does not have the B<CAP_FOWNER> capability); or "
"I<newpath> is an existing file and the directory containing it has the "
"sticky bit set and the process's effective user ID is neither the user ID =
of "
"the file to be replaced nor that of the directory containing it, and the "
"process is not privileged (Linux: does not have the B<CAP_FOWNER> "
"capability); or the filesystem containing I<pathname> does not support "
"renaming of the type requested."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16723-1627232924-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mpwACgkQQbqlJmgq
5nBiUg/+IiciMNaWaZNIXQLOIhJvW/+QoNqhUnsWYu98blc977X9l4OALZ1q6Ei5
FFRU7nhacVKClFyeCVuByKM5yI0FiYkY5BI8hf+xmVTCF7OvqPrWGVOgTy1w2vqU
MKZi8X0dNMvJR3VkSO2knEyZLJ0IedtoreDjOrfPpQaQZhAGal+AQyyPy5qMAHre
U0N8UKMR22B/rhaRkBFjEILovYGQd1kEODGfzYc76nJYvwrG/FvBfHugIf4BtLvX
Bv2osORo4wp9NZzYfcq1ouwJP0bFUFb8WEon4JUBLiRhxNiXQRRGTpfkTMfXeDWY
cIOUUTloWh6U2zTZalI3slhoFRcl/Euba6C9rx3MxcDfFus/tG+h7WLo89y7j4lQ
qhiqoilBik+2WcbaPTGy03Nj7j8uo2wvf7QpOY8ktlUW0oCCVFunab0k4kqb/kiv
pfpJQrBEHfwzS6W6IaYkyX32l+osVO0FL7GueHWGkQ1pAxHLd8zNWlJIuN02BW2a
h+gyv1yNxjtHMMM2J4U8yJyInDbpT8vnWtgWCO0exttSTMuxhotdjJQrOgVE5znu
wUTUiSxffT1QjdaQkEtS1faQTj+X2QCRFG3MwBLy8d8yXasKAqwId38SPnaozJeV
6SVUWKmR5rCcAWlFbaQs125lvFhk38oUAWhdOP4Caepss+96Ua4=
=Kj7V
-----END PGP SIGNATURE-----

--=_luckmann.name-16723-1627232924-0001-2--
