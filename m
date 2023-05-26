Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A83371293D
	for <lists+linux-man@lfdr.de>; Fri, 26 May 2023 17:18:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243955AbjEZPSr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 May 2023 11:18:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231530AbjEZPSq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 May 2023 11:18:46 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 314F4E7
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 08:18:45 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-3090d3e9c92so806168f8f.2
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 08:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685114323; x=1687706323;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sNwRKyusfE0nKx2smKwSLfJbejmXkOhx2uD9OaTY5e8=;
        b=COArM8WqqDnjcg4xvLhrlDx2ezqIcNG/CqXNzi9oy+w4xLT7mqDlIucXV3Gbv9r26O
         WJpcVwWsCaE2HyA7ICAuMld5vsNSFZsKyYlZ1HniDZqrJetBBDb3ic4YdW12mDOSI1ul
         cCowBAdsbyqMDRPHfZIN4JjSmELarkPfrS9BriTqrarimN56DH7Nfd5TNyXFcC2CuLZJ
         Y564XkSn3+ZisgbFKy8c1fdDUeQhLkRCy/itqxR0VEt4qMZPNAqKKKNUmnLHNvcqZCoH
         xFB+1FTEuYw3+dMFFaNU1/wQjcJKzKfQtCrBVElHBTuqpyzBu9UPPiyyDfoQWgZyCecL
         pElA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685114323; x=1687706323;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sNwRKyusfE0nKx2smKwSLfJbejmXkOhx2uD9OaTY5e8=;
        b=AIkqolt3pAa5GQgf2e/h8RqhuWo1DbDNwrMiWbjbB8jR6BIm7luk7MvZsqSGfngTjI
         J9qOXrfHNnHMQNo4uh1E5dRLVTIUBMGuK91SxoMz2t/91vNbUHWdjS+GgQ05IOVQIaBS
         hgkbbS+IolqQqpbpDcNsFaQ0DzgBRHnE2D0AVKSo45gYGDu/tbzNjsMaPud7wObhRJGB
         d6ivitGQqp2loETLCv+dJc41Vl8p0nyS1wlD6oWQXgofBa7CPbMSrBGr6hcLWDYZckGc
         kMyLaxiFbDvY7igIw9kpHTzaXMMGVoGS23P+vystCqxtcdt4XQCG8XRIJBg9GhAB5qYI
         kJhg==
X-Gm-Message-State: AC+VfDxpc9+g23Kxg0Rfc0Ew1WY1e1bJIjNE9IMT3AzkoS2P3aV4hSWg
        rJIzOFh3jNVuLtFIFlnaDqk=
X-Google-Smtp-Source: ACHHUZ5jOP+NYXmze+dZcj7WbCsTOg4UdJvSKf+gVLr/aoGT36u8Ua25oyXVsw2HE/QuiTvWmKOdoQ==
X-Received: by 2002:a5d:5506:0:b0:307:14a6:ef97 with SMTP id b6-20020a5d5506000000b0030714a6ef97mr2001789wrv.67.1685114323329;
        Fri, 26 May 2023 08:18:43 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id t7-20020adff047000000b003068f5cca8csm5415368wro.94.2023.05.26.08.18.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 May 2023 08:18:42 -0700 (PDT)
Message-ID: <7d54c596-64df-590a-1f08-5c50c8dfe8f7@gmail.com>
Date:   Fri, 26 May 2023 17:18:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] malloc.3: srcfix
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230526145328.3135-1-jwilk@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230526145328.3135-1-jwilk@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------l7HXKI2ytUiNr0kTpSyJj3Wv"
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
--------------l7HXKI2ytUiNr0kTpSyJj3Wv
Content-Type: multipart/mixed; boundary="------------EAZGVK8ytU27AjxAyFmdExz0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, Michael Kerrisk <mtk.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <7d54c596-64df-590a-1f08-5c50c8dfe8f7@gmail.com>
Subject: Re: [PATCH] malloc.3: srcfix
References: <20230526145328.3135-1-jwilk@jwilk.net>
In-Reply-To: <20230526145328.3135-1-jwilk@jwilk.net>

--------------EAZGVK8ytU27AjxAyFmdExz0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jakub!

On 5/26/23 16:53, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Patch applied.  Thanks!

Alex

> ---
>  man3/malloc.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man3/malloc.3 b/man3/malloc.3
> index 0ada87a92..b26a1955e 100644
> --- a/man3/malloc.3
> +++ b/man3/malloc.3
> @@ -1,6 +1,6 @@
>  '\" t
>  .\" Copyright (c) 1993 by Thomas Koenig (ig25@rz.uni-karlsruhe.de)
> -.\" and Copyright i2007, 2012, 2018, Michael Kerrisk <mtk.manpages@gma=
il.com>
> +.\" and Copyright 2007, 2012, 2018, Michael Kerrisk <mtk.manpages@gmai=
l.com>
>  .\"
>  .\" SPDX-License-Identifier: Linux-man-pages-copyleft
>  .\"

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------EAZGVK8ytU27AjxAyFmdExz0--

--------------l7HXKI2ytUiNr0kTpSyJj3Wv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRwzdEACgkQnowa+77/
2zItFw//YGh8E50fBofyAO566Ixv5HJGJ/V24ozikR/KfeE48/SglHjTMDjhvDvB
jc9LffTCHwZwQfc3R+DBkbtextZCEgQvmBsJdmGZoPP7DGzJt5g3cC4s6j1gETGn
YCc7eQtdx1SODyybA1uWXWKXsyrO2OoCNXVVXKyXjZ4H3p1nOYYvft1WSGObFDwp
KmxfZCnybGYqlmCgd019iyZzpDei2/GswOkagU1sWlyGB9BnmDokUo883kJoz/Hc
Wo+DbiSV6NS24p3YXerilq1JokKAjgUX/4Fa9rUjpkCCXomPs0zgG+lpqpRAIm9y
RE5mcypeB2Jph8EbpV78Itm4/6hHXTBvowGOdJzrQ+ww6phq7KCvUdUlm4IiCNBX
q0RpJfOnLmRfueYUX1oBbm+cXLeYTev9AM214E8hqDlLU6uB97ep/lQY1NqJ6F5P
4D0zevkzC5N823zrBZGLUgGpYAyOdb72wVzF1WVmc/cdFq6MROlAVg/FJOuWo/vn
3p65ahReKSue1/o9CGXSAmjnC6YiWktHMDOuCjsgp3fgTCPSuZx5YNYdOTiO45O0
zQBgyK1fln9F2ikJhg4BbHQeudhM429AE7+sF1riBwPmC0pvkyMoms5w+tJ3OeCQ
3fNzGk1HnNNBPmGZfet85YTH0BgMK60SxtAB5Gqqa14oWAPSFj8=
=0qTT
-----END PGP SIGNATURE-----

--------------l7HXKI2ytUiNr0kTpSyJj3Wv--
