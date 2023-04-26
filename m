Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBE7E6EFCB1
	for <lists+linux-man@lfdr.de>; Wed, 26 Apr 2023 23:58:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233428AbjDZV6M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 26 Apr 2023 17:58:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232360AbjDZV6L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 26 Apr 2023 17:58:11 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24C1FEC
        for <linux-man@vger.kernel.org>; Wed, 26 Apr 2023 14:58:10 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3f315712406so2105935e9.0
        for <linux-man@vger.kernel.org>; Wed, 26 Apr 2023 14:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682546288; x=1685138288;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pYnY/MexxoMIDNQpV6zEUxVKZGkhVc41lDvwcic/URA=;
        b=UFSA/GtIHNpoujD4AXH74VKPhN7MQykUPWKpIswLMsUFL3rKzXNnTRwKlc8XC2PCTi
         i6oAvnmNCt8BBpaXcgMjH8jsxiJIclq89DmLAdhjRd7BwU/i9EGmB8tp3FYhnxGDTSe0
         7HMQCGBWOdWgJbjOxPfbin8RiTVRQ8+5b2oTtBZA5FhWUt/jQxJE6u+7ERhy2msaM8SJ
         NFNtsY1srYipzk0X+Hwr+Egexu4nacBU6JH48b1oRqpa1fLb5xklTEy9TjuY1+bPVHX5
         tbxJrRQOqw8Xp+mH+5tbixqzRGUL6oQJlt9dSAW4RQ9/97XOR3hzdq5vz9fm6gBDTnOg
         KHVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682546288; x=1685138288;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pYnY/MexxoMIDNQpV6zEUxVKZGkhVc41lDvwcic/URA=;
        b=ElQCiRWWthgrF87CCpP5zI+c1syu3XF5Q05/18c37iLcZHRoUFrFXG+QqaL3OAumcv
         pnxnaoVyQvDbjtPvTL06hs6q+QjFO9MfNskyOwh/YlZK6jRAjuTLmHY6KwE8dZ1lkB2x
         2Fq2bOqlMDXbhLVWtK+Utyi8bH/8GXltUiqCrexr8EUsWK4dcDD7FPytOGVMg4fwvGoZ
         td/DpagIQI0pxIdcukv71sHmX3UUjhUAa0VIoT5UyluHE6m+AGtS5EQCS9JJKfKOU0PJ
         kV/B11p0FuaX2LH8d9/YQqCnjNwyZy4mXDsYYokrL35dcjBXfpBK62ExbzHWUzCq2kKw
         mWpg==
X-Gm-Message-State: AC+VfDzvL/JPnKOtaPejOJn5TN7MlJlA+p7IW8UJIA9LxHuZMHElObGq
        xLXkZ4Obz0/hhwIm8QQKGobtZssog3s=
X-Google-Smtp-Source: ACHHUZ4q5iEVqR0IV+N55zN/txHQNfHXqEXeBJ74tGNXSZ43qNL0Vs9rrmR7/b3++mMX2YucQThRbQ==
X-Received: by 2002:adf:f4c6:0:b0:2fb:4680:1b59 with SMTP id h6-20020adff4c6000000b002fb46801b59mr2950469wrp.31.1682546288124;
        Wed, 26 Apr 2023 14:58:08 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id x2-20020a5d60c2000000b002de9a0b0a20sm16710586wrt.113.2023.04.26.14.58.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Apr 2023 14:58:07 -0700 (PDT)
Message-ID: <2001aa5d-56b1-efa3-0b4b-8376ba1eb769@gmail.com>
Date:   Wed, 26 Apr 2023 23:58:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: proctological linter warnings on groff's man pages (was: mdoc(7):
 CHECKSTYLE)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>,
        Jakub Wilk <jwilk@jwilk.net>, Marcos Fouces <marcos@debian.org>
References: <d9b111c2-1ebe-e697-34c5-a7f01445568b@gmail.com>
 <20230422200547.jlc2cfvbyatzlpjv@illithid>
 <49b9b4b1-5500-e2b8-b20c-dfafa46a1e3f@gmail.com>
 <20230424053116.asfy4hz3da7hs23k@illithid>
 <cb3f3ddb-2ed5-192f-b373-7b1378cc66fa@gmail.com>
 <20230426090658.oboomd2tmmoyba6x@illithid>
 <27f9be9f-66c9-49ab-ad4b-f73da3e729ba@gmail.com>
In-Reply-To: <27f9be9f-66c9-49ab-ad4b-f73da3e729ba@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------fuDBM7cSl0jgf5A0zn0oBBFW"
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------fuDBM7cSl0jgf5A0zn0oBBFW
Content-Type: multipart/mixed; boundary="------------oHFCWZCvR2rc0InsynGgP78T";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>,
 Jakub Wilk <jwilk@jwilk.net>, Marcos Fouces <marcos@debian.org>
Message-ID: <2001aa5d-56b1-efa3-0b4b-8376ba1eb769@gmail.com>
Subject: Re: proctological linter warnings on groff's man pages (was: mdoc(7):
 CHECKSTYLE)
References: <d9b111c2-1ebe-e697-34c5-a7f01445568b@gmail.com>
 <20230422200547.jlc2cfvbyatzlpjv@illithid>
 <49b9b4b1-5500-e2b8-b20c-dfafa46a1e3f@gmail.com>
 <20230424053116.asfy4hz3da7hs23k@illithid>
 <cb3f3ddb-2ed5-192f-b373-7b1378cc66fa@gmail.com>
 <20230426090658.oboomd2tmmoyba6x@illithid>
 <27f9be9f-66c9-49ab-ad4b-f73da3e729ba@gmail.com>
In-Reply-To: <27f9be9f-66c9-49ab-ad4b-f73da3e729ba@gmail.com>

--------------oHFCWZCvR2rc0InsynGgP78T
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 4/26/23 11:44, Alejandro Colomar wrote:
> Hi Branden,
>=20
> On 4/26/23 11:06, G. Branden Robinson wrote:
>> Hi Alex,
>>
>> At 2023-04-24T19:11:58+0200, Alex Colomar wrote:
>>>> At 2023-04-23T16:17:06+0200, Alejandro Colomar wrote:
>>>>> I got some errors from mdoc(7), which were probably due to the
>>>>> LANDMINE
>>>>> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/e=
tc/groff/tmac/checkstyle.tmac>.
>>>>> Why is that file problematic with mdoc(7)?
>> [...]
>>> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/etc=
/groff/tmac/checkstyle.tmac?id=3D55bdf08d6d7f56280fe472902331c735bb7492f9=
>
>>
>> It's not obvious to me why that macro file would cause any problems.
>=20
> You could try if you're curious; since I already removed groff's
> pages from my build system, I'd have to repeat the setup.  If you
> want me to do it, I can.  Otherwise, I already removed that file
> from the Linux man-pages, so we can just ignore this, if you're not
> curious enough.
>=20

I can't reproduce it.  It might be due to running 1.22.4 (but that
being from the 23rd or April, something doesn't really fit in my head).

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------oHFCWZCvR2rc0InsynGgP78T--

--------------fuDBM7cSl0jgf5A0zn0oBBFW
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRJnm4ACgkQnowa+77/
2zLf4g//aY8lkkqHOffnm4Y2H7Uw8REQpz4qKbhWm7D5Ffxeyr7zTUb1HH4wsqa1
n9RjtomBwSqrrFgUt4CoRIKYRYyjgIVytpI5XEMTGqIfvS8EKmBEBtSLsQ5ho3Jk
UZLYA9u23VL4uwd+zh6xKMQzLi5uAXVWVn0Vbu5Spde6CT4kaRM3Z9ol7y9eBBMz
2igbheWi5AWZeAdk7UEr61cGEZ/jnVv+OxKiIKfuXsg+CM2BfOwr3RYitIgwqIdq
+1BCU+Oj1eHHm4UqEt7O7VJVcFq93of/andL4wun4OON8TCk4xoLBujNcqJYKfFY
FXIxSo7LOgHqTKEEr+WhmLNbHRVOmryysTXI2z2xPsynUZXGHOv8FV5XjhiKdyaC
k0sIblCoIFzPiI422Y0GNF+gBur+zHwLx/F97voqwpfzgC3WiMr4A5tUUuzkiJOl
apQYcmUVNqiCblsThr4lamj4iJWhFEnjyCNg2NA2wUQag+4FyV4wTb7DEXK6+uFM
kZC/nC3GIFHhvbXRrDBfNY5tVdsRfQdcVWqI4yQlT2gVEIGl7fs9+v+MGmkpDI82
3Lr2fFcfYfThn7iddkQRalhMc8RK0iOj4swUQIknJymuzw9oyvkKog6VGCKuCbwU
MjLYa7Wslrq8uqbG5oIt2pfsKI/ufPcf/Ti8GQd4MXemfzfD+Fk=
=epmH
-----END PGP SIGNATURE-----

--------------fuDBM7cSl0jgf5A0zn0oBBFW--
