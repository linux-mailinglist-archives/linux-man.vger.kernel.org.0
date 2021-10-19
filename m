Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B68214334BF
	for <lists+linux-man@lfdr.de>; Tue, 19 Oct 2021 13:32:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230129AbhJSLes (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Oct 2021 07:34:48 -0400
Received: from THBLACKELECTRIC.COM ([207.244.97.128]:38064 "EHLO lsw.cs1local"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230097AbhJSLer (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 19 Oct 2021 07:34:47 -0400
Received: from [72.29.63.102] (helo=localhost)
        by lsw.cs1local with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <thb@b-tk.org>)
        id 1mcnM9-0005Jo-QN
        for linux-man@vger.kernel.org; Tue, 19 Oct 2021 11:32:34 +0000
Received: from thb by localhost with local (Exim 4.94.2)
        (envelope-from <thb@b-tk.org>)
        id 1mcmvq-0000qE-9s; Tue, 19 Oct 2021 11:05:22 +0000
Date:   Tue, 19 Oct 2021 11:05:22 +0000
From:   "Thaddeus H. Black" <thb@debian.org>
To:     Florian Weimer <fweimer@redhat.com>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH v3] filename.7: new manual page
Message-ID: <YW6mcn0uMW3FWUu6@b-tk.org>
Reply-To: "Thaddeus H. Black" <thb@debian.org>, linux-man@vger.kernel.org,
          Alejandro Colomar <alx.manpages@gmail.com>,
          "G. Branden Robinson" <g.branden.robinson@gmail.com>,
          Michael Kerrisk <mtk.manpages@gmail.com>
References: <YWysyI6/sZtbQBBb@b-tk.org>
 <YW2hzL5vDfVZIAXY@b-tk.org>
 <87fssxgzt8.fsf@oldenburg.str.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="WgDfcJ9DCFfdC4Lr"
Content-Disposition: inline
In-Reply-To: <87fssxgzt8.fsf@oldenburg.str.redhat.com>
X-Spam_score: 1.8
X-Spam_bar: +
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--WgDfcJ9DCFfdC4Lr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 19, 2021 at 10:54:11AM +0200, Florian Weimer wrote:
> Maybe add: =E2=80=9CA pathname contains zero or more filenames.=E2=80=9D

Okay.

> What does this mean?  I think only byte 0x2f is reserved.  The UTF-8
> comment is misleading.  A historic/overlong encoding of / in multiple
> UTF-8 bytes is *not* reserved.

I had not known that UTF-8 had an alternate encoding for any ASCII
character.  Does it indeed have an alternate encoding?  If so, where
can I learn more?

The new filename(7) manual page wishes to be correct but, otherwise,
would like to inflict upon the reader as little difficult technical
prose as it can.  The page wants to remain readable.  In this light, can
you advise me how the page should speak to your point?

> This conflicts with the presentation of / as a separator in pathnames, I
> think: The pathname "/usr/" contains two empty filenames.

I had not thought of that.  Good point.

Thus, the empty filename is not forbidden but rather is reserved.

> > +No filename may exceed\~255 bytes in length,
> > +or\~256 bytes after counting the terminating null byte.
>=20
> This is not correct for Linux.  Despite the definition of NAME_MAX,
> filenames can be longer than 255 bytes.  NTFS and CIFS have a limit of
> 255 UTF-16 characters, which translates to about 768 bytes in the UTF-8
> encoding used by Linux.

I see.

Your feedback is helpful and appreciated (especially since you are the
first Fedora-class user to return a review).

--WgDfcJ9DCFfdC4Lr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEM1APDU+pwMhnuF4GcGMmQy2FIrwFAmFupm0ACgkQcGMmQy2F
IrwvIhAAx9tfs4QhSY/dvkfXkTCEXhEp0rYCw5Yr7RyO7P8RFqRjQP/Squ0S5JqP
THp83U+x2QdG54EQEcuSdqFiYdHbSngzA0T6XvimgUlsK/QZtR4DcvfFacY+cnEv
+y5+FrfqNYYl4BNl6+De8riuAFk1silY68I48+Pi/E2aXmP0xwO+InynGv/Q2Eiv
EryMVnXhUSLiUaWmL0x0BeDwdAsGDieIrvNlghjrxcW7vzZk27eLnGW90+/pIAmH
sH7XeYvBQ/uNSozG3fnbgpcr+yhCSD6tkH0CNIeWj+AY+MImBF3HDfenwRAH1/aw
pGxEodylmPbaXYz18w1cD+eD5Sktl5oMqRqNdrl+SSZulWzvf/JjmpYG6rY+epga
MGTtxteNe7gLipyg0Zk6LYLA2mSer7JgosIaCu8AYuiZOjZwKXNKISc6SnF26/0S
SRaO9d0wxGo1IPEa8G2qTBRZVeZAKOmZEiWEX68IW1z7oA2HC/4KuxXrw6s/SaR3
HHd2oWq3FiY/HiXKtV22ArX2wOKckNYF6rKY1TB2a8IcldTbUcDi6uOLDIBAhVxW
ci+Rtv2S5ea1c7ckY3xaoeHPhPsrTJkhdjYkcSflR5ghP67Az4UAuRAGxMUu2+pM
33RsDB5w2G/ZW7MXGctSadR16Zfi9u6n1a2KjwFDQw8Dw9lvft0=
=5EWX
-----END PGP SIGNATURE-----

--WgDfcJ9DCFfdC4Lr--
