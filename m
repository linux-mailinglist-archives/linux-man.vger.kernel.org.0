Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81A6E3EEDA7
	for <lists+linux-man@lfdr.de>; Tue, 17 Aug 2021 15:45:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237090AbhHQNpt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Aug 2021 09:45:49 -0400
Received: from luckmann.name ([213.239.213.133]:41993 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236635AbhHQNpt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Aug 2021 09:45:49 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD4001.00000000611BBBE9.00003142; Tue, 17 Aug 2021 15:38:49 +0200
Date:   Tue, 17 Aug 2021 15:38:49 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: Errors in man pages, here: access.2
Message-ID: <20210817133849.GB12220@Debian-50-lenny-64-minimal>
References: <20210725170511.GA16224@Debian-50-lenny-64-minimal>
 <CAKgNAkhsN2-FfpRiyK++jGc2hpy2YCsNPjVhWHDdkG6t2tBcjA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-12610-1629207529-0001-2"
Content-Disposition: inline
In-Reply-To: <CAKgNAkhsN2-FfpRiyK++jGc2hpy2YCsNPjVhWHDdkG6t2tBcjA@mail.gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-12610-1629207529-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Michael,
On Sun, Jul 25, 2021 at 10:45:45PM +0200, Michael Kerrisk (man-pages) wrote:
> On Sun, 25 Jul 2021 at 19:05, Helge Kreutzmann <debian@helgefjell.de> wro=
te:
> >
> > I'm now reporting the errors for your project. If future reports
> > should use another channel, please let me know.
> >
> > Man page: access.2
> > Issue: FIXME: The if construct does not reeally work well, better: B<ac=
cess>() and B<faccessat>() return the following exit codes:
> >
> > "B<access>()  and B<faccessat>()  shall fail if:"
>=20
> I think the wording is okay. It appears in a number of pages.

I'm giving you a longer rationale for our report:

Currently the man page reads:
       access() and faccessat() may fail if:

       EFAULT pathname points outside your accessible address space.

       EINVAL mode was incorrectly specified.

This looks like a sentence on the one hand and like a table on the
other.

If it was a sentence, it could not be read, take the first case as an
example:
=E2=80=A6 may fail if EFAULT pathname points =E2=80=A6

So we thought it might be better like a table:

       EXIT CODE     DESCRIPTION
       EFAULT        pathname points outside your accessible address space.

       EINVAL        mode was incorrectly specified.


To avoid the actual table formatting and keep it more sentence like we
proposed the above suggestion.

Another fix could be to move the "if" downwards and reword slightly:
       access() and faccessat() may fail with

       EFAULT if pathname points outside your accessible address space.

       EINVAL if mode was incorrectly specified.

And no, we did not check for other occurences.

If you state the current wording is fine ("sloppy sentence") then I
wont argue further of course, I'm not a native speaker, but we might
translate it more freely.=20

Greetings

           Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-12610-1629207529-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmEbu+YACgkQQbqlJmgq
5nBjhQ//SZNB+ZArRnHgCsMvpK69d9994PkXvjdf7tNqPsOn/OekuBYUacyG7vt2
1Txh+ovfOdVUJcl1Dka/rlsp0JP/pWe3fTyNyc+xwxE+7gTLvNroD7GmQ+EAxy+8
Ad1Xbjx6UaN9OXpedRmSmpd2xSi8uud6X8Qb5jVJeaCjyVjnBk4IxER+bdNkKOiZ
o4REg0/5e9paNLc3DeZNjHNmM/zAX+xU1pITvVgSIPryIpQQS8mjiQEwtm8tvRQn
F/mCiO6X+u8WyTOcqyvihht+QfXfj9sRz5a3W+J+Dzj+2NZKUcdwA+Tc9fySBk43
ewhhsMYdpsj445/tIab51mVD6TOeDspVyKgf8BXVukwGJ5+PK72DjPtVOehtU6gP
E8CLZBmnTfnOv5KYqdTeF3MTUjPDgwwCERZvAZ7QKPtnBNmvnPmY8QNsuu7MZRhg
Qk146eK+RRi3se9WZ1HbAxqWtXHUVYrqDmtCmT7ZlB/+IDfIt7kwBnncA4S2eXEK
Hx3vdhyxkUIS2Icm2HYUUS69y5QU2bs204GjZGoL46pAMnm1JV4blMlZ79uS0J9p
Rdy+6o/hn+jphGa+PhznxJdhNgGlQdSqtaJ76AxMwvJvg8t7tZ9ttBV/37M6GfeA
rwrtpzd01cmeU42dgFSb90sX41HqDCuEZrb7LqiKxdnDd0NlNs4=
=Trx0
-----END PGP SIGNATURE-----

--=_luckmann.name-12610-1629207529-0001-2--
