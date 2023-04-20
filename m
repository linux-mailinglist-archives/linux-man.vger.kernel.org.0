Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D55F6E99EB
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 18:51:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229659AbjDTQvA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 12:51:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229664AbjDTQu7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 12:50:59 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48EF54221
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 09:50:42 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id v3so1543621wml.0
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 09:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682009441; x=1684601441;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ccIU7uD6PV62XjQ5q8rRIpEIBe6IOM7VM9FVjUaPB18=;
        b=RXPXPvOA0DjRlGzd+ttdasEql/YLmWJcfo2lkikvPbukIvjfXcyL2B+stlyOrGpLMr
         Zjvpfz+sA/64fxLqGrwTkIX2d90DGcjtFdppY+pPATK1Xz/1VdO45ZNIGcNoj6sBzHx5
         uE9UeCAAwuAygVHKtLeAJVdiExPmxuiyeEOOf1lAH6QEFF0Px48CtzW1bsuDkigOZWVf
         0XgZZfrEcpq6aV1VIvQyM3JXkfWmu4XjbHeVY5YMJNTVBouq/GWhVZblXmLlXlZ5AoPQ
         eQ18YvVHbJr99ZADpd9LGnPmY6lVj3Vet/OnRM4yDoVcGgG/2IZvU49+FJ8n4id9hR2N
         DAyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682009441; x=1684601441;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ccIU7uD6PV62XjQ5q8rRIpEIBe6IOM7VM9FVjUaPB18=;
        b=W+yIFiHjdOCXrdrqnjOo9ALpXMi0Y0YPwKmpdQTeXhJFRZxNx0r9FBxdSbfcLr0j3m
         x3FvZxTEucxk7lfUY6+yFY0AR/rnfg4sO06qADthjUHYkILcgK9rSiYhD8rlU+xDwya6
         fbQx8uv10PquG5b3S8dCweQZhPkLcJuEjWr81Eq24XJ+U8GqXue9vmQMkPxsCquQf7o+
         spWJqFThPY0zbk8IUOAJ4UdK6UhHjgHKAflG2J1UUMlUiAen/Z731jGGFzMZgbdUP1HC
         K00UP0gaUT7Av/zDypPac/soJH1EfXLUNgacgsdMTveKPwXecuxGLAm7duwZG4nAkkIY
         QC5w==
X-Gm-Message-State: AAQBX9faMuPjuGi0WsSxxhss1MOAIsrVwYL1K2euMcU3AmneS3iiPD19
        UAsD2PU00yydHPzM4J8JLNcLmFt4/r0=
X-Google-Smtp-Source: AKy350Zin1Ygxs9ze8iqLthHuJee5xAyK+IJS8fGsnXWqG38Atp4YPkT8zNgjfxRln5o4fpFwJSRdA==
X-Received: by 2002:a7b:cb83:0:b0:3f1:714a:9315 with SMTP id m3-20020a7bcb83000000b003f1714a9315mr1820758wmi.7.1682009440676;
        Thu, 20 Apr 2023 09:50:40 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id f8-20020a5d4dc8000000b002f9e04459desm2346445wru.109.2023.04.20.09.50.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 09:50:40 -0700 (PDT)
Message-ID: <4521c8db-51c9-00fd-80f2-d734a5ab82ad@gmail.com>
Date:   Thu, 20 Apr 2023 18:50:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v5 3/8] regex.3: Desoupify regerror() description
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <108f30cd72f18419b3e4c62490d63807d48225b7.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <108f30cd72f18419b3e4c62490d63807d48225b7.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------UpTDohxZNSLLsQKmlZeozhPL"
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
--------------UpTDohxZNSLLsQKmlZeozhPL
Content-Type: multipart/mixed; boundary="------------cACR3dtVRRP5nyaUzhwRRkED";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <4521c8db-51c9-00fd-80f2-d734a5ab82ad@gmail.com>
Subject: Re: [PATCH v5 3/8] regex.3: Desoupify regerror() description
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <108f30cd72f18419b3e4c62490d63807d48225b7.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <108f30cd72f18419b3e4c62490d63807d48225b7.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>

--------------cACR3dtVRRP5nyaUzhwRRkED
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 4/20/23 17:35, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---

[...]

> -If both
> -.I errbuf
> -and

[...]

>  .I errbuf_size
> -are nonzero,

Now that I read this, it seems we should add _Nullable to errbuf too.
I'll do that.

> -.I errbuf
> -is filled in with the first
> -.I "errbuf_size \- 1"
> -characters of the error message and a terminating null byte (\[aq]\e0\=
[aq]).


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------cACR3dtVRRP5nyaUzhwRRkED--

--------------UpTDohxZNSLLsQKmlZeozhPL
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBbV8ACgkQnowa+77/
2zJ+Yw//es7XrJXSoYGUu3C0e8vWg/OFKKi3z9ZYbQmaoVBO778ylwYfDB3b2n4S
SivJEqjwAqvT2/xtlCI2H7oWBs+K/fwe65PSfoVQCfeJEtqDKOsGgHQfhI5jlpFs
qDgxTEN+r2D1OLbYgryKozu50CTWBdmEbWz92mrkkhHNswq6B7d+KrYMYO2cG+dp
K+SVzyMrkc/W7LvYrhnQ3DDmTeC/CodPsH0bDNHvC7LrUeSa9qKznNv/DKU+aDAj
KxLFM3oj/6isRoGIy111quk13VDr3ufp8ZI+9G53lUaefuRbMKUIjSXUlXK3F9y7
KaRlJDA1o0pTU2KLUHbYoenBVko0qs9MyG7mJPzlQovhUCockpWLIIDLrXFlv7Ph
8y5d0w/dOUgdUP5cNdHF0DNGHdMDjGWQS0MJylnXBm0X3v4Qx5ml/5xTc96Jjqiy
B9IALGJG56h5a/hBVFGOEfHjcKjGPHjk5bZ/jxfM7g7cCtPhetIEinW4bHSpzZfr
hMkifRClH2aHpPcxX8IdNWY4Kdytvx756c1qXozgAJcC4XVLg3zwzoxZrkxIkuRH
AVe8fvREL2WhmAWYIYE5zVgaLrSELjikGHeAcVVU5dG8+HzdkxY6amIVsdgQ5LIt
SaJ4K6vtLcSJxL6MNN2aMZ62uRX3PEN1tE2IEgAcYFObtnKY5XE=
=oAfb
-----END PGP SIGNATURE-----

--------------UpTDohxZNSLLsQKmlZeozhPL--
