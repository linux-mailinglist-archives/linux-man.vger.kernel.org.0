Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23849215554
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:15:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728796AbgGFKPz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:15:55 -0400
Received: from luckmann.name ([213.239.213.133]:54993 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728628AbgGFKPz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:15:55 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5805E.000000005F02F9D9.000068A5; Mon, 06 Jul 2020 12:15:53 +0200
Date:   Mon, 6 Jul 2020 12:15:53 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: resolv.conf.5, incomplete?
Message-ID: <20200706101553.GA26758@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-26789-1594030553-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-26789-1594030553-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear linux man page maintainer,
the manpage-l10n project maintains a large number of translations of
man pages both from a large variety of sources (including linux man
pages) as well for a large variety of target languages.

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

**

Man page: resolv.conf.5
Issue: Shoudln't it be glibc 2.3.4 to 2.24? (See next paragraph)

"B<ip6-bytestring> (since glibc 2.3.4)"

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-26789-1594030553-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl8C+dkACgkQQbqlJmgq
5nARUBAAj/SmxZKSKXQEprewMqOSEIfB5ghJcRjZislS2FyIVB3j6qFXQnZvmsRb
NTkUDY3Us2ETxM6Sy+GhvFaz2bi5BPJa9QHdQCWG1R1tGnRh8uVisHzn4Xn5SYu1
AVMUhAB25Y52IdxJOt1TfH7LZQgibB2/uWTJA0frP+vZySJPPhVhGLzr6R9eBVCw
SXojDP7as4jwIfIW8wfLMZ7pMr8q0rgTESbHglHtPNDMIExNoe7hptemiE4jrIdG
bC9oKq9wnYpKu+2trp6/sM9Izisp6QJgy2xGke7E6/ScrVDU2fSfGpRvYjzGO8DO
0lOPE2nUR+0VpUVq6MzSYX8uxd2fUGuZB9nvHllo8xUaDiGOddRNDECiNLU+zezA
JxQTuoIDUg8u6u2mGYu5ThNT2gSS3Ap2Vjk8a4m5fXBk9rAU7vSTT+p/Uin9yeIg
EAwk26wiyMLm0qcr4Jl+RDkhrd+W/xrHwyh3K4p1nelNon682Wf+nNFIoIFKmyjD
dgvyEh92LfP6PaYYZbYl5pJiPs3a/e2ud1zgiPCaCiFo7ztnXjaaX830e7hdD32U
+jvPQgmP+Ro8eX/wUgB8UyBTSa3hNj6k6/VHteFxMBE/8AfvOik9hLtQHeuqO8+n
ExLPokJ0F7ZbRJTnTiGWm3PIRvBglD1+LhKxePfkVyST5e7FgOs=
=ck1s
-----END PGP SIGNATURE-----

--=_luckmann.name-26789-1594030553-0001-2--
