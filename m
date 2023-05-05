Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD6DA6F89E9
	for <lists+linux-man@lfdr.de>; Fri,  5 May 2023 21:58:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229862AbjEET6d (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 May 2023 15:58:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbjEET6c (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 May 2023 15:58:32 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD43CE7
        for <linux-man@vger.kernel.org>; Fri,  5 May 2023 12:58:30 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-3f4000ec6ecso22408625e9.0
        for <linux-man@vger.kernel.org>; Fri, 05 May 2023 12:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683316709; x=1685908709;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=okMIJJO0Cc2RM4Ofbb8/9/mQaK5Gl9lSdwaSj8t6bDc=;
        b=CL6jo5rfwsZJ9GIU0LWM5Lgbv1aXqtxVgeDmW9QtmHtwjbLWOnPmjINCRSYwaZZCm5
         EBMvP0XgLF7lmYwa3aFveDt+Riioa6htJcrqiNT0ffW57vk2fby231Y+ytGhD7i7xPyB
         kxb4khPd4fdcGNRpPaGbH702/ZsL3BmU9OZenWcurF3zYWf2LgzSmlZ5/ZZTvINmOHfv
         kPs//FZQYYpPKLUUCPTk9wZ/uYJrsKNXaGBNoIEiW/hjnp6sGt6ENbXGfhu1QU/7mQ8j
         JPTdSL1nwyACTtmJJqMS3elBgIHl0wrZ0H5MNiiQ0xWeDoxGW1dOYFPeg34MVTHW2BWc
         cKjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683316709; x=1685908709;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=okMIJJO0Cc2RM4Ofbb8/9/mQaK5Gl9lSdwaSj8t6bDc=;
        b=YEBhJafapPj4HBhJS0a4KqZhzqbgxDNZdVIADURhBB7GpZ0rUyDttLhgFnAt2hWAdp
         K/QG+RwT8l+nfTy35zF4c6vslwn3BIh+MAyZdU1l3dv/XTOVBhjcBI0Lv0LoqMfD0KqV
         AXRTJN7wpJ3EcVw072Tv4nkB3J4KS58xngjzwYraI/o6WwEbKrRwwHoSDdVHjgrHdpGg
         Z9IJotnPx/fUPcCdShd92Kei2kEQvK7RJbgXExGMbAiyGXWMKOjwR4kG7BjX1mRjCW5X
         zQdYNXdvPDlkqG/EvGaFMq/szd7wJdFaImL2lssyBbe79Q+9aX0rZm4nN6DJo/ePNLVQ
         4l+Q==
X-Gm-Message-State: AC+VfDw6+1weZ2TQiQYjItzmRJn2vw3ZaAP3sk7WZwB7wxOMPuz+tmBZ
        zrHkwJ7Csb56D6GgdP2WbV8=
X-Google-Smtp-Source: ACHHUZ5YbRyXMewj+HRUnR8Papg0RJjiV2gaiCeR/4tUaHPUoPa6chRpwffmwKjzJNDJnErTv3Tr7g==
X-Received: by 2002:a1c:f401:0:b0:3f0:3ab2:a7e5 with SMTP id z1-20020a1cf401000000b003f03ab2a7e5mr1893165wma.34.1683316709098;
        Fri, 05 May 2023 12:58:29 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id w3-20020a05600018c300b002fe96f0b3acsm3301861wrq.63.2023.05.05.12.58.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 May 2023 12:58:28 -0700 (PDT)
Message-ID: <10a8c931-a1ac-3d03-6476-d86ed3797168@gmail.com>
Date:   Fri, 5 May 2023 21:58:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] mbind.2: Clarify MPOL_MF_MOVE with MPOL_INTERLEAVE policy
Content-Language: en-US
To:     Mike Kravetz <mike.kravetz@oracle.com>, linux-man@vger.kernel.org,
        linux-mm@kvack.org, Alejandro Colomar <alx@kernel.org>
Cc:     Michal Hocko <mhocko@suse.com>, Vlastimil Babka <vbabka@suse.cz>,
        Lorenzo Stoakes <lstoakes@gmail.com>
References: <20230505194858.23539-1-mike.kravetz@oracle.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230505194858.23539-1-mike.kravetz@oracle.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xQ69Ture0wd0khvQmBewdt0A"
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------xQ69Ture0wd0khvQmBewdt0A
Content-Type: multipart/mixed; boundary="------------K4R60Y5IkVonRiVSkjFVpmRF";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Mike Kravetz <mike.kravetz@oracle.com>, linux-man@vger.kernel.org,
 linux-mm@kvack.org, Alejandro Colomar <alx@kernel.org>
Cc: Michal Hocko <mhocko@suse.com>, Vlastimil Babka <vbabka@suse.cz>,
 Lorenzo Stoakes <lstoakes@gmail.com>
Message-ID: <10a8c931-a1ac-3d03-6476-d86ed3797168@gmail.com>
Subject: Re: [PATCH] mbind.2: Clarify MPOL_MF_MOVE with MPOL_INTERLEAVE policy
References: <20230505194858.23539-1-mike.kravetz@oracle.com>
In-Reply-To: <20230505194858.23539-1-mike.kravetz@oracle.com>

--------------K4R60Y5IkVonRiVSkjFVpmRF
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Mike,

On 5/5/23 21:48, Mike Kravetz wrote:
> There was user confusion about specifying MPOL_MF_MOVE* with
> MPOL_INTERLEAVE policy [1].  Add clarification.
>=20
> [1] https://lore.kernel.org/linux-mm/20230501185836.GA85110@monkey/
>=20
> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>

Patch applied.

Thanks,
Alex

> ---
>  man2/mbind.2 | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/man2/mbind.2 b/man2/mbind.2
> index d540bbe23..e4a187106 100644
> --- a/man2/mbind.2
> +++ b/man2/mbind.2
> @@ -311,6 +311,10 @@ If
>  is also specified, then the call fails with the error
>  .B EIO
>  if some pages could not be moved.
> +If the
> +.B MPOL_INTERLEAVE
> +policy was specified, pages already residing on the specified
> +nodes will not be moved such that they are interleaved.
>  .PP
>  If
>  .B MPOL_MF_MOVE_ALL
> @@ -326,6 +330,10 @@ If
>  is also specified, then the call fails with the error
>  .B EIO
>  if some pages could not be moved.
> +If the
> +.B MPOL_INTERLEAVE
> +policy was specified, pages already residing on the specified
> +nodes will not be moved such that they are interleaved.
>  .\" ---------------------------------------------------------------
>  .SH RETURN VALUE
>  On success,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------K4R60Y5IkVonRiVSkjFVpmRF--

--------------xQ69Ture0wd0khvQmBewdt0A
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRVX+EACgkQnowa+77/
2zLB9g//avQYVkVNKski12SXPincp5kP3NdrhSSM+tNn62B1ao65U5poIHPL8fD9
RDRdx8oYRVcFRyd4w+tueHjHm4yZTktFbqvjauRfT23D9A19PTb2toYGtHf1fhYY
02W2PKCqkQg2y/uBPxX64PnKSzsH//BrM7sCJZ8GYjCUxttDjWHTRkj/VP2OKGnU
jNV3oBpiBEeuEXjuGU2yYaLf+G1/o+438lZ7IWgukeEhYjIxCMpso99ThR7ImeAc
xabVTkRoT9+dDPNEJj/x3qKX/OsuP9wbup4mC/dhCD6yV7Y5QpsInZY7Wyz+/CAK
fm+IlXDtFZzBEP77f0+Xncv13bXxicx13XQXvYgXZsjyjiAPW4u3XuUjF4rs4ZH0
pPDsiX4LQo2qH054E3KdsjUM1WODJS1lnDePuJH5coCmybOwVv7T8LKHjbv2/LZI
HuwyiHXw8JqrDqhqupnWg2M8mU5B7Br1QOQepVJQZ2jBUNDfogMiHkXCogG/D+qO
yE/4WSwbpT8D6lFCfTUA+fvV4OA0gToZx26sui0oEfCRJqTZc6JWbMsFD8tFO0nf
Hd+p+SjnPdRFQAF9NSTBBRjmGP2NAg/WwxxqN4VUkaF5sGOPCgJN75ms+V1Jzn/J
gX+G27pES86GNQ+iLMpiqKXMCus+Mao/qpWCTWJSd+5Clr0gwbY=
=PTeA
-----END PGP SIGNATURE-----

--------------xQ69Ture0wd0khvQmBewdt0A--
