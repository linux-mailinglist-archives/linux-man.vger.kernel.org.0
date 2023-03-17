Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 434BB6BF4A5
	for <lists+linux-man@lfdr.de>; Fri, 17 Mar 2023 22:52:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231160AbjCQVwk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Mar 2023 17:52:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230419AbjCQVwh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Mar 2023 17:52:37 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9EE9974B1
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 14:52:06 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id y15so8131246lfa.7
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 14:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679089919;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YGV54XeL2eC9yLInsJA7ltbtprPyxSj8wyVds43FHWw=;
        b=TYb+q51Vo6oVtbUay4voSLhS5EYubRN1Rc2r3TgckOJEsEuFyGOKH7MI3Vkdixw2WD
         kaCdXksEgxxdZzq+k++RZsadjcEKt/5EPfcdvaQBkPcpG55VHrskEnuBC8X0agQcn68X
         grrLXVDROHMv724W5jBIDKy8eJgDtcfzHMK4wXo566Hx4aSlhw8E3WZIKdHeBnfVPp3O
         QUcmrioqXidAfVyWm0x+ygm8WPA2EanFb3brfyABoqkCogQy7Q1roa9ZRdU/B6Cd+ubR
         /+kU3zpPKYQOcINOkb1tsPcDk9d1zPUkcsjS+chakLgzUwpB3htsQkyS1Z7vbmaT8how
         1MXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679089919;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YGV54XeL2eC9yLInsJA7ltbtprPyxSj8wyVds43FHWw=;
        b=ddJ2xFqo+LxE4wFkJ0YzSVKqNSi7WZN/yCQvf2qDmcRP8ykBBPqkJocvB12wE2VudN
         S2Lp7IyaFxxHQoVBIifyz81i5exw9lWlcgUQNlOQitV77rOKkHUMiJ/6wqcFc+pw7TNX
         nnHQyHZdXskPSlT331XTQJg/k19WuA4AdxWPXpec4M09QaVcuRXHUT3qljS0xzQkDjyo
         uuJLJrb6xmjGQHIhkaLhPFzGjYIq04xyUxPW3rgLKcGXqNw8ZyAA0LokK0bybUV8wVpj
         iTZT9M6X2TfS11jla1u87zY9SKYaJsLGcYERMOork2EZ9dWzCRU7p5ojAXwchV6QvZNx
         xNKw==
X-Gm-Message-State: AO0yUKUMSuXMEo3zOFg6yP3I8lql5IjI6YYzfTAYzIv69Xxxv2CBXHr3
        ve8mFPLwBEqp32TcYTr2QJjiGigGymc=
X-Google-Smtp-Source: AK7set9BMeMkDuua4ejwrw8gzeUc1as8fPWqjgz7z8GgL2Z86ydzRP29kK0ZO/Gxf0SKhZR2a3efJg==
X-Received: by 2002:a05:600c:a0a:b0:3eb:2e1e:beae with SMTP id z10-20020a05600c0a0a00b003eb2e1ebeaemr27049673wmp.25.1679089488670;
        Fri, 17 Mar 2023 14:44:48 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id o4-20020a05600c378400b003ed4e078c92sm3053493wmr.11.2023.03.17.14.44.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 14:44:48 -0700 (PDT)
Message-ID: <ac3fe3a5-7dbe-8d08-36db-302b42e0605e@gmail.com>
Date:   Fri, 17 Mar 2023 22:44:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] arc4random.3: New page documenting the arc4random(3)
 family of functions
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        libc-alpha@sourceware.org, "Jason A. Donenfeld" <Jason@zx2c4.com>,
        Ingo Schwarze <schwarze@usta.de>
References: <20230101162627.28031-1-alx@kernel.org>
 <fd5ee7bd-f4a6-52a6-2f69-7c3547e549c6@gmail.com>
 <20230317213149.cp6nx6fhrmq56msv@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230317213149.cp6nx6fhrmq56msv@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------MXt29AbkL3AHJm0d6edUDH3P"
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
--------------MXt29AbkL3AHJm0d6edUDH3P
Content-Type: multipart/mixed; boundary="------------pTCoLb0IZPpcD6omaQOgyhnT";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 libc-alpha@sourceware.org, "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Ingo Schwarze <schwarze@usta.de>
Message-ID: <ac3fe3a5-7dbe-8d08-36db-302b42e0605e@gmail.com>
Subject: Re: [PATCH] arc4random.3: New page documenting the arc4random(3)
 family of functions
References: <20230101162627.28031-1-alx@kernel.org>
 <fd5ee7bd-f4a6-52a6-2f69-7c3547e549c6@gmail.com>
 <20230317213149.cp6nx6fhrmq56msv@jwilk.net>
In-Reply-To: <20230317213149.cp6nx6fhrmq56msv@jwilk.net>

--------------pTCoLb0IZPpcD6omaQOgyhnT
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jakub,

On 3/17/23 22:31, Jakub Wilk wrote:
> * Alejandro Colomar <alx.manpages@gmail.com>, 2023-01-01 17:27:
>> arc4random_uniform() returns a random number less than upper_bound for=
=20
>> valid input, or 0 when upper_bound is invalid.
>=20
> Is the "or 0 ..." thing part of the API?

Yes, it is part of the (undocumented) API.  At least, their authors
claim to have thought about it when designing it, and purposefully took
the decision of returning 0.  They fail to acknowledge that it's a bug,
also fail to acknowledge that their documentation doesn't document this
behavior, and don't have any intention of changing the API because
"we don't know what can possibly fail; you'd have to audit all software
in the world to confirm that none depends on that detail".

I have serious doubts that any software can depend on that, because
mathematically it doesn't make any sense, so algorithms will likely
have to purposefully special-case arc4random_uniform(0), but can't know
for sure, because well, I haven't audited all software in the world.

I didn't find any case in OpenBSD's source code that depends on that,
however.

> I could find anything like that=20
> in glibc docs or BSD man pages.

<https://inbox.sourceware.org/libc-alpha/20230101162627.28031-1-alx@kerne=
l.org/>

Their manual page is bogus, and the funny thing is that one of Theo's
arguments to reject a proposal to fix the bug in the API was that I
wouldn't be able to document it reasonably.  Well, as you saw, it's the
current behavior that isn't well documented, and I had to special-case
it in BUGS.

>=20
>> STANDARDS
>>       These nonstandard functions are present in several Unix systems.=

>=20
> That's not really helpful. Also, the VERSIONS section is missing ("ever=
y=20
> new interface should include a VERSIONS section").

I thought of that this morning, while doing some reorganization of that
section globally.  I'll add the version.

>=20
> In contrast, the libbsd man page is much more informative:
>=20
>> These functions first appeared in OpenBSD 2.1, FreeBSD 3.0, NetBSD=20
>> 1.6, and DragonFly 1.0.  The functions arc4random(), arc4random_buf() =

>> and arc4random_uniform() appeared in glibc 2.36.

Yup.  :)

Thanks a lot for this thorough review!

Alex

>>
>> The original version of this random number generator used the RC4 (als=
o=20
>> known as ARC4) algorithm.  In OpenBSD 5.5 it was replaced with the=20
>> ChaCha20 cipher, and it may be replaced again in the future as=20
>> cryptographic techniques advance.  A good mnemonic is =E2=80=9CA Repla=
cement=20
>> Call for Random=E2=80=9D.
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------pTCoLb0IZPpcD6omaQOgyhnT--

--------------MXt29AbkL3AHJm0d6edUDH3P
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQU30gACgkQnowa+77/
2zLhIA//fwZpnCbkk2AR5SEnLZZxnYqZe4gX/lfwYeIldl5I78m3BuhgQiqsSEVL
0jyGno7pLT2XQ5aVH8ek/DYUd1qgAeLWP0F3XFe3cx7M65AwBbvqjblkh2+H7EOV
HnumB0JtF1yMZ/LOLQv5SX0i4a0ET292+M5iEMn+GADwGtG1gBYLNucLlmAeW6zS
MpAoaWEJL9LZk83TcYlyeGi3MP2K/7vtKhTs+d54oHFdmO1F6lWwZ09nJFBHXNTE
Ab5cPHokF/CMKms/DdXmASlKrxbB4R02LyG7RsjANhcsjzEbI2f8Nl59U35Y4XGN
mDLpru6cwDTVjZ0RB3mAA4vRG6YxjieMcpFHToT1PNpYyyLb2t40lnTv+9MYjrl4
L0sLqdiko4fhoOSKb1dgm5rRVWyDvXYdGklb2jsd3QKwlKds+pKuYBaHTfzMbw0T
NcXR224ER0wk13kAXHqXVWT/QSfRqeVg27U2V9sBx5xUGdbMbVVqkQy0trzdwLVd
GcaK/kgie1o2KDiow9SMQ8WjjKOO1vOGw4mSxtOPlndkpZGmnffjHfM6qGjmSuAq
9jXNxFEXB8SAvYJiqCbQd63syyCdbsnuWfFuP/lmVrdMO6VwLmFDIrI90UpmyiYP
KcmY2XsSSgvQLqbzZuexZksoVP2ZpxpBxAoN2Btknv8trSwxF9c=
=sNRo
-----END PGP SIGNATURE-----

--------------MXt29AbkL3AHJm0d6edUDH3P--
