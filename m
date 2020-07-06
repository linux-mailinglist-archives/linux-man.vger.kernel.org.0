Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7725A21554C
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:15:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728826AbgGFKOz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:14:55 -0400
Received: from luckmann.name ([213.239.213.133]:54993 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728264AbgGFKOz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:14:55 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5805E.000000005F02F99D.0000685D; Mon, 06 Jul 2020 12:14:53 +0200
Date:   Mon, 6 Jul 2020 12:14:53 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: open.2, typo
Message-ID: <20200706101453.GA26677@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-26717-1594030493-0001-2"
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

--=_luckmann.name-26717-1594030493-0001-2
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

Man page: open.2
Issue: same was =E2=86=92 same ways

"When these APIs are given a I<dirfd> argument of B<AT_FDCWD> or the "
"specified pathname is absolute, then they handle their pathname argument i=
n "
"the same was as the corresponding conventional APIs.  However, in this cas=
e, "
"several of the APIs have a I<flags> argument that provides access to "
"functionality that is not available with the corresponding conventional AP=
Is."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-26717-1594030493-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl8C+Z0ACgkQQbqlJmgq
5nCeRw//SFgRCRA0Db2eJhAs3/RaIpqJtY4pd5lYPagq8jIvONTziUi/feFa5ktm
ZQOO/s8RqQ1JLMU9c0tDPjsMe7IyoLSksMmjxe4JX3ysK/ftgmZ845rrrom8xEez
IXDo+bURQL8ZBs4VTGrH6vCt8MliJm1B5cwncXiX5gGa7AxhK99ELtBBzFFTfm0Y
u/BQIa6G9pMgC5p8SXm1BQaBu4FtVRaREqTDhqu9XMwhsD2vlxkWufuYBve3+bKL
jJsx5ojBFZUcYgPPTWUlzg3lpVRSof2sxfQtgc2JcnZWM9EYOJRb6gfJ0Q8Q1/Yq
Kc5JWqqb6C9KU2iWqew3/VsDmlj8iyzDxH9jWzjoA3Io5b9LnpwBi9X97RBpI8XA
FX6GV57ID1rLdVQxwFsmsU5Vmv03f7LZ4Yu5tPKCa3bJeMKjvDvaS4bo5ay2wr9n
0l9Dv543IQFXMBMcS520w7tRbSeVo5wprjlFcTdHmwzzUMj/YqnWFE6tTNZblJln
lUVHXhKfg9uUMhzUqsMOmrvsjpG65Z/SRwh6N0zYUf1mqjenw0pWq/7nIvCB1RYw
hcDmX9VGAQ4d92nA0wYTBD1hN0jcUM4Ye6VEmKLpB8QULd3CoVpJwMunmJTdnT8Q
Xbbpg8rJ/KYLaeZDw2L2dRORCUMG3h/50iI1RMQ0fa7LUdBNJ3E=
=HisD
-----END PGP SIGNATURE-----

--=_luckmann.name-26717-1594030493-0001-2--
