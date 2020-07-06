Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3501D215557
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:16:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728693AbgGFKQf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:16:35 -0400
Received: from luckmann.name ([213.239.213.133]:54993 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728283AbgGFKQf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:16:35 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5805E.000000005F02FA02.000068ED; Mon, 06 Jul 2020 12:16:34 +0200
Date:   Mon, 6 Jul 2020 12:16:34 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: shmop.2: singular/plural
Message-ID: <20200706101634.GA26824@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-26861-1594030594-0001-2"
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

--=_luckmann.name-26861-1594030594-0001-2
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

Man page: shmop.2
Issue: file is =E2=86=92 files are

"The following header file is included by the \"reader\" and \"writer\" "
"programs."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-26861-1594030594-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl8C+gEACgkQQbqlJmgq
5nDdbA//Q8nw2I0Te5O+prxkxepjZ6DtAbD9MM3XPW5ZxCku5KQuDsg75QMdAFFD
7Yk+F9lDziiErTkYs3/WlJXeMe/2Hn9006+3jRhGUnxVzfeEwWcRWk8rqhaqQcfq
Oq+8HhkD+CdWn2HIhU0ywRI63gPYpow6Xk0gYamemjbcT2S7inLg8mneFrwOBYPK
+jxluydwHHWX2rPdK1LvWE6yP+MunYeadpNxT24Ofva+h1eCrb/Pu2u2EUuSkHaA
E05tc2P7XihJLdaJyxigJadqmMf/yUoJ/y8jbKY/oqO7FFUhp8REyRfHiaiCGY3x
3XMvmTL8hFK6i4q0vmGZSUKC+5Du9ImmxS5p2LJocAQ81MJu1hMjfWjcZq5JOd3I
vxPKutqQSZqGlCcEA7z1esWABdu2LxV+xEN+fHvA4eRzRYdIkoaHCyY2/fMqdHH9
/SO/86/xtb2ZOzBMB/EUz0/QAqYG0K0Ha9uJXLYrrmytjXCScE9l+vACDBhsUIqo
5oe8Kx2T6Z8hjQedCxHhoKVycQL/Zax+95EZYlbl3U1MVRVMRX4piYp/+0R2aE+M
2eNG/KhS/sanT1mydeEGmDiWTkywO/+0Vd2nMgrfPjLVT4ZB7vnjGd+XZD/ycJ99
zcMJdbTzFjsIQL2AuPmfJQrO08wyWf02D2K+2sG5b9d0RJ55gCY=
=SNBk
-----END PGP SIGNATURE-----

--=_luckmann.name-26861-1594030594-0001-2--
