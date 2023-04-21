Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF87E6EA9BC
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 13:55:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230148AbjDULz4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 07:55:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229690AbjDULzz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 07:55:55 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49D1F46B4
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:55:54 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f177cb2c6cso10988935e9.2
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682078153; x=1684670153;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E4L6QcNweYfnLZF/O+omTKDzuZGYUYppmSp52reexi0=;
        b=hWyObg7tVqzRViaVOsB46C8wOqvxm5c8DM//adUaL9gymzZ/C4eIbm4Psev+kGdjeV
         /keczu6PlitGaclkfeYvwPJ2ywby9Zoma3/G+RdfZ1vmJD/Vp9xlubJtkGUE0srgwZ/l
         IjqT5TMWFhsEhP86mCJo1pjN17VUZz6HRGdoprpgkOzFtdYX9r9CengoI6dFCws2fbRI
         YSg448Pt7/+DCCtqQemMozpiSLU8YQWX5Dn31FcylH9be7QdiVlgQuujr/DYZ4r8SZuO
         QxtPItSmkNkqRYyJcuRezG5xXgxcIO3b/InHSnUVJW/u//X4TAXkBwE9Th2iY0BTHvmh
         k6Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682078153; x=1684670153;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=E4L6QcNweYfnLZF/O+omTKDzuZGYUYppmSp52reexi0=;
        b=IcAT01SzBTx0nQKKDw9eKFlFWdaiN49cjLPPFQtSr2eRiIQVeM0c8idrNc3fei409w
         LUwD+9BJD/nd+aOKry5YkFiUDWHRZobUaeN1MB4tf8xf8U8y51/1dM1mWhBKfgrysTfJ
         K9jpalvb6Uc63BjDUZ5tVxdkfwRXZ+kp63ixe20dVsRp1zVJ5y797Yh1fxJi00qqku0R
         UE7px9U77KwFoRfpUVVDIgnitVdJRq+w/4qu1diFrzl+HTTC/W4HYl5oxT2ta8qXG/m4
         tvyVSG7btKn631JbhGBbgjgDSRUEEwMRjpKmgjXMmIsESYyKr1CmkeynhL2dJUExx0II
         Z1Nw==
X-Gm-Message-State: AAQBX9f23wPGz1pEIFxwTT7TSe3y15GI2xOv2AOuVqGAtgUMiguWvJII
        3BYoI4ECTUQD9VPmBiReKyMAZWKlm5g=
X-Google-Smtp-Source: AKy350buDIT+0MrXw9KWXUWB7y6TZbtNGpdPnms7ZouL4YNcKPgMgLkbiVLvdmazQFwjMYacpjXX8w==
X-Received: by 2002:adf:fc07:0:b0:2f7:f6e:566 with SMTP id i7-20020adffc07000000b002f70f6e0566mr3563797wrr.31.1682078152686;
        Fri, 21 Apr 2023 04:55:52 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id r17-20020adfdc91000000b002ff2c39d072sm4241918wrj.104.2023.04.21.04.55.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 04:55:52 -0700 (PDT)
Message-ID: <e5fb9eda-15b1-01c6-2045-ffe4d8ece910@gmail.com>
Date:   Fri, 21 Apr 2023 13:55:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v8 2/5] regex.3, regex_t.3type, regmatch_t.3type,
 regoff_t.3type: Move & link regex_t.3type into regex.3
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <bad3078472294690ca9f46d22c79db492b18e1ef.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <bad3078472294690ca9f46d22c79db492b18e1ef.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------pRguZF34VHvwdV3scq1HD3wc"
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------pRguZF34VHvwdV3scq1HD3wc
Content-Type: multipart/mixed; boundary="------------uQS98ln6tF95aOAwvADJcAxq";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <e5fb9eda-15b1-01c6-2045-ffe4d8ece910@gmail.com>
Subject: Re: [PATCH v8 2/5] regex.3, regex_t.3type, regmatch_t.3type,
 regoff_t.3type: Move & link regex_t.3type into regex.3
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <bad3078472294690ca9f46d22c79db492b18e1ef.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <bad3078472294690ca9f46d22c79db492b18e1ef.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>

--------------uQS98ln6tF95aOAwvADJcAxq
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 4/21/23 04:48, =D0=BD=D0=B0=D0=B1 wrote:
> Move-only commit.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man3/regex.3              | 30 ++++++++++++++++++
>  man3type/regex_t.3type    | 64 +--------------------------------------=

>  man3type/regmatch_t.3type |  2 +-
>  man3type/regoff_t.3type   |  2 +-
>  4 files changed, 33 insertions(+), 65 deletions(-)
>=20
[...]

> diff --git a/man3type/regex_t.3type b/man3type/regex_t.3type
> index 176d2c7a6..c0daaf0ff 100644
> --- a/man3type/regex_t.3type
> +++ b/man3type/regex_t.3type
> @@ -1,63 +1 @@
> -.\" Copyright (c) 2020-2022 by Alejandro Colomar <alx@kernel.org>
> -.\" and Copyright (c) 2020 by Michael Kerrisk <mtk.manpages@gmail.com>=

> -.\"
> -.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> -.\"
> -.\"
> -.TH regex_t 3type (date) "Linux man-pages (unreleased)"
> -.SH NAME
> -regex_t, regmatch_t, regoff_t

Should we keep the names in regex.3?

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------uQS98ln6tF95aOAwvADJcAxq--

--------------pRguZF34VHvwdV3scq1HD3wc
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCeccACgkQnowa+77/
2zI9Bw/+NPS/38cyg/8BXWlWVTJYgAH7FZYjtqy0CLPezRPP9bWcL8yVJLTySYyT
ifEglFemu0LsH/NELj3yLOw1bDIOEJCz0WY8WTssoPaycGG4eW0/CIzNdTTaVzwK
wAnwdTCJHgvD+8/W6Ahpk6CGId0jTf7BXtfL8+TZiFOimJ27kUuujgd88+QeDIOx
VtQPhnz9ns0czACnNeIXkde+mLDCCxVwPEfpGt7CKhKbPzA+3xR9j7sy8kM3KjJX
joodC15Q8oFonk3fESSpOCUJMBbniDpW2BFbH9AuQEL7nniga6aTAiB/4TMd1LAW
VdDW9qzk4rZxDIJ9NtSP7o+0LrbiPynGVQ10SNHoLM9Xcm48y2dEirGhFlTNtVUJ
4D+ebpM5SzRLX+JMtcclqgBh6atwXvG9vShRyehn9xcP1eevj9qwF5RzUAmDqi/q
9tws3U/tKinskq1TqQzz0K73AnSBvyeQUwwGMDcz67cCHxVwsudcqxeH1iivCt8n
eWKrwdAqmcHYTG0FAzUg35rmqNnSOcyf7RP5MYolx1MzYA/AjAxs95kVQdK467d+
GbgNMKMiHojxBAu6qSMcRR+uzDkRpNNfgxb5T/tEC4XhZnzS7ta2YwMVlk6kJAUH
Wsrs9Z+oqJQJkvxpoADDNH1kGcxNK+yeODMiHzf+8r2dPzGpAVo=
=DYMp
-----END PGP SIGNATURE-----

--------------pRguZF34VHvwdV3scq1HD3wc--
