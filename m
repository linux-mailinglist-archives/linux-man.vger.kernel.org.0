Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82F4E6E9697
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 16:05:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231985AbjDTOE4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 10:04:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229960AbjDTOEn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 10:04:43 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03C1772A9
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 07:04:35 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id e13-20020a05600c4e4d00b003f18e479d9aso385192wmq.1
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 07:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681999474; x=1684591474;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TKOGO9oM4fEO5wsBQmLn9/0XxqHjmCZ3Yv3jG+W0sVo=;
        b=E6lXQ3tlq6wOXbXEkttFWePp20CU5AwgslWIvbt8fF6GJWt1oKQ9uqAb4og8d5HBJ3
         1YkcChU+gHhME9ke2UCHRY9R9gPX8ZAgSiuHdzloO9sCry9Cr/T/4sfA8mxSeMWpNhsc
         Gi8gqqbsDE7oU9oS+5EbtD6gAfHFbEbxF1YF3VTNdH8cDZZpyDO4VKLzYXyrfTxR4n4l
         PanE0bgawLVrJFPOnSmaFev3pb3vhDi30NJB2lxiB2Cr6VxQdvVoRaUKTCLs1ngEjT4j
         zOAM1JBlw5D/YRHOmt9Cb/2MBm9FR08mJtPNIgRbchjAiW6uf44vIubYTjqfPe5XXSjb
         Q3Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681999474; x=1684591474;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TKOGO9oM4fEO5wsBQmLn9/0XxqHjmCZ3Yv3jG+W0sVo=;
        b=MxMDnvgKe/VPOueuh7Jjy529xcwpF8hZsRIfpHZYwQxXEkbopWalm2Lewr5NtJQ6cy
         jorgjthxM9GA1AfDbLuMqge1ILqKik6+AZAH/9F1mbC9p/hluMjFIyHAlU6f1Yd3LH/0
         S6OIJ1KlXcjpwzmLIGCbWtZEKZHxmrcQD6aWTwS58KQOqS7mXEPpE+fFRyKcuwqBbh8f
         CpGHou3haEne/bk9maVPVUrxzwTUubSt9RUaKxU1QBlYbaCQhvPRNxYxPuXNioHrM8DT
         D+7s8tgvoWXLf5w81rLuKpQdzeBKybyzEQaU5WM4x8ZWhat0ajPUS11LMyd0szLKk2jO
         3nDQ==
X-Gm-Message-State: AAQBX9fU96FeHoLlUTMrLL3aCAC7Mwl/DqjskoW9AgvFQLKVMzXQWCoM
        eTc99XaEeQb6g59J2WMm55BsOi5in/s=
X-Google-Smtp-Source: AKy350YkwF89vIUtx5Bd+in+nG3rTpIrTevxXNm5RnHXbDnCepeshYFnNBsFlI6crkH4RZRu8CdRLg==
X-Received: by 2002:a05:600c:2152:b0:3f1:7975:6942 with SMTP id v18-20020a05600c215200b003f179756942mr1525230wml.11.1681999473970;
        Thu, 20 Apr 2023 07:04:33 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id g9-20020a05600c000900b003f0aa490336sm5439552wmc.26.2023.04.20.07.04.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 07:04:33 -0700 (PDT)
Message-ID: <0e004a59-a08c-2076-61dd-afc8aca83fd4@gmail.com>
Date:   Thu, 20 Apr 2023 16:04:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v4 3/6] regex.3: Improve REG_STARTEND
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
 <13d805ff942c9cb2fe1517f0e043c86d2b51ee68.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <13d805ff942c9cb2fe1517f0e043c86d2b51ee68.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------IbMcZ0CTEiAjAqCFobJF1AmI"
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
--------------IbMcZ0CTEiAjAqCFobJF1AmI
Content-Type: multipart/mixed; boundary="------------U3JR3gKMj9IIT4y8XsjGr0L2";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <0e004a59-a08c-2076-61dd-afc8aca83fd4@gmail.com>
Subject: Re: [PATCH v4 3/6] regex.3: Improve REG_STARTEND
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
 <13d805ff942c9cb2fe1517f0e043c86d2b51ee68.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <13d805ff942c9cb2fe1517f0e043c86d2b51ee68.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>

--------------U3JR3gKMj9IIT4y8XsjGr0L2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4/20/23 15:02, =D0=BD=D0=B0=D0=B1 wrote:
> Explicitly spell out the ranges involved. The original wording always
> confused me, but it's actually very sane.

I like this change.

>=20
> Also change the [0]. to -> here to make more obvious the point that
> pmatch is used as a pointer-to-object, not array in this scenario.

Since at the same time [>0] can be meaningful, I prefer using [0],
to note that the first entry is special in the array.  -> looks like
there's no array at all, but rather just one object.

>=20
> Remove "this doesn't change R_NOTBOL & R_NEWLINE" =E2=80=92 so does it =
change
> R_NOTEOL? No. That's weird and confusing.
>=20
> String largeness doesn't matter, known-lengthness does.

Good.

>=20
> Explicitly spell out the influence on returned matches
> (relative to string, not start of range).
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Cheers,
Alex

> ---
>  man3/regex.3 | 33 ++++++++++++++++++++-------------
>  1 file changed, 20 insertions(+), 13 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index b4feaba19..00e7e2c6b 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -131,23 +131,30 @@ compilation flag
>  above).
>  .TP
>  .B REG_STARTEND
> -Use
> -.I pmatch[0]
> -on the input string, starting at byte
> -.I pmatch[0].rm_so
> -and ending before byte
> -.IR pmatch[0].rm_eo .
> +Match
> +.RI [ string " + " pmatch->rm_so ", " string " + " pmatch->rm_eo )
> +instead of
> +.RI [ string ", " string " + \fBstrlen\fP(" string )).
>  This allows matching embedded NUL bytes
>  and avoids a
>  .BR strlen (3)
> -on large strings.
> -It does not use
> +on known-length strings.
> +.I pmatch
> +must point to a valid readable object.
> +If any matches are returned
> +.RB ( REG_NOSUB
> +wasn't passed to
> +.BR regcomp (),
> +the match succeeded, and
>  .I nmatch
> -on input, and does not change
> -.B REG_NOTBOL
> -or
> -.B REG_NEWLINE
> -processing.
> +> 0), they overwrite
> +.I pmatch
> +as usual, and the
> +.B Match offsets
> +remain relative to
> +.IR string
> +(not
> +.IR string " + " pmatch->rm_so ).
>  This flag is a BSD extension, not present in POSIX.
>  .SS Match offsets
>  Unless

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------U3JR3gKMj9IIT4y8XsjGr0L2--

--------------IbMcZ0CTEiAjAqCFobJF1AmI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBRnAACgkQnowa+77/
2zJVmQ//RZoa68sOLZ23rF9Qu/you0dnO1evugnNdwwdtxHGsDZxghHYzB14H+vt
dZlP8M8rpC12vRjqMlkNW1WzWBR3fl9shX+Ip0EITlLT0hNRWwYsqCbmFX7CKTTz
9J06DcvoaYRmcErD47ENahC83GpXHA+RI8toz1fDF0mQVncvG0LuhZzjh4Lz+1We
FQ7vsa2Jly1LXGda6DiL/OOR/TMvKRjPfxBc2dvU1d1PBfMjaKGS9NvwXVIEHQPM
p9cqwEU1sstR/LKylaHs0W7m5OCJ4f9D8okAwt079S8pZDKOPXX66hiWmvkV9hVp
tjZEN4eu07XANIzmQxxbet+qAkRqTLiKK3Vb4TM7c2qUZxjJsBs7osjQKYsNikIB
LohZe1kZ3ML3+VDxyb0aWJsSmj+pNzH8YEENkkiwZdGrgYAU4r4RSAW22JxOwJTK
jyERXVq7iBB2o9Swq+O8Xv2aOdblpBaTEwppjfjU5Eq5EaLBcScACBlyP9kF+n42
arNSb6jQQVUzMW56n0SXGrQRAM7U7BxOEFHkxEj1Ri0vLtbaw6fYrUZhomad4Ful
F1y0Hk5a5lP/Idz0fpllffQ8rAGBkItwV8T6FPJebX0Dn4MU39nG02FcuGcAD9wb
hzgE5MQ9DB5R6HZLWOZCrRXZ3XCAg+eWo9EjraVnAvdhYeyHov8=
=HL5y
-----END PGP SIGNATURE-----

--------------IbMcZ0CTEiAjAqCFobJF1AmI--
