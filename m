Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDF021B7E2E
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2020 20:47:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726813AbgDXSrH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Apr 2020 14:47:07 -0400
Received: from luckmann.name ([213.239.213.133]:51637 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726793AbgDXSrG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Apr 2020 14:47:06 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E56011.000000005EA33428.00001EEB; Fri, 24 Apr 2020 20:47:04 +0200
Date:   Fri, 24 Apr 2020 20:47:04 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: signal(7): Wrong constants?
Message-ID: <20200424184704.GB7401@Debian-50-lenny-64-minimal>
References: <20200419064824.GA31933@Debian-50-lenny-64-minimal>
 <0f9c7479-73f3-9913-8e3f-ca726d24c3bb@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-7915-1587754024-0001-2"
Content-Disposition: inline
In-Reply-To: <0f9c7479-73f3-9913-8e3f-ca726d24c3bb@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-7915-1587754024-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hallo Michael,
On Mon, Apr 20, 2020 at 10:28:41AM +0200, Michael Kerrisk (man-pages) wrote:
> On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> > **
> >=20
> > POSIX_TRSIG_MAX -> MIN
> >=20
> > "Starting with version 2.2, Linux supports real-time signals as origina=
lly "
> > "defined in the POSIX.1b real-time extensions (and now included in "
> > "POSIX.1-2001).  The range of supported real-time signals is defined by=
 the "
> > "macros B<SIGRTMIN> and B<SIGRTMAX>.  POSIX.1-2001 requires that an "
> > "implementation support at least B<_POSIX_RTSIG_MAX> (8) real-time sign=
als."
> > --
> >=20
> > _POSIX_SIGQUEUE_MAX =E2=86=92 MIN
> >=20
> > "According to POSIX, an implementation should permit at least "
> > "B<_POSIX_SIGQUEUE_MAX> (32) real-time signals to be queued to a proces=
s.  "
> > "However, Linux does things differently.  In kernels up to and includin=
g "
> > "2.6.7, Linux imposes a system-wide limit on the number of queued real-=
time "
> > "signals for all processes.  This limit can be viewed and (with privile=
ge) "
> > "changed via the I</proc/sys/kernel/rtsig-max> file.  A related file, I=
</proc/"
> > "sys/kernel/rtsig-nr>, can be used to find out how many real-time signa=
ls are "
>=20
> The constants are correct.
>=20
> Quoting myself: "The use of the string _MAX in the limit names=20
> defined by SUSv3 can appear confusing, given their description as minimum=
=20
> values. The rationale for the names becomes clear when we consider that e=
ach=20
> of these constants defines an upper limit on some resource or feature, and
> the standards are saying that this upper limit must have a certain=20
> minimum value."

Thanks for the explanation. I added a note in the translators file to
remind him (her?) in the future of this fact.

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-7915-1587754024-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6jNCgACgkQQbqlJmgq
5nDppBAAsDk60O+u0sg5VP1J5noXUAI8umIONaj6mhw7mNJmq9lRpb1MsbFUKyNo
ayRYXlwPzP9v6AQ1CjUuWEke2sn1x8TSHIss+IeFDcn5FwM4liT3AdTakkCeZA/7
n+v57l9owv5GUsdMgwLWenw9LeOFyyCN6t/Ocg0j65Y3Y7xHho3Dld6VyO2NmZrU
sIqWv34UuY17WtMYUIZ9o0xDFDQBxj2ABTJenbU4OIMg6xPjLpUGG+96neULb+zX
FdpDvqzpXXfz13APud8mBSdUdUMYBYq73jua2P/seKf53j3dcCKkAjPVDlzcg62V
Ans16bax0HoTJUlwf2JwKQIworqv62t3dZcNzE8rorozNHyKP8Gz2lmhqjp/esx0
gEXWTIkTq2vyBJpmZL0pLaoBujTSBf+vwyMFHN5E/GjKBgSEjZCN2YyIsvN2akaC
3BtO9ul0m/WSDNbekkw65KwfE3TAw1qHau5iQFcZNlRlHF8awyZ2NIjVz2DNqDXo
fcbDTCWexlMZKJshfpA2w+jZYTzYGRSxEpmGyxrLJedMM3WMeJSPwgIJ1wO0P96s
f3Iehf8VLL8piSev5Ue8C7eJm/mBzYbVH9Qv1JgALONMgkIvUjlsQF8ppsD8kbAV
yHMURq2KbSbWbUfblit8KH/Xr8xuKUN/tpqnZAmRFNHTp8MARlY=
=VR+/
-----END PGP SIGNATURE-----

--=_luckmann.name-7915-1587754024-0001-2--
