Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE7433D4EFC
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:13:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229831AbhGYQce (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:32:34 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229689AbhGYQcd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:32:33 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD801B.0000000060FD9A72.000040E6; Sun, 25 Jul 2021 19:08:02 +0200
Date:   Sun, 25 Jul 2021 19:08:02 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: mmap.2
Message-ID: <20210725170802.GA16588@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16614-1627232882-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16614-1627232882-0001-2
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

Man page: mmap.2
Issue: I<len> =E2=86=92 I<length>

"Don't interpret I<addr> as a hint: place the mapping at exactly that "
"address.  I<addr> must be suitably aligned: for most architectures a "
"multiple of the page size is sufficient; however, some architectures may "
"impose additional restrictions.  If the memory region specified by I<addr>=
 "
"and I<len> overlaps pages of any existing mapping(s), then the overlapped "
"part of the existing mapping(s) will be discarded.  If the specified addre=
ss "

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16614-1627232882-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mnIACgkQQbqlJmgq
5nBQ4xAAiaNa5W+AorJfI9YMtPsg+yGbQYB5MTgteidQ9/wn9B/uz2/VKtNLAjSQ
LzA99QwNxIHcltnghBoYQ9QeZixx5qyvVJb5q1A331aLLsCKcBZ+uCE4hcRUWVYA
6VFwamkH5USFBxgA2DttcceNGpEhRDp+GNkbhXuH+IkyfJtakEBEj30ztEaG4Rs3
M7IjSXUY408auCipFYPBI11PyyxSJ8JklWqV06taTSo4R1y0r+arG7yzNJG2hCNC
jA2Jrraqz8f8HaYJUyGf8wdi5xaDRd2gUnKSmoAVHaiWm0DoQLYwviWsmf2k6tEz
1PMtX7pa0PXEop/Mzz60+X9A4kgQCQx9nfRWmA6LTFPrQGjuAmZ2c2/XTINIiIFH
0Sb4b7gQmhHsE/hutNb97accH0OJL0Bb0CpNMo0brrjWpi6nisnzkot87n6cqTXF
dq4ZSY6Oq9uElTVzlvhHqxkX27UTALfvn+i2RzvJzkDJVzoi6q87X75KgISv20Uk
BeHG3DeMPZoNAnWfr3YTIsfe+x/67P+5ypi5H0/308/ugrwzjdqSpQFfMPFU+RHQ
G5heRXdw5Tp/T48Kf77UhFnI/S3Ckqz7kb5rPIkZSMQeO/3OxjDSPAqxu4zWEn8W
h/KBWngmTssdsM/lT3Zpld7Ye1oImb3qGKXNo/lm+07yNlVh9EE=
=x1SU
-----END PGP SIGNATURE-----

--=_luckmann.name-16614-1627232882-0001-2--
