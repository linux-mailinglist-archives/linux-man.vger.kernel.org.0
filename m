Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 614806B32D0
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 01:35:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229453AbjCJAfb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 19:35:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229501AbjCJAf3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 19:35:29 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADD3AF6C59
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 16:35:28 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id t25-20020a1c7719000000b003eb052cc5ccso4893631wmi.4
        for <linux-man@vger.kernel.org>; Thu, 09 Mar 2023 16:35:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678408527;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SX5y0M2UEErbKs6SKvK2cApmLhhlljY6QboJXoVCqb8=;
        b=UCBqqSiDMRp0FY9kH/XHyrEiAdEmVrpw2ONq/EFz/00RnPuU6qnMw1ugfrQ9+Gh2dR
         WtXqdeq8PKGInLWSgkdpQzg77IBWLalB75YIVLagHFge7zGYsfs9OHEJGyCSF9DotyV+
         Kzv8L6fMFgLfAk60l9P53PoCN4RZECr3cmmFQADh6xZ1pHn/0KG149MhzsrqfXtf6XQs
         z5Y+pLgsMyteWl7cMIauzLqfPI6c9TKldXqbkM6irPfY8vpGn7ze5ELyadNSfR1lJuOs
         rKdNWxxaV2pw8GJb80SP6rpwbz8kgFtpF7AyM0042fNZOH3dX8uFiy5NwYjKJ0NwliVu
         R2Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678408527;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SX5y0M2UEErbKs6SKvK2cApmLhhlljY6QboJXoVCqb8=;
        b=SJjUSv3BpkTFU7QHPNJhCtax1ojYDcn4d8izglhD7PMHNYYjamkFuP+1CB+jXwCSf4
         V13vQIUfSQRwfeoJjNKB6x9rpDjh0jqga7/817wKd1m+N30RhqmeiCf2fnY2bSV3WkkF
         R8xgB8uB9u5f9xb/4GbD3+PIjUsJwKDauFkxYBDzDeF72tHplgJVRqEdrEYhIMyEFa9m
         h76riBbcvgbnGRIdDjTew32/la/tcV5BAEEgfY64s574OeQOGJTVJLStrvCLkJZ2M9w0
         +FaCCOyvy+hs9KOTMB6Jetybj0YQP7ZPcl4ZfUWm3EHWq2i6eNN9mQiKIgx/Hc9DyBRf
         gj+w==
X-Gm-Message-State: AO0yUKVdVxVA7/oQJbU19Pitr0ilt4mbtCUs3YLT6dtmmoXXNSHN6/4O
        cSWMSe5/dLLmukMEwZgTjlM=
X-Google-Smtp-Source: AK7set/BLmtwhDqRMcihibh0nnbDUZhmLOesFl/22KOpfdMHiAI4xuPelrP622vld5uvFUcOKHWWKA==
X-Received: by 2002:a05:600c:5104:b0:3ea:e4bb:4e9a with SMTP id o4-20020a05600c510400b003eae4bb4e9amr1014059wms.2.1678408527102;
        Thu, 09 Mar 2023 16:35:27 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id p23-20020a05600c205700b003eae73ee4a1sm442926wmg.17.2023.03.09.16.35.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Mar 2023 16:35:26 -0800 (PST)
Message-ID: <77cfc3d2-cd41-13a7-bdb9-ced179531f33@gmail.com>
Date:   Fri, 10 Mar 2023 01:35:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Issues in manpage memalign
Content-Language: en-US
To:     "Floyd, Paul" <pjfloyd@wanadoo.fr>,
        GNU C Library <libc-alpha@sourceware.org>
Cc:     linux-man@vger.kernel.org
References: <d79b505c-5b19-331c-5b25-d40adc9cc843@wanadoo.fr>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <d79b505c-5b19-331c-5b25-d40adc9cc843@wanadoo.fr>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------aAkhQqP2B5cp0CdYS2ZDsTom"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------aAkhQqP2B5cp0CdYS2ZDsTom
Content-Type: multipart/mixed; boundary="------------muob6CBi1FQCeEw7Id7Z0egJ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "Floyd, Paul" <pjfloyd@wanadoo.fr>,
 GNU C Library <libc-alpha@sourceware.org>
Cc: linux-man@vger.kernel.org
Message-ID: <77cfc3d2-cd41-13a7-bdb9-ced179531f33@gmail.com>
Subject: Re: Issues in manpage memalign
References: <d79b505c-5b19-331c-5b25-d40adc9cc843@wanadoo.fr>
In-Reply-To: <d79b505c-5b19-331c-5b25-d40adc9cc843@wanadoo.fr>

--------------muob6CBi1FQCeEw7Id7Z0egJ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On 3/7/23 23:24, Floyd, Paul wrote:
> Hi
>=20
> Quick bit of background. I'm a Valgrind maintainer and recently I've=20
> been working on getting Valgrind to work more like the underlying OS / =

> libc implementations of memalign, posix_memalign and aligned_alloc.
>=20
> There are several issues with the manpage for memalign and aligned allo=
c.
>=20
> quote:
>=20
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 The=C2=A0 obsolete=C2=A0 function=
=C2=A0 memalign()=C2=A0 allocates size bytes and=20
> returns a
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pointer to the allocated memory.=C2=
=A0 The memory address will be a=20
> multiple
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 of alignment, which must be a pow=
er of two.
>=20
> endquote:
>=20
> The power if two requirement is false for glibc which silently bumps up=
=20
> the alignment to the next power of two.
>=20
> quote:
>=20
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 The=C2=A0 function aligned_alloc(=
) is the same as memalign(), except=20
> for the
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 added restriction that size shoul=
d be a multiple of alignment.
>=20
> endquote:
>=20
> This is also false for glibc. In the glibc implementation weak aliases =

> are used so memalign and aligned_alloc call the same function.
>=20
> quote:
>=20
> ERRORS
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 EINVAL The alignment argument was=
 not a power of two, or was not=20
> a mul-
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 tiple of sizeof(void *).
>=20
> endquote:
>=20
> Both of the above only apply to posix_memalign and not to either=20
> memalign or aligned_alloc.
>=20
> There is a missing EINVAL description. If the alignment is so large tha=
t=20
> the allocation will not be possible to satisfy then the call will fail =

> and set errno to EINVAL.

I've CCd glibc, in case someone there can confirm in which direction they=

would like the manual page to go.

For now, I'll add a [[deprecated]] attribute in the Synopsis for the
obsolete functions.

Cheers,

Alex

>=20
>=20
> Regards
>=20
> Paul
>=20
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------muob6CBi1FQCeEw7Id7Z0egJ--

--------------aAkhQqP2B5cp0CdYS2ZDsTom
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQKe00ACgkQnowa+77/
2zLmeA//QhvSow/4QI74WNaYmfDV4ONQjWKOvvHta8bbMtG7MLV87ru07YeVP653
KNkDM9RoNwnP+6ATyWW1Qt6cgxSFiRU6/Gyrg1nP4U8v4d5OeY9g0+/M1GwgCuvR
Qid084pUF9TvFu1Ia3fCb9I9y0TS+4R+Jeljs0tXP4YZ4GDvHxXXPkwVl0GAzPZP
z78GOf7OdBevY7wK+n7E1JTbl2muQTX5m3FtkiHNTvhSLMZEH9JTVc67l48Z0tBs
ZBNLghulUd0ms/sK7Gv3dr0IzOmHESDWtz5bBwZcXM60i3mdYqUA1UZWjYDg0diM
dBN0DmI1dQ57VV/2nv6nWv6LtDXf0VaDZ8TA+M5YMrbG2Emr7cl+bOO+fciecdx0
G3KrnCns4McU3Vmolvab9l4ffmojKBfbjsd1Dlrv7lw5DsIBZgVIW1p0LKHeV4ts
3mAijfjHn3WSNyvCmkhCkP50P1SX7KTkdhNn/nQm5dSTnrHgISzcxlzI+AW1NLDK
bCQ251ZEc4lO9pm8e2DSKj7kzUtj6mFQNHl6tOkymKso/YckAGkQrwXQ+Y8Nj5su
MIcLQy+geIDRl+TYvb36EFAwT/XIAvAKkHboQWUYEMDQ+OdQvggbL6VqbxG13KoG
00wIX6UIqEGYtgzpdW76LC4qbrqRRhGNua4jrkH9Mve0D3M336o=
=A2vh
-----END PGP SIGNATURE-----

--------------aAkhQqP2B5cp0CdYS2ZDsTom--
