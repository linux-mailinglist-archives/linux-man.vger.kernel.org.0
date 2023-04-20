Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7363D6E96AD
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 16:10:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230424AbjDTOKJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 10:10:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbjDTOKI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 10:10:08 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DE7A1BD1
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 07:10:07 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id l31-20020a05600c1d1f00b003f1718d89b2so3166036wms.0
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 07:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681999806; x=1684591806;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b6iej+SNtO9KGz75npUzOryzkt6wlQlRsOOKkaaQc5c=;
        b=Yciaf0zfezqXCBXoAp1jmsOMOn4r8/RqQEmIGgeJrl5rKgXloq3GyxBRXbq2jx8vSs
         kTiLlxy8bVZ+/vWDRTZIVjQX+cjpEWPcmd5uI99ZgULgn+egGQBKxSWqC/L++6xaTqSZ
         lisgr4B2//J2z8mHwzfocD6dY71Uf9B4NFfR+aBeyB+CSnJ2ACjJaxTfUGLoYFNUxeyq
         x4YaWopY3UmzHg8mMiYXrYjKM2FyqtcI6NulDkLqSo2+yzKBSZRPPQY1cPiRAgre5r3f
         6M25W9vlQYshmox3CrJGsE5Ta89TAIV+ttML6J4Az6PXVwInMJJF9GFKRFOTjtb6klHm
         HhOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681999806; x=1684591806;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=b6iej+SNtO9KGz75npUzOryzkt6wlQlRsOOKkaaQc5c=;
        b=KKwRAPwhfm+i+jZyRuQdBrvknNWZ8o4N/9UemB7ZQGVQgwQPzIsBQNKxkO+nfAqm7a
         QkCrms8QmyGRlf6KLMsG7s/sSDVwQmC4scrZT/0vkBSK1d5bRbjzGeM9JDUQbsVD97yA
         X8viFQau4z12uDVVoAj2+xJNLGBMJlAQsmnIq8MeWmKxv+QdpBjlRfYiFt4vZnGt73hd
         49lqchuw728iF9uMDbT3F2v/qeqEgKYM7KZdKU04laj8XT4sdY7lXQFV/9UULuDARYAZ
         EDYFOQi039Ct4g9B2RmPgnWOVJVMV6BJs1m2PbBieQtwAmR3OL2r+791xSnrMKvMm2mc
         UghA==
X-Gm-Message-State: AAQBX9en/Im9PS/NT00dVoaO2Oazgc5qPdT0TAflcmiM3Fw4X3ZgMGOj
        V90kKGxf9dtuY4VsSVhUsBfoX7mAZUg=
X-Google-Smtp-Source: AKy350YBa+7nuX3JmHAqIEDPjbaYYXKHupqg9rjAOfAG4gd8fGGBzvdGJgxARb+jpitLGHdaA0mK5g==
X-Received: by 2002:a1c:ed05:0:b0:3f1:72f8:6a92 with SMTP id l5-20020a1ced05000000b003f172f86a92mr1266985wmh.20.1681999805807;
        Thu, 20 Apr 2023 07:10:05 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id g11-20020a05600c310b00b003f0aefcc457sm5531507wmo.45.2023.04.20.07.10.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 07:10:05 -0700 (PDT)
Message-ID: <09c3c0bf-79e4-1cdf-8aa7-b82155aa3f47@gmail.com>
Date:   Thu, 20 Apr 2023 16:10:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v4 6/6] regex.3: Destandardeseify Match offsets
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
 <9b1790334c6f1367f7ea63c8e2ce04d2ae0f9eb7.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <9b1790334c6f1367f7ea63c8e2ce04d2ae0f9eb7.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------VRMy6QfYzvsQFfUp7LNloE4x"
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
--------------VRMy6QfYzvsQFfUp7LNloE4x
Content-Type: multipart/mixed; boundary="------------LMwb09nEmdy0uHpIJ5nXeRUn";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <09c3c0bf-79e4-1cdf-8aa7-b82155aa3f47@gmail.com>
Subject: Re: [PATCH v4 6/6] regex.3: Destandardeseify Match offsets
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
 <9b1790334c6f1367f7ea63c8e2ce04d2ae0f9eb7.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <9b1790334c6f1367f7ea63c8e2ce04d2ae0f9eb7.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>

--------------LMwb09nEmdy0uHpIJ5nXeRUn
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 4/20/23 15:02, =D0=BD=D0=B0=D0=B1 wrote:
> This section reads like it were (and pretty much is) lifted from POSIX.=

> That's hard to read, because POSIX is horrendously verbose, as usual.
>=20
> Instead, synopsise it into something less formal but more reasonable,
> and describe the resulting range with a range instead of a paragraph.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man3/regex.3 | 53 +++++++++++++++++++++++++---------------------------=

>  1 file changed, 25 insertions(+), 28 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index 6d203fa22..552763940 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -188,37 +188,34 @@ This flag is a BSD extension, not present in POSI=
X.
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

I still don't understand this.  Does REG_NOSUB also affect pmatch[0]?
I would have expected that it would only affect *sub*matches, that is, [>=
0].

> +.I pmatch[1]
> +to the first expression, etc.
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
> +.RI [ string " + " rm_so ", " string " + " rm_eo ).
>  .PP
>  .I regoff_t
>  is a signed integer type

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------LMwb09nEmdy0uHpIJ5nXeRUn--

--------------VRMy6QfYzvsQFfUp7LNloE4x
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBR7wACgkQnowa+77/
2zLQ0g/+Mn4CH+yeVIJUMFjgbeLn1gJiH+Bq6LTmbsPB39pHZULnhfDhhPb8S0WO
1D5dFv9+ecchIoCP2qmsg1tzZCbmIN3LPnUe9O8X+tpr8ridcIcDck6j3ZmVfjyf
5h8fOpgD9onzHaN27Q+q9Y7PYUYol/VMbZB8z1rGWh/3QqrVPfdFH0XXrpo0tbiT
KtP5t/Ll2G26bUvypTWWBAQhj5e3apboATBtt8Uy6UXic1EI1OFQPr2X5+E8WS2V
m8tzY1Ii4BIBoR8Ke35bmc3jtbpFToyE3PRYcDMcShCYPVy81hm68Dbrj3DJ4+fC
W/PBejaJYm7H6CqCyhUrnadITifYg52VZS0ic8/bPR9h0yWm5f/PpPySIcUpLHdM
UaMOfXsB9db9+cgsrB7Z42O8lQnN/7a8Mn0XNAnheH7vTiuFgszvXZdB8kXAVjO3
5iLYHFoRRJLz/5mkPkJCnfWtGsNmCEebG0SwDCiKuiAqVZqTCS3cpuYaRe/jrlsu
p71h5CrAhzB0U+bLA1UY5SUSs+zSGsxfHqG6/InnchIj2wMQcIYopdO6kTVk8zPs
0UFFKcjZY3gCPkTSXO9rCnnwifpKvmJkNck171kfA91mNIDxLs8TqqBEEyw0GXZk
uqsJcTFggirTaqvKlfej/8Yt/aeQAyxgNg/xN6Ha/V9uED5XGRk=
=gAsr
-----END PGP SIGNATURE-----

--------------VRMy6QfYzvsQFfUp7LNloE4x--
