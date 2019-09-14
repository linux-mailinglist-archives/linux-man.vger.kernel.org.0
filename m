Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A746EB291D
	for <lists+linux-man@lfdr.de>; Sat, 14 Sep 2019 02:35:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388491AbfINAfh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Sep 2019 20:35:37 -0400
Received: from smtp.bonedaddy.net ([45.33.94.42]:40004 "EHLO
        smtp.bonedaddy.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387751AbfINAfg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Sep 2019 20:35:36 -0400
X-Greylist: delayed 539 seconds by postgrey-1.27 at vger.kernel.org; Fri, 13 Sep 2019 20:35:36 EDT
Received: from chianamo (unknown [114.111.153.40])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: pabs3@bonedaddy.net)
        by smtp.bonedaddy.net (Postfix) with ESMTPSA id 1EE6C180098;
        Fri, 13 Sep 2019 20:27:02 -0400 (EDT)
Message-ID: <8c59a8826bd5a49a2c5967c2714d6c344e1e0202.camel@bonedaddy.net>
Subject: Re: [PATCH] Add some tips for how to contribute
From:   Paul Wise <pabs3@bonedaddy.net>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
In-Reply-To: <024e7740-9f1f-af1c-fe7e-41e92af91da4@gmail.com>
References: <20190807015026.26519-1-pabs3@bonedaddy.net>
         <024e7740-9f1f-af1c-fe7e-41e92af91da4@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha512";
        protocol="application/pgp-signature"; boundary="=-minQO9YaZfYuDMUeWGT5"
Date:   Sat, 14 Sep 2019 08:26:31 +0800
MIME-Version: 1.0
User-Agent: Evolution 3.30.5-1.1 
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--=-minQO9YaZfYuDMUeWGT5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-09-13 at 15:59 +0200, Michael Kerrisk (man-pages) wrote:

> Pretty much all of the above is covered either on the
> project website, or in man-pages(7). (I just added a note
> to man-pages(7) about avoiding blank lines as separators,=20
> and further enhanced the discussion of semantic newlines.)

I see, I hadn't seen that as I just had a git repo checkout.

> But of course, your meta-point is: let's make things more
> visible. I instead added a CONTRIBUTING file as below.

Exactly. Looks great, thanks for that.

--=20
bye,
pabs

https://bonedaddy.net/pabs3/

--=-minQO9YaZfYuDMUeWGT5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEYQsotVz8/kXqG1Y7MRa6Xp/6aaMFAl18M7YACgkQMRa6Xp/6
aaMhkQ//cTZZoryEn7t83U2EBQDtOzvBhWAHZndFpiHoklXjbIV+Z3JALi7u4o28
KMBnxPWK1NehxVeQJU23nJcLQk5Juds2DURkLq919+w7+XHb6RpcnReYKsQEZXwc
qNaCVmzvGy8kuqvz5eIw+DCI4YV3TWvQkVwCCZdR0GCgoQWoy5Hlm6oN/uF2RGNF
X64eZNNtM9gGuMXbVt8lNRCrQXS0bspI9eWUSvXQZ/ql7wmg5YTCVl/7eY8IKMh5
WCZP4IAC5Ykf5hkbBZS4rT+RSygfPFB7TwM0hcp9/1zOptDoDxoO7NcAppjyfQZK
GIzoTtTjdJY14WUtbe5mzyb44hs71lTJMkv4z3qkVPJkxgHUtSinb5X8wAy7en5l
c6CFOm/cEPGrK+dKTfINJ762Oz062lGAYg3zxd9mWIXCeHmfK2gAuVf7DYjJyTSA
opOc7tLDwPrQRHexH3Mow2I+FoQ6TJg7zccOdTaaJrhFd6dh+3bFvKjKn4k3iWKO
yHwRj+2QTfWi56PaKUI4GRer7IG2tX6nVvVo+BDKg/Rryj/tgm1lRi9VLUo/sYUf
FaN8jMLIIkXsLIzSmSwFLdhFPSSHhfAwOSDK6oama4Fk1TIqNFPh3FRiLCbUrNQM
qEK2Uyrt3ect54rD7gkNGIu+Cvki9kvROz92ffi1wmyx6IiKmpQ=
=IIEE
-----END PGP SIGNATURE-----

--=-minQO9YaZfYuDMUeWGT5--

