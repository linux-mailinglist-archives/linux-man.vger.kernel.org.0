Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4627407DC5
	for <lists+linux-man@lfdr.de>; Sun, 12 Sep 2021 16:20:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229762AbhILOVu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Sep 2021 10:21:50 -0400
Received: from THBLACKELECTRIC.COM ([207.244.97.128]:39870 "EHLO lsw.cs1local"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229653AbhILOVt (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 12 Sep 2021 10:21:49 -0400
Received: from [72.29.63.102] (helo=localhost)
        by lsw.cs1local with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <thb@b-tk.org>)
        id 1mPQLT-0005U1-6K
        for linux-man@vger.kernel.org; Sun, 12 Sep 2021 14:20:35 +0000
Received: from thb by localhost with local (Exim 4.94.2)
        (envelope-from <thb@b-tk.org>)
        id 1mPQLR-0001ZV-HR; Sun, 12 Sep 2021 14:20:33 +0000
Date:   Sun, 12 Sep 2021 14:20:33 +0000
From:   "Thaddeus H. Black" <thb@debian.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] Use subsections instead of sections
Message-ID: <YT4MsXe46WlMa8i0@b-tk.org>
References: <YTluPPbquS6ZHmHL@b-tk.org>
 <20210909072442.423117-4-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="sOfoR61+lFW0S12s"
Content-Disposition: inline
In-Reply-To: <20210909072442.423117-4-alx.manpages@gmail.com>
X-Spam_score: -0.8
X-Spam_bar: /
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--sOfoR61+lFW0S12s
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Alejandro:

I have applied all your patches but have one question.  Consider the
following sample manual page, which uses the .TP subsubsectioning technique
you have recommended.  In the sample, observe the difference between
subsubsections 1a and 1b.

    FOO(7)                 Linux Programmer's Manual                 FOO(7)

    NAME
           foo - sample to illustrate manual-page markup

    DESCRIPTION
           Lorem ipsum dolor sit amet, consectetur adipiscing elit.

       Subsection 1
           Sed at ante.

           Subsubsection 1a
                  Mauris  eleifend,  quam  a  vulputate  dictum, massa quam
                  dapibus leo, eget vulputate  orci  purus  ut  lorem.   In
                  fringilla mi in ligula.

           Sss 1b Pellentesque  aliquam  quam  vel dolor.  Nunc adipiscing.
                  Sed quam odio, tempus ac, aliquam  molestie,  varius  ac,
                  tellus.

           Subsubsection 1c
                  Vestibulum  ut nulla aliquam risus rutrum interdum.  Pel=
=E2=80=90
                  lentesque lorem.  Curabitur sit amet erat quis risus feu=
=E2=80=90
                  giat viverra.

       Subsection 2
           Pellentesque augue justo, sagittis et, lacinia at.

    CONFORMING TO
           Example.

    Linux                          1970-01-01                        FOO(7)

Groff has typeset subsubsection 1a as you like it, but has typeset
subsubsection 1b, which has a shorter title, differently.  This is okay
with me, but is it okay with you?

[No such short title occurs in filename(7), but such a short title might
occur in another, future manual page that emulated the technique.  This
is why I ask.]

Sample source follows.

---------------------------------------------------------------------------
=2ETH FOO 7 1970-01-01 "Linux" "Linux Programmer's Manual"
=2ESH NAME
foo \- sample to illustrate manual-page markup
=2ESH DESCRIPTION
Lorem ipsum dolor sit amet, consectetur adipiscing elit.
=2ESS Subsection 1
Sed at ante.
=2ETP
=2EB Subsubsection 1a
Mauris eleifend, quam a vulputate dictum,
massa quam dapibus leo,
eget vulputate orci purus ut lorem.
In fringilla mi in ligula.
=2ETP
=2EB Sss 1b
Pellentesque aliquam quam vel dolor.
Nunc adipiscing.
Sed quam odio, tempus ac, aliquam molestie, varius ac, tellus.
=2ETP
=2EB Subsubsection 1c
Vestibulum ut nulla aliquam risus rutrum interdum.
Pellentesque lorem.
Curabitur sit amet erat quis risus feugiat viverra.
=2ESS Subsection 2
Pellentesque augue justo, sagittis et, lacinia at.
=2ESH CONFORMING TO
Example.

--sOfoR61+lFW0S12s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEM1APDU+pwMhnuF4GcGMmQy2FIrwFAmE+DKkACgkQcGMmQy2F
Irz8qw/5AcWMTSiu2A2oBQmuiHLmoe3HiZczBQkugFCT/dOK+8RG0pdCS+yGzQty
uAvkxRXvstiDcx0SN5an1A83H6K7VMkJpH0HATrtBmc6bPYgHX30F0/lnrNWhpGQ
v5uq53G4tEaw5pXNgnA7B/9gbxrldUel9Sj7LxGIce+0AiT9tojKXoTVW5S9ovA8
sd2nEzQ2t8T/FPl5jy4jJ7MM0MNOYXO0+ufOEdOE8uTBeUMJIbntmuPyHIEfhUnH
N2eGJ9YivAQRfZnT+M6wjTXtpFHyB57PQJPDGBshpkZvwJVM7PHbPXzo/LdNSrMm
xJLd3YEliQpdxTKVMEAIKYDfSecn9KEAt09J7V0o6z88WOG6d4sBinbbxIXkHDBa
VLZEi52ObsxvNNIQPm15DetqC1noeiUMgQAHRqFDo4C70tHV+aZmQMizBIy0qvZc
7M5lVBe4GTezx41oLJMvqEDRGSMQ/eUQm0+G4CnDcHKdAODs00Eqn3I6NwigBtGc
FlWZEtGGxqnCUYvQh2kOYJi71Y5wII8sp/mwfZTwHGqOmwHsmrbTLDj7j8oBZgZp
/wy8QxxZVhiBONLuNHPuhW1qh1oXYb5YX17KnwEvmcebwDMmewJuEbDf4N2EL0zJ
ZqJSrjAQiziP3ahsR6AkVaYIawNKJ1g1uNwuqVq4KzIQY4ZC8dE=
=f0yU
-----END PGP SIGNATURE-----

--sOfoR61+lFW0S12s--
