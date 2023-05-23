Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73A8870E986
	for <lists+linux-man@lfdr.de>; Wed, 24 May 2023 01:27:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235614AbjEWX1I (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 May 2023 19:27:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234494AbjEWX1H (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 May 2023 19:27:07 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC36BE5D
        for <linux-man@vger.kernel.org>; Tue, 23 May 2023 16:26:31 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-30a1fdde3d6so96053f8f.0
        for <linux-man@vger.kernel.org>; Tue, 23 May 2023 16:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684884374; x=1687476374;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9caESnCvurv9KqJP7PhIie6nJvC7OUOvKiUM3xxw2tg=;
        b=C43sJcA9K84oLea21RmNMv8MjUAuH6NoYzITxlIqe6XMK+olKBwLZjO4/Gusdu+Uss
         YNNz9ZkHU22Y16lVaEhnH6jSkPyfnEyrlXBeln7FEAvPP2/E6AaCutBUODUa47av0Wvc
         q6iD9eaSrqAMIqZ7RcGCvjruT6+hnKlEkcpb601wIFRm7ntPFNRj0tlhpsl4iLhTgzF0
         xCoy2kIRa5K42Cx0qBVyDui5IMeB85MlpyoL9x4Dv5qDhrRSP75rbWDvbQ0lV8BFQHOa
         9VERM17Bn4si+6Uru5kduwYhsN4R/2jOYLvx48B8fZ9VY6JRpvJZHB2b5vbT6kJzvd8n
         EBig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684884374; x=1687476374;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9caESnCvurv9KqJP7PhIie6nJvC7OUOvKiUM3xxw2tg=;
        b=gx7T2PEkS3Lp7wFgsTpGu4rQy7xN7IaQ4+AZg44jH6vgKMQ9ZzDZ1oVbReIMGBCSkA
         B/Wfetto4AWx/cJXHITuMbMTxFHyxNGmPmOWTlieOV4ZUca/Gcd49aJVQG1tOwqUa30e
         PhixqLnljuxAsp3cq8x/6u/VW24mCRTH70pOuibw8CWKJJnPILWUpZ8Cgb+B0FOIclnV
         SdDow8nRymohCQQf97lIJjpPEZojs+nR7DhoKu2ZBPAyXm0ErXEy+paph/BzNGHyiyEy
         Wkoelz7RAeu7T3nQVxojg0+NG0d3gxIMeb3L4PjOXE80V2+9HKQ4uDE8X1U4BBPKOtyC
         UM1w==
X-Gm-Message-State: AC+VfDzcoUm/PH/VsmDtgeAWmPP/z77pITGkOs4dXxc2tvIToeMpw9um
        uEQrmaAB64Zkn4MsEc8fPYPHTPSm7gE=
X-Google-Smtp-Source: ACHHUZ5Qp2nBMWZLvmzgtFgkvx6evW0xtityLSPGDmv1iNat3F7O5atBGFKPK/HFxgadnCiNSa7qug==
X-Received: by 2002:a5d:40cd:0:b0:2c9:e585:84b0 with SMTP id b13-20020a5d40cd000000b002c9e58584b0mr11165658wrq.1.1684884374257;
        Tue, 23 May 2023 16:26:14 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id f18-20020adfdb52000000b00307d20546e6sm12659141wrj.27.2023.05.23.16.26.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 May 2023 16:26:13 -0700 (PDT)
Message-ID: <c8dab0c8-7cda-52a5-8c4e-64c5a9a90fc2@gmail.com>
Date:   Wed, 24 May 2023 01:26:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] statx.2: Document STAT_ATTR_MOUNT_ROOT
Content-Language: en-US
To:     Yang Xu <xuyang2018.jy@fujitsu.com>, alx@kernel.org
Cc:     linux-man@vger.kernel.org
References: <1684819035-17509-1-git-send-email-xuyang2018.jy@fujitsu.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <1684819035-17509-1-git-send-email-xuyang2018.jy@fujitsu.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------LjKze7m0Kzwz1jr0ypVwuesO"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------LjKze7m0Kzwz1jr0ypVwuesO
Content-Type: multipart/mixed; boundary="------------f3CpQKcwM21zrXw06dk3Y6SF";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Yang Xu <xuyang2018.jy@fujitsu.com>, alx@kernel.org
Cc: linux-man@vger.kernel.org
Message-ID: <c8dab0c8-7cda-52a5-8c4e-64c5a9a90fc2@gmail.com>
Subject: Re: [PATCH] statx.2: Document STAT_ATTR_MOUNT_ROOT
References: <1684819035-17509-1-git-send-email-xuyang2018.jy@fujitsu.com>
In-Reply-To: <1684819035-17509-1-git-send-email-xuyang2018.jy@fujitsu.com>

--------------f3CpQKcwM21zrXw06dk3Y6SF
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Yang,

On 5/23/23 07:17, Yang Xu wrote:
> Linux 5.10 adds STATX_ATTR_MOUNT_ROOT support.
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/comm=
it/?id=3D80340fe3605c
>=20
> Add the text to the statx man page.
>=20
> Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>

Patch applied.

Thanks,
Alex

> ---
>  man2/statx.2 | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/man2/statx.2 b/man2/statx.2
> index 3bc4932b0..9610e171a 100644
> --- a/man2/statx.2
> +++ b/man2/statx.2
> @@ -521,6 +521,10 @@ without an explicit
>  See
>  .BR mmap (2)
>  for more information.
> +.TP
> +.B STATX_ATTR_MOUNT_ROOT " (since Linux 5.10)"
> +.\" commit 80340fe3605c0e78cfe496c3b3878be828cfdbfe
> +The file is the root of a mount.
>  .SH RETURN VALUE
>  On success, zero is returned.
>  On error, \-1 is returned, and

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------f3CpQKcwM21zrXw06dk3Y6SF--

--------------LjKze7m0Kzwz1jr0ypVwuesO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRtS5QACgkQnowa+77/
2zJixBAAqYspklKybWAi4y8QiLHJAs7nKUfKJFc4n7t6oyTn9Td1qHnqFjJqIdZg
hRXv+S1q8wI7wHIfT4kNFnd52d478FhjQ6GYuoLw9+lsKs61H/1mKWGOA9MhNg04
V5S1UXF+10t+OieOOGlFGJGw4W0i5/Vac6+zETcNYNk/xUB4r14+Zt8rbDyqB0L1
j22ljzcnEyrvarid+okEtpwHWjBcSQZCcm3zHG6VMIsgCavajLKl1cSmEGxo9UMh
DUPTpNynyUjx7gFsQzziWFykTWMQQakiCHdVmOEN0sCY11RaQ5pf2dBvN7EWxRUj
W/j+t14XoAWJctPD6W8QRCNT3sYbShfHrfGTL3juczwb5f7o0o4kD8q3fvrNXknR
nZ+kov4Ww4CLA2DEACLN91N+Dq8VQ8kY0g5R1aS6uaQ0jSLwUlemnWF0LHRwzXsH
927pxSzMY8tiHoSy91xsuz1gWNqRuRutWDMnyR7zBHmuNEKBfNEjiRG1V6bQI71E
CqnpvGVNvQaIT9rD4JbBaCcaW0s5O2wYGDHuAbbRnYvsJZ0dzuwzXFhJgCAroQXB
8HdKLHbPtiByganB3DuoHy21ay3d8kTpd/SmtVOS/vbwSpXRQktNuJjTrcLcJRLH
Vyca2GjIQjNghitpB8krmQLp+cN0lMPC7n6Iis7JE+zpL/I0SVA=
=1P7a
-----END PGP SIGNATURE-----

--------------LjKze7m0Kzwz1jr0ypVwuesO--
