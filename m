Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B2F46E9FCC
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 01:24:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232099AbjDTXYV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 19:24:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231672AbjDTXYV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 19:24:21 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB1DB1BCE
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 16:24:19 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-2f87c5b4635so1004006f8f.1
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 16:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682033058; x=1684625058;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/1zAWORjyLR8djs8OjpQ/xeiWj6uD4zOeM0vyxu/26g=;
        b=Nf7DXHsSYW+k/6+ifp4RzAT7bmL0QoiplYR8lxK7X4BRVpcPDyzLtC574L+OXOO03h
         acm3ayplTtdYCMkHUd1zsgkUy4xACRyuX8kzO05STgzKu1GvDkrblgrS5e2nEYW73fxC
         F4fYyDUgYKBE9Bs7qnLo4fs+etrkjMcOyCFgkQvUCaeHQYM/8eFlE5fRaFFCK21ytgFu
         ZKVE3Lgs3TvlHL5qjeEVCuDQx1GI+C0abnFEE4XfTmmDYgGmwCI/nbItxVmzUj8r2Db5
         DtrAazMsMoDLEu+V2O1bDUJqtH/+LxRvT0txkbnmO1PvnAaTfgqvlmDw9xaT9IrW2uX2
         RaGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682033058; x=1684625058;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/1zAWORjyLR8djs8OjpQ/xeiWj6uD4zOeM0vyxu/26g=;
        b=ZbUA0wOEDXw7ZDKNiAexU09JVOezN5efonvS5C9NDSEQfk0dais1ggb+pJnmojrhQC
         +hcHBPHz4+TQ2XAVnnmZ6XeRrYlQ13LbCpFtAVJaxYMHIJIx1WKht+xJ95gS3fPx0Wpz
         um7VQWXc9qDv08Dz5+vSMxmosl3h806MJOJC9A2jqJ1+xQ0LvOALoxGhU7gp/i8Z0Wwk
         aideW2c4je224eDt65+7bT5P9r7D7aE1sdq2iJHyXxbpa9BGuC+hFXv10l/zsnGjubnP
         yfs0Nrn+6hszQLSLOkDfJSuULxxt9LRXL3h71cbd/1w0eptCd1f2j50em3JIflLcyi7N
         gHkA==
X-Gm-Message-State: AAQBX9c9zT29HU5LCZoffcr4aaiWwrKiqpd6Q60LALIwIlzcKQt0P0dx
        QXNmUJ292sGkBrwkd0B7KpdW7UFjKLg=
X-Google-Smtp-Source: AKy350ahlufERiAnnBxsGrbglzsByN6ZmmfuIK7SxvlNg1c8mCzzTnYRdwzMieLVsUOvCxdkb6HhpA==
X-Received: by 2002:adf:e745:0:b0:2ef:8c85:771b with SMTP id c5-20020adfe745000000b002ef8c85771bmr2603538wrn.51.1682033058447;
        Thu, 20 Apr 2023 16:24:18 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id d14-20020a5d538e000000b002efac42ff35sm3079074wrv.37.2023.04.20.16.24.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 16:24:18 -0700 (PDT)
Message-ID: <827cf932-d582-e8c5-3135-90bc294ff2f8@gmail.com>
Date:   Fri, 21 Apr 2023 01:24:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v6 1/8] regex.3: Desoupify regexec() description
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
 <1ad1aa6e952df09dea820eabab860dd6df35364e.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <1ad1aa6e952df09dea820eabab860dd6df35364e.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XvrRIqrbGzeren0zXIZLAvJM"
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
--------------XvrRIqrbGzeren0zXIZLAvJM
Content-Type: multipart/mixed; boundary="------------OllgZwv2Woe4CS41dZOkJUgQ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <827cf932-d582-e8c5-3135-90bc294ff2f8@gmail.com>
Subject: Re: [PATCH v6 1/8] regex.3: Desoupify regexec() description
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
 <1ad1aa6e952df09dea820eabab860dd6df35364e.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <1ad1aa6e952df09dea820eabab860dd6df35364e.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>

--------------OllgZwv2Woe4CS41dZOkJUgQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi nab,

On 4/20/23 21:36, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man3/regex.3 | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index bedb97e87..47fe661d2 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -105,12 +105,10 @@ .SS Compilation
>  .SS Matching
>  .BR regexec ()
>  is used to match a null-terminated string
> -against the precompiled pattern buffer,
> -.IR preg .
> -.I nmatch
> -and
> -.I pmatch
> -are used to provide information regarding the location of any matches.=

> +against the compiled pattern buffer in
> +.IR *preg ,
> +which must have been initialised with
> +.BR regexec ().

This patch removes the nmatch and pmatch info before presumably we add
it in a subsequent patch.  I prefer if the patch that documents that woul=
d
go either before this one, or right after this one.

Cheers,
Alex

>  .I eflags
>  is the
>  bitwise OR

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------OllgZwv2Woe4CS41dZOkJUgQ--

--------------XvrRIqrbGzeren0zXIZLAvJM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRByaAACgkQnowa+77/
2zKfsw//Yig6RkHcHW5e43znV9x21Xo0GnJNZC398/51myorr+zr/VjsQBevo/Ok
MT8I7LAVN30U80gSQ4bqhYMuyCcyPQa8+224w1waJyK3uO6IZ6gsc8i6Xld4eKKX
QEWOk28+hNKAVguyqVOsSPpcBsh04EdCzSyoiDkrQHGuFBaVXaXzCadLkoOWXZ0D
c2M5pDO7Eqx9a8hwONvUtJlF++C5afmN7CG0V6+FK2pYW5cBpW8K7Mrmm2fT5eq0
cwpuZwSomSJDgWP+TJwR/3NaCtNntv6nU0HGEGdaKI0b0rv3FX0bIEKmi9dWg1nF
1HqQIFNrk/TUMCwYHnKVYyj0ytgKdrK6NwUxrvhYtUXMb93dAWpLDjPf/ju8hT22
ECfzhvqSnEufPQPkYMwU1W2vBruCty3dmJFomOrZMBJOmOIkA0v/KdJrKsCrvNqc
psX5+KYEpYl98OHaOJh7s/gf5tmS7AdHhTrHczUGm+mfzi6AnHi/LV8i7wiYlNmQ
/IeUq4utrjZX1opFEqIFPTZ5ULXUR+p5qw3ehDO8AAmFQHNXI5EyVcdGdTViiO/4
CRMmbvPKKHU6SknND4+B0CjILXCRZ1Jvjlth0UXMrwoy4O5o3p3JMgDqGpzxXTiU
h39cLKYr1OstF+5JBGVkDsz/yHiCYJtCQ2fpb/TRiyVgH7cGfdE=
=+jZ2
-----END PGP SIGNATURE-----

--------------XvrRIqrbGzeren0zXIZLAvJM--
