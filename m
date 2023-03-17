Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1687F6BF4BA
	for <lists+linux-man@lfdr.de>; Fri, 17 Mar 2023 22:55:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231160AbjCQVzO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Mar 2023 17:55:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230452AbjCQVzN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Mar 2023 17:55:13 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98E0BAF1F
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 14:54:41 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id v25so2172656wra.12
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 14:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679090077;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DJv+tr1+5s5VBWwyhaUdl3w2noWhHeO3UDecnTqn4/o=;
        b=aOn8csvrXXQ3agJEj8ltxIVsx49zSzjcB0ne3IKFWXhe0z26H5NpJfBO+K2Cls2wRZ
         znmxCDOP0K9e69nBgUWyGSLzGWVEKFmiOVN/XGvAf2zaI8f+qqUAb/R0G6m1iHnSDzoT
         scqajet8exBWK7oWG95V9UgppkYJzrOcNm/ecVubAAj0gTixMtLcYjOKCufVXQc8iFsO
         tYfo+G5MdFebDtI5pW2KFzw1P1utJqORnblJidVy4oEDKeprVEUpaNUlTbfYs2eNMnpJ
         oX6bSTjC1+srgHt6VJWfsjYPONUd1TztD2qDsMgThB0wURIs6kWayseiECzcmv1cwmFI
         H3dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679090077;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DJv+tr1+5s5VBWwyhaUdl3w2noWhHeO3UDecnTqn4/o=;
        b=OqFkMs2R5cds8zHPxu+nQNvgCk1W/U0PmnCwQki4y84zBSM2F6rq+AflVuB2EMa6Mk
         mjFN3wEm3/aYMA2KvYYVFg5ScrSrfHOaWR9fQxIGI2ozY4vFh9Z3tdUkr5/YGmegGkek
         oLm5LCdUVePSVN6QKSTcNU170/N/5miOK/28nQjnRvRJbY4MKqQLk7Ynvh86BKHaOGHC
         Q5Dvhlue5rbZ8AN/ubKpMOfPUxFY4IHPczyTohb+AL0pelsw+ccQBSQolUn7GRyDDjSq
         Q4UFE40QKJecbYAkfJISIuWIKkoGZMLQVhKfp34ZTEj/IgbvViig0SOU/NnaGNGVKWmf
         2qdA==
X-Gm-Message-State: AO0yUKUWO9JFzcVtJPz9Eyng+AjBC+MRYcLcxYQwY1lICC4/7sRK8qE5
        5PlyqikPOeMzGvc6LGbDre4=
X-Google-Smtp-Source: AK7set/ZmzotzGc0q+lu52L5KzQfpCKLnu8v9SLQxXkjAmDuY03ra205n2XX3VorkrzSnvRNVZn1vw==
X-Received: by 2002:a5d:6851:0:b0:2c7:c9e:2c41 with SMTP id o17-20020a5d6851000000b002c70c9e2c41mr7900237wrw.57.1679090077149;
        Fri, 17 Mar 2023 14:54:37 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id e11-20020a5d65cb000000b002c55de1c72bsm2859726wrw.62.2023.03.17.14.54.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 14:54:36 -0700 (PDT)
Message-ID: <4cf6ff2f-ba13-de9f-e407-72142b52aee2@gmail.com>
Date:   Fri, 17 Mar 2023 22:54:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] arc4random.3: New page documenting the arc4random(3)
 family of functions
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        libc-alpha@sourceware.org, "Jason A. Donenfeld" <Jason@zx2c4.com>,
        Ingo Schwarze <schwarze@usta.de>
References: <20230101162627.28031-1-alx@kernel.org>
 <fd5ee7bd-f4a6-52a6-2f69-7c3547e549c6@gmail.com>
 <20230317213149.cp6nx6fhrmq56msv@jwilk.net>
 <ac3fe3a5-7dbe-8d08-36db-302b42e0605e@gmail.com>
In-Reply-To: <ac3fe3a5-7dbe-8d08-36db-302b42e0605e@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5b57gnTSs3TwFYOhQkEcaiXJ"
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
--------------5b57gnTSs3TwFYOhQkEcaiXJ
Content-Type: multipart/mixed; boundary="------------psxCvLvv9uFPPFEtgjF0DXsG";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 libc-alpha@sourceware.org, "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Ingo Schwarze <schwarze@usta.de>
Message-ID: <4cf6ff2f-ba13-de9f-e407-72142b52aee2@gmail.com>
Subject: Re: [PATCH] arc4random.3: New page documenting the arc4random(3)
 family of functions
References: <20230101162627.28031-1-alx@kernel.org>
 <fd5ee7bd-f4a6-52a6-2f69-7c3547e549c6@gmail.com>
 <20230317213149.cp6nx6fhrmq56msv@jwilk.net>
 <ac3fe3a5-7dbe-8d08-36db-302b42e0605e@gmail.com>
In-Reply-To: <ac3fe3a5-7dbe-8d08-36db-302b42e0605e@gmail.com>

--------------psxCvLvv9uFPPFEtgjF0DXsG
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 3/17/23 22:44, Alejandro Colomar wrote:
> Hi Jakub,
>=20
> On 3/17/23 22:31, Jakub Wilk wrote:
>> * Alejandro Colomar <alx.manpages@gmail.com>, 2023-01-01 17:27:
>>> arc4random_uniform() returns a random number less than upper_bound fo=
r=20
>>> valid input, or 0 when upper_bound is invalid.
>>
>> Is the "or 0 ..." thing part of the API?
>=20
> Yes, it is part of the (undocumented) API.  At least, their authors
> claim to have thought about it when designing it, and purposefully took=

> the decision of returning 0.  They fail to acknowledge that it's a bug,=

> also fail to acknowledge that their documentation doesn't document this=

> behavior, and don't have any intention of changing the API because
> "we don't know what can possibly fail; you'd have to audit all software=

> in the world to confirm that none depends on that detail".
>=20
> I have serious doubts that any software can depend on that, because
> mathematically it doesn't make any sense, so algorithms will likely
> have to purposefully special-case arc4random_uniform(0), but can't know=

> for sure, because well, I haven't audited all software in the world.
>=20
> I didn't find any case in OpenBSD's source code that depends on that,
> however.
>=20
>> I could find anything like that=20
>> in glibc docs or BSD man pages.
>=20
> <https://inbox.sourceware.org/libc-alpha/20230101162627.28031-1-alx@ker=
nel.org/>

Sorry, I pasted the wrong link.  I wanted to paste this one:

<https://inbox.sourceware.org/libc-alpha/20221231023653.41877-1-alx@kerne=
l.org/T/>

>=20
> Their manual page is bogus, and the funny thing is that one of Theo's
> arguments to reject a proposal to fix the bug in the API was that I
> wouldn't be able to document it reasonably.  Well, as you saw, it's the=

> current behavior that isn't well documented, and I had to special-case
> it in BUGS.
>=20
>>
>>> STANDARDS
>>>       These nonstandard functions are present in several Unix systems=
=2E
>>
>> That's not really helpful. Also, the VERSIONS section is missing ("eve=
ry=20
>> new interface should include a VERSIONS section").
>=20
> I thought of that this morning, while doing some reorganization of that=

> section globally.  I'll add the version.
>=20
>>
>> In contrast, the libbsd man page is much more informative:
>>
>>> These functions first appeared in OpenBSD 2.1, FreeBSD 3.0, NetBSD=20
>>> 1.6, and DragonFly 1.0.  The functions arc4random(), arc4random_buf()=
=20
>>> and arc4random_uniform() appeared in glibc 2.36.
>=20
> Yup.  :)
>=20
> Thanks a lot for this thorough review!
>=20
> Alex
>=20
>>>
>>> The original version of this random number generator used the RC4 (al=
so=20
>>> known as ARC4) algorithm.  In OpenBSD 5.5 it was replaced with the=20
>>> ChaCha20 cipher, and it may be replaced again in the future as=20
>>> cryptographic techniques advance.  A good mnemonic is =E2=80=9CA Repl=
acement=20
>>> Call for Random=E2=80=9D.
>>
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------psxCvLvv9uFPPFEtgjF0DXsG--

--------------5b57gnTSs3TwFYOhQkEcaiXJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQU4ZsACgkQnowa+77/
2zLy5A//SsDqkbwD7106KKLKNYMzBoI0eBXkhkOzScQIpD2BYop/PNtG0h2078Er
/lykzthvr77hO4hJZNCvu+MdGz3JpCEAPNH5QrSA7eBFfNJtWlhAokzT0CTWPB3A
w5GGQi2b9zUOobppxZk6i9Q7Le8NNjjjCXVa7KGSXZOW3MZQ16GzYFyAhKNQP4JB
51MkCb8lTLGD0v3q6jXqdgiFFlu9DFudkVjZRVXYnqard2la/jbv3f3CL4RYIqxb
uLZcmNUSpvF1K9Dk0L+TUxIiPWLiXUAA48dqYvG0zg2lACNEqQVrPEVvPwP98nrI
LlQiDV1Y5Cn+v48gipa2S/Mna7Y8TT815zgWLKC4V73uC/A8Jz3gMeH0qMkojYgh
WPnQELj/c/rWULfkbQ4gRqKiwyjRa2WrXTSvN2H00V4s8il35L6JhdF7sV/47lvK
JidkPL26vzSFBUktLov+HZPYtFff2FeXlhF3toYlhhS8f15XJM3mIG48FzDehjRE
X4QwKO/Bjjbijxm3IHcGWioNeYvypA/BTYCmgeuDOw2PgaeYrqtqoeQngUoJjNkE
V93UrqX8epI2zasEfb/vde0hssk8iUS18NF9J1uYo7U8DB5fUPldXzh59fvLP07v
By9XYNOIsNFyMcNkO0aS1ukcB+mdwLyP+E6IM7pBOSazH+ExlPk=
=G1mG
-----END PGP SIGNATURE-----

--------------5b57gnTSs3TwFYOhQkEcaiXJ--
