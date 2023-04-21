Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0477A6EA983
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 13:45:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231521AbjDULpF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 07:45:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232081AbjDULo5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 07:44:57 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57AA4C3
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:44:56 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3f1957e80a2so7118685e9.1
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682077495; x=1684669495;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R7R7kvrV1XPheh/Xk7s5bmuhKD25qDkG4UPT8cIvst8=;
        b=W0DJGMSIL/D3LEf1EDw51CBfkHFGKnqsIsEZHsE10lAJdn75zRaZNykDfjkgVou3kb
         kUaCQa5e1t/EYIuI2CD9sBPQUkT8rzmcbFDtho8YYWX2xrX4xkX2OcmrPfra+y6v2EMc
         izgHstSrio/tVXK3icKw2A268LXv2VVYaIezwu/iryZXz8N1M96PAYi4ZJYCEkqxib4v
         jBFKlYpzknwBTWYy/QrSIpKk200baMZrbPUaoLi3MkVeNDfWhSLVm5I1O+D5z1V/I7tt
         Uq3ru8/desWY8ScvgOC8EgHQLFuHOaZaPITrJxfa9ajg3qK/sb5Hck0y4koNAZLKj6+J
         pdsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682077495; x=1684669495;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R7R7kvrV1XPheh/Xk7s5bmuhKD25qDkG4UPT8cIvst8=;
        b=d8bOUA+0z8WP4FIIMfK33W12BtUK3XDBHEGZ/8UJZILVJcvmRQBkWmxxvCyLyotv6Q
         Ok0TYPeCHkKVIUXozQYLz2U0TEPVGfUQah+hNTbT/4Ujx5mDqJiDle2KSCMTqDZBzuGq
         mzSyIWwttneK3SyNCsYoa6SD8fro9WvhVzlXzQg8OnrEL8igaQAIXnvQUgJDjQ0OxADu
         Oec96mjT+Zs6LAEbkoZst3hA4E9YQs1A0M6OFuH5emwLf8MvkJ1jMz0mgeeQLvoUivRX
         ctDh1z6c5Q3K8nrnt11bgepw73Xj3gu574yEUKRzrSnkNiZDbesh/SnG7z93tMDNqGSk
         F2SA==
X-Gm-Message-State: AAQBX9cdzv848/fYzXruy5AiOq6JzRzlPaCnc61Q2ZqW14gQ/r3AMmMR
        OYHBzN6a/8ytuygH3A6jgp8SHYnXit4=
X-Google-Smtp-Source: AKy350Zpn8GsQKZfl2e8GtuR2G1/Ffx6ARaIDU2EGkyXWwYYXbERMAfSmWni21azS9oa2EuiDNct1A==
X-Received: by 2002:a05:6000:1011:b0:304:214b:37b6 with SMTP id a17-20020a056000101100b00304214b37b6mr1182114wrx.10.1682077494711;
        Fri, 21 Apr 2023 04:44:54 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id w23-20020a05600c099700b003f17af4c4e0sm7957326wmp.9.2023.04.21.04.44.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 04:44:54 -0700 (PDT)
Message-ID: <a5f16a50-12d8-e85a-fc40-3d060b0f6dd7@gmail.com>
Date:   Fri, 21 Apr 2023 13:44:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v8 5/5] regex.3: Further clarify the sole purpose of
 REG_NOSUB
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <b01685c7abfaca0ec64c8459115d8229f995fb04.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <b01685c7abfaca0ec64c8459115d8229f995fb04.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------iLCtKo08CWeG409pxwidOMsQ"
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
--------------iLCtKo08CWeG409pxwidOMsQ
Content-Type: multipart/mixed; boundary="------------krYTdwb7dSPcIL4dPcfG6A0C";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <a5f16a50-12d8-e85a-fc40-3d060b0f6dd7@gmail.com>
Subject: Re: [PATCH v8 5/5] regex.3: Further clarify the sole purpose of
 REG_NOSUB
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <b01685c7abfaca0ec64c8459115d8229f995fb04.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <b01685c7abfaca0ec64c8459115d8229f995fb04.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>

--------------krYTdwb7dSPcIL4dPcfG6A0C
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi nab!

On 4/21/23 04:49, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Patch applied.  Thanks,

Alex

> ---
>  man3/regex.3 | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index 55fddd88e..060e8a587 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -96,16 +96,14 @@ .SS Compilation
>  searches using this pattern buffer will be case insensitive.
>  .TP
>  .B REG_NOSUB
> -Do not report position of matches.
> -The
> -.I nmatch
> -and
> -.I pmatch
> +Report only overall success.
>  .BR regexec ()
> -arguments will be ignored for this purpose (but
> +will use only
>  .I pmatch
> -may still be used for
> -.BR REG_STARTEND ).
> +for
> +.BR REG_STARTEND ,
> +ignoring
> +.IR nmatch .
>  .TP
>  .B REG_NEWLINE
>  Match-any-character operators don't match a newline.

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------krYTdwb7dSPcIL4dPcfG6A0C--

--------------iLCtKo08CWeG409pxwidOMsQ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCdzUACgkQnowa+77/
2zLAGg//apVaR4Xy+eyqJ0XOrSo/ZI2n9TqIIKNHhfljWJkt3t8Ea0jlPzcBOU2q
Fl3lyitAGpFO6HWiyOlfNtImaw4gySvQZ4LlNyIhw2uVRLpDxiFgdRFE8KcbzHVQ
rU3INqS4o2lCV5eJ6p0VLNoGKfdTuXMQKl+mNzogZW14bfCXh9caT395H/Ljyy6X
A0GWrvz3GKOUJRap6hW2bU0gbcGMRrMZmD55mhuEl33h6l7k5Qjdu4CTEHuDhqgZ
Kvj3DCUo4TIOW5hcy3vVCAmrOqlIiSJsj3Jcx+pKaqNjk/ZutRskBbHpkrhexZjn
VjK3UKEsIpXr71niXR3LqeYcDyFmXtQIH3ybfU3pdryqW6Zm4AOJZt978uoTq3rc
MQhrJIvpl2oUKmOLYPxZn6Uu0NOQIVywMVYqR0D6yF54QdDNjFhIPErHB/vwZ3nR
vk+mdXocWdRFh0SLSaCmYH/rTiN7pGUkUC2TYNh4L7bDcn61J43Dbid6UHDyGxsT
luYCPcn/MiMbUwF2vqPpyb5u0p3RYKPXp1W56p61JbQW/dvmGK1SBqr5g+p6PFXM
otQ9L0k1XivF0cobP1CSxwhRcMt8Xs2kCUoee3RjkhXPELzI2rgCfUYZkEkKM3jA
6Ch8C+dTDtwb/air+32iTLunPZHeUJq/IwCXOUYGZo3MTM2WV/M=
=UF8L
-----END PGP SIGNATURE-----

--------------iLCtKo08CWeG409pxwidOMsQ--
