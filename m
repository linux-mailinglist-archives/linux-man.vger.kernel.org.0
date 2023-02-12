Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81AFE6939A1
	for <lists+linux-man@lfdr.de>; Sun, 12 Feb 2023 20:19:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229564AbjBLTTX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Feb 2023 14:19:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbjBLTTX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Feb 2023 14:19:23 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1666D531
        for <linux-man@vger.kernel.org>; Sun, 12 Feb 2023 11:19:21 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id s13-20020a05600c45cd00b003ddca7a2bcbso2173981wmo.3
        for <linux-man@vger.kernel.org>; Sun, 12 Feb 2023 11:19:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+85YZUEAjqHj9QP9mXYeFvXi5zOHOcaC21L1+Y/2XoA=;
        b=fGaM6K84AwCjUqM/KzTlBOUd7aZ501i/Qx/Vibd1a6+Lax/4N6Fp07HfuW6WwnXRIU
         viTI1PedmnjbddLf8WN0JmTk2D0TNUrkmjiws/b0ZrIMRkg0jMIqAkVZhcRgCcWbPrKL
         8HYW6Fde4RD/B2yN1qKKG6Q2zdF2kmgfLYijXaVACmzJ6GUheLnNfkfVJPYozcXyPtfj
         UbI14UcRlEtlUqfp+7IprXuvSkbS0f0hvN2IPRtJAY8BfqnbJnlgX2AK3cK6YysCLcst
         ateHYfEuvCdtFNFl9PoelKdfTqH/AnonjjzyBIcK1UZELoVC4gUz51pAGbQk4fp3ULvH
         SeOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+85YZUEAjqHj9QP9mXYeFvXi5zOHOcaC21L1+Y/2XoA=;
        b=1A/M/kli+0mBqKZKayH5z6tyAc4LyRiAr5hD9rgZobHIkeyDmf0f1f+aar4Uc6t7Xt
         acnOwziXUEy5dcGvON4VD9IryQ2+CFwrjDEbz1pqQqmKL/cTjunhX/luB2cXj4EsNWD7
         L0M4ByH1kmSLCqzSkZj7Q9n8Rc57QhQYVzoaRZ+ngYAvc5wf2laH9K6JZAsZHxondwiT
         VtE8YUdbBFHdg0RFc8W6Wxxn61TgoeF4ZDBeJu7DcGKTj6N8U/PbI2n9fzN7ZMqDyu+H
         kJrrB/05pI0WjfzJVzT8H7q4YO6K8PdgZFKC5BNa10uRE1mrf/qx8T9wABabRAFkLGn1
         j+Qw==
X-Gm-Message-State: AO0yUKXmAUZkeGnFSjiu56VypeqQo5zFzuULPyv0GreNvJ6Y16tb+3Bm
        Hfbx8u6cMlshorpxLjnCCHY=
X-Google-Smtp-Source: AK7set8Kes/tFNV/KUpR9T4mXUGuvPjU7ScTSYkGFDyKqMLIss11mSnDswAdQtan1vdtQcja4RlWeg==
X-Received: by 2002:a05:600c:43d2:b0:3da:f5d1:c677 with SMTP id f18-20020a05600c43d200b003daf5d1c677mr17440286wmn.35.1676229560324;
        Sun, 12 Feb 2023 11:19:20 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x2-20020a1c7c02000000b003df30c94850sm14705837wmc.25.2023.02.12.11.19.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Feb 2023 11:19:19 -0800 (PST)
Message-ID: <8743714b-80f0-e8ef-286d-62924db3d412@gmail.com>
Date:   Sun, 12 Feb 2023 20:19:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 04/11] man2/open.2: punctuate octal perms with digit
 separators
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <55dc9a52adaa99408437708f8141d44aade52464.1675830945.git.Brian.Inglis@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <55dc9a52adaa99408437708f8141d44aade52464.1675830945.git.Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------FK0lPWWTIf0jKJlO0BZo0JP0"
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
--------------FK0lPWWTIf0jKJlO0BZo0JP0
Content-Type: multipart/mixed; boundary="------------pRB2SlG1pgNWvKT2NhqLfx3e";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <8743714b-80f0-e8ef-286d-62924db3d412@gmail.com>
Subject: Re: [PATCH v2 04/11] man2/open.2: punctuate octal perms with digit
 separators
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <55dc9a52adaa99408437708f8141d44aade52464.1675830945.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <55dc9a52adaa99408437708f8141d44aade52464.1675830945.git.Brian.Inglis@Shaw.ca>

--------------pRB2SlG1pgNWvKT2NhqLfx3e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2/8/23 21:27, Brian Inglis wrote:
> ---
>  man2/open.2 | 32 ++++++++++++++++----------------
>  1 file changed, 16 insertions(+), 16 deletions(-)
>=20
>=20
> v2-0004-man2-open.2-punctuate-octal-perms-with-digit-sepa.patch
>=20
> diff --git a/man2/open.2 b/man2/open.2
> index fc796e25537d..82e3e2102e7c 100644
> --- a/man2/open.2
> +++ b/man2/open.2
> @@ -308,40 +308,40 @@ The following symbolic constants are provided for=

>  .RS
>  .TP 9
>  .B S_IRWXU
> -00700 user (file owner) has read, write, and execute permission
> +00\[aq]700 user (file owner) has read, write, and execute permission
>  .TP
>  .B S_IRUSR
> -00400 user has read permission
> +00\[aq]400 user has read permission
>  .TP
>  .B S_IWUSR
> -00200 user has write permission
> +00\[aq]200 user has write permission
>  .TP
>  .B S_IXUSR
> -00100 user has execute permission
> +00\[aq]100 user has execute permission
>  .TP
>  .B S_IRWXG
> -00070 group has read, write, and execute permission
> +00\[aq]070 group has read, write, and execute permission
>  .TP
>  .B S_IRGRP
> -00040 group has read permission
> +00\[aq]040 group has read permission
>  .TP
>  .B S_IWGRP
> -00020 group has write permission
> +00\[aq]020 group has write permission
>  .TP
>  .B S_IXGRP
> -00010 group has execute permission
> +00\[aq]010 group has execute permission
>  .TP
>  .B S_IRWXO
> -00007 others have read, write, and execute permission
> +00\[aq]007 others have read, write, and execute permission
>  .TP
>  .B S_IROTH
> -00004 others have read permission
> +00\[aq]004 others have read permission
>  .TP
>  .B S_IWOTH
> -00002 others have write permission
> +00\[aq]002 others have write permission
>  .TP
>  .B S_IXOTH
> -00001 others have execute permission
> +00\[aq]001 others have execute permission
>  .RE
>  .IP
>  According to POSIX, the effect when other bits are set in
> @@ -352,14 +352,14 @@ On Linux, the following bits are also honored in
>  .RS
>  .TP 9
>  .B S_ISUID
> -0004000 set-user-ID bit
> +0\[aq]004\[aq]000 set-user-ID bit
>  .TP
>  .B S_ISGID
> -0002000 set-group-ID bit (see
> +0\[aq]002\[aq]000 set-group-ID bit (see
>  .BR inode (7)).
>  .TP
>  .B S_ISVTX
> -0001000 sticky bit (see
> +0\[aq]001\[aq]000 sticky bit (see
>  .BR inode (7)).
>  .RE
>  .TP
> @@ -1319,7 +1319,7 @@ flags are not specified in POSIX.1-2001,
>  but are specified in POSIX.1-2008.
>  Since glibc 2.12, one can obtain their definitions by defining either
>  .B _POSIX_C_SOURCE
> -with a value greater than or equal to 200809L or
> +with a value greater than or equal to 2008\[aq]09L or

This is not an octal :)

Cheers,

Alex

>  .B _XOPEN_SOURCE
>  with a value greater than or equal to 700.
>  In glibc 2.11 and earlier, one obtains the definitions by defining

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------pRB2SlG1pgNWvKT2NhqLfx3e--

--------------FK0lPWWTIf0jKJlO0BZo0JP0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPpO7YACgkQnowa+77/
2zIzLBAApIn+y99lOEZjR1qq+UqkWi8ftA/NBBnbh1gTj8xnJB5Fa+xqsmMRPgDQ
ux28V+BfhcwOu7Sm0/03k1WyB+xttkWL0YoZDp05OO4NTtBiebQjuwmBFpO81VY6
okctX0eltqu+vKBXPYOngJf2OXo9g7NWQMf8UCn98MnsnCW084EEbMmQIJx85JMh
22BsRKnYWo369FGtEB+bdIiD1S/WUaCt1J7Egalb/8yKFQPjhPvokaQMv5ItOrmJ
v7KO44vZz4d9NO4quClGI5AFtg82brGKwXAAvXgEYGAMsbc6Ax02f1V3c2XT7jmb
/6u21hMLvrFLyTUXm237nzaoDW7iZsZDKQRtfgqoFe8QOJ/yrCkTORYgc4FgGBwb
+tb04d0VgYKEqRO/w+55bNNqxhZuOVfNRowxc9aRvPvD4qP4psLWKatdUGWxRWnP
Hy+A2wJ6v0iBJeogwX4ECT/M25qFbbqdKeylDpb5Bjdtdaq8gPAL5lyPhfiSAumw
ncMOdyQOodInYVjBO3M07eClftq9nSEANgFtLKgIEKBNGtjG8yNDTWtuNVVzA8bo
/lOIsvIyLN6ioaWXmmoAaXrN09Yok9jqDiAHVH+jlxlbceN8NPuMM/QWOin6nIXK
YHoc29IZ51TqKq+V3miI4rjlUgx04DVTSTWhBzVVumV1NZcCqjY=
=OuGQ
-----END PGP SIGNATURE-----

--------------FK0lPWWTIf0jKJlO0BZo0JP0--
