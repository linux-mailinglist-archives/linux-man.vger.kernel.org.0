Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F19C6D3524
	for <lists+linux-man@lfdr.de>; Sun,  2 Apr 2023 03:22:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229469AbjDBBWK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Apr 2023 21:22:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbjDBBWJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Apr 2023 21:22:09 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FC70191F6
        for <linux-man@vger.kernel.org>; Sat,  1 Apr 2023 18:22:07 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id r29so25897387wra.13
        for <linux-man@vger.kernel.org>; Sat, 01 Apr 2023 18:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680398526; x=1682990526;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=neSbXsm8jsLkfoeisoD3x0U0q0QWpwYlFfcr0kj7PBk=;
        b=VGiT2SypbcpLS42DNe7Cfsn94qPRaMx8F0oz31n+CUyo2Xix72788mfOol66/v1hUi
         sSJZzwXXAAkLayxcB1WoIA2zkJCtJT/KkRLZvhTVkK4bRAq/iLbOqiUdy0ulWlFuAlwR
         o8mmXsC5m5S0dCmSvPQT/ulSPNaxAHOZPxOhae4gvX+fNrjP5sf29TahHMLlh7oiAiJI
         jSmaaod6prpman9mqwPMKy55HpVCoYR0/JWgQcD36+6aP/1zrfSg7P2xd3k5wEOzAqsr
         kH2LIUfV3ptXglGM5PTgDUP0hk42bYb/+jdIj42chTEbhRwrMnNuK8/WCS78/wvwRP+p
         ZaRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680398526; x=1682990526;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=neSbXsm8jsLkfoeisoD3x0U0q0QWpwYlFfcr0kj7PBk=;
        b=OlgA4SfgNAz3booNe/slMHiK7qYp0iztlk3SCQ8KRChoNmTtB5fhuLRq6pJyuP//oj
         KgDjcIwDKnqrn4rL8QZAqgAn5Z0ui7KHeaNAE3RLqt7vRCpgX2iKvoxVmV/hJa9JGtP3
         Ywyqzfuxn+kjpxMz+nORIDbGR8fcgNzMgPOHp4F/o9Lr22Oc33j5NM4TuD56HZkAH0O5
         H2TZhX71WnUFpk6aPRKxJsFP8UQeDRihr5QBUI5EvGMiny0MoLKmQGQFrO/zGnhztSsf
         ndG5m/YLeXs7hxA6/iVe2/5CiZCs7POyDJXvMLc/rn8qFU3Dxs5wjJXSTZjTeIk74YFy
         1coQ==
X-Gm-Message-State: AAQBX9e+rzibNzYKOygwgn1q/C9MJVU3uvzuYt3Cq96VACXEcdGXKRyp
        g5rzyHMLaHZepT+HXLhUxbVYIMNtQUw=
X-Google-Smtp-Source: AKy350azOtMnSIznYPgRWXd1nJvhQe68Nq9NZtrr/o+U1WHik2Xa/TLrDr4gGeyK85FxCQdxxk9vNg==
X-Received: by 2002:adf:e388:0:b0:2cf:7271:6954 with SMTP id e8-20020adfe388000000b002cf72716954mr24046197wrm.11.1680398526000;
        Sat, 01 Apr 2023 18:22:06 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id p8-20020a5d68c8000000b002c55521903bsm6077153wrw.51.2023.04.01.18.22.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Apr 2023 18:22:05 -0700 (PDT)
Message-ID: <d3d98ac0-735f-c5bc-c060-2cd510271c0c@gmail.com>
Date:   Sun, 2 Apr 2023 03:21:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v5 3/3] landlock.7: Explain the best-effort fallback
 mechanism in the example
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc:     =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20230324172419.117632-1-gnoack3000@gmail.com>
 <20230324172419.117632-3-gnoack3000@gmail.com>
 <a5daa228-284e-12d3-cd5b-28611830e21b@gmail.com>
 <20230401.1316d7f843d7@gnoack.org>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230401.1316d7f843d7@gnoack.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1SfXxlkEN0Cz9B8LNC8Kcp8d"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------1SfXxlkEN0Cz9B8LNC8Kcp8d
Content-Type: multipart/mixed; boundary="------------09SJ0YG4J0D5Rh0o2kK7NgKH";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
 Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <d3d98ac0-735f-c5bc-c060-2cd510271c0c@gmail.com>
Subject: Re: [PATCH v5 3/3] landlock.7: Explain the best-effort fallback
 mechanism in the example
References: <20230324172419.117632-1-gnoack3000@gmail.com>
 <20230324172419.117632-3-gnoack3000@gmail.com>
 <a5daa228-284e-12d3-cd5b-28611830e21b@gmail.com>
 <20230401.1316d7f843d7@gnoack.org>
In-Reply-To: <20230401.1316d7f843d7@gnoack.org>

--------------09SJ0YG4J0D5Rh0o2kK7NgKH
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4/1/23 19:19, G=C3=BCnther Noack wrote:
> Hello Alejandro!
>=20
> On Sat, Apr 01, 2023 at 12:29:35AM +0200, Alejandro Colomar wrote:
>> Hi G=C3=BCnther,
>>
[...]

>>> +.PP
>>> +If our program needed to create hard links or rename files between d=
ifferent directories
>>
>> Please keep lines below 80 columns.  Break lines at phrase
>> boundaries as appropriate (e.g., in this line:)
>>
>> s/ or /\nor /
>=20
> Thanks, applied.  Will be fixed in the next patch version.
>=20
>=20
>>> +.RB ( LANDLOCK_ACCESS_FS_REFER ),
>>> +we would require the following change to the backwards compatibility=
 logic:
>>> +Directory reparenting is not possible in a process restricted with L=
andlock ABI version 1.
>=20
> Fixed it on this line too.

BTW, I forgot to tell you that you can check this yourself in future
man-pages patches following the ./CONTRIBUTING file instructions for
linting and checking patches.  You might find this useful.  See:


<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIB=
UTING#n132>
   Lint & check
       If you plan to patch a manual page, consider running the linters a=
nd
       checks configured in the build system, to make sure your change do=
esn't
       add new warnings.  However, you might still get warnings that are =
not
       your fault.  To minimize that, do the following steps:

       (1)  First use make(1)'s -t option, so that make(1) knows that it =
only
            needs to lint & check again pages that you will touch.

                $ make -t lint check >/dev/null

       (2)  Run make(1) again, asking it to imagine that the page wou'll
            modify has been touched, to see which warnings you'll still s=
ee
            from that page that are not your fault.

                $ # replace 'man2/membarrier.2' by the page you'll modify=

                $ make -W man2/membarrier.2 -k lint check

       (3)  Apply your changes, and then run make(1) again.  You can igno=
re
            warnings that you saw in step (2), but if you see any new one=
s,
            please fix them if you know how, or at least note them in you=
r
            patch email.

                $ vi man2/membarrier.2  # do your work
                $ make -k lint check

       See <INSTALL> for a list of dependencies that this feature require=
s.
       If you can't meet them all, don't worry; it will still run the lin=
ters
       and checks that you have available.


>=20
> Thank you for the review and for applying the two earlier patches!
> =E2=80=93G=C3=BCnther

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------09SJ0YG4J0D5Rh0o2kK7NgKH--

--------------1SfXxlkEN0Cz9B8LNC8Kcp8d
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQo2LQACgkQnowa+77/
2zIxrQ/+KmnXG112UnTuPmuLV9/t/nbnKjR4t55BsqoBM44H4IIGp55rGaLGyY3B
yWGvTn9L//f6pCQHCjXhYqjJnYT7TVzeBbFqUc3RaI22jZF+5i50aT8GiBexeiie
Rs74LR4arxVENiHmba4VjQaHshh5Ea0UDGc+628tI8vrlBdP9H6p6/21PGZKouSz
FOeCaHWOLciboA+giMwgUDIeQeFU5jxTMkdIh82MeqKHrvb9P0/Z3YZSgk5jNpUt
w0+/cE9krvB+osITr5qkBhKuwiRSioomqzECi/WZGHplC9e3o2kw39y7p2t3R+Ld
cjAzsJ7iiZASpOkgmJJXfBLX7xepxN2ykMn9uBPrvN6akNQDkfBzDKtVvC9oHXhh
Nz7SOH/j8oJfUQcd6MQ+bOAYAtT4eyNBBwHNaMGYifemChVIuyphCcb8WY/3CObT
XzCwGON2vKmkG7JCF2LFtOlL8z3QTXnjvG3JEh1hQOjJKgt5750mAIHCDF86JON7
GBS2rXJC0Iu02h2PH2SXfqRMtS7TryVvR6t8uxG1O9qcPDG0KZ8BYDeOfA1CJk+8
vW5A4gCwVVNmKxcCjcgy6+mA+VS3S6A1WY3IjbZzMJ54jDINgHhAdizeRQkdYMtq
5oWhHi19iHTFcxzo9o6iHHtG9idhKKFRlcD5Et7nsJH5Huzxb0w=
=vAvb
-----END PGP SIGNATURE-----

--------------1SfXxlkEN0Cz9B8LNC8Kcp8d--
