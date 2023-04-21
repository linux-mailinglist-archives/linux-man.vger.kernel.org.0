Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46A606EA153
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 03:55:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232373AbjDUBz6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 21:55:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231287AbjDUBz5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 21:55:57 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C19E138
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 18:55:56 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3f19323259dso730065e9.3
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 18:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682042155; x=1684634155;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+8VfpcpAxM9CB2WMVyiJPds4vgAHpVoQSoVGI7GYDH8=;
        b=rSE2I/w34O2lNm9xLl8aaKfBUVxTXZ1XM4DJp70C6SHjiwIk6EPMBBe5Fv0DjJkKtM
         BvJiKQI1nI97Rh+U7F7K4AdWv7FsRgQfHfp24L5fKSQMNE0sVjfPEJhsB6JKvgvYz7wv
         b7xKV/xBNKFNVkNK98/t+0X1BSo/jvMvRdgr3oWGOVllTun/BDUgFnbnvfcrGOJc116H
         XBgFI71e3CZ4DZQwGF8lI/aCRITdV0oNgpvtQXnKkV/nRjmH5kQNx02rN1B+DkItEgZX
         hN2g9EDmumH7Glcr9X6ql+O9z1YHRJ7ks4uWu6CnYS2cjFlwoqnHr8R9KVzVTgC2iUyS
         idlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682042155; x=1684634155;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+8VfpcpAxM9CB2WMVyiJPds4vgAHpVoQSoVGI7GYDH8=;
        b=dBpkUaZiUB0WAQ/wPKXdwMDuGu91A4G7qL8lqmXfXPCAi6lC1uhgRdKqgCQoIGXsi5
         ENCxjgk4gg6tn/YVFjBU51AzfHp57oy8SJJNtpQ0UzRcdBQsif9c3lxJaJhn7ts8aXyp
         3axf9bI6QmoFdFK3ds4fSg/cHTEXujwgUo0MhSHkiGmDAkeQriPccHAAZE8eAP/oLHGc
         JJlGqf5WJiFmaswAnrCazMgKbS7Pd24dzDM1kXA1Z5BOvpkXMujX8qptE906Zca72DIP
         i+u+0r7jGHSX7wKVcQTFmRqtacCmCVJYeoudVETzc+sQbRdOR8FujHSSvrqmX7U0igcp
         dV/A==
X-Gm-Message-State: AAQBX9eulznfslvf6ff41qe9sf01Wy5T+W5ccVT9CMHTKH+ykRBbRryZ
        8HVqgYScCavzM3Le+0JigjA=
X-Google-Smtp-Source: AKy350YcyjD1YTajlmtYhVQhD8+2cmQsFAuL6wvz8AEwyhSpcGIHO84iPlHYXt5NviQbdKFJRh1NHQ==
X-Received: by 2002:a7b:cd87:0:b0:3ed:c468:ab11 with SMTP id y7-20020a7bcd87000000b003edc468ab11mr499986wmj.28.1682042154419;
        Thu, 20 Apr 2023 18:55:54 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id m7-20020a5d4a07000000b002c55521903bsm3272825wrq.51.2023.04.20.18.55.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 18:55:54 -0700 (PDT)
Message-ID: <bb4e8cdd-ac81-3669-5489-35664e3e1f67@gmail.com>
Date:   Fri, 21 Apr 2023 03:55:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v7a 3/8] regex.3: Desoupify regfree() description
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <5c49896a-c0d3-66e0-add1-adb9c441e319@gmail.com>
 <c7lgmbcgc4zjzaevg2qptf2n6feccwsprsk7yeqjsnrfxw2ivd@rzxrhgdhe3bf>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <c7lgmbcgc4zjzaevg2qptf2n6feccwsprsk7yeqjsnrfxw2ivd@rzxrhgdhe3bf>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------PnPeoa0NSMSK0IrDuj0uGf06"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------PnPeoa0NSMSK0IrDuj0uGf06
Content-Type: multipart/mixed; boundary="------------tvuryaBKWR5zBbwHyfwToB3P";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <bb4e8cdd-ac81-3669-5489-35664e3e1f67@gmail.com>
Subject: Re: [PATCH v7a 3/8] regex.3: Desoupify regfree() description
References: <5c49896a-c0d3-66e0-add1-adb9c441e319@gmail.com>
 <c7lgmbcgc4zjzaevg2qptf2n6feccwsprsk7yeqjsnrfxw2ivd@rzxrhgdhe3bf>
In-Reply-To: <c7lgmbcgc4zjzaevg2qptf2n6feccwsprsk7yeqjsnrfxw2ivd@rzxrhgdhe3bf>

--------------tvuryaBKWR5zBbwHyfwToB3P
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 4/21/23 03:24, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Patch applied.

Thanks!
Alex

> ---
> Range-diff against v6:
> 1:  1ad1aa6e9 < -:  --------- regex.3: Desoupify regexec() description
> 2:  6c4d26f89 < -:  --------- regex.3: Desoupify regerror() description=

> 3:  4b7971a5e ! 1:  5706f1892 regex.3: Desoupify regfree() description
>     @@ man3/regex.3: .SS Error reporting
>      -.IR preg ,
>      -will free the memory allocated to the pattern buffer by the compi=
ling
>      -process,
>     -+invalidates the pattern buffer at
>     ++deinitializes the pattern buffer at
>      +.IR *preg ,
>     -+which must have been initialized via
>     ++freeing any associated memory;
>     ++.I *preg
>     ++must have been initialized via
>       .BR regcomp ().
>       .SH RETURN VALUE
>       .BR regcomp ()
>=20
>  man3/regex.3 | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index 3f1529583..ffdd98376 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -225,12 +225,12 @@ .SS Error reporting
>  .IR errbuf ;
>  the error string is always null-terminated, and truncated to fit.
>  .SS Freeing
> -Supplying
>  .BR regfree ()
> -with a precompiled pattern buffer,
> -.IR preg ,
> -will free the memory allocated to the pattern buffer by the compiling
> -process,
> +deinitializes the pattern buffer at
> +.IR *preg ,
> +freeing any associated memory;
> +.I *preg
> +must have been initialized via
>  .BR regcomp ().
>  .SH RETURN VALUE
>  .BR regcomp ()

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------tvuryaBKWR5zBbwHyfwToB3P--

--------------PnPeoa0NSMSK0IrDuj0uGf06
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRB7SgACgkQnowa+77/
2zKYzg//cro0HzIangoo7wFoRbID6jSTRimlMe6lGVEnTzw6cK92RYyZik7ck4m0
F9qoJwMJpZojCLkfgmlHEvBt+1tRZGJ6TuuM+MTB5B6jLp7HTAt9/VlPFK7fytzi
9T2m6NzoRKarmMMWjVl6MZATiUa30ESmsCc5vhpCk+lmzQbun+pHxEET6lBWWLrj
qlpzvOUvvlCNDfLYOBdGm8gmS08oIOUM3y3CBmAX2F6dVBpdSssinRUOuXrErUrn
R+DPl/BYC5yraYXTGPP+fS45U0PNCbTHyKXVEpzzh4/HHOqRcWYD4k3NcXPbmqWM
wGnRCDa8rE3WlN6T0LfwJEfXtkFAATSJZH0YLNFQzViKTOIYpsPUEbjSJQdxjyte
crWA2pI0aM5fzPuFknCr5qRfBtlN8aNWAPPZ1ifxYZigX7grd/I4Z76efQITvlj5
YweimJq3c31KFFl5kbOP2ngbnlutdHIyu7E3iPEKyvpbWGl5iuGiZuSX46x4vCQ7
A7f76o9b3feELWtrIHQ3KRHr/74QPSfAY/jjLVRA07BWZ8x/2HY8ZVUT+I4lASjF
UparoVdAGjrxuT+N5bzY/IKRasnaoEN5ucuqzA6BBnm8l5uLobIWXHyRMyOpU6Ui
5tQDmVMZSOBAlN9c4ISrCAeO789/kSgOzuW46ZeD1KkUilpoaFM=
=f/75
-----END PGP SIGNATURE-----

--------------PnPeoa0NSMSK0IrDuj0uGf06--
