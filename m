Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83BC1215544
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:13:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728674AbgGFKNu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:13:50 -0400
Received: from luckmann.name ([213.239.213.133]:54993 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728264AbgGFKNt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:13:49 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5805E.000000005F02F95C.000067E8; Mon, 06 Jul 2020 12:13:48 +0200
Date:   Mon, 6 Jul 2020 12:13:48 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: math_error.7, here: Typo?
Message-ID: <20200706101348.GA26560@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-26600-1594030428-0001-2"
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

--=_luckmann.name-26600-1594030428-0001-2
Content-Type: text/plain; charset=utf-8
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

Man page: math_error.7
Issue: \"overflow\" =E2=86=92 \"underflow\"=20

"A floating result I<underflows> if the result is too small to be represent=
ed "
"in the result type.  If an underflow occurs, a mathematical function "
"typically returns 0.0 (C99 says a function shall return \"an implementatio=
n-"
"defined value whose magnitude is no greater than the smallest normalized "
"positive number in the specified type\").  I<errno> may be set to B<ERANGE=
>, "
"and an \"overflow\" (B<FE_UNDERFLOW>)  floating-point exception may be "
"raised."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-26600-1594030428-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl8C+VwACgkQQbqlJmgq
5nBijg//ezwb3yTc0cKXQAaAQI+GO13Z+T/iKUHuS/KaMOp8J509SttY3cc2Ai3C
hr/znKOirm5xM+5GjeCdK5nW1ollnjGv4MyjErQFmdSfhxMFv5gumx/+3+5wBFkw
reJUPW9UWj/sNQzq4Q2FQb4pTsYvNsX8YLNGn1uVl0XFo+VQ55nqyDkSOzIO3u6F
/9KBSVb3FgerJ2pfmhYaQYJlVZ4CGxeI7bQWmn341oevDDmZZwJyFao4lYFgMNJY
aulePLCIwrr7YICfe3g+Qoe0KoAZQLQsH7x06yoS/KXUSU5CXZXh7tLuo6Vhv6fK
oal4NNDjpw4oz795odXTnU+cfVEYHvVD1YCq6qJtlcT6WcF3RI+SYRMVTfhaEYBy
Uyaup9OUtrrlNIbobwYgparqvE3WChEvCH06cY8BD63QiU3O4BYEuoBEmAt+x/bu
zmIVnNi7v1GvUNl0L4BH09vOTlNhTb7UZ0Y1SElc5roMhm80qu4gTD3fZjS/rhrs
jjyf2SWw2rEU/jHkQXbZH0xgeioyPugccaz0ZukQAv2lsqal9VGTyndQID3H44bS
pQQSiGcAjvcwIMbeg8mzvC681sLWS+rOG5SJ0MiA4+x4rq1dXEfoS8A0Bb4I9cXK
GGJCM1ll5mdO1tDFbzQJPnjvjT7z2Q353PeYwMPNSSQU8DyQV0k=
=irGX
-----END PGP SIGNATURE-----

--=_luckmann.name-26600-1594030428-0001-2--
