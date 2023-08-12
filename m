Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2AD077A195
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 19:59:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229488AbjHLR7G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 13:59:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229452AbjHLR7G (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 13:59:06 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FCAE10E5
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 10:59:09 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id CEA1861D33
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 17:59:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1D6DC433C7;
        Sat, 12 Aug 2023 17:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691863148;
        bh=v8NIa8PXUtTmjRBLQPemkPKcJkURprXSKoco1KRhHSc=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=ev+PPRbQyMrOyJu9Y1CP6jaMW54qPvkghJxnXCjIvmW03jczG4v+QpPXertTFzLkY
         V1XokTULeSz4O3xdIKBtvDNTnRStWF6nwlu/sYeLifpJqiy1dVl8PnCFDxHeMsg9IW
         sL1cXiiamIZT6hJ2stYTYI3yORtLfwWeTMb3ul3vBSrwwTW42zi6sHiY5jeS9GqDNY
         cKyfhClBnMjxXMx3q2mJG8kNFv/WDKYDINvHOuUhPwPAEjJevVyLAkKpjzIekfm9Hu
         vGT8hZbjGKY1+gOcXLYQ5K7FChYyie5ZYgXiXfe/saxLiOXI42aQ38Ndb4E+8JGGYw
         Xl07kM6ihkXfw==
Message-ID: <02928925-2be3-7c01-03fb-c8de2cc6a96b@kernel.org>
Date:   Sat, 12 Aug 2023 19:59:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] clone.2: tfix: spurious comma
Content-Language: en-US
To:     Sambit Nayak <sambitnayak@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230811042337.14650-1-sambitnayak@gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230811042337.14650-1-sambitnayak@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------q0I6ZtxfFoMQineglOtL2A51"
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------q0I6ZtxfFoMQineglOtL2A51
Content-Type: multipart/mixed; boundary="------------6ZhsubzEYJ9CsdIiftPm3xYP";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Sambit Nayak <sambitnayak@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <02928925-2be3-7c01-03fb-c8de2cc6a96b@kernel.org>
Subject: Re: [PATCH] clone.2: tfix: spurious comma
References: <20230811042337.14650-1-sambitnayak@gmail.com>
In-Reply-To: <20230811042337.14650-1-sambitnayak@gmail.com>

--------------6ZhsubzEYJ9CsdIiftPm3xYP
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Sambit,

On 2023-08-11 06:23, Sambit Nayak wrote:
> I spotted a spurious comma when reading this man page, hence I'm
> suggesting this fix.
>=20
>=20
> Signed-off-by: Sambit Nayak <sambitnayak@gmail.com>

Patch applied.

Thanks,
Alex

> ---
>  man2/clone.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man2/clone.2 b/man2/clone.2
> index 4c5b4ac6b..b91b71831 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -111,7 +111,7 @@ The newer
>  system call.
>  .PP
>  In the remainder of this page, the terminology "the clone call" is use=
d
> -when noting details that apply to all of these interfaces,
> +when noting details that apply to all of these interfaces.
>  .\"
>  .SS The clone() wrapper function
>  When the child process is created with the

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------6ZhsubzEYJ9CsdIiftPm3xYP--

--------------q0I6ZtxfFoMQineglOtL2A51
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTXyGkACgkQnowa+77/
2zI5Hw/9H6FffW04etF6xTa2DS1Un1LBq0/AVUgAcnRQlt/oSYlD5KEJ+X0aZaFT
whOo8GqgzxmhhVsCaaw59MnFYgy8HO8ylno98QwZfDKr+6BvT0lnCYvbgPKKdSZK
yGiCQRsGrSY/Y2VMu8epSCn2HlgRZ/BweTGkK9h4mTrzRp7kH8AupvWijpxLBVDp
dpW/UrSgXF/wjn+emDGpYWVcK0cVpBiIcdBuivRZawEpXDMaMPUWE8B8tDaPE6LR
hr0znQ0iOi6C//7emV8IjjywrWdrsZ2HBB0TTEFszEw5jW0zPIWgbgacBiaFgBfO
0/fo95ynnHorQUZuwv8uTeQ9TnsW+hvhSXdYTKlUzTkagKNjE/zv+yqXPDNrjh7K
Zw4KzFLv1xhb4OIBLmfd8rbJVTeiFEMHULSBb74xgv4+a/xJ6QluvBHqIWZvQKew
5p5C3iyhW7cglyQMBK+/hi4rQVCX3gEnNFLValWKb7COQCypyMYlsUKXOpzqE9wf
/odBgdNI/nMfUb6jRZLNe6azo0AmLfyYeJi8skqJneuwMiHLBRS46Cysq2wizAZC
kDXhCxYoIP3FxfQrwK4+D1JUwNCDfcM/PE2Vgj8viJUVfeeRnVDgI0PH6yPiV1i/
F2NIYQaewfzExuhU/S8SPNvyySShS6zNzNq/hQtvLlOV+KCYvVk=
=wkp6
-----END PGP SIGNATURE-----

--------------q0I6ZtxfFoMQineglOtL2A51--
