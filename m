Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 354046E92A8
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 13:29:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234097AbjDTL3g (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 07:29:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234543AbjDTL3X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 07:29:23 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFD967D90
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 04:28:44 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id n31so477838wms.3
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 04:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681990096; x=1684582096;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZcBtGAPsxaw70CZhwJ6lV+FQYx3w32RoPmGXZKj5Atk=;
        b=E0VdajOKjOSmTI77sL3Na6195ZOSZkfR07pImrcgkfxSRAfqWSqcyvnMkdnf/BvfC2
         DDd0FzRz/jZpjLxzeajd4yey4gIzMNPVh1N80XMgY8CMFpZ6y4dvLXPhjTziAYcxNgiy
         L4Pd9YTIBYaA+N7Shs8iW/vIY8ozupqZs4365FMQUR72dlQuyosvSgrCsCLqL7bPBN/4
         THiEMmyJuc0byOXiK91hfE8eHqNW2+4xF8rLkqDi/+qGo39LDrSlz2MYndPMa7ilWwCU
         I3N2hOXq0O6vhOV52eGST+Ahy6acd+OmoiD6sWFExIYyy1zwIj5O1jkXrEoMWldq2DZG
         8rxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681990096; x=1684582096;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZcBtGAPsxaw70CZhwJ6lV+FQYx3w32RoPmGXZKj5Atk=;
        b=JRQYr+1mdA/lOtUMvsEuE9flLXOYdtrmncjUd5G2jDnsp26hwz/1aXsl+Px69wDKH/
         Ozn4zKsVWb6gK3h3ZLYOYQDPHqGwFpQFP7O7iwH2NccBRTWQrF7i6SE2OdNTe/It2ENT
         Mmd4VL6Bn5emPIFa9Q5oDGKd01+rbtpF428aC5Gl9DAN9Jh88pnNP6AQMv2RtEwIeGvn
         Ou3MlKE7B3JJku4GQZYzIzC+Mqrqeaej3ueNGmpuvBvRDE/0y4Yp3U6J3h/JnF8aCAin
         WxrwWKNCrmmBXbMYUlIhaHcXAQ+DPill33U/jWCg4LxRf72BX5cV9euKj5v4hs/KV7z3
         cSVA==
X-Gm-Message-State: AAQBX9f7wp8WO4CUsTjc25+tKmG8UjR8n/ROEpRzZu2upsyV6PCCxvOe
        zMIajTuj/C7g5+NDV9Lx9R8=
X-Google-Smtp-Source: AKy350bxBDZXgLkmWVzloKjVT0tKzhKI/PAls92534FG4U9WPDpGRb6EFDF75YjIwFK/0VLofllCew==
X-Received: by 2002:a1c:f71a:0:b0:3ef:6b97:f0c3 with SMTP id v26-20020a1cf71a000000b003ef6b97f0c3mr1135421wmh.15.1681990095927;
        Thu, 20 Apr 2023 04:28:15 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id p13-20020a7bcc8d000000b003ee63fe5203sm1737783wma.36.2023.04.20.04.28.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 04:28:15 -0700 (PDT)
Message-ID: <47fdd2db-cf65-2ffd-1b33-d1f8e3a62b5b@gmail.com>
Date:   Thu, 20 Apr 2023 13:28:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2 5/9] regex.3: ffix
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <bbc587870d387a6cd84adfb8593ba3af28d39792.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <bbc587870d387a6cd84adfb8593ba3af28d39792.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8N71EhTpanYsvFwesdJFtL2o"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------8N71EhTpanYsvFwesdJFtL2o
Content-Type: multipart/mixed; boundary="------------Ce0flTqwTD19eUMK1nPwquG6";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <47fdd2db-cf65-2ffd-1b33-d1f8e3a62b5b@gmail.com>
Subject: Re: [PATCH v2 5/9] regex.3: ffix
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <bbc587870d387a6cd84adfb8593ba3af28d39792.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <bbc587870d387a6cd84adfb8593ba3af28d39792.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>

--------------Ce0flTqwTD19eUMK1nPwquG6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/20/23 01:23, =D0=BD=D0=B0=D0=B1 wrote:
> Use "bitwise OR" instead of "bitwise-\fBor\fP". No other page spells it=

> like this. The other weirdo contenders are
>   $ git grep bitwise | grep RI
>   man2/adjtimex.2:.RI bitwise- or
>   man2/open.2:.RI bitwise- or 'd

Please check also those, and maybe fix them in the same patch :)

Cheers,
Alex

>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man3/regex.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index b6e574b4d..fa2669544 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -56,7 +56,7 @@ pattern buffer.
>  .PP
>  .I cflags
>  is the
> -.RB bitwise- or
> +bitwise OR
>  of zero or more of the following:
>  .TP
>  .B REG_EXTENDED
> @@ -121,7 +121,7 @@ and
>  are used to provide information regarding the location of any matches.=

>  .I eflags
>  is the
> -.RB bitwise- or
> +bitwise OR
>  of zero or more of the following flags:
>  .TP
>  .B REG_NOTBOL

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Ce0flTqwTD19eUMK1nPwquG6--

--------------8N71EhTpanYsvFwesdJFtL2o
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBIc4ACgkQnowa+77/
2zK4MhAAk1102whjuIHnrWkvtA8F259siMKaWRd8mkmEnSSzi/E8LToTdvhGHa0L
Zw8BTDieNFpHZjOXjAZJVpIAec8rtRYydMYwf2Aou+ohiU+yejaunMHFqfnSzke6
vD3zBaMdMAkGVmZdYVftzI8F7qvl92oec3mr5L8Kz2LyBJ7D5eoGjP4E5kOsLK02
nKXxFgcLYJBCXaeqcE/wmBxVziQcs2Hq5fbkfpsPoAy+8YTz+e6dbyh9EIyjJENr
gW8eZo7TxRaxoJVDVrl81BeOh3isigCP7oU3jDtxeYrVLEID086N+Q7dIsbjjmdm
wq1VFi6gVozvJF3jHBGA0ASNBggedS2vTn5Ko4T6YuA4DvknM0RDsjz9LWv1YrcV
LtYnWqPOzfCYE6zGDhYhwTe5qHteMxMO9qbZblNs+atgsDCkCzWwD90AAxmgr66G
+CaRp1yE5oTvaTFdLwyPscziz1elI9+pNa6WQg8JTzqzv0WAZndZJqbk2Rfu0nmS
iqCC5L1YqNAkFIkKGUoMBxnjatfXQLiDlS0QUKG55fN2s0UsLcjAVyQoEycSe0hs
B2K8IACQAEAl+ZTOrLhXOEdE54ObMoO5xZCgaDjPl5/rXV7S2XSf5kKz/qTrDn21
Jb/q4QMpi3BEHY6bx2ISbes6elXr33oZRSbjhhz34grEy4uGhXI=
=ObF1
-----END PGP SIGNATURE-----

--------------8N71EhTpanYsvFwesdJFtL2o--
