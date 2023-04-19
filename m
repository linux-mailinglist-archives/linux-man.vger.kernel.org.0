Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 902D06E8297
	for <lists+linux-man@lfdr.de>; Wed, 19 Apr 2023 22:25:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231658AbjDSUZJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 16:25:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232123AbjDSUY4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 16:24:56 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C86756A4E
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 13:23:41 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-3f167d0c91bso1463075e9.2
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 13:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681935820; x=1684527820;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aDonO/cXAsFGlZMh1h+gYtS7F2PqP9B97bWc/dSRR/k=;
        b=Dtf8zAkYBdXAJyQUgPcZC3sOuV0sesHrok/UEo27tmsQcn12vz7zcMJ9TuygyBShY9
         EWzg1gbmgtlkssol+KHJH6+8KgCOq09wQhmJtLyJMivPcxHhyVTgpjqeDH8BE1MsQa4q
         P0TdaoqSF8kHMiPbU/1DzGig5wdnoWLso90pzb8GFeMEk1ys6r+cz1X3rKHfE17KxUyy
         oc9P03URSH2UB7LfdshAfayHahk60S1ZJh32TNx+EDrGufHyNUEVFygFg9UYf5JMkXFz
         2dVY4+ssgissw1k+F9X49ONWZiw0GH3XfKDUGGwL18axbQfThLTifKTw7XBg1iL4NY6j
         lNmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681935820; x=1684527820;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aDonO/cXAsFGlZMh1h+gYtS7F2PqP9B97bWc/dSRR/k=;
        b=eVs8+8HzjHiHsMwEAnbci3t3a0J7qcwMzZsH3Qq6rHoPE9LNo1ZS4eiuSndkFPSNQm
         LrbYxLJspKOo0WM9lQSFzYH2QxvoSYFSAL/q+2Pjz0YUT+VXPJGGBKtbhpsoHzjCPIUK
         tTHUeBPYVM7SamWACmPflLOcjSyF2JWNbpwdO0gO+RGh7K/oYGx8TySgeR+wO6fLG8xz
         NCT5FSibC3EHaMRmHGUo3/TvySdpDoYwa76369jhFSi3hxcOFZ1UhMaKVZVxCEpSnKNI
         sqSTpn5rgxUCIHfpIi+qUf1yUFV/fB3k+KvKGIbRymIMu4jVJvpQJXBTdsehaMwzqzAU
         Vzgg==
X-Gm-Message-State: AAQBX9fD9jW14d8IB/elfNuyGiu4QLe7n2EfUPH7XzRcs2aACXOTL1M4
        p7NfddaapWWdbh+CByZAdmMIbpJgj78=
X-Google-Smtp-Source: AKy350bCyK3hDbPcI0v6udIDcw/hqYH84bMaRU6o9i6Eb46gj/EmW90POCFklPR7G3gKQ39h0sjnMA==
X-Received: by 2002:a5d:58d9:0:b0:2f8:ddce:f838 with SMTP id o25-20020a5d58d9000000b002f8ddcef838mr4675362wrf.21.1681935820140;
        Wed, 19 Apr 2023 13:23:40 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id p8-20020a05600c358800b003f1738d0d13sm4687562wmq.1.2023.04.19.13.23.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Apr 2023 13:23:39 -0700 (PDT)
Message-ID: <4139e0ad-c25f-59f2-1ebf-83779a5c507f@gmail.com>
Date:   Wed, 19 Apr 2023 22:23:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 2/2] regex.3: improve REG_STARTEND
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <15d73d2add2adf0fbc33fd6697a6b29d126c11b9.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>
 <52a12177427a5e781b16b4efc85f8b90360a4e8a.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <52a12177427a5e781b16b4efc85f8b90360a4e8a.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Hgwr3YuS0qfqHAeV0syZyOI0"
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Hgwr3YuS0qfqHAeV0syZyOI0
Content-Type: multipart/mixed; boundary="------------ajtFm2reISa6lr0pHeaXAgbA";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <4139e0ad-c25f-59f2-1ebf-83779a5c507f@gmail.com>
Subject: Re: [PATCH 2/2] regex.3: improve REG_STARTEND
References: <15d73d2add2adf0fbc33fd6697a6b29d126c11b9.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>
 <52a12177427a5e781b16b4efc85f8b90360a4e8a.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <52a12177427a5e781b16b4efc85f8b90360a4e8a.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>

--------------ajtFm2reISa6lr0pHeaXAgbA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi =D0=BD=D0=B0=D0=B1!

On 4/19/23 19:48, =D0=BD=D0=B0=D0=B1 wrote:
> Explicitly spell out the ranges involved. The original wording always
> confused me, but it's actually very sane.
>=20
> Also change the [0]. to -> here to make more obvious the point that
> pmatch is used as a pointer-to-object, not array in this scenario.
>=20
> Remove "this doesn't change R_NOTBOL & R_NEWLINE" =E2=80=92 so does it =
change
> R_NOTEOL? No. That's weird and confusing.
>=20
> String largeness doesn't matter, known-lengthness does.
>=20
> Explicitly spell out the influence on returned matches
> (relative to string, not start of range).
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man3/regex.3 | 23 ++++++++++-------------
>  1 file changed, 10 insertions(+), 13 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index d54d6024c..2c8b87aca 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -141,23 +141,20 @@ compilation flag
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

Hmmm, I like this!

Let's see if I understand it.  pmatch[] is normally
[[gnu::access(write_only, 4, 3)]]
but if ((.eflags & REG_STARTEND) !=3D 0) it's [1] and
[[gnu::access(read_write, 4)]]?

>  This allows matching embedded NUL bytes
>  and avoids a
>  .BR strlen (3)
> -on large strings.
> -It does not use
> +on known-length strings.
>  .I nmatch
> -on input, and does not change
> -.B REG_NOTBOL
> -or
> -.B REG_NEWLINE
> -processing.
> +is not consulted for this purpose.
> +If any matches are returned, they're relative to
> +.IR string ,
> +not
> +.IR string " + " pmatch->rm_so .

How are such matches returned?  In pmatch[>0]?  Or how?

Cheers,
Alex

>  This flag is a BSD extension, not present in POSIX.
>  .SS Byte offsets
>  Unless

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------ajtFm2reISa6lr0pHeaXAgbA--

--------------Hgwr3YuS0qfqHAeV0syZyOI0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRATcEACgkQnowa+77/
2zLYjQ/9FfjTzStRgfPHSfSCjmOSi+jVoII4XrIapNiLOj6HAC3MutyEj0vJ80XR
kB8ImCGCU3XP62MdSI1JO4Jh+xVGbAftOYS5IGSV7qSq0aKCDjQBn1/E5TTWuePF
lJyF198jcCTqW+TiKxJ5FiZjFKr5f/hogBSMBTHNkbidat2O5vN6YYTzMbSrGQSb
Tl0HCDcmp1hO93Q5BStIdrvpE9nJM2wrHsKtLFWQ7wstCuIK1CExZjUC7/erTjre
aHRbHOi9tUA/ICpPDqXgPyMActvgQU/yU7e1gJkYIczdnRTxlBJEBII0NVy2Hc50
cO7cKDdZ13LQDitUEivMipnj4V+1F+O2R87TFGS4ImyUDbo9he1r7l0PmiYm/lQ5
0KbXlAw8JpE9vPdFl7YbZ3Soz1BtoeIq+Bolj8Gi4rXjehij0soWAvOmNZLCp42o
rRRiigljj63R/CVBH3dunRlDVV/Oc7KTJsML0zZyA8p5vhMRKKujDA0bihCIhfpp
n8obsRUFwmNtX9P0WBFE9EhhihlWUKulnKPf/zP7K57RIyLFpxYuu2Kihmmxixt2
ympA9s+C51VKM5xqotRvglCi+UsrBp+ZsW/qCtxSZ6HqLljzreRtqbeuyylFrXd9
tgZ78f256Wced9HtGzn6uT6SiNmYx/3p5mF5/2fDAS5TCmV4eps=
=XsrW
-----END PGP SIGNATURE-----

--------------Hgwr3YuS0qfqHAeV0syZyOI0--
