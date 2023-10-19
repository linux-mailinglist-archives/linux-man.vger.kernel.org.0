Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8627E7CFAF2
	for <lists+linux-man@lfdr.de>; Thu, 19 Oct 2023 15:27:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235391AbjJSN1r (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Oct 2023 09:27:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233178AbjJSN1r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Oct 2023 09:27:47 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 944C3F7
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 06:27:45 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DC64C433C8;
        Thu, 19 Oct 2023 13:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697722065;
        bh=sHgMyhkobn7cili18B2Xdw2Z3qTTQufe+ZXt9hDsFs0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=FWL+2fzXzhhA8TEAWR6hx+i/EJVD2aqg32CFhgE72CgYeXCnQL0UVzq6uFz78XenR
         BuKIHrtkoGHmYQMgcGeS3Touhi9T9+Ebt/bqLdu5WZKHG1FnJvZxLkgn8ylWu5sqAn
         foKVSupO69JAIeF0VIIcKvvii3Ro35jTCRKHUBrsKPE7nZntAF34uFlV/0K9YKDKLv
         dVldg3iYnv+ehYurkoPTmuBB6j3afbeuGaxBMd8OiZ3oL4XZuQZfF12NQQEJD8a467
         ldB8o4WhO8LtdvAceBp42MWnNYiGxSTW+szUFpXT+JZkhr394slGfr829jQAkjlOzQ
         H6lutiHtJfEfQ==
Date:   Thu, 19 Oct 2023 15:27:41 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Muhammad Usama Anjum <usama.anjum@collabora.com>
Cc:     kernel@collabora.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_WP_ASYNC
Message-ID: <ZTEuzgnYXdn6ghax@debian>
References: <20231019131252.2368728-1-usama.anjum@collabora.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="JzIZDkFIHx2CzFov"
Content-Disposition: inline
In-Reply-To: <20231019131252.2368728-1-usama.anjum@collabora.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--JzIZDkFIHx2CzFov
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 19 Oct 2023 15:27:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Muhammad Usama Anjum <usama.anjum@collabora.com>
Cc: kernel@collabora.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_WP_ASYNC

Hi Muhammad,

On Thu, Oct 19, 2023 at 06:12:44PM +0500, Muhammad Usama Anjum wrote:
> Signed-off-by: Muhammad Usama Anjum <usama.anjum@collabora.com>

Patch applied.  Thanks,

Alex

> ---
> Changes since v1:
> - Employ sementic new lines by breaking sentence before "by"
> ---
>  man2/ioctl_userfaultfd.2 | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
> index e68085262..f6cafd9a2 100644
> --- a/man2/ioctl_userfaultfd.2
> +++ b/man2/ioctl_userfaultfd.2
> @@ -244,6 +244,11 @@ If this feature bit is set,
>  the kernel supports resolving faults with the
>  .B UFFDIO_POISON
>  ioctl.
> +.TP
> +.BR UFFD_FEATURE_WP_ASYNC " (since Linux 6.7)"
> +If this feature bit is set,
> +the write protection faults would be asynchronously resolved
> +by the kernel.
>  .PP
>  The returned
>  .I ioctls
> --=20
> 2.42.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--JzIZDkFIHx2CzFov
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUxLs0ACgkQnowa+77/
2zIh9g//bfpfq2l1s0oq9H4Df6BF2EHWdRkdZWtIucCwgkamJ4mkzsW8o7nlpj/y
H1KADcLnK9gBj8j7V04kTngS0a5dCH++fH8tjNmX9UkMezgsQ3zs+wLvmojMhjGe
2eyVuzcK7i/D6dyc4qgUZKnmL8XiwgS555G0Ur8yvwWuCwjY+zbL9jyMAvhwZ9Q3
ZOpYgOR1dzzUo7GJ2aMq5cYcAyMXC4AfyK+/w/2EX6ZWy2S6VxIFzm4kWRgQihED
cex3OohAlfHdnX1GpnjkV66LkXQYIJLbpcvrwhiBX2aOZSWg9JSX1xMX9XJHzDBy
QnjYcsSXe+ZMiozvfZ0MnZ+vbGxPV41TpFDaTH+PSzwQu4An2b143PrYa4DwAIlI
l3k61Wr/bI0fLwOSsOi7+0EWJHIXhjlVq2ih3TA0AoZbYDMBkjNzSOenghehit2T
DocXIshjnCfVzDesOyi0rvr51DI/kn/jobrEwhcm1WGTI0M5IniWaHH9FnaD4mG1
/E7WSYj5oYTrdYaUJ45z5SEVbNpuXT+nsdKNDea0k7PK7Y83BtnsByylo0yyikvy
pn1ZxzD5XTzN4Tr1Cc7TiHEByimun++fKg7NHHzqwZWTT90XJldfIyPAE6hfwn0v
AWtkJHs+3u4tynGaT6ShVBwp4H0J3BGGWzE86jSFbyHsqssNreA=
=+9le
-----END PGP SIGNATURE-----

--JzIZDkFIHx2CzFov--
