Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5BA3E1B64A7
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2020 21:43:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726157AbgDWTnM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Apr 2020 15:43:12 -0400
Received: from luckmann.name ([213.239.213.133]:43723 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726060AbgDWTnM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Apr 2020 15:43:12 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E56033.000000005EA1EFCE.00001E66; Thu, 23 Apr 2020 21:43:10 +0200
Date:   Thu, 23 Apr 2020 21:43:10 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: dsp56k(4): plural/singular
Message-ID: <20200423194310.GD6193@Debian-50-lenny-64-minimal>
References: <20200419064755.GA30283@Debian-50-lenny-64-minimal>
 <09edb420-e9cc-6a6a-9320-b6b1533436f3@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-7782-1587670990-0001-2"
Content-Disposition: inline
In-Reply-To: <09edb420-e9cc-6a6a-9320-b6b1533436f3@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-7782-1587670990-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Michael,
On Mon, Apr 20, 2020 at 09:45:32AM +0200, Michael Kerrisk (man-pages) wrote:
> On 4/19/20 8:47 AM, Helge Kreutzmann wrote:
> > **
> >=20
> > member/members? There is only one?!
> >=20
> > "resets the DSP56001 and uploads a program.  The third B<ioctl>(2)  arg=
ument "
> > "must be a pointer to a I<struct dsp56k_binary> with members I<bin> poi=
nting "
> > "to a DSP56001 binary program, and I<len> set to the length of the prog=
ram, "
> > "counted in 24-bit words."
>=20
> This repoort appears wrong to me. There are two fields, 'bin' and 'len'.

Yes, I see it now. Sorry for the noise.

> By the way, this report made me notice that the name of the structure
> itself is wrong: "dsp56k_binary" =3D=3D> "dsp56k_upload".

Then at least it helped a little :-))

Greetings

        Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-7782-1587670990-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6h784ACgkQQbqlJmgq
5nAR6BAApePnmWUUGXh8VfAr6sLR8IZxQ6bdfLx61/mX7XyeVZHr8eOXCXly2W7M
6FfQzOABAZ3g+/au+Ba+BxlV1/YPQN+qSHJr5QrLTmENOt6KWujqUGFLWYmbK23j
2WhPbP6FWhxc8ofk48wg8LAFemEGbsDLP0dgbBmguwD0nAdE9Z965EUnbt6EGzpW
3TP8z79RhC/z8JiYF42U6OeYak4gh+uiJySgNg5U3xEfK87wTwTT1oxcI4K7HgjN
+HXJ74JS2V9HD/Dj95EIF8/Ac2koXM6Pmp+AFVboiSxiI47W3Gr8zfwhSrS+e4NL
adm+lmrx1zx3ghk/Cq/gmthaO5GtLQM6gG4uiGJwyMwjmqn7ELdbF7lYctsZqvEV
MpLTZ6lZURoLUYgUCmkQmqCkXQlKrbZQnBctWKryGGYn3plY6kM9yKIER9LFNN6G
CKPZTz2PgzCDq0fUb9leHsrBEB9PhFObbnxo5tQGGyp1Jh17NzdcvbYYmi4xY5p6
0OhtfODuvFiFn0R3790Dfun1g8yLDk0+Ba5ves8It8fWOLmzyUS5kOpoUW7afygv
zSM2hSCCBrjrqhuFygE2E4RJprTY2+ppR58Dkrn2Vcsq5+UtN1WXkcDOo3ug9CI6
vN3Eb292gcKks7cpkKlKH1lHJda2vFSVMmIXK7NyZEauTGdqqGU=
=Hhfq
-----END PGP SIGNATURE-----

--=_luckmann.name-7782-1587670990-0001-2--
