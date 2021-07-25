Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D33153D4EEC
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:10:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229829AbhGYQ3l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:29:41 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229545AbhGYQ3k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:29:40 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8002.0000000060FD9AF2.0000423F; Sun, 25 Jul 2021 19:10:10 +0200
Date:   Sun, 25 Jul 2021 19:10:10 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: unicode.7
Message-ID: <20210725171010.GA16927@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16959-1627233010-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16959-1627233010-0001-2
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

Man page: unicode.7
Issue: tells, how many =E2=86=92 tells how many

"The B<nl_langinfo(CODESET)> function returns the name of the selected "
"encoding.  Library functions such as B<wctomb>(3)  and B<mbsrtowcs>(3)  ca=
n "
"be used to transform the internal I<wchar_t> characters and strings into t=
he "
"system character encoding and back and B<wcwidth>(3)  tells, how many "
"positions (0\\(en2) the cursor is advanced by the output of a character."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16959-1627233010-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mvEACgkQQbqlJmgq
5nDHsg/+MQjrGWQKEfcG6eXh6FHt4DWpywaHyEwERsGuh/CkrhP56e55IJPfyNJ3
II8vjMgOqRDqYARw0lZj8BAtdjENfGpOA+rkECQkKjj9WHrkMiljZZzpFRjtSn6X
7vFHpsxIkGeQIsubAPbP4jbOENOyZf5WqV1rif3f9d/t5oIqOm6qrkeBbcsMom1a
O1pNtUu/ntnIAUHxMEN4tqyvhegc23LlboqRnFEvH596sIrX3gxcrflO3TkF34Ro
153Kc/jAhqk5JwWCGfy0JhnoTK7Qxfp1OWbp7J6s9UvHh+p6maRZEuK1ZHYcVI8m
lmZZg4gamNbQoIICnttssAIzBXfTGjXBF8/0AJUv9O36oQPV7U0U2NbADhRPFewL
7U39dokp/wb4ZEPOmwXLENpoND026Aa/PX7a8dvFJ2wKtRTSky9lc0Glocc/vTK7
RVpiFwEQxu72re3sUuBAD5wyCG0f+0SciVWa9fnTFl5Dc6SvfrbeZSXbzAR6yF+o
ESFgMyepCQ+D3zHytjWqxl8JsAhzCFjVYKTL+l4vWFrkq81K6+v4r21UNLnsI6A2
jzHJvWHECDSqipLx16s6oq2XC340DRfnFjxjUaqMef+LEQKcgvPNmcEqInbluNvT
1OI0B5zS3qLxJ1K47nGsiqhG8cUDgHLDEjTGHqluZWB+JDTAfVQ=
=yPLN
-----END PGP SIGNATURE-----

--=_luckmann.name-16959-1627233010-0001-2--
