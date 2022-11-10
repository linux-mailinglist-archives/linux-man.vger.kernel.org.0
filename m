Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75D706242A9
	for <lists+linux-man@lfdr.de>; Thu, 10 Nov 2022 13:58:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229533AbiKJM6f (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 07:58:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbiKJM6e (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 07:58:34 -0500
Received: from mu.digital-domain.net (mu.digital-domain.net [IPv6:2001:19f0:7402:15d6:5400:3ff:feab:f47a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 957DBEA4
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 04:58:31 -0800 (PST)
Received: from kappa.digital-domain.net (kappa.digital-domain.net [IPv6:2001:8b0:36c:cc91:0:0:0:ac])
        (authenticated bits=0)
        by mu.digital-domain.net (8.17.1/8.17.1) with ESMTPSA id 2AACwEBL059084
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
        Thu, 10 Nov 2022 12:58:14 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 mu.digital-domain.net 2AACwEBL059084
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=digital-domain.net;
        s=dkim-1; t=1668085095;
        bh=LNzBPv26dkADHEcM0yUGETOKboUVj1metaZiyX/+fFs=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=Qq7lVytqjY7x15p46ceC7lq1KRWSB65Q/fmnWNTeStG7wwejpWz6phxng+nC5EMK3
         WVJgAnnsFzIvxxz4B+89rd3uxP9x/7Ls901g4FcWzHFi79chAmWCwIYhVIYpEbO5l+
         kAxp9zWYX3YzTeatj7n0nyRyKyROZQ/aKZ70ysX+Xr3AvCjaBV8i/jcRqlZtrvJn55
         reJt0Tl/0NXNFLMEpxJ30iONJ7MGOm8Zh7KdXxWOGUCcMgrmEEkqVCjPW/tz9N0A07
         zl77mdE+zNrS1eBPH86HsLfJbjrKZshE2xmryvBhtktbDmzb1kkM5QrWxbeDsQBfz+
         w5cVHtqhwRclw==
Date:   Thu, 10 Nov 2022 12:58:11 +0000
From:   Andrew Clayton <andrew@digital-domain.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>,
        Andrew Clayton <andrew@digital-domain.net>
Subject: Re: [PATCH] memmem.3: Added list of known systems where this is
 available
Message-ID: <20221110125811.4d786437@kappa.digital-domain.net>
In-Reply-To: <853fa349-8e78-8ce8-f76f-79b4b9353913@gmail.com>
References: <20221110001318.10696-1-andrew@digital-domain.net>
        <853fa349-8e78-8ce8-f76f-79b4b9353913@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/K=Fu_6xvqIQd3RvYVe_HjW4";
 protocol="application/pgp-signature"; micalg=pgp-sha256
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--Sig_/K=Fu_6xvqIQd3RvYVe_HjW4
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Thu, 10 Nov 2022 12:36:47 +0100
Alejandro Colomar <alx.manpages@gmail.com> wrote:

> Although for the page itself I wouldn't add the dates, I think it's usefu=
l to=20
> include the years of those releases in the commit message (when known).
>=20
> musl 0.9.7 is from 2012.
> FreeBSD 6 is from 2005.
> OpenBSD 5.4 is from 2013.
>=20
> Please include that, if you don't mind.

Will do.

[...]

> For the commit message, it's interesting to note macOS and Bionic, for=20
> speleology purposes.  However, I'm opposed to adding them to the page its=
elf=20
> because of the following:
>=20
> -  macOS is not free software.  I refuse to reference nonfree software on=
 this=20
> project.

In that case you might want to remove references to the following (as
it looked OK to reference proprietary UNIX)

SunOS, Solaris, Irix, AIX, DG/UX, HP-UX, OSF/1, Digital UNIX, Tru64,
SCO (definitely SCO!), and MacOS X (and probably others I missed).

Personally I wouldn't, they're a part of Linux's history... and these
days largely interesting for historical purposes.

Cheers,
Andrew

--Sig_/K=Fu_6xvqIQd3RvYVe_HjW4
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE6OI1RUD6ZXrSuiaOzxB5j4U6ioIFAmNs9WMACgkQzxB5j4U6
ioLDzRAAjoHdq+svN0Ssa0YIiObH1bBOxzgdRlOAvUTVxCseKjzccgaeaL6Cwhku
I9+LOH0kZR2Hp61bab0tZw/luDI4FXPLkjMRhcwNsR9G6lopX/ITi7JGDFkkQms0
yRHPwUVpD8IzUWeC+c/ZF8rNbhcAiBfBVb2L6Y2m82CYdQfD5sG9k6eazoo2aFjK
+e8IjjuL7lNbPWsvCyuxVchCj+VGRgu8ayZbTUuSkn3rzRf0ZAJlwUBCAAwXIPuB
8liksro/UZ6E9LUow/oxNk3OKvjzSImnDVdpi1h2DxQK8dpYk8UG0mz32ygP00o2
6JtFYXYnNQRSuKeN9Qrxo5A9O9odsKdH5pIx3s3RwzBRBbMfyZEFKa1UjE7Wuel+
AidVyW2VPw3EMg50ZcQpvAlIkJaC6ZC3qTIZ4ZcqS38PVnjqgaH5V/7gMFzca1SR
du3ysxFWps0qU4H23dGbCzZyCrNiYnJquRQkmBnBW05sUWnUkQJAA832umRASCEE
GcgXz+docTk3vPk5k5KKgEUkq7yVyowDNZ7N2ASWLoUSPop5f9nOrSFAIcK58tX3
e4ZO3auJFi8Bx6hIA4FCkcPeRYriz5gCNOb2B9H0wszNfqRxSBK2ykon/w2PPp2/
HcH4uxp/GhW+lMxxotdJHlzHUVStQkN2jkeSbsb2jEsi6aVs9TQ=
=G2mv
-----END PGP SIGNATURE-----

--Sig_/K=Fu_6xvqIQd3RvYVe_HjW4--
