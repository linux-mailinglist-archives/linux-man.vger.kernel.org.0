Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B6CD6D2A73
	for <lists+linux-man@lfdr.de>; Fri, 31 Mar 2023 23:56:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233366AbjCaV4s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 17:56:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233258AbjCaV4q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 17:56:46 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A04524ACB
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 14:56:07 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id v1so23817649wrv.1
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 14:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680299765; x=1682891765;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tN7T6sbTgbNwypyI3Nm6NYgNswWhYu81SUG4q93Nx+8=;
        b=Gf34XvRlxntK/bs0a5WbBfTnf2TFiSm7Snxo9WUlQAjW9Jp4/ceiEmm0Zrnxxy7JY9
         ySVpa/YwgR4zsBGiqjuJgIXdjvQY5TGmraA8d2RK6ZED3UXnf/wUAMnokFUlKo/B/3tZ
         RXUGLi+N76EznufGMeJWUcTyV2EDv9jv8Au++x7/I9Syzt5z89A0Bx2qBSw9kEGqRrGj
         rOE/0MpzPP2Ny4K0gTcwnI4dbGZEgee5OGHLWQPHhdGxM3crQvGBJjFtN1EagofQqzym
         UzyFZHybTHqDhTQ5Arx3zuf7/btodFoCNFORtY62cuPCh6w5t0t8j5uEyJa85S8ZjjDf
         eiHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680299765; x=1682891765;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tN7T6sbTgbNwypyI3Nm6NYgNswWhYu81SUG4q93Nx+8=;
        b=H2jTbleKBKqRRz/oWOVuge5yb2JMSHdzfZ+mRjORUqqzGW8J7jQcUhzasDZ6+YkQm7
         wpUmXP/xiRqzLX43PYPiroY7KwvLuNz7VoIziWbpS1y7LBbx0sTgi36lKR1tnTbCW72U
         m+LyyiZSOAQHAdioBmvJKhXJZPAUUeROb1utoUZu6Dh3PrsjbR4tI4YQGilUz399NEkn
         g3RSW8yDuENgYN7kOriF/G7gUIMcQqEP+o3Sp+x7+AsAh9tl954WDD+OBmemcnTZlic1
         HIjhLLv0KBidDpja3qafsqKHXSXNqzQ8bYf/d8AU4oCuAXgDYaTKQhDUkOhpjAvvlbYF
         J99g==
X-Gm-Message-State: AAQBX9dh+tIhTI0763RR4eQq6FNzSxd3SQxtFyPfI0h1rfo06XTk29aY
        iI8Qc1KtCuyi8V0dZ2aAqxVvD6jsc+Y=
X-Google-Smtp-Source: AKy350a5ZjlIkI29yu1mW84AaSncQeokgkZ0TuLMpXfWyYvtGHBUKZGm6ooovNj40XiblYSJsdNT0w==
X-Received: by 2002:adf:ce02:0:b0:2c7:cdf:e548 with SMTP id p2-20020adfce02000000b002c70cdfe548mr22423787wrn.71.1680299765223;
        Fri, 31 Mar 2023 14:56:05 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id f9-20020adff989000000b002c71dd1109fsm3195077wrr.47.2023.03.31.14.56.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 14:56:04 -0700 (PDT)
Message-ID: <0219f97b-f28e-18f0-3451-87ee00f851aa@gmail.com>
Date:   Fri, 31 Mar 2023 23:56:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCHv2] feature_test_macros.7: document clang fortify support
Content-Language: en-US
To:     Mingye Wang <arthur200126@gmail.com>
Cc:     linux-man@vger.kernel.org, Sam James <sam@gentoo.org>,
        Erik Pilkington <erik.pilkington@gmail.com>
References: <CAD66C+aECcWHSogwDygQnHOvDCayHbH2emKrsUhVxkg48KzXfA@mail.gmail.com>
 <6c5593f5-efc0-564d-83fa-430328b31231@gmail.com>
 <CAD66C+Y_b_9j1Oty=kbt2jZywzdVOen4i31ndhqyTTCRp=-xTg@mail.gmail.com>
 <5858fd32-aced-7f87-a1c2-2b92c002e4d3@gmail.com>
 <CAD66C+bWn5Vm3gKa=ygvqyAkELpdCz82huqMk6FJG2Z87B0=Fw@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAD66C+bWn5Vm3gKa=ygvqyAkELpdCz82huqMk6FJG2Z87B0=Fw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0ECd0OvA6VULcXpEdCELOVvs"
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
--------------0ECd0OvA6VULcXpEdCELOVvs
Content-Type: multipart/mixed; boundary="------------Xc9SjKhn0E6n903e8ecHLcQn";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man@vger.kernel.org, Sam James <sam@gentoo.org>,
 Erik Pilkington <erik.pilkington@gmail.com>
Message-ID: <0219f97b-f28e-18f0-3451-87ee00f851aa@gmail.com>
Subject: Re: [PATCHv2] feature_test_macros.7: document clang fortify support
References: <CAD66C+aECcWHSogwDygQnHOvDCayHbH2emKrsUhVxkg48KzXfA@mail.gmail.com>
 <6c5593f5-efc0-564d-83fa-430328b31231@gmail.com>
 <CAD66C+Y_b_9j1Oty=kbt2jZywzdVOen4i31ndhqyTTCRp=-xTg@mail.gmail.com>
 <5858fd32-aced-7f87-a1c2-2b92c002e4d3@gmail.com>
 <CAD66C+bWn5Vm3gKa=ygvqyAkELpdCz82huqMk6FJG2Z87B0=Fw@mail.gmail.com>
In-Reply-To: <CAD66C+bWn5Vm3gKa=ygvqyAkELpdCz82huqMk6FJG2Z87B0=Fw@mail.gmail.com>

--------------Xc9SjKhn0E6n903e8ecHLcQn
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Mingye,

On 3/24/23 07:07, Mingye Wang wrote:
> Hi Alex,
>=20
> Attached is the revised patch.
>=20
>> That means, unformatted GCC 4.0 and Clang 2.6.
>=20
> I've done that in the new version, but there are still a lot of ".BR
> gcc (1)" in my version
> of the tree from other pages. Are these to be changed in the future?

If it's just a reference to the software, that is fine.  If it's a
reference to the version, then I want it to be greppable.

Cheers,
Alex

>=20
> Best,
> Mingye

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Xc9SjKhn0E6n903e8ecHLcQn--

--------------0ECd0OvA6VULcXpEdCELOVvs
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQnVvMACgkQnowa+77/
2zKf9w/+PhGUI3YQsEyzetnVCX9yUaAz0fm6PIFuU5a9XikTpsv9OZdltgwRaAFY
OSYaS6kP/45SkPfqBaao/kZFBnD7ey+yntPEnxyZ2s7lNuJLkoQMNd79v7ZpnE8X
nIVkmHFqsPu0T+xW0nGVPaute1vjeceM8PjWHFBD2i6hXmpeVh7rOiHzaqoKTqSK
LfVjHYMlThb03jc481xqSSnMJLFtmaDOXbzcUvOht+ePyvgOSgB9aDoHgmWsj0Kh
IolkBseTnh5n9G/fR6JquOuzZpNexRCQa+wf10S2woFj5W7EizejpudUKYSjVuz3
5qPefemh5BPcReXAHKEJQ7QROhX80vo7XngQ0ViwzFZAcbkhXSE8E9nIT/Bfa5Em
d6gk8El6PrfrcD24j7XUQ00t4F/uSoato/7zAWzQKkJw9eSawN8a9wUAoBWrF3Ez
PUE61kDakKuLAEdTrMPuS7sDo9JqZbvG/jYEYY65hCrS7XgDG8gcA7OHdyIeHF1t
svqcWgOx/f0V7ot9i3oFo363n00sd2Z47oVTovRmlu/8arPV/yccfwD4g22uwZV3
mA9WOlGn/PQdgBdgtM3nmHoLEsaGUf1MvHfUjN0vrGjBpjQ9QaCxix29N39Oy9jW
PdV3z+7xOkwfH5sIjLVdg+ROlOjaWnHmOlzopIw4q1bonG2rC6w=
=yaTo
-----END PGP SIGNATURE-----

--------------0ECd0OvA6VULcXpEdCELOVvs--
