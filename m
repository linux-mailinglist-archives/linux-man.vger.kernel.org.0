Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B70796E99AB
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 18:37:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234719AbjDTQhV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 12:37:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234612AbjDTQhU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 12:37:20 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57EBC18D
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 09:37:17 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id n43-20020a05600c502b00b003f17466a9c1so3366958wmr.2
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 09:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682008635; x=1684600635;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6/cd7cDSYnjeQzuhryFaQ5V07axoOwzqQ0zU244YsL0=;
        b=CLx6jsJNuuibMg7S0EF/HiHWGAU30dMPFY1JC/jWFwfhWpZmutHUlgKruj93pS7ibm
         8c59fUu9NaXQMz/Ippipbyhuz9qNSsqQDubOyc/KyPEMIvkj1B2IknC7pu+8zBHE5QX7
         96hkVjdQaCUpEnWkjgoAIZyoO4mkie4/UgPj0gDxgc9s+b+volg5A9q71YMWqkbqHYJb
         6RM1BxsJ7jRQBXS3hh665lauI39GqpENBTmBUFj+rL8Ke5ZxODU89316nWlAYLcv6X9X
         eEqyHxI9yh8nZNtm5/9JNSLVJmNnxM3TdmWFZmNySq45e3ecf5MWRUJw7r4/mriorihw
         dIrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682008635; x=1684600635;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6/cd7cDSYnjeQzuhryFaQ5V07axoOwzqQ0zU244YsL0=;
        b=dd7lLdHwCXb4Fs7F9URsqZ1UCdankS0gsl9dlNHSPLoB4XuGr7TSg1jWeKnOT62Ynf
         fBbPveLAt/udP+ZCI1ZwLiz8vtW5NzJ9EuzmAAl1olG9erblWQGtwok0pUABdHNQINtK
         9pN2coW5UK7KnJd+9W3qZaKH9+CjIaM+fyae1dFhOneO6705fWDpE0zjtRLOqvzrr+uv
         cbGaXsH1T1oK+NREfSApRI44xgkBcTyMEuKdVk/wXBC0EiAh4pKxPmdU1pXHsujwDNHI
         8COgcq+IYXaOMG0qI7GmUNnSTjB9MvDkpGQP7+i4WgJ5efKyVDFiNCtoCKbDkB3XYFxS
         Yg7w==
X-Gm-Message-State: AAQBX9e4nT/od38Quv+pZX+4THwSqNm5xJKPmRRQicfkevCJgTkeKfQ5
        JEpQMpfUkAo3KwtKCHVnr/dpJDIQs8I=
X-Google-Smtp-Source: AKy350asaFKnEWEv9IzYsyzEP2XbId/rIOsUT66m3d8aw3foVbokJrwvFl/upU1ZFPa/QJbKf+Krdg==
X-Received: by 2002:a05:600c:3658:b0:3f0:b095:15d9 with SMTP id y24-20020a05600c365800b003f0b09515d9mr1823487wmq.40.1682008635266;
        Thu, 20 Apr 2023 09:37:15 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id l5-20020a05600c16c500b003f177cda5ebsm5768762wmn.33.2023.04.20.09.37.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 09:37:14 -0700 (PDT)
Message-ID: <8c6046fa-abae-f64e-0a89-523fe3d40fb9@gmail.com>
Date:   Thu, 20 Apr 2023 18:37:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v5 1/8] regex.3: Desoupify regcomp() description
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <fcb8df21b1f734ef33a64fa7d0861984c133faea.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <fcb8df21b1f734ef33a64fa7d0861984c133faea.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mbdgv8Nf44V6xtAe9qhM8p2R"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------mbdgv8Nf44V6xtAe9qhM8p2R
Content-Type: multipart/mixed; boundary="------------Rp5FMKEdCdomXMT0zIqv2uJd";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <8c6046fa-abae-f64e-0a89-523fe3d40fb9@gmail.com>
Subject: Re: [PATCH v5 1/8] regex.3: Desoupify regcomp() description
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <fcb8df21b1f734ef33a64fa7d0861984c133faea.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <fcb8df21b1f734ef33a64fa7d0861984c133faea.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>

--------------Rp5FMKEdCdomXMT0zIqv2uJd
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi =D0=BD=D0=B0=D0=B1!

On 4/20/23 17:35, =D0=BD=D0=B0=D0=B1 wrote:
> Behold:
>   regerror() is passed the error code, errcode, the pattern buffer,
>   preg, a pointer to a character string buffer, errbuf, and the size
>   of the string buffer, errbuf_size.
>=20
> Absolute soup. This reads to me like an ill-conceived copy from a very

Single space after period is evil.  I'd like to point you to this rant
o'mine where I give more details, to not repeat myself too much:
<https://lore.kernel.org/linux-man/9c5c5744-dde0-b333-09e0-ba9d92aa96b1@g=
mail.com/T/#mb4eb99c9bccb59c6df82c1f6945766c878d85f07>

I've cleaned up those crimes before applying, and then applied this
patch.  :)

Cheers,

Alex


> early standard version. It looks fine in source form but is horrific to=

> read as running text.
>=20
> Instead, replace all of these with just the descriptions of what they d=
o
> with their arguments. What the arguments are is very clearly noted in
> big bold in the prototypes.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man3/regex.3 | 22 +++++++---------------
>  1 file changed, 7 insertions(+), 15 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index 129c42412..2f6ee816f 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -38,21 +38,13 @@ .SS Compilation
>  .BR regexec ()
>  searches.
>  .PP
> -.BR regcomp ()
> -is supplied with
> -.IR preg ,
> -a pointer to a pattern buffer storage area;
> -.IR regex ,
> -a pointer to the null-terminated string and
> -.IR cflags ,
> -flags used to determine the type of compilation.
> -.PP
> -All regular expression searching must be done via a compiled pattern
> -buffer, thus
> -.BR regexec ()
> -must always be supplied with the address of a
> -.BR regcomp ()-initialized
> -pattern buffer.
> +On success, the pattern buffer at
> +.I *preg
> +is initialized.
> +.I regex
> +is a null-terminated string.
> +The locale must be the same when running
> +.BR regexec ().
>  .PP
>  .I cflags
>  is the

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Rp5FMKEdCdomXMT0zIqv2uJd--

--------------mbdgv8Nf44V6xtAe9qhM8p2R
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBajkACgkQnowa+77/
2zLqGQ/9HxIVyeNURKIA0NuNgiGiNnF1btWqzWV2PBqLFlVvutobGIO1+rEDOY3s
YZ7TJ84/V2tgMuKiyZomL8mBMprA6eIot7VMlpuHNtDrdqrS24yCMCYQMlIe4oA+
GFT8PE0WNJ3ONUd6HAzXfZToR6Q7Ip4ZoOVMIARSZfeVdrYyC7PWqMIZ2J/Pvsiw
TcUVZc1s1RYiWsaEeAjBBYrQcdTncJl+vakpuWMQZSoMYgjDuUGMe2ffZJ7osL3b
Lo5qjdIc92RmI+7KI67+Nrza2D9fy1CUFY3cKxXEUVGF9ld0nogGWCJUxVc5dD15
zQtL8zu2hRV+JvmazSeejyNH336Jvg2ofl+i1+KPmJ7zTl69WaHhOL+ytu1W/QrK
xrTTxSirMAq1Q41IyFGGpflVul4Nklcq3G/AcMdqnbfUNI5QVuR3urPvpqKbI7d4
kan5BbNpSzVfYzph6TYaQhiT7+j50uMDtSJ+JGeS+SnMsdig7LgvjPO/aUqfM0L9
M38t2x1BJvETnTSVh3DbUA1VFiTLwvHSf2+3LhVSpBy6tOda+ELe1kKX/LlVozxP
69YeoydEoQoyKKRIt22M8YhqZozjew4S/uJ0yHbRDYwcHYS8PLHdTCLqChD40J7m
RDUksQbMViY7xs1YJH1hLwpvE+D+BA0pNpgXtv/K2SpAh1N1W4U=
=CwlJ
-----END PGP SIGNATURE-----

--------------mbdgv8Nf44V6xtAe9qhM8p2R--
