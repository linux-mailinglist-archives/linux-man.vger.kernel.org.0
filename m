Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E6306B77EC
	for <lists+linux-man@lfdr.de>; Mon, 13 Mar 2023 13:46:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229534AbjCMMqo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Mar 2023 08:46:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230111AbjCMMqj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Mar 2023 08:46:39 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CD24BDCE
        for <linux-man@vger.kernel.org>; Mon, 13 Mar 2023 05:46:37 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id q16so11199678wrw.2
        for <linux-man@vger.kernel.org>; Mon, 13 Mar 2023 05:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678711595;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CH6DqsEd25vwZ0Man8ueQkEeHOo5mmSzcxHxDcimzsQ=;
        b=krbEPV/dQrFGtkJxZeGXOR2g8pUsukcMUOfg1cp9lkJZ3XoZVdBCCSgDBI17EaECSZ
         ZCADRRs2aEPJ6J+RUR7tcL7BuTpr/2OTNUq8VMnRn694O82X6DyXpHapjkn44ohpFpLH
         36KtPd4HdbkxOrEmEvR05z/KFmNU081fmvyfvniaPhB9gEenh52oDaD/VWwveVO35HtQ
         wg1QJZZip1ezBzugSqqJsZwJeqto00W/wkJv08IViB5L/SA89bm8T7DL5pIkne2Q03pQ
         dgnkjQ0GV7r9e8XVcEfu+Kd5SOeH3fUSyjlNdVWj49uo4u0QeT5WdeaRkaILQziS12Gl
         lLCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678711595;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CH6DqsEd25vwZ0Man8ueQkEeHOo5mmSzcxHxDcimzsQ=;
        b=F7s3PenFVtmngCZpMrxVrY83WSUXLmlumFhJlLXNcJmjT6LB3eHhKPjMx/fgPSQGuv
         dwjr2xcTdFSnYazU4w4dULsEDFOV4JqiCe8HbeCjsegsNJHhmbyyxjYoNkCEYRzuB0Va
         eD9GDZdGK8LYLmq2Xw8iI3qNOGW2MfUK5tcsFYcsrn9T6fuh9+gi+dk0xiBFXj8dpDzT
         ipJkvEZ921aXwmaMkdC5fLyHpQqaz/jH5w4ReSiAibPIXqTG0UO4jLdavqr4Qaxe53bU
         FNI5AM5pS+6zfPsulFcL5ZpwZUvU2zLoZAhu1ynPkUYe2Ttzp4R0LoO+mu32YdVnRifh
         yDpg==
X-Gm-Message-State: AO0yUKWUEreWuGjkHwc7AFDhtTTrevGzXWm22rMIFnGU7mdNxfxvDt6v
        6mR/8GDwAGSbD17mGiPabRA=
X-Google-Smtp-Source: AK7set8vI6f/GHk2XNH/1soJ9ZaazlyAzavs81GHmcJRGAYG3UcO6+a/aXo6NMcj5Zo/XQNuSe7EcA==
X-Received: by 2002:a5d:6e0e:0:b0:2c7:760:2539 with SMTP id h14-20020a5d6e0e000000b002c707602539mr22420402wrz.50.1678711595464;
        Mon, 13 Mar 2023 05:46:35 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id o11-20020a056000010b00b002c71b4d476asm7875677wrx.106.2023.03.13.05.46.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Mar 2023 05:46:35 -0700 (PDT)
Message-ID: <1554e105-5131-89ec-f1e2-b2e84bdd1651@gmail.com>
Date:   Mon, 13 Mar 2023 13:46:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] standards.7: ffix
Content-Language: en-US
To:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <ZA6R2ToENfuo+n2U@dj3ntoo>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ZA6R2ToENfuo+n2U@dj3ntoo>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0I3M3ZNHaWf5dS4X7RRGZof0"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0I3M3ZNHaWf5dS4X7RRGZof0
Content-Type: multipart/mixed; boundary="------------hO0gmNjQ0w6FsVj0NGDxyopj";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Message-ID: <1554e105-5131-89ec-f1e2-b2e84bdd1651@gmail.com>
Subject: Re: [PATCH] standards.7: ffix
References: <ZA6R2ToENfuo+n2U@dj3ntoo>
In-Reply-To: <ZA6R2ToENfuo+n2U@dj3ntoo>

--------------hO0gmNjQ0w6FsVj0NGDxyopj
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Oskari,

On 3/13/23 04:00, Oskari Pirhonen wrote:
> Fix indentation of the LFS entry.
>=20
> Signed-off-by: Oskari Pirhonen <xxc3ncoredxx@gmail.com>

Patch applied.  Thanks,

Alex

P.S.:  C89 already reverted.

> ---
>  man7/standards.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man7/standards.7 b/man7/standards.7
> index 54dd2eb30..82b8ac4ff 100644
> --- a/man7/standards.7
> +++ b/man7/standards.7
> @@ -101,7 +101,7 @@ Available online at
>  .B C11
>  This revision of the C language standard was ratified by ISO in 2011
>  .RI ( "ISO/IEC 9899:2011" ).
> -.IP
> +.TP
>  .B LFS
>  The Large File Summit specification, completed in 1996.
>  This specification defined mechanisms that allowed 32-bit systems

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------hO0gmNjQ0w6FsVj0NGDxyopj--

--------------0I3M3ZNHaWf5dS4X7RRGZof0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQPGyQACgkQnowa+77/
2zL0YQ//XWYTKPIJb5fSysyLDP564S1UdniV+Hv9JIxVXpBNnATzBSC2k2Texz65
DXQAkrUAVDBrDWwmkMWvKCg/hq2F+SSEQIf2DKz3ByROhBAjU9tiZMATgdayQD7p
2thj9QDDzjYrXRvgeZ0K0n4i1okykfOzyT7XwTpnw8zXkiR8emzQoTYklKvFxUoH
3TELmdQ70LUYweEzcOgK7aLNfDnbcHMNwN3FBPP2zrJmzgHRGAjRp4oTHC2uN3ki
d/zlBOrY9Vid8pTWoQe3M1zt/8c7c1ibcHZYdmWTVNEYwKJL9xIWZrtYvW057m3A
NmjeQwCWge5Q0wi/r+wIqrPUv8BJpuuAU3LQpdI9DDM8Ob5rpGoT6aLDY+ceqlf6
+aqtTDTecU6oBp9ws8wejLlgIUG4Wywp7rvbfEN1ucQvxydyTr3t2ag2+X3jGKH9
hVAS2cok9jLZzbc2in99rmH9jl3/CaMv+AL4NYzc+XBUqx5gpHwq0xD/V4jcViZP
a8QMPNMWNFOnIMT1uRQCDYX9T5BJRw4hXYtV/IYkc4v/9OIaMdhvlGdDk5nBRATh
48MajyNnijZ9C/g4TvZDXwa1quiI/QVCe372Ds7SrgqkS5sSibm9GL+d1qfqHATH
2MR0YJqclVYiQS373Z2rVzU+gzDvLJjlgM6ZT3DLC3Q7QihCBws=
=doMg
-----END PGP SIGNATURE-----

--------------0I3M3ZNHaWf5dS4X7RRGZof0--
