Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8746C6EAC1A
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 15:55:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231661AbjDUNzW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 09:55:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230477AbjDUNzV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 09:55:21 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC3D65251
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 06:55:19 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-2fbb99cb297so1618411f8f.1
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 06:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682085318; x=1684677318;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NtUQ++/J5GieKLydCuidZHqkPbuk9drm1ck9Vl1b2fU=;
        b=lEGJfV9fZp6LrKuCviwuV0PXEhgHsrBz2n/+vPAKlFUXY1jjHnkL6icBOoj2s29bGd
         2LOoANqdzvF/3tkkkZIdRJmB1gcQe2yKMcJkNHm6ZwDGDrTsvF+1YiTMVd+SS1v/l8+y
         kEupcjmh5BflGVh7dQ7/skxmgFVaHLAgxlIj4Q446kvte0o517ukqd3lG+WK2fs21B57
         t3qxxMmRrExYV4uahS8Eme8e76XeUVri7EyDahARixzXtdcXfcSv++4kZxOR1Z8+t+HA
         XremfcjEzEdP945pMc1xY3+ur7fEkmgGl0KByC28OTWzlwvzv31jfipx9p5qTZKKkdkM
         TW2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682085318; x=1684677318;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NtUQ++/J5GieKLydCuidZHqkPbuk9drm1ck9Vl1b2fU=;
        b=iB+jc3TlOTIS3H2LypKyVL/R8hTnx5V9i8cBxhn82Fl34Sd0bevnoRVQVhM5AtLkOt
         b5lgSy+zOEqKn4VuJAGUxPYBQKxsrxgSiiyR+empq35hBhUOcef3o79dZAKB6wlUvpMd
         S313N/ux5sAm2H1W/yYrVmVlBFLbDn4NftQQAuR0LNL/UYWR72SW8clnbQtbTsTK9HBX
         rI3dE+9DukqWU0PIItym1SYve2jUUinNQNF/asLs9SgssXPewryMM0tAzXsxxFAcxS2Y
         HR93HWYlrx7J51U7IX+yXg1DzV/Azgc/zqCZtshfMgje5Vh8bTU4jApyAW03BmrgitUH
         zpGg==
X-Gm-Message-State: AAQBX9fOikPvGAlA6R/qaI+p5X9H1FsDPpspp8vFp6AUiRlOnyYMghOA
        P1+BvjxsduV/WTjM8sP6spI=
X-Google-Smtp-Source: AKy350YW1KbGpGOLwYRUFK1lgZguUALeCPp/uzlNzVcUq22RmXV+S/X9Nx9r2hzIPLKBowk9JfbHew==
X-Received: by 2002:adf:f712:0:b0:2f4:170:3807 with SMTP id r18-20020adff712000000b002f401703807mr4418585wrp.44.1682085318153;
        Fri, 21 Apr 2023 06:55:18 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id t15-20020adfe44f000000b002f00793bd7asm4483695wrm.27.2023.04.21.06.55.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 06:55:17 -0700 (PDT)
Message-ID: <8914c71a-ee93-bf9c-da0c-95d814c6d6d9@gmail.com>
Date:   Fri, 21 Apr 2023 15:55:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v9a] regex.3: Destandardeseify Match offsets
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <5a9b0a27-03b0-112f-73c3-0a09417d1875@gmail.com>
 <5kvfpud4gwcd77wx4nlr65ewh5sih5uykhcz3gujmy47zptn7p@cmue22kbcrrs>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <5kvfpud4gwcd77wx4nlr65ewh5sih5uykhcz3gujmy47zptn7p@cmue22kbcrrs>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------zUkjaIYoOB7VCVLDKKB2yzfn"
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
--------------zUkjaIYoOB7VCVLDKKB2yzfn
Content-Type: multipart/mixed; boundary="------------8Pz8AC09ueah1oA1dEqZjyb0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <8914c71a-ee93-bf9c-da0c-95d814c6d6d9@gmail.com>
Subject: Re: [PATCH v9a] regex.3: Destandardeseify Match offsets
References: <5a9b0a27-03b0-112f-73c3-0a09417d1875@gmail.com>
 <5kvfpud4gwcd77wx4nlr65ewh5sih5uykhcz3gujmy47zptn7p@cmue22kbcrrs>
In-Reply-To: <5kvfpud4gwcd77wx4nlr65ewh5sih5uykhcz3gujmy47zptn7p@cmue22kbcrrs>

--------------8Pz8AC09ueah1oA1dEqZjyb0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4/21/23 15:29, =D0=BD=D0=B0=D0=B1 wrote:
> This section reads like it were (and pretty much is) lifted from POSIX.=

> That's hard to read, because POSIX is horrendously verbose, as usual.
>=20
> Instead, synopsise it into something less formal but more reasonable,
> and describe the resulting range with a range instead of a paragraph.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Patch applied.  Thanks,
Alex

> ---
> Range-diff against v9:
> 4:  80d247ebc ! 1:  c3e45d60e regex.3: Destandardeseify Match offsets
>     @@ man3/regex.3: .SS Matching
>      +.I pmatch[0]
>      +corresponds to the entire match,
>      +.I pmatch[1]
>     -+to the first expression, etc.
>     ++to the first subexpression, etc.
>      +If there were more matches than
>      +.IR nmatch ,
>      +they are discarded;
>=20
>  man3/regex.3 | 53 +++++++++++++++++++++++++---------------------------=

>  1 file changed, 25 insertions(+), 28 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index 30f2ef318..8efd21d72 100644
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
> +to the first subexpression, etc.
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

--------------8Pz8AC09ueah1oA1dEqZjyb0--

--------------zUkjaIYoOB7VCVLDKKB2yzfn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRClcQACgkQnowa+77/
2zLucA/7BJ9zzZ6HcrYRbHmryQdK4kxLN+gJ75RNrTwryrbXWUb9dLE1GgPre+97
aIsvstHInSU82JapMuSqDj+vosHcszVcC1VnXUJDEiDpL60qYsSVyplFL6QspMv8
xSQA+OYbzf9rIqzI3TqAHR3xP3HYjc4oTG/GRg702okpkiOHogXh95riWR63T5H9
PheA4Z8gbqOs/mBLHPkfoZY3eGxSnD+VYeb8/hlW2QHihNeqJViOrqD2W6O8khof
gS2MpUdD7GEJB2Xmev4RmXGs4qP9bmqSC3ZWPat88ElUlZB67+qwkispx+FgJgao
vSM33mgTNJBX9GeVqfIvvAsja3xs5lkkaLyDKitvSrfAoyVhZwz+jqhLA764pOfG
FFR/P+0neoAEs0M7ONR6l7ay5CQO6RjgbsUgD5pzLgPGzkgLgT0N5KHFVm9Vb9yg
FgA/rO9Dgloq7v/FwBBsrx99OMMLl+X1gMXuN0O+HXhjMnv1f6SA9FDN/Brl2Kpm
LKa43JxZ3I144f/co/YWMy/04zVvR/YcfwIEjvGN0KrltGxVsOAm1jMg7g1L4t51
yzeey81H3F0Q2kFmFc5L0PlqJgHPCYNozV1qaWu20cqWXPcMI3x1HFzHIYnxxK3Q
3Eib+I4TCxkUu2enoW7OqCBKOCWyB8/ueciyNhAchZwc97uGBBM=
=N6F7
-----END PGP SIGNATURE-----

--------------zUkjaIYoOB7VCVLDKKB2yzfn--
