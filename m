Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6152E4043B6
	for <lists+linux-man@lfdr.de>; Thu,  9 Sep 2021 04:45:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236112AbhIICq0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Sep 2021 22:46:26 -0400
Received: from THBLACKELECTRIC.COM ([207.244.97.128]:39546 "EHLO lsw.cs1local"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S235700AbhIICq0 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 8 Sep 2021 22:46:26 -0400
Received: from [72.29.63.102] (helo=localhost)
        by lsw.cs1local with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <thb@b-tk.org>)
        id 1mOA3w-0004lw-Vt; Thu, 09 Sep 2021 02:45:17 +0000
Received: from thb by localhost with local (Exim 4.94.2)
        (envelope-from <thb@b-tk.org>)
        id 1mOA3q-0003iZ-Mn; Thu, 09 Sep 2021 02:45:10 +0000
Date:   Thu, 9 Sep 2021 02:45:10 +0000
From:   "Thaddeus H. Black" <thb@debian.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH] filename.7: new manual page
Message-ID: <YTl1NoabEKl2kMjN@b-tk.org>
References: <YTX+PEtj60O/TdMh@b-tk.org>
 <a18a8f3d-78a7-15e5-7a6e-0f4740c84667@gmail.com>
 <YTjPHZEpjzn7Ufg/@b-tk.org>
 <1543a191-66f9-3cb5-1903-277242e9204c@gmail.com>
 <YTluPPbquS6ZHmHL@b-tk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="L5IhJ+1c2tg58OD+"
Content-Disposition: inline
In-Reply-To: <YTluPPbquS6ZHmHL@b-tk.org>
X-Spam_score: -0.8
X-Spam_bar: /
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--L5IhJ+1c2tg58OD+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 09, 2021 at 02:15:24AM +0000, Thaddeus H. Black wrote:
>     .  nr SN (2 * \\n[SSS_SN_ORIG])

Alternatives include this:

    .  nr SN ((5 * \\n[SSS_SN_ORIG]) / 3)

Compared to the (2 *), the ((5 *) / 3) shifts the subsubsection
header 1.0en leftward:

    ABC(7)                 Linux Programmer's Manual                 ABC(7)

    SECTION FOO
           Foo flargh.

       Subsection bar
           Bar blargh.

         Subsubsection baz
           Baz mnargh.

    Linux                          1970-01-01                        ABC(7)

Whether the shift improves the visual is a question of taste, although
logically, the (2 *) is more consistent than the ((5 *) / 3) is.
The ((5 *) / 3) is depicted above.  The (2 *) is depicted in the earlier
email.  I have no preference.

--L5IhJ+1c2tg58OD+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEM1APDU+pwMhnuF4GcGMmQy2FIrwFAmE5dTMACgkQcGMmQy2F
IrzgrRAAynl7ytFGo4fHEGQW5vdOfxgFrpDpFuvUM919o+Z9wI0hmVyXLs9LZLh/
PaABSab7h9nmQ9AYzj3bGDv5CV/AkiW9f4mLFqJFkTMOKijNXlF0WGFjAFsnm6Oa
WeTN1WxggaFe7bwAGx5vbwm0WZ1oDnw1+GoPITdoSIx5N7ZZ1Tz2Vx8omPVHLZq+
Pq79x1U89LD+TXPQfWPvyT9Sdcs1wktcm9XsgLm9LcOKzJ5W8gPKrgiHa8TyncLz
N9GIeGcIZZpZiwcMKw9dunLysjm2cGZcVqAHR2h0qhuMV3Wb5Snjvvl8kVN4lwXb
d+xWJNPupXwEudKBkkRJxmMN0jxnhsopk05E7WNvq3l5TwQxscWle887PaPfI7U3
qYg46rEB6AwI1O2g46pUc98gWVZOmJG1iG7Yx6cXpwJrfNXAlvo5XmzOknLhxDDX
DP8FYIB2uzWMXHUZY8k9vn+IJl1Tu0imQBJNflpREj73NMuxKa5ZQVz7tt9LXa63
A9oVRhLcaq7apT7YXkXOD82G8iSQ8vp9rN1/MmS3krEXE7tbbIBqRIuhRTEpwJWH
nqX7A7lwgGshx+1gbEaAagmvRVQ4B0ExufcJugGG4YjY/9wW9DrUkfAkcIm2raVj
Wl7vixmJfvkfkxtuFXyavAFEpvidCFpKzo+BhdaIAhtDGQKqZBw=
=GQum
-----END PGP SIGNATURE-----

--L5IhJ+1c2tg58OD+--
