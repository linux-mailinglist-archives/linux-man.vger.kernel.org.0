Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27962718B82
	for <lists+linux-man@lfdr.de>; Wed, 31 May 2023 22:56:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbjEaU4e (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 31 May 2023 16:56:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229689AbjEaU4d (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 31 May 2023 16:56:33 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D46A512C
        for <linux-man@vger.kernel.org>; Wed, 31 May 2023 13:56:32 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3f61530506aso1252365e9.1
        for <linux-man@vger.kernel.org>; Wed, 31 May 2023 13:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685566591; x=1688158591;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cZkBCuBwV/Iiq4/ooUPpoPFhqWvRcSLd4jGIht12T+8=;
        b=l1e96ubHlDUyh6LiJ0BoiythRhK2UR1Omq9+qk71WADBc09ymW6eEY9dC50T+GuO0Y
         Cmg8RfEMNHqXo/VLsc6wu37BqAVSAcGSiayRKwS5RFIUOIUDIOnfsM2cIuDhNdlMv22v
         RFlB4WUYw6VkQA1vth1KxfuOQeOi54US2/arG9aK4zzDWQUiyh4pfFSM+y3LsBf84Tiz
         1zhtbDOCs/2wdd1C24jLuDvArTZrBpg+GhhGcwYdpsBMSNzFVZ1PbAvzAiHbLNDAGvY4
         l9kLf6JPEQ0AIwBuVFJFQYVms2aNS4L2vTXr1WO7aOPWcdXksTy4ifRkmc9d8zwj4Ang
         01BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685566591; x=1688158591;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cZkBCuBwV/Iiq4/ooUPpoPFhqWvRcSLd4jGIht12T+8=;
        b=gTgwO2fCoa68AlwUIU+p6o761+EduqMgHGZeIZxkcmvj4MtEZ6w9jfs9cdbYC6Woe/
         V2eCVP8oy9Hz58sJdR6J5uiKmAH7gyGJmRQtdUZj399WBWiFODyoccKRR3D9SGEqBfEI
         bDr5tjJnUrtyh/HfGG+/9AO8XU7gQm/LHxFL5SAOPgebf1eW91LQUdjUb2qZcR1ANzVS
         JerVsBjra8BbdMkhRDsoKyReytHI4ch8mbq3IvuwrqRd36YEyxpHmJESf9swxNFvcA/v
         gAdBz6a6EXrcVw4Qw/sUDp8+nCUGv8uvFY2mQxBCLfWlkSTZgtDupHX52ULtMhdYbzMF
         b5Bg==
X-Gm-Message-State: AC+VfDwz21UuKAwPNxp5pxAoq81GIRv6ktA/k4/UlQhpL7mGM+s81V6r
        xiZaUiq9yupNFiG9dgiMD+I=
X-Google-Smtp-Source: ACHHUZ5BLO3B0Ouu0sRnjEcpUxzJkOi9j5AoKy+oxu4TcR3OEymy3yKznhJqy0dErbfXGH3cqnU2Tw==
X-Received: by 2002:a5d:4a85:0:b0:307:14a6:ef97 with SMTP id o5-20020a5d4a85000000b0030714a6ef97mr256676wrq.67.1685566591091;
        Wed, 31 May 2023 13:56:31 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id i1-20020a05600011c100b00306c5900c10sm8000170wrx.9.2023.05.31.13.56.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 13:56:30 -0700 (PDT)
Message-ID: <c300b95e-4604-dfb8-7487-d02a2cea18dc@gmail.com>
Date:   Wed, 31 May 2023 22:56:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH RFC] gettimeofday.2: Don't allow "tv" to be NULL
Content-Language: en-US
To:     =?UTF-8?Q?Thomas_Wei=c3=9fschuh?= <thomas@t-8ch.de>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Willy Tarreau <w@1wt.eu>,
        Andreas Schwab <schwab@suse.de>
References: <20230530-gettimeofday-null-v1-1-3856b6dde0c7@t-8ch.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230530-gettimeofday-null-v1-1-3856b6dde0c7@t-8ch.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5gDhvjMSQ20hweoKNnvBOY2X"
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
--------------5gDhvjMSQ20hweoKNnvBOY2X
Content-Type: multipart/mixed; boundary="------------nA900Rj34Es0DdrXxpnFoox7";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Thomas_Wei=c3=9fschuh?= <thomas@t-8ch.de>,
 Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Willy Tarreau <w@1wt.eu>,
 Andreas Schwab <schwab@suse.de>
Message-ID: <c300b95e-4604-dfb8-7487-d02a2cea18dc@gmail.com>
Subject: Re: [PATCH RFC] gettimeofday.2: Don't allow "tv" to be NULL
References: <20230530-gettimeofday-null-v1-1-3856b6dde0c7@t-8ch.de>
In-Reply-To: <20230530-gettimeofday-null-v1-1-3856b6dde0c7@t-8ch.de>

--------------nA900Rj34Es0DdrXxpnFoox7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Thomas,

On 5/30/23 18:40, Thomas Wei=C3=9Fschuh wrote:
> POSIX does not allow "tv" to be NULL.
>=20
> On glibc and gnulib calling gettimeofday(NULL, NULL) can segfault.
>=20
> For glibc see __gettimeofday() and __gettimeofday64() in
> sysdeps/unix/sysv/linux/gettimeofday.c.
>=20
> Note that by default glibc may use the gettimeofday() syscall or vdso
> function which both support "tv" to be NULL.
> The segfault can be triggered by compiling a i386 binary on a x86_64
> system.

What happens with the Linux syscall?  What does it do for NULL in tv?

Thanks,
Alex

>=20
> Signed-off-by: Thomas Wei=C3=9Fschuh <thomas@t-8ch.de>
> ---
>  man2/gettimeofday.2 | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
>=20
> diff --git a/man2/gettimeofday.2 b/man2/gettimeofday.2
> index 9d134fa49de7..cdbec5ede23c 100644
> --- a/man2/gettimeofday.2
> +++ b/man2/gettimeofday.2
> @@ -85,16 +85,14 @@ struct timezone {
>  .EE
>  .in
>  .PP
> -If either
> -.I tv
> -or
> +If
>  .I tz
> -is NULL, the corresponding structure is not set or returned.
> +is NULL, the structure is not set or returned.
>  .\" FIXME . The compilation warning looks to be going away in glibc 2.=
17
>  .\" see glibc commit 4b7634a5e03b0da6f8875de9d3f74c1cf6f2a6e8
> -(However, compilation warnings will result if
> +If
>  .I tv
> -is NULL.)
> +is NULL, the behavior is unspecified.
>  .\" The following is covered under EPERM below:
>  .\" .PP
>  .\" Only the superuser may use
>=20
> ---
> base-commit: f0067f73941ea0e512b9018a123472508a0858db
> change-id: 20230530-gettimeofday-null-7ee404b7825f
>=20
> Best regards,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------nA900Rj34Es0DdrXxpnFoox7--

--------------5gDhvjMSQ20hweoKNnvBOY2X
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmR3tHYACgkQnowa+77/
2zK+KhAAmOyoK+YSUi7kdLLwoK42S2shyD8/jzlL19XEyPKA9+1RvY3uYRujareS
j7oe0v5m66mNguN7uhCGF2WCyu3gyAwqOPxUz5TUgfoFmo3htJXuam5pV6jNXyF+
40gMJgXSJrPrJ0n63awY3GCbfwOB5KzNQ3p0JwC9S03Wisjgygdga3g7sLn8BR1p
YAotYPOEkZGQzHzYBt4dQlEXpI2X7DW9PcypCgC5chDt9AZAth2NtqynwATvwi+9
QG971ukY/AoeKPlQuk1h+sX6icOvm3EXGAX6Fpdk1iS+3GGEPWLlgrG1mZUdi3JP
iZ+AEgNgemKq01yOB3SzNzXYvUhsy/E9sTV3f/rAFEpTu99MfZcc0Yi+8Gi1jEq9
aA04YQ+PQUQJLQXj/n9+HCMnpFoO1QQTNwozibdJbZ/XBEAsP34c7DvGUDTXRE5q
KycYhC91gBCMfyG98RRiRmuEuBO2k4S3SIbx60ekE5pw7OUvLm/NtGwb1fYdKaX2
IiEHegsty3Jk+UYLmWXIBj/cSgRP/qrndrxEQD4jkxTuKpf8HAvoyEqzzXQb+HHQ
gPqPFlWwy44lD9meGzgoZNu8QyglmWlZcTLQ6nK1jW/WG18VjpD5lSuyhzPkD13Y
iyH3wSUvU8OjriiF8tGhi3ZVVsOJnfo5La5Mgvsm6tFbteDHpBo=
=PZgn
-----END PGP SIGNATURE-----

--------------5gDhvjMSQ20hweoKNnvBOY2X--
