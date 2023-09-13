Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4316F79EBD9
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 17:00:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240896AbjIMPAM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 11:00:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233101AbjIMPAL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 11:00:11 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CC15B7
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 08:00:08 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FB4DC433C8;
        Wed, 13 Sep 2023 15:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694617207;
        bh=L6aHykxF4LrqWBUQ2Vrq8COkF0jbSq16kkU11wwGUrs=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=bQhVNd/PrKAqFitmGNnVL3RUnF4iddXSnThoNJUw2mIO0Db9jz33oKKqEmDb5dUUN
         HVlB9Vq6Oii/qsBqcaQ0C/O9Kzj4qTqSjwKIasjD1xkBFTt9+8t4NqAHhevGxkIORm
         skHeEL4kyjUe5ZlDxUpQ1AA4GphZddFTxH9V6j7skEkEY8jX0Q275hpE20N65O2tlO
         R73QhN2HjW2RSeVkS3QvT/FrxElfm/1zem/h1diGZk+M7P3+oV7gG6CeJpJF5pUu8x
         gWQsU382+V6+wqNIecC8mf+eASY2ZkRHLdkbCzKZbw964ES1cUCoSsS/HUctWlWuyb
         Cx504gn43VDpw==
Message-ID: <d70f6d24-99d0-49a0-a5c3-290c45913a16@kernel.org>
Date:   Wed, 13 Sep 2023 17:00:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ptrdiff_t.3type: fix limits of ptrdiff_t
Content-Language: en-US
To:     Tom Schwindl <schwindl@posteo.de>
Cc:     linux-man@vger.kernel.org
References: <20230903172645.14163-1-schwindl@posteo.de>
 <CVB1ZLP8Y3BG.F5HXX1VUSN90@posteo.de>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <CVB1ZLP8Y3BG.F5HXX1VUSN90@posteo.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------05Acl7G47YL2o8e7SaOOkW74"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------05Acl7G47YL2o8e7SaOOkW74
Content-Type: multipart/mixed; boundary="------------kp1TtCmCY0P2JxkCSFl6HK5x";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Tom Schwindl <schwindl@posteo.de>
Cc: linux-man@vger.kernel.org
Message-ID: <d70f6d24-99d0-49a0-a5c3-290c45913a16@kernel.org>
Subject: Re: [PATCH] ptrdiff_t.3type: fix limits of ptrdiff_t
References: <20230903172645.14163-1-schwindl@posteo.de>
 <CVB1ZLP8Y3BG.F5HXX1VUSN90@posteo.de>
In-Reply-To: <CVB1ZLP8Y3BG.F5HXX1VUSN90@posteo.de>

--------------kp1TtCmCY0P2JxkCSFl6HK5x
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Tom,

On 2023-09-05 16:28, Tom Schwindl wrote:
> oops, forgot to sign-of.
> The fixed patch is inlined below.
>=20
> --
> Best Regards,
> Tom Schwindl
>=20
> ---
> From fd911029cccc7f6545a24f1fa1791adb0740c85f Mon Sep 17 00:00:00 2001
> From: Tom Schwindl <schwindl@posteo.de>
> Date: Tue, 5 Sep 2023 16:24:23 +0200
> Subject: [PATCH] ptrdiff_t.3type: fix limits of ptrdiff_t
>=20
> Signed-off-by: Tom Schwindl <schwindl@posteo.de>

Patch applied.

Thanks,
Alex

> ---
>  man3type/ptrdiff_t.3type | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man3type/ptrdiff_t.3type b/man3type/ptrdiff_t.3type
> index 093e630bf711..11bd5c4dc01b 100644
> --- a/man3type/ptrdiff_t.3type
> +++ b/man3type/ptrdiff_t.3type
> @@ -21,7 +21,7 @@ Used for a count of elements, or an array index.
>  It is the result of subtracting two pointers.
>  It is a signed integer type
>  capable of storing values in the range
> -.RB [ PTRDIFF_MAX ,
> +.RB [ PTRDIFF_MIN ,
>  .BR PTRDIFF_MAX ].
>  .PP
>  The length modifier for

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------kp1TtCmCY0P2JxkCSFl6HK5x--

--------------05Acl7G47YL2o8e7SaOOkW74
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUBznQACgkQnowa+77/
2zJ6yw/+Ngkua8uj/uxR0t6YwPknF+GMxxKC7gOOBOmbWLp40hAXIK29/4/wCoKS
W4CYBSBS/a7hUDJE8a3J4um6lZsJmNsDb211OF0hC/xvTOBF6s4OYncZMav6SZkr
rQEikvlezSopz9myNNFUum/5TgPk6w01oU1Rohg7caR8JWdS3sNBdnrJiTnoAPEo
KfYvgTNTam07BB58QJA5ky8jZnRmzwTodfoVXW2gcci1+3CciyVFTSf8ENd3O951
EKUh2unMcMfWEEf/ST+3AdmewPwLl6PP3QGbW4XwVghPSxOrQZzEu2Fcky0ywEx1
uVHjxpfdyfl4pmLgZWoXHd+5qsQV4vacRCDAkARY108Llm3KznAZ7Ec9ysro5vYb
QlPHKjAWPRPnvAG6rTu2AAmU7Bq2sqDfKyOmEjVyCwQrT6vR66uOH0Cr6xnudwtV
cn+7pZx2hASMnpin0nAkEeuTn3FBPxWk1kG69z2H0WEP69nO/3bVi1NyKraGUaam
HyzxFOhXX/8yM+CKd+ztlJaPfoxTatVFSV9igYCdRtHkhKg+pCDoJWfFfCmctoYm
8W/TcwtK8MNm3F5ZmpgidbdHa2tiFlIEg+zNNdfwWpe7nUv3vezSqXrvHvQ2hHra
7uCweTNFauc6DObcbkn9dWb3/bWyUQPTY/jciVXWRkRQyWwv2nQ=
=6vAk
-----END PGP SIGNATURE-----

--------------05Acl7G47YL2o8e7SaOOkW74--
