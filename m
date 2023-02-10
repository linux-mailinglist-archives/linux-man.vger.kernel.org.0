Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D4BE69164B
	for <lists+linux-man@lfdr.de>; Fri, 10 Feb 2023 02:39:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229733AbjBJBji (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 20:39:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229632AbjBJBjh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 20:39:37 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11D1526CE2
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 17:39:36 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id n28-20020a05600c3b9c00b003ddca7a2bcbso2992799wms.3
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 17:39:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ux4xSkX0/CybNB99gOKwdN7FVlV9eH8aiRcCvLfkplQ=;
        b=EkdfBoudI7Y4bb/YKhpmi9USLiFalRSWoqWzsb+euRbJMGhfx2v3AYmCH9JUX3hZwO
         LQ2HH7t8AeX9vB/Id4tDkGkoRpiTyWuKB03wCwQCRhvNUJJfy57wbz4/wJUdLir0SJJt
         c0CKxN+CA0hFXJ29MKEsIB8A2uZB+mclXW6EI0IKTlV9LGEqY+cyntF7BQaNiS1F6j5s
         jzLVvGz+A0wFd4TU5u2joHmb8M8zBktnTGTqF8dZbw3K3xVDHDLQGZXmU9ErJruxB6lk
         o+74RVPOAoe5ANj5O7vvOk6CYOGBbBRrPJqDeYHgXTp3BSDUyx+5on5swUoyzDqtmL2l
         lP3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ux4xSkX0/CybNB99gOKwdN7FVlV9eH8aiRcCvLfkplQ=;
        b=LXSxzcQijGUf+sQhYHypYNgKI6CBmgkwKU5KRCWtTHRalD2MtF18sWs8N0ivvh64px
         sI7TfgXfNoOu0bNWWUfHIYHZa6P13856GchpW2f5rEWjXYpZfs6CEbDUdBGFiHfC82Wm
         SDk+IKUybIDl6Wiei9cD/DEMvg87NHtF1Z7UG0irEc2nSmGLgzkxr9uuHVUunq3TPDAf
         st2MYuslflqDF5rkstf38oPhOHLxygEwaOtidhuiAqgMpXLpv/BKqLZS4bnc1XjWWuDN
         jaNz9ukY0ACuBywyEO2WxhJFQEJsTraP1CFZDPgy7+eFNnrqnN4ZJ9DH6qkO5VdHvEtt
         VcLg==
X-Gm-Message-State: AO0yUKUHIPLo3td3SLgEKYwo0VRE7T9aTt1fjQKhWBwkm1hECY2gnM42
        EjN3toudoMpTb8I5yktKzTNop9EVdIw=
X-Google-Smtp-Source: AK7set9WxKAwxme2ifZO8S7godkTM8tkbqj8Jf709FickJ2xTdeDceFkkGEGuoRUNVKWHM8dBjdFCg==
X-Received: by 2002:a05:600c:44d3:b0:3df:e57d:f4d0 with SMTP id f19-20020a05600c44d300b003dfe57df4d0mr11517028wmo.26.1675993174584;
        Thu, 09 Feb 2023 17:39:34 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z6-20020a1c4c06000000b003d1d5a83b2esm6175528wmf.35.2023.02.09.17.39.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 17:39:34 -0800 (PST)
Message-ID: <19dbe45e-6ad4-cd04-c036-7421238f0830@gmail.com>
Date:   Fri, 10 Feb 2023 02:39:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 16/20] localedef.1: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230209181119.zzwei6sstjyar6nq@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230209181119.zzwei6sstjyar6nq@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wKH0F7LmNgb0RLHdiUSfyRYX"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------wKH0F7LmNgb0RLHdiUSfyRYX
Content-Type: multipart/mixed; boundary="------------Q5QsxFQXU5ht7jPBZwETPwc0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <19dbe45e-6ad4-cd04-c036-7421238f0830@gmail.com>
Subject: Re: [PATCH 16/20] localedef.1: ffix
References: <20230209181119.zzwei6sstjyar6nq@illithid>
In-Reply-To: <20230209181119.zzwei6sstjyar6nq@illithid>

--------------Q5QsxFQXU5ht7jPBZwETPwc0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2/9/23 19:11, G. Branden Robinson wrote:
> Spell ellipsis such that it will render better on typesetters.

I'm guessing that with this patch typesetters will render ellipsis as thi=
s special character that has 3 dots in it instead of 3 separate periods. =
 Am I right?

>=20
> Use unadjustable space \~ instead of quoted space at the boundary of a
> macro argument, for readability.

Please clarify: source readability, or formatted readability?

Cheers,

Alex

>=20
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> ---
>  man1/localedef.1 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man1/localedef.1 b/man1/localedef.1
> index 216883422..214822530 100644
> --- a/man1/localedef.1
> +++ b/man1/localedef.1
> @@ -28,7 +28,7 @@ localedef \- compile locale definition files
>  .SY localedef
>  .B \-\-delete\-from\-archive
>  .RI [ options ]
> -.IR localename " ..."
> +.IR localename \~.\|.\|.
>  .YS
>  .SY localedef
>  .B \-\-list\-archive

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Q5QsxFQXU5ht7jPBZwETPwc0--

--------------wKH0F7LmNgb0RLHdiUSfyRYX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPloFUACgkQnowa+77/
2zIfSg/9HyzUYG/c2VOWtW7CE4868AZSHFPD9LLEbA08pJYhe7ibeCExci2gPTYN
+DeBG5AIJ66r8CzXKRApOvKkFCqrZAqhHydNfkhBHROg0nvCNOZLxlEc9fwH7dqs
+f8KIjhV7cD5rVyXeu3VKa7YJTCsm9VMmJV5UOI5+YDiI7wDK/5/h+yhA+tz5f2D
kl2bUI7Ef4t0of93t9bsI9TKrC0wRpiYs3g2KuSmNeqxcL3Xq8pLYSq53rf1Cu9j
Gdffp4O+DNs6trCdRhVrVvsCWUnmsnDd8k9y2Dfi6s+N0fZFZ4doe2rUbcvBK2nd
vJkLc+tDoUWOrdjf+SD/QAbhRPEahsSZ+0ttV+AWg60I/SIR6kUxGZM4n/pUIBVZ
KYR+kIAWaIShJCUDNOPZ56YHCuM6yolIK7KVcG+Rv0GqSwH5r5NF9m5bkE1XlMOc
d3pzsgc4lEdPBsadYeL0NIMez8I0GuDD7Vl3rIk2vlbDMjL2bY+AI/AzCcqUEnMo
NjwM67eiYkY3X2We9k6MXEPsrtqfBDaHAjfP0411BRZa9gtJ5mYA78Hye8/yZXjh
sRRvaNEH/+gmxe5mo7RzHXvsCMHM3hJtpReW8HJQctPitSLVBei3EI3TO3xKYHmJ
aIVTxqmaf9pa/XhK9uTb/keeaSb+Aq19PQr3hcqIypnEehduMKo=
=1+Er
-----END PGP SIGNATURE-----

--------------wKH0F7LmNgb0RLHdiUSfyRYX--
