Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25A141B8591
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2020 12:18:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726059AbgDYKSe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 25 Apr 2020 06:18:34 -0400
Received: from luckmann.name ([213.239.213.133]:33433 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726053AbgDYKSd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 25 Apr 2020 06:18:33 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5602F.000000005EA40E77.00005C7E; Sat, 25 Apr 2020 12:18:31 +0200
Date:   Sat, 25 Apr 2020 12:18:31 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: Errors in man pages: here: strcat(3): Clarification
Message-ID: <20200425101831.GB22709@Debian-50-lenny-64-minimal>
References: <20200419064830.GA32259@Debian-50-lenny-64-minimal>
 <c5e07915-1ebf-0058-0661-6a7689dd8d30@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-23678-1587809911-0001-2"
Content-Disposition: inline
In-Reply-To: <c5e07915-1ebf-0058-0661-6a7689dd8d30@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-23678-1587809911-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Michael,
On Mon, Apr 20, 2020 at 10:41:38AM +0200, Michael Kerrisk (man-pages) wrote:
> On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> > **
> >=20
> > Is the size of dest correct?
>=20
> If you think it is wrong, please elaborate the reasons.

Unfortunately the translator responsible for this remark is no longer
active so I do not have any further background.

Please close this issue and apologize for the noise.

> > "If I<src> contains I<n> or more bytes, B<strncat>()  writes I<n+1> byt=
es to "
> > "I<dest> (I<n> from I<src> plus the terminating null byte).  Therefore,=
 the "
> > "size of I<dest> must be at least I<strlen(dest)+n+1>."

Greetings

           Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-23678-1587809911-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6kDncACgkQQbqlJmgq
5nC4Jw//TfyZfwI49N2hzPYBKDAVypwtSVhv8xY2IytUzX7TfQqA/fvoEg2nj4bt
19BD8PZkFjWkQZIrybRN+w8K+pNmn+fJe7d9z0/ACR+GIkaI1wm36Gpb2S3e2I3U
c236qGvtBX49fxcji+r7KqD99WDqV0ojZZQheSdOT6dhM8pSvuVrIXtRR1a8AgVq
qRZMxG0Z7+0S43HK48k4rNyTxptXpde1iyUvDis5d9pMDesh10PxS75AGFm/dAN8
ueZjAah/KIIzf8XMTWplwlcNXoF5Zg7Frnv9K7YzyDxzNccOC/Bhuch1KTjrOHm+
5PQ4BohRnoC9D/ZhJdZzujWpBaBQkvIZfqcXc7bUNjWCnholLDkiQBsL/SdlUtML
qeeEhvrSUyciSrBQq0jupI9KA+BmF23nKUum3OiBJPUHPb3q/saNh7ftDEx0449D
vATNERUQFYvJsu9SHKXXTrrs2L1pyPX1bln06rHs6LcrGtl/AeJrX+4ZWGY8O0Tk
XT/Qw+MLGGm+uPrkpZ2fLMnWOPhBCVQEgYKqlozmHd0QsrDqU5gx4ZvbOdphYySH
aGeiLjpwizIAa3a8+PkFNWub+OBezzU/wpHVdrzsxrcvqh6DjjpbWjV7hTW4zRc5
I1FtRzZZNXehLaPzSqLOxmMg6aljbVV8zVgU5fIkeGF6Uc2Avr8=
=v1Pp
-----END PGP SIGNATURE-----

--=_luckmann.name-23678-1587809911-0001-2--
