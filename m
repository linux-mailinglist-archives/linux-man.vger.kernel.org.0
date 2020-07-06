Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C48A215545
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:14:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728299AbgGFKOP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:14:15 -0400
Received: from luckmann.name ([213.239.213.133]:54993 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728264AbgGFKOP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:14:15 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5805E.000000005F02F976.00006811; Mon, 06 Jul 2020 12:14:14 +0200
Date:   Mon, 6 Jul 2020 12:14:14 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: mmap.2, wording
Message-ID: <20200706101414.GA26601@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-26641-1594030454-0001-2"
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

--=_luckmann.name-26641-1594030454-0001-2
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

Man page: mmap.2
Issue: and in order  =E2=86=92 in order

"For example, suppose that thread A looks through I</proc/E<lt>pidE<gt>/map=
s> "
"and in order to locate an unused address range that it can map using "
"B<MAP_FIXED>, while thread B simultaneously acquires part or all of that "
"same address range.  When thread A subsequently employs B<mmap(MAP_FIXED)>=
, "
"it will effectively clobber the mapping that thread B created.  In this "
"scenario, thread B need not create a mapping directly; simply making a "
"library call that, internally, uses B<dlopen>(3)  to load some other share=
d "
"library, will suffice.  The B<dlopen>(3)  call will map the library into t=
he "
"process's address space.  Furthermore, almost any library call may be "
"implemented in a way that adds memory mappings to the address space, eithe=
r "
"with this technique, or by simply allocating memory.  Examples include "
"B<brk>(2), B<malloc>(3), B<pthread_create>(3), and the PAM libraries E<.UR=
 "
"http://www.linux-pam.org> E<.UE .>"

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-26641-1594030454-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl8C+XUACgkQQbqlJmgq
5nDsThAAkmLpJXzkOeWrMjj4VZeeHzoUdyTXuf3nL+Cpp0irih7WXpsodP+xqkYY
XwqqvliFN9nLhtpvjgZYO1OGBRbfbjWA7Wvl3OTByvIt1YtByYdWkaa1JxDjK/Hi
9Z6KBdOQQsY8ismKR1cLo7SYqDgxjT9BemqQDp5+DMaDz7PTA73y/NOWJ26oKqJk
Cg/P61s08cG7vPa4O4Pk7yy3a4+7yhFsil6SUScsTJ/XJpCAIxEdpGu1zTlPC+nz
732QoEK4K0rVunoKaxkSu52dymefEEAqoqX+AgJ7Eyp8QpA4kPDAvbEPxXHpdh+6
w0iXLSGF2cS2bStcqGmRDqwv+Cg+eX4sanFo4a8UTVqpXzxMy1bTQNkrzqgdcURh
ljXYb5aAV62bUayVFdpQu9sMJgSgFe4DAVQmuffPqV6f1m2wPf7p8na+HQZwLrJ9
LPgOBH7MgXTGcMxA9Aer2EbNhGwwDECZp8S/XhFkjj2ff+gqq4YnkLcQd+k0uh3O
/0oBNrxLQRybkKqN58e5newl6Ntdc9TzRjJ+zFB1IbTNABsuZVd99S1zTsHvwM2F
kdN+masLdt9N4fvD3m0IqfJWI4XliBu/KRt8Dm/XbpuVDebpR+YmAxnP0f+TOghk
54SYtlgfssKud8TN+I8rc0vfXXuSFsGin4d8SYErr19nr9FI9f0=
=99TG
-----END PGP SIGNATURE-----

--=_luckmann.name-26641-1594030454-0001-2--
