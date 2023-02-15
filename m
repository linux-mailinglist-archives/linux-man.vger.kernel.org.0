Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9F39698271
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 18:41:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229721AbjBORli (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 12:41:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229814AbjBORlg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 12:41:36 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEA7A392AA
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 09:41:14 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id he5so6088794wmb.3
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 09:41:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yspVTlIRmRkSa/bKYGIhIQVbteU95KvJB/0Ti2isQVw=;
        b=TzFsHsXCdokxoVH/Q07Aml8cRjW1VQbdzyHZpg4Qmb9S4WKiEhagCsgW2Ou/WtJNXq
         1dHdToqpGWeYFDicBJE9jf4PcjQhTkn+f1kEevy69MoNz1HhMwa3hsEedgOeJaRN6sDl
         cohMccqHKKMlKc4aFRPm8b+WnkYGBNJycyvykWFG24bJ/WEPNE4x8jKhFtuZ7kaQFrnZ
         UO0/jsSdX9CjtRu7/YPUJ8jmL80/t9vBw+zaD4/t2B6IMQwDCDOAwBG1Al8AhEkeYd/q
         dUnGydGphyjdUF3YqBoE9a5s7qkJkI+c4rmtYBGYW6z9O4MUe49FNGHVacr7D5D3Q3wu
         o97A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yspVTlIRmRkSa/bKYGIhIQVbteU95KvJB/0Ti2isQVw=;
        b=wwcH0mjzk/manY7yjaDbWF8s+H63hNm1cIivBPYcvmwRZe6cbFBlsTagdpEPwqo7ZK
         BxYoT6U+uTcYGtwp0tEcmM6y4W8hl3nBBopn19aJKVl/7SKuwgGMmlbNK0Isrvhte2Fl
         r8xa3VLanjWC2tiCsvSEQQFN/4JDjkl7XnV7S2C1B79h5+ODFr5S6fBkp0xleJGfH/YS
         xIhIfT9ikG/WZNZfVk66uKWQquZPHtDSCtRl12qvvLhc2+hwAQCS4yqo0lS8x7aHLhyQ
         9YnRxigyccQ2VRc7Al4QGRLSe29BZpGqXrKqf1l/A570rhTu0+kg6x4MVpmB7L0zUg5m
         dOkA==
X-Gm-Message-State: AO0yUKW3iSNhcE18c9ZNg4QEoDLJosa7cPqJbt8ha7hbHyQA5xL9qQgY
        ykzXx5w+DcUNgenp1olxtDE=
X-Google-Smtp-Source: AK7set+/FkTEVfTq1sBUoo1KP1ToM4uMPc/l64sXDEcPFchQQvFrHbRpRLmVKDDdFBqIQcvwBSIf2w==
X-Received: by 2002:a05:600c:16d4:b0:3df:94c3:4725 with SMTP id l20-20020a05600c16d400b003df94c34725mr2770546wmn.38.1676482873219;
        Wed, 15 Feb 2023 09:41:13 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l19-20020a1ced13000000b003e1f6e18c95sm2760598wmh.21.2023.02.15.09.41.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 09:41:12 -0800 (PST)
Message-ID: <afd54ed3-c044-844c-ce86-d3633d498c6b@gmail.com>
Date:   Wed, 15 Feb 2023 18:41:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] memcmp.3: wfix
Content-Language: en-US
To:     Tom Schwindl <schwindl@posteo.de>
Cc:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx@kernel.org>
References: <20230215173343.30846-1-schwindl@posteo.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230215173343.30846-1-schwindl@posteo.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------c5bc3FOvuh30Hi260V29M6pO"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------c5bc3FOvuh30Hi260V29M6pO
Content-Type: multipart/mixed; boundary="------------0P9udxUs00KaCM0EPi3CiNQN";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Tom Schwindl <schwindl@posteo.de>
Cc: linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Jakub Wilk <jwilk@jwilk.net>, Alejandro Colomar <alx@kernel.org>
Message-ID: <afd54ed3-c044-844c-ce86-d3633d498c6b@gmail.com>
Subject: Re: [PATCH] memcmp.3: wfix
References: <20230215173343.30846-1-schwindl@posteo.de>
In-Reply-To: <20230215173343.30846-1-schwindl@posteo.de>

--------------0P9udxUs00KaCM0EPi3CiNQN
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Tom,

On 2/15/23 18:33, Tom Schwindl wrote:
> Signed-off-by: Tom Schwindl <schwindl@posteo.de>

Patch applied.  Thanks!

Cheers,

Alex

> ---
>  man3/memcmp.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man3/memcmp.3 b/man3/memcmp.3
> index c2427a00ac12..de712bd0ae13 100644
> --- a/man3/memcmp.3
> +++ b/man3/memcmp.3
> @@ -73,7 +73,7 @@ Instead, a function that performs comparisons in cons=
tant time is required.
>  Some operating systems provide such a function (e.g., NetBSD's
>  .BR consttime_memequal ()),
>  but no such function is specified in POSIX.
> -On Linux, it may be necessary to implement such a function oneself.
> +On Linux, you may need to implement such a function yourself.
>  .SH SEE ALSO
>  .BR bstring (3),
>  .BR strcasecmp (3),

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------0P9udxUs00KaCM0EPi3CiNQN--

--------------c5bc3FOvuh30Hi260V29M6pO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPtGTEACgkQnowa+77/
2zJZOQ//a9r8tF4O5v3Y9uzYz2O4KLwKPFYSpqW4XJ5yY7zoxi+zTtF4qQmKLV1Z
87XzxLBbY075ME9KitS4IoxCR4nqggTQMlUNgmjOejJMAJXesGKnyNJ18xGxMHNd
BvZeq0iiumnY8L6zogMFFy01eiHUIqHEVLohJLzpleYzU+n6iyZKWFFNfxla0eWQ
2/5BmjeKfW7jBPnL+vA4ErIUi3kdDphEW5B+2iGVOCK/N/qE8ntKahf7Bf/cjJuN
AiKPsOqMJCkxXRkjUZykuapkGuDcL2asUyAXm5E6HM8V9/dNZf8/NKg3LLZ5e7ps
hhyFFvG7Obngw9fpX/86QESXdTDjZGSuGXMX/s65beXA7sT7ciw6a/9afDneaefn
XWJJjStRNHMTlNtZ7IK17/uAePbc/E2+yz2ahZKs/3MoQ/fVGFpStlbEnJxWsZzZ
M9b7/b/Fa/g3mfiDmcW+g25/DGqce26Nqm+camV3S8v+QVfMcj5UWscV2KFaQh0U
4CuaK8V7VXkL8go/Jr6sEdDGgsw3v3ZrmYtSBIJ8HFFOhN3CNqcwuAXbUZMFt3tf
vsBqT9jKcY9bUoPE9tIaDZvtaBE2V0x07mxp54Vq/mo4rVEsqM625dpFNhWMkrCg
egHECcf4M77sWBEsJGZz3/FNz4KIVlpqVa2KYvFrwuPSf6XhcUg=
=cpY4
-----END PGP SIGNATURE-----

--------------c5bc3FOvuh30Hi260V29M6pO--
