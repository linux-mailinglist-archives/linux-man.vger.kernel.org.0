Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1728F3D4EEF
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:10:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbhGYQaE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:30:04 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229545AbhGYQaE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:30:04 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8005.0000000060FD99DC.00003FAC; Sun, 25 Jul 2021 19:05:32 +0200
Date:   Sun, 25 Jul 2021 19:05:32 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: atanh.3
Message-ID: <20210725170532.GA16265@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16300-1627232732-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16300-1627232732-0001-2
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

Man page: atanh.3
Issue: as set =E2=86=92 was set

"In glibc 2.9 and earlier, when a pole error occurs, I<errno> as set to "
"B<EDOM> instead of the POSIX-mandated B<ERANGE>.  Since version 2.10, glib=
c "
"does the right thing."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16300-1627232732-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mdwACgkQQbqlJmgq
5nCmIQ/7BswpvKOiSePSbvH0Ht7lfKTbq1vRcYgofQkTz1oO9gbBSZG2Y9EgXc7w
grjqBIWp7yzWlu6ElT7d2goC8j1OtQqN/lDliNAjm8fLxcU0OQJoUEEBKVfrFyNp
BDCiRke2WplVxVI4OqHAgbb14+LnSHW/osnUAzTp/rgtHtxJYccBApYUevOxnmv6
mI7K94WYuwHFaHrov8uKykBo5aG3PYINKUDj6f8wdp3au/EGBI57a0WOQYRdKu8+
d0ROjnAI7M5BSb+y01OPfeaOCxyjbChZTCjf8w0ba5+lIR7TmKYrqVb0F02DrpuH
Bq0avHpbPvPu9HIvLfZaX733ke8YHz/Q/xsBX3i8XXnsFYwvJS9zzJyfoeHPB5Ds
KZdYNlHMBNWiFXzezxp82vGBDpjAk8C4o/fjOo6hX2O8yt4we6t08lAoEl1uxfUp
WcDqKG9dsMZoAEB1QOollcVWwCWLhAZ1546FHLBORGqgwYIFK8iDWU/im3QbyFuV
YHF3lA3DHNjgEmbKoAyBC1+aR6C89xnGkW57vOI3G/N1dQ88OeQAMGWhHZaKC0j+
MBQ84bdfuMLOKU3VFz+Cj6NNYUsc/fKYWSwSjfBWL0d4sA2gNIZVawEcqyPtslZi
TX1jaGdTDoNLFAlMSP37u929yAq0Ix1x/ZkDAAsDjP0rY7Nx0Mk=
=Uhve
-----END PGP SIGNATURE-----

--=_luckmann.name-16300-1627232732-0001-2--
