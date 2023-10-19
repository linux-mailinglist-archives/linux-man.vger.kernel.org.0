Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 329377CFAFC
	for <lists+linux-man@lfdr.de>; Thu, 19 Oct 2023 15:29:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235390AbjJSN3j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Oct 2023 09:29:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233178AbjJSN3i (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Oct 2023 09:29:38 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47D93F7
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 06:29:37 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E8FBC433C7;
        Thu, 19 Oct 2023 13:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697722176;
        bh=Y1Tkmfw6SUBigoJtsOJGiGOARu5ON+4W8t4PmOZp9Uk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Tj7DHZe57F2Ew/ZT+E3PN5UeJ31O5+bIQJVP7Qi5qR9RCB3/6kqncpjFbPOivdj0j
         0fWMYpGAFhPjdoZIO1i7pAfOVFcOfHa22GnDl2ghG1LitHjpZT2MzWj9VBNBVbIUXb
         12o/J02ejWoK+SKKEDl/xRDsoPF5IQbhcLc1BzpMhxxENU7X7nIm2ckeUX6G4ms+Uw
         mdvqODtFI0JJNySo9jgXX7wZrE0tSS4P6SOkuvlCYw4KVR5gR2Lat9+x6uO7PETkVR
         BRm/7DIxzdYIvkVe7V3WgMQzt8bpoBcLh2CjNoVaVNVY3PuSaAwqEQtqVyb8qJLFuO
         csONWI5rekMgQ==
Date:   Thu, 19 Oct 2023 15:29:33 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Muhammad Usama Anjum <usama.anjum@collabora.com>
Cc:     kernel@collabora.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_WP_ASYNC
Message-ID: <ZTEvPcyhWINBS4aO@debian>
References: <20231019131252.2368728-1-usama.anjum@collabora.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="TDH3Aug23FBwu+ru"
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


--TDH3Aug23FBwu+ru
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 19 Oct 2023 15:29:33 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Muhammad Usama Anjum <usama.anjum@collabora.com>
Cc: kernel@collabora.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_WP_ASYNC

On Thu, Oct 19, 2023 at 06:12:44PM +0500, Muhammad Usama Anjum wrote:
> Signed-off-by: Muhammad Usama Anjum <usama.anjum@collabora.com>
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

Has this feature been merged?

Thanks,
Alex

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

--TDH3Aug23FBwu+ru
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUxLz0ACgkQnowa+77/
2zLtXw//Vp5+CCVNKIMsNcKL0FwHDJxWmxSwfmneUnNCtfs+U2VALNv9+2Vhgf6I
mAsIYOUtmg+f5zZt62eVmRG+UKAnfx/zm9eObdGxDuvT+8higqkBwaCR5vdF68DF
F7H61tDA3lRkOlWrD39KucOvcFlHhZhS2i2OpOez/7UFzjQIiS+RQQe7mnQhoF/j
2cVQ2bZ+NnC1N+Nl3lXcL7aRqThrmaKLHzvKHTYXE3U0TEQ9bPViGPMJ4UszGCQt
ChBZJufleeOsoUgZB16vZYfH+F7WU7O7MzowSWh9Vyq4xw8W7sLwW7kBvarRVDFZ
D6boT3e5bKdkuOnoWQ7BCrQ/bqnrm2UPyZZi2ydZjh3KC0lJeY8Aktq5h3+EgA2A
0utszIhD3Rih4mmxhGppYxQRKP0ADOjytx/0Ydx0KXkXn1Bq/Netx6rVC/RVbdfq
h4m5gnn4H31lXSIM6f3+xNubCepP+ZRQFH+fRlRCROJ2Hkz94AbPLIMZRdSg2mgl
C7MM1OmyNIrjq1g+OaY/EFNAcyXsi1S1UdyI7zdQ8qrGpQtY3oJlbX8ELLTiX2vQ
QpqcTzC7IIeMGWzLOVmJVc2KZtAJgc+ZOHZgQioNl15EvSpGzHgO+NNqbuB9SsVo
o8p2wg7CVKU1J0m2E7Q0MaRDAoOipW9C/UHIXbvGY4VAkP9HFzM=
=ulhW
-----END PGP SIGNATURE-----

--TDH3Aug23FBwu+ru--
