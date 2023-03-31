Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 455DF6D2B8D
	for <lists+linux-man@lfdr.de>; Sat,  1 Apr 2023 00:58:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229994AbjCaW6g (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 18:58:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229988AbjCaW6f (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 18:58:35 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F0BA191FF
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 15:58:34 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id q19so20855058wrc.5
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 15:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680303513; x=1682895513;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0utqBstdPgyW/Sre9nXdM5HPcM2Og8GOeOD0hwvq5rI=;
        b=UzC5J3udegtjevLheavvXXIvHA77Nexywgd84KFlaMpdySwFjthY/r/lHofqG4yL+h
         aElW9N4yCA/r9ctOdz9ZL3uDp0YlwYNZ6PbCgAKwSJQqcEyUHydzb0VdMraY+qMvldc8
         qYePmvoVQGg0Dwd8aNAXzf0jNbTLxudySgo4sv0awm2XP9/ZilY95WMzXZPAUhiqDFp6
         sIo6u7S8qW7FuxpNTQSesP7Gf+5WNJ3OK/Qc9kcvb3W6Gfl0+C1saGzfdVywHc8Xvx2U
         2iTzKb8Foub21SdEHtSIR+M3GP+avkJ0JI3Rmn/sY+fmfxLN0afZ32C0xtclWdLkKZe1
         TAxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680303513; x=1682895513;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0utqBstdPgyW/Sre9nXdM5HPcM2Og8GOeOD0hwvq5rI=;
        b=Npaj6R0uecogzCa94MgPvy4Cu9z6neYomVkNk29qH9DWOZJjBzQ3YYelBuIjZi4+/Y
         D5rwq0FioJNPKR+LKUH/8uFaxiQwdRmy6JVNt6xQjkqg9rljR9nS/gv5LZe9oQk5Gk4W
         7l8klAqIz8Tb9LQsAx+1ZqVJfOCBZVIo6vQAVtQv6rIgYaSicxF+i/XzLe6X2g04jPwp
         Lcqxdt5r5YH1mSK3Ze9CL5RORbxSg8lC4GRMQF6vIJK6tBajzZglw4RImhRK8yFJ/D+0
         P9x4egOw0c8xpdNOVS7UVd9ZdJGW+gnOXkS1R/sQwuGtjFxneFVtneYYn7QT1TvbMX1F
         vUfQ==
X-Gm-Message-State: AAQBX9eywTxknMTA9bSkZk6nCSAcm7tGLEqehEcPiXXcZZtA43EYHD2H
        0jLYlOu+InB0cpbXyY8VBEQ=
X-Google-Smtp-Source: AKy350a6m6LCKXD63cOuCDBqPoag3U+PDhvrZ2juzl1t4O4UJWTB+NZ/gC6B1qAgq840NlMuSn1uTQ==
X-Received: by 2002:adf:f24a:0:b0:2d4:e032:6322 with SMTP id b10-20020adff24a000000b002d4e0326322mr8959548wrp.31.1680303512678;
        Fri, 31 Mar 2023 15:58:32 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id b6-20020a5d5506000000b002e463bd49e3sm3229296wrv.66.2023.03.31.15.58.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 15:58:32 -0700 (PDT)
Message-ID: <4564e7fd-98e6-229e-7b6c-715f2db4ca1a@gmail.com>
Date:   Sat, 1 Apr 2023 00:58:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] prctl.2: tfix
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org
References: <20221011062520.4614-1-jwilk@jwilk.net>
 <b70fa11b-620e-dea4-3b30-068e0e2740cc@kernel.org>
In-Reply-To: <b70fa11b-620e-dea4-3b30-068e0e2740cc@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------3dqkSp3G1ZehrTeX9nB2aq0l"
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
--------------3dqkSp3G1ZehrTeX9nB2aq0l
Content-Type: multipart/mixed; boundary="------------4UUwXiS7x7l8AL00xToxb70e";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org
Message-ID: <4564e7fd-98e6-229e-7b6c-715f2db4ca1a@gmail.com>
Subject: Re: [PATCH] prctl.2: tfix
References: <20221011062520.4614-1-jwilk@jwilk.net>
 <b70fa11b-620e-dea4-3b30-068e0e2740cc@kernel.org>
In-Reply-To: <b70fa11b-620e-dea4-3b30-068e0e2740cc@kernel.org>

--------------4UUwXiS7x7l8AL00xToxb70e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 10/11/22 22:53, Alejandro Colomar wrote:
> Hi Jakub,
>=20
> On 10/11/22 08:25, Jakub Wilk wrote:
>> Escape hyphens.
>>
>> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
>=20
> Patch applied.
>=20
> Cheers,
>=20
> Alex
>=20
>> ---
>>   man2/prctl.2 | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/man2/prctl.2 b/man2/prctl.2
>> index ea6b23229..b91d12af9 100644
>> --- a/man2/prctl.2
>> +++ b/man2/prctl.2
>> @@ -1618,7 +1618,7 @@ or
>>   .IP
>>   For more information,
>>   see the kernel source file
>> -.I Documentation/admin-guide/syscall-user-dispatch.rst
>> +.I Documentation/admin-guide/syscall\-user\-dispatch.rst

I just realized that we missed the first one in that same line :)

>>   .\" prctl PR_SET_TAGGED_ADDR_CTRL
>>   .\" commit 63f0c60379650d82250f22e4cf4137ef3dc4f43d
>>   .TP
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------4UUwXiS7x7l8AL00xToxb70e--

--------------3dqkSp3G1ZehrTeX9nB2aq0l
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQnZZcACgkQnowa+77/
2zJXSw//UJZA1Thicx6AyhUk/fskhafFbM6Ipzr33HGbmrEkVEqB06hTYbAnL6n5
N/WBe5drBrCqqjcXA7e0zUaDTQxQsYK3hz9JOlXtEt14JWrTfjhDvg48SDE9W7qd
1rdSLGT9FVRGOa36F+FirbpM+X3jO8LxvnNungABevxFI6Vr/DH61PWGdIz0FQJq
F8748mI4dnpj8EbFEd0C4XxjJI6WOOuKJqPEt5xLco7npmI8oJOQwUWJE5U8J4O2
y+A/BBJP3Sf6ztIEybhqzinRObQIKaTHkAm62u+1nvBW/vrMO51Pl2jexyk3lOQF
UtT+Ch6oEfgSvaYgrQlPmAJIQn9IP73dBnD3coIMg3WaUtHjSfGooSQ6pQbx1Gi4
mEzPKxcqDVLvHBD5vnRP39hc979x0k6HTLB2Rcs7K8eUiGYjdYgwkXExkbWRQqZz
6EyIf5jtUjsbF+WnjIJa0COSvtBNynYjSq3QqUS+x/ob9leCbEiZQHD2GCmvgnnN
dEH44Ek7bLwSQ6HTe2iqRfMK+KW6ShrlM4Fegw+iBiBkDhF9v4cohAY4qO8wdgXa
aSfhMQVGDcc4hugFYiFTZd1l3ZDzLL3cUBm/aolNuvRWizxHNNGjSi+sx+Aa90yO
ZVIqDgTZ9QPdE3Nf+H2Ml8xwEpGcFs5LhjwvIFQX6DyHgHWNxeQ=
=qrs0
-----END PGP SIGNATURE-----

--------------3dqkSp3G1ZehrTeX9nB2aq0l--
