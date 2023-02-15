Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C6AE698183
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 18:01:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229958AbjBORBN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 12:01:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229946AbjBORBM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 12:01:12 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9264534303
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 09:01:08 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id by3so18538880wrb.10
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 09:01:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WgZmStt6NRlOUC+cuLi0AjYwgzx3BA99s4z5BLcoCXU=;
        b=BhNyjRVtpcTs80g6TtpJO3iSM9BbP555a7Hy//AUX8VEFwblACJ/RLt6FZWXgSsx1y
         i/y1hBB/an+VwXHDrS2IFhf2+WTl7fARzydINUDM7u7RC9BoeZVXZ9cyebxrk8SP46ns
         b3IeYAS0VcC/DphKs4ZzLodCCIe5bXgqfsA/ziy3M1SAZJDKHsDKurWulYoUjn96eJYb
         8rZ0OfslZZbH0lHqpPnXPUFHHBW4VApyVIB67lQsBoTErQ8YgPQo80MSFEnQQmoE0VgC
         q/GB+IXkHZ8bRF6r6WZzktBbJuPCAW3uFR+4jVO8qK1ORWBIM4knmonflIM3Vv1KyeXR
         kAaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WgZmStt6NRlOUC+cuLi0AjYwgzx3BA99s4z5BLcoCXU=;
        b=TewvC59fEu9wOIa6NDAOLgWfKIiF+zTnx2c3ORTzA+Hp0xl8HnTEdsUKH6Thz8u0HG
         nCeCpwWFL1uwWnUOaQQpYJ+DPIMvhLj2iQ8Jmt2USORBv5fsQGjMu+TCh6M2SNFQiXrT
         HcfZffq5N27qGfRSSsJbTa1Z0OIHTv1am5U0yUbR4J/+OMoqafRKM7+IBc2uQZ2la7TR
         EmtL1ly8u7cyhgSy3eoXN8HeYaOfv4TpiVtM+U/tcvDEnSvs9tvCzVujdouhjbISAN7c
         utq6e0z3iq4OjzUzuQv5W93qd+0C7bwwjIZb1E2t1tWD6gbT9RYy3D1ypxeCjVMsaiYj
         c0kA==
X-Gm-Message-State: AO0yUKWHKelJA6yqDGKKLGTnqTLKrtvrBuhYeeeMgNK1N65W5ZyncqYw
        281l/G5z5fmJ5tmKRna+qw4=
X-Google-Smtp-Source: AK7set/bbGjHMLc191TpAXewjbXMCrhsx0ll3wcufOVmEVN9qirpW2AAeIOsxAFS7Z4ZD2UfTchBGQ==
X-Received: by 2002:a05:6000:1152:b0:2c5:52f5:c63b with SMTP id d18-20020a056000115200b002c552f5c63bmr2399075wrx.11.1676480467023;
        Wed, 15 Feb 2023 09:01:07 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h18-20020a5d4312000000b002c54d970fd8sm11834593wrq.36.2023.02.15.09.01.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 09:01:06 -0800 (PST)
Message-ID: <aaf147aa-fbf3-c649-f98f-6ea341fbb7dc@gmail.com>
Date:   Wed, 15 Feb 2023 18:00:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] memcmp.3: wfix
Content-Language: en-US
To:     Tom Schwindl <schwindl@posteo.de>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <20230215130750.30037-1-schwindl@posteo.de>
 <20230215151834.qorjvmvoqza2ddmr@illithid>
 <CQJ9NXF0GW79.O9TXGIQJ1PRK@morphine>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CQJ9NXF0GW79.O9TXGIQJ1PRK@morphine>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qO053XMZjpkcM0EeNWVnLU5T"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------qO053XMZjpkcM0EeNWVnLU5T
Content-Type: multipart/mixed; boundary="------------lwr1kuHLq0Z7YZejelVHGCkA";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Tom Schwindl <schwindl@posteo.de>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Message-ID: <aaf147aa-fbf3-c649-f98f-6ea341fbb7dc@gmail.com>
Subject: Re: [PATCH] memcmp.3: wfix
References: <20230215130750.30037-1-schwindl@posteo.de>
 <20230215151834.qorjvmvoqza2ddmr@illithid>
 <CQJ9NXF0GW79.O9TXGIQJ1PRK@morphine>
In-Reply-To: <CQJ9NXF0GW79.O9TXGIQJ1PRK@morphine>

--------------lwr1kuHLq0Z7YZejelVHGCkA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Tom,

On 2/15/23 17:11, Tom Schwindl wrote:
> On Wed Feb 15, 2023 at 4:18 PM CET, G. Branden Robinson wrote:
>> At 2023-02-15T13:07:50+0000, Tom Schwindl wrote:
>>> -On Linux, it may be necessary to implement such a function oneself.
>>> +On Linux, it may be necessary to implement such a function yourself.=

>>
>> The existing language is sound.  What is the motivation for the change=
?
>>
>> Regards,
>> Branden
>=20
> From a formal perspective it's probably fine. But as a reader, I think =
it sounds
> wrong. Or at least strange. That may be because I'm not a native speake=
r, but
> neither is the majority of the manpage readers.
> I simply think that "yourself" sounds better in this context. That's al=
so the
> reason for this patch. I've read the manpage and hesitated for a short =
moment
> which, for me, indicates a poor choice of words. A `grep -i -r oneself`=
 also
> only yields a single result, this manpage.

To me, the existing text reads fine.  Maybe it's because in my language
(Spanish), there's a similar expression for oneself, which may not exist
in other languages?

I'd keep it as it, unless I see more similar reports.  Anyway, thanks
for the report!

Cheers,

Alex
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------lwr1kuHLq0Z7YZejelVHGCkA--

--------------qO053XMZjpkcM0EeNWVnLU5T
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPtD8sACgkQnowa+77/
2zISKxAAiMCjHpPWNAOdu2NSwscDKQoS+kssZof7jbAzhb2lDxN2qERpayS6ckcj
LB3cbgUv+KfqGL2ARuCLpDBMHBp8O+Hht09uqsX9J/HoL1Slx5j/5CriJfrrC3De
YrW/69GEDno6xfDvuj5jEgp/1YearmBCb2ZYXwxjWlWWiwPx2T7DOc1xqcGyVG6P
8j6i1VFEO/8fiOIG85LruiiDUJjDJCXxAHxjQbHctEdlkrx7ZFrfBss7J4j0JKZl
fj+duvVsJW5hO19EyYji6iQ/71wmb1qBMQMkQUUEkAzzL6CKHkM9+WsPLwyFF2sM
oHFd6WIWLov9MSbHmKTX9DcxThzepkmJk8j5YuKnjvQL/Vy/0LI4xt0ST4ud28z0
SjiJ+5idvhmLJN9FPMlYu8ltseVwfmaa9i1Ncjpu5UEWoRgqM56itb4EUqMFx1cz
ZhJkC15TvpohvJmIUAys8s3z9vV/Yqh/nIgiOVgfMzt7aFqAnA2kn1NkBYB0+dsW
Hdo4VKY/JFj8tbcv3GgvID8MJjqJIhBjpDzPgr7GJVZ1AZIIWBKBXGpLxgjPUcBb
K7dKDqvjCR6HIdP1I41/cpWbKCwBhbSjmZK0EFgDv3FiXo/qELHiboWcQs/K76j4
6sfHg+W4Q4C0ZM8CHh5U8b9gLniPjel9yapC5M2mBXqRh643HXc=
=1STX
-----END PGP SIGNATURE-----

--------------qO053XMZjpkcM0EeNWVnLU5T--
