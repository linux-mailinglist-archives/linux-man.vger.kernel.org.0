Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B96B86EAB54
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 15:15:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232299AbjDUNPi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 09:15:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232265AbjDUNPh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 09:15:37 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04E7A9ECF
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 06:15:34 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-3f09b9ac51dso49427255e9.0
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 06:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682082932; x=1684674932;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h6ZK/R3obxe5zcdn/G085CoWK3zcMflHDetNajkgANc=;
        b=KndvJwevvLWXdeCMejmSWermCG6bfzk1xTlF4zg87DrlySwmPRxbyzcTkGwd2Bu58Q
         u06hJ7Vg5OWqmrh/LfAv9kh+LWZBPC+CPKj79LsBe3txG2iPlDd4peowZBhypq/NXZQm
         1TUNHkqEGqCZjo+E0+CoulwqnoVUfdnQtv8zsa9193ofXyp9LqSkbkXa9hmiuJBvXyuk
         YxAH7H6wgC/k6gumQ/PdsW/flasUfs7xqy9oLFjRPHJF92crl+UWpeuBsX9+uAie5LeH
         kCx+zBprokXciI0zLMK3xiZSquNJZXHZEEpJ/ItwEkctTMORSlY41DbHFyZLO39JaxAn
         KXdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682082932; x=1684674932;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=h6ZK/R3obxe5zcdn/G085CoWK3zcMflHDetNajkgANc=;
        b=V7x5EENb+087hBlfc/ggGC1cR5z9FA797TmKiIcnNtnFGFaEpROYOJjH+M6bSDrtoN
         BYvBK5PtOZaP9z39QY33dz6JTqQCdOg74F/a47ucsIpRgzxhIwrszi414OUElLeXT06c
         FQ40DpCvr5N3XcNdNMY04Z0DOQDS/M7nIWdOzaYtNrMscQXmlKq2Cz7A7xLb/4ygOpZ5
         WMnOo/5SN8Yo1OhxN3hwFiPUMV0M+KA3aDftW+S/Aqtq8w30hJMLswtzUPRNRez3K11m
         jXpWiigT/6h8z8OM+oD2oD8kHuub9NnTdU5KpZbhyLeQE1gNaoZ3MWKCc8MSXf1l+B6i
         zpSA==
X-Gm-Message-State: AAQBX9fOUNIdNZsqmAMHbBVlAHk3nW4KbNYRc4y7Z5yv0p8/HzoHGXT5
        ouyl5mAyFTafioz85btHDIk=
X-Google-Smtp-Source: AKy350bXeUuz3sxqqtOdEyfddMZK1+I8lnrT9b+eKqRe2Wm+sXc7L1B+Wi3DSGvSaycsVFNfRtEgew==
X-Received: by 2002:a05:600c:1c08:b0:3f1:7a31:2c86 with SMTP id j8-20020a05600c1c0800b003f17a312c86mr1929981wms.16.1682082932318;
        Fri, 21 Apr 2023 06:15:32 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id bg39-20020a05600c3ca700b003f09c34fa4csm8292654wmb.40.2023.04.21.06.15.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 06:15:31 -0700 (PDT)
Message-ID: <5a9b0a27-03b0-112f-73c3-0a09417d1875@gmail.com>
Date:   Fri, 21 Apr 2023 15:15:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v9] regex.3: Destandardeseify Match offsets
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <3522d12e-de7d-11c4-c5b4-80667e3b2b0f@gmail.com>
 <udzii4h7tjcbrum7rmfewz2h5gkmfrbruh4hbkgj4wg6je7qxh@hzf64s3dpnph>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <udzii4h7tjcbrum7rmfewz2h5gkmfrbruh4hbkgj4wg6je7qxh@hzf64s3dpnph>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------CuOV4dG7CfBoiupTEzx202tV"
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
--------------CuOV4dG7CfBoiupTEzx202tV
Content-Type: multipart/mixed; boundary="------------MoPuaoW0o8Rw0HYFlCDy6DKU";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <5a9b0a27-03b0-112f-73c3-0a09417d1875@gmail.com>
Subject: Re: [PATCH v9] regex.3: Destandardeseify Match offsets
References: <3522d12e-de7d-11c4-c5b4-80667e3b2b0f@gmail.com>
 <udzii4h7tjcbrum7rmfewz2h5gkmfrbruh4hbkgj4wg6je7qxh@hzf64s3dpnph>
In-Reply-To: <udzii4h7tjcbrum7rmfewz2h5gkmfrbruh4hbkgj4wg6je7qxh@hzf64s3dpnph>

--------------MoPuaoW0o8Rw0HYFlCDy6DKU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 4/21/23 14:55, =D0=BD=D0=B0=D0=B1 wrote:
> This section reads like it were (and pretty much is) lifted from POSIX.=

> That's hard to read, because POSIX is horrendously verbose, as usual.
>=20
> Instead, synopsise it into something less formal but more reasonable,
> and describe the resulting range with a range instead of a paragraph.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
> This is the last one.
>=20
> Range-diff against v8:
> 1:  4479e1572 < -:  --------- regex.3: Desoupify regerror() description=

> 2:  bad307847 < -:  --------- regex.3, regex_t.3type, regmatch_t.3type,=
 regoff_t.3type: Move & link regex_t.3type into regex.3
> 3:  edefa8a5e < -:  --------- regex.3: Finalise move of reg*.3type
> 4:  500070a5e ! 1:  9af6c6b7f regex.3: Destandardeseify Match offsets
>     @@ man3/regex.3: .SS Matching
>      +Each returned valid
>      +.RB (non- \-1 )
>      +match corresponds to the range
>     -+.RI [ string " + " rm_so ", " string " + " rm_eo ).
>     ++.RI [ "string + rm_so" , " string + rm_eo" ).
>       .PP
>       .I regoff_t
>       is a signed integer type
>=20
>  man3/regex.3 | 53 +++++++++++++++++++++++++---------------------------=

>  1 file changed, 25 insertions(+), 28 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index 30f2ef318..aae31c1e9 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -179,37 +179,34 @@ .SS Matching
>  .SS Match offsets
>  Unless
>  .B REG_NOSUB
> -was set for the compilation of the pattern buffer, it is possible to
> -obtain match addressing information.
> -.I pmatch
> -must be dimensioned to have at least
> -.I nmatch
> -elements.
> -These are filled in by
> +was passed to
> +.BR regcomp (),
> +it is possible to
> +obtain the locations of matches within
> +.IR string :
>  .BR regexec ()
> -with substring match addresses.
> -The offsets of the subexpression starting at the
> -.IR i th
> -open parenthesis are stored in
> -.IR pmatch[i] .
> -The entire regular expression's match addresses are stored in
> -.IR pmatch[0] .
> -(Note that to return the offsets of
> -.I N
> -subexpression matches,
> +fills
>  .I nmatch
> -must be at least
> -.IR N+1 .)
> -Any unused structure elements will contain the value \-1.
> +elements of
> +.I pmatch
> +with results:
> +.I pmatch[0]
> +corresponds to the entire match,
> +.I pmatch[1]
> +to the first expression, etc.

s/expression/subexpression/?

> +If there were more matches than
> +.IR nmatch ,
> +they are discarded;
> +if fewer,
> +unused elements of
> +.I pmatch
> +are filled with
> +.BR \-1 s.
>  .PP
> -Each
> -.I rm_so
> -element that is not \-1 indicates the start offset of the next largest=

> -substring match within the string.
> -The relative
> -.I rm_eo
> -element indicates the end offset of the match,
> -which is the offset of the first character after the matching text.
> +Each returned valid
> +.RB (non- \-1 )
> +match corresponds to the range
> +.RI [ "string + rm_so" , " string + rm_eo" ).
>  .PP
>  .I regoff_t
>  is a signed integer type

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------MoPuaoW0o8Rw0HYFlCDy6DKU--

--------------CuOV4dG7CfBoiupTEzx202tV
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCjHIACgkQnowa+77/
2zITNxAAmY4YivEkhS8f/qwDF6j4GB6nL49OrEJcv+YzXI0OcEafUP5zSjfE1KeG
qFcMMLgjMqR8mFgfmV0PpeAksbIXPTlfOHCTuu7QN44FfD269s09QrJ/Q+SAOEtB
E3oSnPkDxv9wPvR9yzpXB7QGGICuCnlJUFdc9rQR0cFAVXBZ0O80ayFaSLmvtFMY
OeKi+IiQOltmXUtg7gr3CExBsMU5neRXnxlC1bYcjZifRgqq40f4RCgdgkCYiIOV
rvH3TiYRk4vPzL6ulUxvoNrObaknjbMzOw8vOMKRnG0qZvwFyYvPxkthySzc23Nx
KlsEu8oV1iN5sm1XqbJp6yXekgzUX2aOpa5l+hW5kbEMq86ZHDrJ44YTsjZVzKES
EihhXyAUAndsW8+fgi6XvAh/OiT/qieR6kH4uoRu6bFjtNTJ+My3cMlytbgDMtci
VHybVyj/GF8xWGt/O57XLWcc7kFbqewNKGEk9x99WIb2u0KpIZzjvyufjaFVztVm
MGd90hsNFamMPdKfcAQ4MLNThI5IfISy3q5bPl/6VP6xJGmsZEpCOkv+keFEzzMd
I6RNXrZE5BSykXI2Kww6M/Sdp/ruY64WtDjNwwLz7XMijroXAtAVoWfXYOkLJYpH
wrW18/WDQb38O1xL04A42PWj42eWoyy4Qx9GuCb+r0ZRhqWCYmc=
=PBRI
-----END PGP SIGNATURE-----

--------------CuOV4dG7CfBoiupTEzx202tV--
