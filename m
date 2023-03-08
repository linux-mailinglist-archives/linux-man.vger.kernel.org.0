Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E12576B164C
	for <lists+linux-man@lfdr.de>; Thu,  9 Mar 2023 00:12:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230199AbjCHXMq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Mar 2023 18:12:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229999AbjCHXMe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Mar 2023 18:12:34 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A16F69CC9
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 15:12:20 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id d41-20020a05600c4c2900b003e9e066550fso142958wmp.4
        for <linux-man@vger.kernel.org>; Wed, 08 Mar 2023 15:12:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678317139;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EhB30oSJK1MyHxVfu9N7ygCpvm3D00Q6TAf4IMO7igE=;
        b=Kl4HEKY+xHJR7iOaQnBuJSbiNvWv/37hNJM7Y+fYzUmLGbKX+yr+UrefDEQKhEHkVV
         xQYNFOicku/BdyHHH2aNMJMCKqRWknd/Nl7vBRq7KxKIC+bVEae1L7oLBXIzaxDMRG3A
         8NuHp2XMzjsxQXRSy7pKycqgDQIrxZ2TvqnX1yJpJdmpHfrElM64a8gUXYw33/0mrSYP
         HkYMom5TVjc44QoOLuprs+JzsSh/M/MYbANqmf6HnBmAZ6Y7ZF6nPhmHNAl5NN9bhsuq
         feH5gadcyMvX0D2Gd5P95TNkjrkkx2UW3IzbZnlFXgfdrDXZzV32KZITNDYUj6ubcyBh
         GmIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678317139;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EhB30oSJK1MyHxVfu9N7ygCpvm3D00Q6TAf4IMO7igE=;
        b=zEhZEduGbf+XwD/z3GNG/1rdotLzdGje9o2AAsdfiVvSBfvcZ6qFFFjpyCAeeEgvwf
         D/jA7iCaLIN5FxwJdIBbYq4hCYujnqsbjw146pBFzAvKCjJITI1Ur9oMnEVy+XrSNHZ5
         bv0RkNWvBsTI+meVGT+gq++RsCwy/HT6ed0xHq52+SDZfc7Dq0ROW54LCzkr2xVMHOxl
         abUL3PkKOhjQ6//9l9fPx3Rtci4gYMnr2c2q1Q+mMLZUXVSGvAvqMlkUpJLdUJoeds2I
         fD3drf6k3WSIZHnit293W+DbMbem+cmyN4r+Xu9jM3t6KGQROxyzt4NKGMABSHDfs8Cl
         tRpQ==
X-Gm-Message-State: AO0yUKUjF0DY8DixXloqFjklrwL3W7j/m0edEZ2Sk/YQDTbIdI8r/pOv
        KIKqotApMm3LwVfDBUeO7JM=
X-Google-Smtp-Source: AK7set+55KEdOGbhT5wNMA4HLTfMB6v++9tRaC4ibcIHQbHiODpOtPuytzX+temRaRuLF22acS6Unw==
X-Received: by 2002:a05:600c:600a:b0:3eb:29fe:f912 with SMTP id az10-20020a05600c600a00b003eb29fef912mr17300551wmb.36.1678317138896;
        Wed, 08 Mar 2023 15:12:18 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id z11-20020a5d654b000000b002c70f5627d5sm16154264wrv.63.2023.03.08.15.12.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 15:12:18 -0800 (PST)
Message-ID: <aa76346d-35db-a6e8-daa2-df2bffa1f4f6@gmail.com>
Date:   Thu, 9 Mar 2023 00:12:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] landlock.7: printf.h.3head: ffix
Content-Language: en-US
To:     Tom Schwindl <schwindl@posteo.de>, alx@kernel.org
Cc:     linux-man@vger.kernel.org
References: <20230308210111.2992-1-schwindl@posteo.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230308210111.2992-1-schwindl@posteo.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------OfEUzRMoIrZDF21emy90WSfr"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------OfEUzRMoIrZDF21emy90WSfr
Content-Type: multipart/mixed; boundary="------------dpYQUnqeYZrRc9xbWFI8BsQY";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Tom Schwindl <schwindl@posteo.de>, alx@kernel.org
Cc: linux-man@vger.kernel.org
Message-ID: <aa76346d-35db-a6e8-daa2-df2bffa1f4f6@gmail.com>
Subject: Re: [PATCH] landlock.7: printf.h.3head: ffix
References: <20230308210111.2992-1-schwindl@posteo.de>
In-Reply-To: <20230308210111.2992-1-schwindl@posteo.de>

--------------dpYQUnqeYZrRc9xbWFI8BsQY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Tom,

On 3/8/23 22:01, Tom Schwindl wrote:
> Signed-off-by: Tom Schwindl <schwindl@posteo.de>

Patch applied.

Thanks,
Alex

> ---
>  man3head/printf.h.3head | 6 +++---
>  man7/landlock.7         | 4 ++--
>  2 files changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/man3head/printf.h.3head b/man3head/printf.h.3head
> index af743623ba8b..8f1aa6a37e09 100644
> --- a/man3head/printf.h.3head
> +++ b/man3head/printf.h.3head
> @@ -288,9 +288,9 @@ static ssize_t pad_spaces(FILE *stream, size_t pad_=
len);
>  int
>  main(void)
>  {
> -    if (register_printf_specifier(\[aq]b\[aq], b_printf, b_arginf_sz) =
=3D=3D -1)
> +    if (register_printf_specifier(\[aq]b\[aq], b_printf, b_arginf_sz) =
=3D=3D \-1)
>          err(EXIT_FAILURE, "register_printf_specifier(\[aq]b\[aq], ...)=
");
> -    if (register_printf_specifier(\[aq]B\[aq], b_printf, b_arginf_sz) =
=3D=3D -1)
> +    if (register_printf_specifier(\[aq]B\[aq], b_printf, b_arginf_sz) =
=3D=3D \-1)
>          err(EXIT_FAILURE, "register_printf_specifier(\[aq]B\[aq], ...)=
");
> =20
>      printf("....----....----....----....----\en");
> @@ -410,7 +410,7 @@ b_arginf_sz(const struct printf_info *info, size_t =
n, int argtypes[n],
>              [[maybe_unused]] int size[n])
>  {
>      if (n < 1)
> -        return -1;
> +        return \-1;
> =20
>      if (info\->is_long_double)
>          argtypes[0] =3D PA_INT | PA_FLAG_LONG_LONG;
> diff --git a/man7/landlock.7 b/man7/landlock.7
> index b2bc9e10b0c0..bbe00d4c2793 100644
> --- a/man7/landlock.7
> +++ b/man7/landlock.7
> @@ -245,7 +245,7 @@ attr.handled_access_fs =3D
>          LANDLOCK_ACCESS_FS_MAKE_SYM;
> =20
>  ruleset_fd =3D landlock_create_ruleset(&attr, sizeof(attr), 0);
> -if (ruleset_fd =3D=3D -1) {
> +if (ruleset_fd =3D=3D \-1) {
>      perror("Failed to create a ruleset");
>      exit(EXIT_FAILURE);
>  }
> @@ -276,7 +276,7 @@ path_beneath.allowed_access =3D
>          LANDLOCK_ACCESS_FS_READ_DIR;
> =20
>  path_beneath.parent_fd =3D open("/usr", O_PATH | O_CLOEXEC);
> -if (path_beneath.parent_fd =3D=3D -1) {
> +if (path_beneath.parent_fd =3D=3D \-1) {
>      perror("Failed to open file");
>      close(ruleset_fd);
>      exit(EXIT_FAILURE);

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------dpYQUnqeYZrRc9xbWFI8BsQY--

--------------OfEUzRMoIrZDF21emy90WSfr
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQJFlEACgkQnowa+77/
2zLLbw/+OqtEEwJAA/wrxEKsRpEbsHX/I+EYLImKmTMdviXX7kYB8SUsVNize7un
7vR69I//ZYBoU3hT0MlvL5XC02jlRTuQ1dKHjKzX07dYIoz6AItOQ0+OubdNeiHC
BUcqmRlLdw3N1m+Poul9yfljkGJVnjpL3fLsfpxVp0iu7JTPjIIVc0lO7EtRT4UQ
yecyQ+MN7IVUw1wcCMJb9lSquaB+w3LBGc1wrmfa0JDvX12gcn3Qz5ulX/aoFnCN
gCigh4T9yM9XqzMkTgByOcybeT/n0YngzrUNeGqpmH7ftWYuI6XN2UfDMLLt4KfN
eUOMxo7WPveQ4d/9AbnOaAMnXZoxTVt/h0V5gHse/HANPDYr5HJUgV3t8e+fIZZM
jJrc7h0X7kHM/ty3lCNa+Wp6FJ+6rEBMs4I1YV7kDkmFrBgbIvUAhNb9UGEvab7r
ayLwhjsuinDaEtDWlWq93tEl922kmWIEmm738JYAOq/h2NYoHgPpnid3a522+Tq4
k9N3lbuaEYUKlAPjavqNQ1caIMJ6HawHmnZfubasLxG00pYOvhRJmKKW7Eso4gJi
mUTQkPxekl8Uv9yDTV3c/m9jtiJSQjg1x9mZGB7XpxLvgfG/uE0X2rmrH+x4c/0c
2ixIsGRBjOBV3NP4Q7Lyv8UjodxYTgIh3Wca0EfL3bZlBPgAFFY=
=7R56
-----END PGP SIGNATURE-----

--------------OfEUzRMoIrZDF21emy90WSfr--
