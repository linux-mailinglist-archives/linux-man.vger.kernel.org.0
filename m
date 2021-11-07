Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFF3044737D
	for <lists+linux-man@lfdr.de>; Sun,  7 Nov 2021 16:21:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229955AbhKGPYd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Nov 2021 10:24:33 -0500
Received: from THBLACKELECTRIC.COM ([207.244.97.128]:40822 "EHLO lsw.cs1local"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229878AbhKGPYc (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 7 Nov 2021 10:24:32 -0500
Received: from [72.29.63.102] (helo=debian)
        by lsw.cs1local with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <thb@b-tk.org>)
        id 1mjjzQ-0002Xs-PU
        for linux-man@vger.kernel.org; Sun, 07 Nov 2021 15:21:49 +0000
Received: from thb by debian with local (Exim 4.94.2)
        (envelope-from <thb@b-tk.org>)
        id 1mjjHu-00035i-Ky; Sun, 07 Nov 2021 14:36:50 +0000
Date:   Sun, 7 Nov 2021 14:36:50 +0000
From:   "Thaddeus H. Black" <thb@debian.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH v3] filename.7: new manual page
Message-ID: <YYfkggpiE1D+HW9R@b-tk.org>
References: <YWysyI6/sZtbQBBb@b-tk.org>
 <YW2hzL5vDfVZIAXY@b-tk.org>
 <22573673-bf1e-0f64-7e95-6cf0a23c2015@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="CiD9xv/lYfQrLvVr"
Content-Disposition: inline
In-Reply-To: <22573673-bf1e-0f64-7e95-6cf0a23c2015@gmail.com>
X-Spam_score: -0.7
X-Spam_bar: /
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--CiD9xv/lYfQrLvVr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 19, 2021 at 03:38:09PM +0200, Alejandro Colomar (man-pages) wro=
te:
> 'git format-patch' is the preferred method :)
>=20
> What I missed here is the long (and great) commit message from v1, which =
I'm
> going to save as the commit message.  Please, when you send v4, include t=
he
> original text.

Okay.

> Ephemeral stuff that should not go into the commit message (like changelo=
gs
> between versions of the patch), you can put it above, in a "scissor patch"
> format (see git-format-patch(1) if necessary).
>=20
> Or if it's short/simple enough, below the '---' (and just above the patch
> itself; it is actually ignored by git, unless it's so complex that it is
> misinterpreted as part of the patch).  This method is what I usually use,
> since it doesn't require specifying '--scissors', and I usually only write
> normal text that can't be confused with the patch.  I don't know if this =
is
> documented anywhere, but it's very useful.

In view of feedback, v4 requires substantial rewriting.  Rewritten text
wants polishing.  Polishing takes time.

In short, I haven't forgotten, but v4 is not yet ready.

Note to other readers:  if any latecomers to the conversation wish to
suggest further significant changes, now would be the time to suggest;
for once the draft has been reassembled and repolished, it will be too
late.  Nonsubscribers can find v3 at [1].

    1: https://www.spinics.net/lists/linux-man/msg21267.html

--CiD9xv/lYfQrLvVr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEM1APDU+pwMhnuF4GcGMmQy2FIrwFAmGH5H0ACgkQcGMmQy2F
IrzSuA/+JvGsu/ylUxT7BswfQedk0il4di4X3Ic0Np+v874mzhzeK21KIuHePPT8
LekhqnBF4FuBfWuQHTfqfI6oqlhUpgRNLZu5yNJtmx1EORu18WU38J7pwbHZSwCH
Yr2tx7LKR0jk1jPgAxaBFiI4W1b3AF7MCAMn4OEG91aViAkGMcl42vTkyQmGAyGY
NumoKAe+O5Y9mngGb6BVx3ItWd02SR4WLbne2FoavMBzUPXX4GUnrFKBxrwNtwIl
s5UdfuhD+xN6og6HAFiOjnz8vKwdSEUAhDBkeHbs+J8TUKoLyn7euERndydDQd9e
1YJEvrQS/RNaVmYLOR+4BZ4I3KbVluddKO8Q6sD9s50Tb3+kYBK3HbjRUny8Pqrd
1oSuaOui1r0VIY6qDkmJEObDoltN+RaVPQHj/eloaKNW+1e3zgpg10i0vt9IYTCj
m8KMCLTgn9UThipj/7WWFT+f82nch7W4ew3tEvUq5clr3okq0/UyRMzpNJHK98Df
tnIz/iy+/0MEeGA09ghvj+tj/53ovH0dWInhwiGqbRmGp60VZk81SswBPu8IcBL2
EdP6NOqnBjt3ns7qgvLoBNc22WWdRreSFqjDbOqo2PUEXhWym2yC2rWFMXAopmLg
IBicgU986fFaqssB4GRBbqiR4NrqFvdot8NWtlVDvyUOS9bbLss=
=VsZw
-----END PGP SIGNATURE-----

--CiD9xv/lYfQrLvVr--
