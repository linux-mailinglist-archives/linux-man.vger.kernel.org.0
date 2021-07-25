Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B08C3D4EF8
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:12:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbhGYQbp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:31:45 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229825AbhGYQbp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:31:45 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8013.0000000060FD9A41.00004076; Sun, 25 Jul 2021 19:07:13 +0200
Date:   Sun, 25 Jul 2021 19:07:13 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: ioctl_tty.2
Message-ID: <20210725170713.GA16469@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16502-1627232833-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16502-1627232833-0001-2
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

Man page: ioctl_tty.2
Issue: I<ioctl> =E2=86=92 B<ioctl>?

"Use of I<ioctl> makes for nonportable programs.  Use the POSIX interface "
"described in B<termios>(3)  whenever possible."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16502-1627232833-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mkEACgkQQbqlJmgq
5nBXRA//R5Taugb5jS0ycrzW4cv5CPBdD0QoLMFccTHSdmdjxs0dCb3ZTEWWV9qg
Y9FttBIXqeLoS62q3ztVIviMEx+Rdslt5GDCVNuPoPfvfFhHtQTn9l6lZfL9yLKz
jk+ToJL7QdbBOLoyWOSNDJJh3ybKOZGofRT657UMIqmNhlO3KSyX0x8f69CgvBb7
OYDMBMrbwWOjY5Fln1GX4d1/YMVUm2PrVqUk4vtHY9DhsKAGq7YSfmqj9qUO2fp3
SDU0uEeOTO99blRJbvBjX3BaK+/n1jOxTcvOiuCsR6cnNthdkxV5L6qeh76ueTce
9SLMyOyJPA8lxh4EFDp6CJpc70WtKMmBYP9MbUYUSK/NSAMHgvpx4YfW50U3gy+I
W6tWzyfwxrfCQVh5EqXNrYcn6v6JaN8rp0EldkLktEil+DPfs6Ff0YP/9QY/Ta+v
n2te6g+/7ITsv2XrpGbVuneK/Q77LyHu1hIuSYza4Ui3sBx6s7+5IwQAVAf34KhX
2MOIDXCcs/HhqYei9wIVa8Y0oK9rsjYdd8rm7Q0Tf0FXmA5RmFm0HHrfxHrD+Dj+
Y0VMQwm9+l+0bRjGZUojpFrmqBUqE/AhZH9X7ybwBOp+yf1z2N2G2QOwFIVvgLLg
MSgSxa/O+bZxzy3C+AbPIM67Zl4/kWSrX8XlxHvZGq/1JoYRauM=
=pSXc
-----END PGP SIGNATURE-----

--=_luckmann.name-16502-1627232833-0001-2--
