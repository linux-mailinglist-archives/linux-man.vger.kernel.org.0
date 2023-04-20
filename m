Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 635C26E9297
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 13:28:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232606AbjDTL2e (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 07:28:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234846AbjDTL2K (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 07:28:10 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BF5249C4
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 04:27:13 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f17fdb5062so6000095e9.3
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 04:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681990031; x=1684582031;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zYSEpHBfq73d/0leh6swFxWHKYY4VvW95O68KNiRGI4=;
        b=lUNxVX8/swlWYw/ZKnRK4AFtEPX07AcyKO/K/TM+HxQHTrNlFSLMfKVD3DJyJklL5v
         wgM8jl9KYAP966RQH+j0ezwxVwK5Na0YS4ZO97NQOj/+cUje4SvF5kxOpqH24awkOYR5
         F3A4RdaBKz02G7kFcmFRfmvleMfoFsVxJl6m83Nvd14GJYFH9w9F3bpFXt7V9wWvKl8X
         IuI2GkTSQZhOBWcRwrW8jXYdUTIzfp01+UTuLSoKD4z9rzbQqBsu69e5iIfEblK40wwi
         dEG8polKCGn3bXaSyyBCDMkbWICJknCILxS0LNEqTvRVFNV5Bm7tswFHF9wWNXv6Y4mN
         bhhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681990031; x=1684582031;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zYSEpHBfq73d/0leh6swFxWHKYY4VvW95O68KNiRGI4=;
        b=HQAqLCTRA7r12V7er/zuspi+cAs+PxssWTqEa0nmTFr+4+SqzCCn1pmhCJfMzqvv7z
         HqAX3nriZ9Q9Nrgdsw6Mamo4HAgZYLYnEdLfmrYSVLT76jpIqXDr5AFZAXUcdjEHi6T3
         0UJ95WDvB19LG4jVi14fkatFNzfXzOIIQxnl95BVBIPytVatytezXkbOY3M1NRN2V4Jy
         uO+0HDpzVfuYue0Gg5Pcrrj5TQTp1A0ivqh6lEiupOvo6WECKEkN8vtBjvyH4y8eaznm
         74bGCF0qgNBe8B+Lk8gQiwm2b3N6qP9Is59OLEjWZ6dclhTRaY6Fk56YNre9IthfGqXV
         GY7g==
X-Gm-Message-State: AAQBX9eXVdWYpfSqPWPPL22MBAyYiqUqpmCvMxTDQWG0P3Lo4sppUhOx
        ij119rNMFiGB5L/sRs5BjKY=
X-Google-Smtp-Source: AKy350bvXNnNNXqKA9s5x3wAqPNN9PxV1iKEZ7bF0XLW8qigRwDzqteJ2ea/rzlejvyKQsmnPykL7A==
X-Received: by 2002:adf:f741:0:b0:2f8:1ed9:f0f8 with SMTP id z1-20020adff741000000b002f81ed9f0f8mr903698wrp.61.1681990030663;
        Thu, 20 Apr 2023 04:27:10 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id d18-20020a5d4f92000000b002c7163660a9sm1697058wru.105.2023.04.20.04.27.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 04:27:10 -0700 (PDT)
Message-ID: <c980aee0-fde2-c9e6-bce8-9af2986c7684@gmail.com>
Date:   Thu, 20 Apr 2023 13:27:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2 4/9] regex.3: wfix
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <3f7a0a3e3ef00bb490ce2b4040087dce9d114ddc.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <3f7a0a3e3ef00bb490ce2b4040087dce9d114ddc.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kwyDtcgckG5jTn1QBm4b7A36"
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
--------------kwyDtcgckG5jTn1QBm4b7A36
Content-Type: multipart/mixed; boundary="------------YPJ4G8DCY8lsyYbo6X10FUZ5";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <c980aee0-fde2-c9e6-bce8-9af2986c7684@gmail.com>
Subject: Re: [PATCH v2 4/9] regex.3: wfix
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <3f7a0a3e3ef00bb490ce2b4040087dce9d114ddc.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <3f7a0a3e3ef00bb490ce2b4040087dce9d114ddc.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>

--------------YPJ4G8DCY8lsyYbo6X10FUZ5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/20/23 01:23, =D0=BD=D0=B0=D0=B1 wrote:
> "Not in POSIX.2", so is it in POSIX.1-2008? POSIX.1-2001?
> (or any other combination of standards from this millenion
> not mentioned on this page?) It's not: just say POSIX.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Patch applied (with some added double-spaces to the log).  Thanks!

Cheers,

Alex

> ---
>  man3/regex.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index 5aaf42caa..b6e574b4d 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -289,7 +289,7 @@ Unknown character class name.
>  .TP
>  .B REG_EEND
>  Nonspecific error.
> -This is not defined by POSIX.2.
> +This is not defined by POSIX.
>  .TP
>  .B REG_EESCAPE
>  Trailing backslash.
> @@ -303,7 +303,7 @@ occurs prior to the starting point.
>  .TP
>  .B REG_ESIZE
>  Compiled regular expression requires a pattern buffer larger than 64\ =
kB.
> -This is not defined by POSIX.2.
> +This is not defined by POSIX.
>  .TP
>  .B REG_ESPACE
>  The regex routines ran out of memory.

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------YPJ4G8DCY8lsyYbo6X10FUZ5--

--------------kwyDtcgckG5jTn1QBm4b7A36
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBIY0ACgkQnowa+77/
2zKivQ//c4qGidUyWQBeS9N0DCCVXHARZAINzKI9H2oN9vOn+TWyhGZqkkTd7zF8
eYMdMoxR/V2LxcXF0ocZSi9zfwCcy7nhXM9uRR/C0pYHBPxX9QrtJGhHOP32BEKj
8ME1QShfucFYmjF6MrfWPYfdgwPOOoBUc8tKbwL6I90vYlLdK5Aa/kHQkZDhC8mu
jD9RW8/i3lzKXegp6znoxggxzv7SdFZ583Ng+s8tWmizartAV4efsj48sByNNeiR
panGHF44+sU+rJYM7yBkQ680vDrCx3ZrRGjfH4iJItTaGQGUz6Ynsq+WW/ftgI8L
NRKl3Rp3Pe6G12mQ8CYrvyNjOJGTT3CLXaMiAc3E9IavECNjbSXVIrW2DQJwKvFN
IPoXgpg0UEwGOIyWSswe4/vCltGvJPEfyCn7dmRlYMzmlMMAm7vnGWZj0Nda34cd
0MqUanpnN50QhK7CxfoU9f14CLRQtr7oeN6KSoRKkh8dBnc84Cpd34Vu02y6CjpY
wc5oIbSMw+YztG8PccBhqWIm6i1FhqU4p5rjqKMzqOZkkx8Y/Rj3y+Hlhem8ZhoR
ZB/ZK724Z+yHZx3V7C7dMXdRETQRRFo9UpTZ/Ghaa5h5zpZFmpU5WyjMAHmiiJ6F
iTrZ7B3CymKSaqoGhfGFhMy2J3osA+QODrOOVuPLuRs0PmN8EDY=
=k8rz
-----END PGP SIGNATURE-----

--------------kwyDtcgckG5jTn1QBm4b7A36--
