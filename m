Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA3254043AD
	for <lists+linux-man@lfdr.de>; Thu,  9 Sep 2021 04:37:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233908AbhIICiv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Sep 2021 22:38:51 -0400
Received: from THBLACKELECTRIC.COM ([207.244.97.128]:39540 "EHLO lsw.cs1local"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232144AbhIICiv (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 8 Sep 2021 22:38:51 -0400
Received: from [72.29.63.102] (helo=localhost)
        by lsw.cs1local with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <thb@b-tk.org>)
        id 1mO9wa-0004ku-2A
        for linux-man@vger.kernel.org; Thu, 09 Sep 2021 02:37:40 +0000
Received: from thb by localhost with local (Exim 4.94.2)
        (envelope-from <thb@b-tk.org>)
        id 1mO9b2-0003Xb-2A; Thu, 09 Sep 2021 02:15:24 +0000
Date:   Thu, 9 Sep 2021 02:15:24 +0000
From:   "Thaddeus H. Black" <thb@debian.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH] filename.7: new manual page
Message-ID: <YTluPPbquS6ZHmHL@b-tk.org>
References: <YTX+PEtj60O/TdMh@b-tk.org>
 <a18a8f3d-78a7-15e5-7a6e-0f4740c84667@gmail.com>
 <YTjPHZEpjzn7Ufg/@b-tk.org>
 <1543a191-66f9-3cb5-1903-277242e9204c@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="AkgOZjkHhA6RhS5o"
Content-Disposition: inline
In-Reply-To: <1543a191-66f9-3cb5-1903-277242e9204c@gmail.com>
X-Spam_score: -0.8
X-Spam_bar: /
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--AkgOZjkHhA6RhS5o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 08, 2021 at 05:45:43PM +0200, Alejandro Colomar (man-pages) wro=
te:
> > Question 1:  do you happen to know of a good example of an existing
> > manual page that already does this?  If you did, then I could follow the
> > example.  Otherwise, it might be tricky, for the existing subsections
> > already have tagged paragraphs and other structure within them.
> > Perhaps .RS/.RE could be used.  I am not sure.
>=20
> I don't know of a page that does this, and some of them are a bit
> inconsistent, so I'd have to search through the source code of the pages =
to
> find one that is a perfect example.  So I'll write/draw a schema here:
>=20
> You could do it like this:
>=20
> .TP
> 	tag 1
> .PP
> 		paragraph 1.1
> .IP
> 		paragraph 1.2
> .IP
> 		paragraph 1.3
> .RS
> .TP
> 		tag 1.4
> .PP
> 			paragraph 1.4.1
> .IP
> 			paragraph 1.4.2
> .RS
> .TP
> 			tag 1.4.3
> .PP
> 				paragraph 1.4.3.1
> .IP
> 				paragraph 1.4.3.2
> .IP
> 				paragraph 1.4.3.3
> .RE
> .IP
> 			paragraph 1.4.4
> .RE
> .IP
> 		paragraph 1.5
>=20
>=20
> Was it helpful?

Yes but it does not do exactly what you want.  However, after some
reading and experimentation, I find that the following does exactly what
you want (if I correctly understand what you want).

    .\" The .SSS macro introduces a subsubsection
    .\" as the .SS macro introduces a subsection.
    .de1 SSS
    .  if !r SSS_SN_ORIG .nr SSS_SN_ORIG \\n[SN]
    .  nr SN (2 * \\n[SSS_SN_ORIG])
    .  SS \&\\$*
    .  nr SN (\\n[SSS_SN_ORIG])
    ..
    .TH ABC 7 1970-01-01 "Linux" "Linux Programmer's Manual"
    .SH SECTION FOO
    .PP
    Foo flargh.
    .SS Subsection bar
    .PP
    Bar blargh.
    .SSS Subsubsection baz
    .PP
    Baz mnargh.

Result:

    ABC(7)                 Linux Programmer's Manual                 ABC(7)

    SECTION FOO
           Foo flargh.

       Subsection bar
           Bar blargh.

          Subsubsection baz
           Baz mnargh.

    Linux                          1970-01-01                        ABC(7)

On the PDF output device, the result is similar, though the narrow
offset (only 1.2en) between "Subsubsection baz" and "Baz mnargh" is
slightly unappealing in the PDF.


--AkgOZjkHhA6RhS5o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEM1APDU+pwMhnuF4GcGMmQy2FIrwFAmE5bjgACgkQcGMmQy2F
IrwovxAA0AJ6Z/I5jXu4N7WFbuLSi8bJv1+9fm83c2nnnDp/RqAUf8YegI3Lmpe8
LY2dfew92eRWTcRUVOSwkcyAzYDlk/j+7DVe/nVpU8MFHahuJhOzXeUY/CHWyG2u
GEN1zIg4Xwz2yy7xJiM6qnyWVQiKJ3awNio/lWERxA+KmJYgGwo75yOJeDWIRgAg
pAe9Vu/bBv0XPvI+PrhyVu3aZZqzAUfQz11vHlOun+NyOmAgxDLKLNnoTcIJe0ZQ
gk5udtwJHCcpvL3UhRI7uIJhpxftRKvz6es4re/uc9uTUC6ngzNagk9YadArBraS
vuCXa4nRIWzpJ6IorPRL9aAMKkGhkudib82bGwRHlhqGoHFf7kG1bY3NSq3Mg27P
azJuUiDwhOdL9eO/kqu2PXPrWw3y1vn1/Dpw4tMlXzI0gII0RitPjs3cW4xLE9qB
miS2s+LSCs0at+CbToob8TrgMduXiJby66N+aYbA34uK5EqY7B9su30vssRB6te1
yPxbdYrUBN2cQ6kGhCNCGiOVzhz8Vucq8vthaUGt9UpVX658lal8QJycg2v38wJR
camPOqQ6Dl6brvHa2azL8ZlqeoS0Crk4EeRMdwz+s5C+z0oz8+JkUqTA0OMgPXPH
587cKF+LlKsfUckg4591lVpVrmd1EADE95KLNrWgARsOzpDwWTo=
=NHuR
-----END PGP SIGNATURE-----

--AkgOZjkHhA6RhS5o--
