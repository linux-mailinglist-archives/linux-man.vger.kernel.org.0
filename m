Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0A876EB267
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 21:45:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232081AbjDUTpi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 15:45:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232120AbjDUTpf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 15:45:35 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00AAA273C
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 12:45:33 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3f09b9ac51dso60470835e9.0
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 12:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682106332; x=1684698332;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mpgbx973vBxG/ejTx6R7mWo3z4n9QYaUDwX1V3EP4rY=;
        b=FYVvYPdLrwOuRcnTp+FOEOE56lYWNn1qbRTBCx3HuL0Kr6qsVrgP5zmc3ukZU2KgBk
         EXD32RXEthdDJahfrlYq7gU4gGHmqlMD7qPJULEH3pcqf+N/+uOaZ46dEvn5Au/3NJPH
         kDztdRhH/nf2xkQsv0IAaCDkDYcoiZrc49B3Rr/LQDQ41EwH/MnaLf8X+WB2vXkHgdv7
         UH2xwbhyGiTdj5r38vpGNJqM/qUbgGTPw+/qZUGdWOeuoabZSbNR02uawpsvZwPFi9pf
         tQ6xiMQbngCeCeMPggwtUmCbwnnLXSAd5Cup4ql3WYmRUx+rJFaDMw5MGrr26PwlaRs/
         Eclg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682106332; x=1684698332;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mpgbx973vBxG/ejTx6R7mWo3z4n9QYaUDwX1V3EP4rY=;
        b=JSJFLFScUA7lWfWdM80XbV6GwIvLMTIEhpfR5f2gTnTv9Vroa2P7RX9cylSrMfTJ8o
         mLomCgimvg3UiXFawLynkRbtQjZfhBQI8m6lHBGiwExDGPAKt0M7tl41bZ2v5ihUqwRo
         sbq0JYPjL3Zb0ugwXINOsxzqdFfeTn4svkKY9904Z2KluVgm1dk+H2Zr10Xtug+IsS8x
         ecRvIFgCBUhP10g+X68ga45ckGfIB2FVUQRQ56iw1vXg8mfoGBNpdIWGZeAW5i51CChH
         u/3079EwKRc01Qb9Z8ph15L7suQy+QHUYEZBGAArbci7rPAeJwvakIE3btnWYNPaS+Ch
         BLAw==
X-Gm-Message-State: AAQBX9ewtzH4G2IQg/HvBkkaolX0IrpK/SAGqxApcwzRnfPmAm0pBWfg
        6YPkSvSwsFG6mZyH78vzM7MecCAt/D0=
X-Google-Smtp-Source: AKy350Y+pi03m+WFzoy1GYM6ysz23vosPkYtE8XUQDi+YaxL4oxCpoBMfviLQMsMt9l9g2WfCF4Maw==
X-Received: by 2002:a5d:544e:0:b0:2fb:539c:5e89 with SMTP id w14-20020a5d544e000000b002fb539c5e89mr5486514wrv.4.1682106332305;
        Fri, 21 Apr 2023 12:45:32 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id m4-20020adffa04000000b002fe96f0b3acsm5040172wrr.63.2023.04.21.12.45.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 12:45:31 -0700 (PDT)
Message-ID: <d45fce19-e7eb-ed15-3223-df02ba926cc1@gmail.com>
Date:   Fri, 21 Apr 2023 21:45:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] mount_setattr.2, openat2.2, bpf-helpers.7, landlock.7:
 wfix
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc:     linux-man@vger.kernel.org, Quentin Monnet <quentin@isovalent.com>
References: <20230421150555.5075-1-gnoack3000@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230421150555.5075-1-gnoack3000@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------BaLgqspm3WOYt0qVZ6rSzUEk"
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
--------------BaLgqspm3WOYt0qVZ6rSzUEk
Content-Type: multipart/mixed; boundary="------------wARCt3s9GbV9mGnTFV6yiS0H";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc: linux-man@vger.kernel.org, Quentin Monnet <quentin@isovalent.com>
Message-ID: <d45fce19-e7eb-ed15-3223-df02ba926cc1@gmail.com>
Subject: Re: [PATCH] mount_setattr.2, openat2.2, bpf-helpers.7, landlock.7:
 wfix
References: <20230421150555.5075-1-gnoack3000@gmail.com>
In-Reply-To: <20230421150555.5075-1-gnoack3000@gmail.com>

--------------wARCt3s9GbV9mGnTFV6yiS0H
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi G=C3=BCnther,

On 4/21/23 17:05, G=C3=BCnther Noack wrote:
> Spell "run time" in two words, as documented in man-pages(7).
>=20
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>
> ---
>  man2/mount_setattr.2 | 2 +-
>  man2/openat2.2       | 2 +-
>  man7/bpf-helpers.7   | 2 +-
>  man7/landlock.7      | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
> index 24801a4bd..8df02641a 100644
> --- a/man2/mount_setattr.2
> +++ b/man2/mount_setattr.2
> @@ -862,7 +862,7 @@ may change in the future
>  user-space applications should zero-fill
>  .I struct mount_attr
>  to ensure that recompiling the program with new headers will not resul=
t in
> -spurious errors at runtime.
> +spurious errors at run time.

Good.

>  The simplest way is to use a designated initializer:
>  .PP
>  .in +4n
> diff --git a/man2/openat2.2 b/man2/openat2.2
> index e90211fad..182851089 100644
> --- a/man2/openat2.2
> +++ b/man2/openat2.2
> @@ -545,7 +545,7 @@ may change in the future (with new fields being add=
ed when system headers are
>  updated), user-space applications should zero-fill
>  .I struct open_how
>  to ensure that recompiling the program with new headers will not resul=
t in
> -spurious errors at runtime.
> +spurious errors at run time.

Good.

>  The simplest way is to use a designated
>  initializer:
>  .PP
> diff --git a/man7/bpf-helpers.7 b/man7/bpf-helpers.7
> index 26ddf8369..663dfd1d1 100644
> --- a/man7/bpf-helpers.7
> +++ b/man7/bpf-helpers.7
> @@ -3025,7 +3025,7 @@ copied and the last byte is set to NUL.
>  On success, returns the number of bytes that were written,
>  including the terminal NUL. This makes this helper useful in
>  tracing programs for reading strings, and more importantly to
> -get its length at runtime. See the following snippet:
> +get its length at run time. See the following snippet:

Good, but bpf-helpers.7 is generated from kernel sources.  This
one will depend on what kernel developers want.  I CCed Quentin,
since he's nice and might be able to tell if BPF guys are
interested in this kind of wording fixes.

>  .INDENT 7.0
>  .INDENT 3.5
>  .sp
> diff --git a/man7/landlock.7 b/man7/landlock.7
> index b6c9d3821..250b69635 100644
> --- a/man7/landlock.7
> +++ b/man7/landlock.7
> @@ -251,7 +251,7 @@ will stay enforced on all this thread's descendants=
=2E
>  This allows creating standalone and modular security policies
>  per application,
>  which will automatically be composed between themselves
> -according to their runtime parent policies.
> +according to their run time parent policies.

In this case, since it works as an adjective, it should be
"run-time", with a hyphen.

Cheers,
Alex

>  .\"
>  .SS Ptrace restrictions
>  A sandboxed process has less privileges than a non-sandboxed process a=
nd
>=20
> base-commit: 59e44e4511391a98f531c08aaba17391f3b7075b

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------wARCt3s9GbV9mGnTFV6yiS0H--

--------------BaLgqspm3WOYt0qVZ6rSzUEk
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRC58sACgkQnowa+77/
2zIygA//bccPe+xBydAjZKMODlQD84slOI6/dWfKqWC2M7aMr0riE8i0I2dRvadk
CGgwCQyCnFJZlOj0NxExZtmBS8+ChDauFyrcj85l08YkdSKj4+Yeg+rByZPXa5lL
ACa8EgohbXfNy9Qw/neJ4DuyqFV9npmOBcxW3cq0ukCu+dR9LXbK6YmgqD4eQwDd
HgoJWl+ytriKAaANJECd6+p/e0ZYKx1x6tSPbs98+wxWatvE/mDQoi0m/aUoqezc
C1L/7lgnZTJ7abqVa/0V7FJD4uvzlvDxlEg57VV1o6yBIpR+iQh0ZqwqjXPBFeZM
AziQjrBAHO760+FjNHsAFbGxJ4ppzgw2MeyADF+UIEh+NftImKQ/goEkyVJ6psPT
N+oeygXgSsGTR+Qq5cYTj8JUnx3q/Yn209aMkBkz03gcdzZN6V7lOV1iwYxRQtUN
WmYe/GLwOwUku759jP0c9COPex0yNTAy0uCY/QZS1MRxF0rN9tOulemRRc2ugU1i
HYazrS/dKXa8RcV3ksAk09ruM5ZWWrBtnlV3CgPuz8g7K/5IgBrCtIUyHGeciopb
0CjZg3tCdzZtdTqn2MbKebBo7suikd4Sy50Vi7ACAOMIZnW/s9kZrcla/raeBESI
JgRMLV1kjeJ/2fZ4bSmBP1ZHiN9QGVkaUdZ4hjub1/8EpF/AZXk=
=mGjN
-----END PGP SIGNATURE-----

--------------BaLgqspm3WOYt0qVZ6rSzUEk--
