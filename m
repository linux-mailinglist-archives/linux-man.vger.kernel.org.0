Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40FF66A3458
	for <lists+linux-man@lfdr.de>; Sun, 26 Feb 2023 23:05:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229563AbjBZWFf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 26 Feb 2023 17:05:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbjBZWFf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 26 Feb 2023 17:05:35 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 391C11285F
        for <linux-man@vger.kernel.org>; Sun, 26 Feb 2023 14:05:34 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id bt28so4345401wrb.8
        for <linux-man@vger.kernel.org>; Sun, 26 Feb 2023 14:05:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=780g+sgQhxOqzSAyuh3s5nvP6Zv/FvS33ofd4HtACPM=;
        b=QQBa5iSTKyPegyA2CSZ/7u10yGVHF2kya2SWk2Vbmf2CD6+QOsWhS7eCuQndxwsZfr
         Fd13KIeWj/5jyyVadej4AOBR+sD2J4BmN1P11iyHQi9S2/O8uYs11G1QfNuGmbSMZl3p
         ybsuOFD5Vadc+M0E5w1zmOKVTJMec7ASYMlV7tWUsVMszyUxADvI2+uTzQy0FpaIBQqF
         yEWjf7VtZnTAQcjlD8MmWEw1pDEjhN2HS6Qrzy2aaRT1ebQ431KysYig7f66438JmtpH
         kDTEoR4vZDTWMEI7Y14QoWO0qhsIebbaKcSqha88uqv9EviR1d4ZepsW3LhAq9rGfm+n
         o6gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=780g+sgQhxOqzSAyuh3s5nvP6Zv/FvS33ofd4HtACPM=;
        b=sCALpN2NNnT46WL+S9KvmbIBxOBO07FsVOsESkb/c7fILknFYgPupGOXfO1m9RTcW/
         qHRYfg2FrxoCXqywRjxIYeMvRoqYCy2BimJ2rneQeLOsHu17mUKX0YpV1ENsE8jmnHiZ
         7d8tXVcAGMb6sofk2u3Q1ICVzxX32Al/XKZVtGHiiTIoHDGQIn8S996npTgpom4DI4ox
         V/fAYV1hYqbhUe8ChrE5H5NzDItMfylUpacDJB6aezqIcaZ3F4K03HJLnihZtI6h8Rgk
         cCwVt1vghW30ulH3QlvaCjUoIsD4V+lpZ/M7avMsFWPYt6xr4Q1jX5dsF8+s+bjhnvuE
         EGng==
X-Gm-Message-State: AO0yUKVC8lcxJEhJ1vAf1GC/oBC8dfMc/IUzjzXXhaLyxYJO9sO9ZBND
        KeCDySAAV+Jtwdi5S5fzIls=
X-Google-Smtp-Source: AK7set87QjM5naW5/2HnHpQS/+NnuqaCBEGA1+Jdqmr/bxISn5kmi3AHZvncYjgyx+RTwnfYtBDe9A==
X-Received: by 2002:a5d:49c6:0:b0:2c7:e5f:e0e0 with SMTP id t6-20020a5d49c6000000b002c70e5fe0e0mr12056632wrs.65.1677449132667;
        Sun, 26 Feb 2023 14:05:32 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k18-20020a056000005200b002c54c7153f0sm5467846wrx.1.2023.02.26.14.05.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Feb 2023 14:05:32 -0800 (PST)
Message-ID: <fe116e4b-087c-5271-9ccf-0422f419235e@gmail.com>
Date:   Sun, 26 Feb 2023 23:05:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Content-Language: en-US
To:     "Dmitry V . Levin" <ldv@strace.io>
Cc:     Fotios Valasiadis <fvalasiad@gmail.com>, linux-man@vger.kernel.org,
        lineprinter0@gmail.com
References: <20230225105601.6079-1-fvalasiad@gmail.com>
 <63d2e471-b167-77a6-b713-5f76ff63fb96@gmail.com>
 <20230226220359.GA3440@altlinux.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230226220359.GA3440@altlinux.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JrjbhM9NV2K1C340WOgxKN0l"
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
--------------JrjbhM9NV2K1C340WOgxKN0l
Content-Type: multipart/mixed; boundary="------------XhMhoygtXhBnJEjrH6rH0cp1";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "Dmitry V . Levin" <ldv@strace.io>
Cc: Fotios Valasiadis <fvalasiad@gmail.com>, linux-man@vger.kernel.org,
 lineprinter0@gmail.com
Message-ID: <fe116e4b-087c-5271-9ccf-0422f419235e@gmail.com>
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
References: <20230225105601.6079-1-fvalasiad@gmail.com>
 <63d2e471-b167-77a6-b713-5f76ff63fb96@gmail.com>
 <20230226220359.GA3440@altlinux.org>
In-Reply-To: <20230226220359.GA3440@altlinux.org>

--------------XhMhoygtXhBnJEjrH6rH0cp1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Dmitry,

On 2/26/23 23:03, Dmitry V . Levin wrote:
> On Sun, Feb 26, 2023 at 10:58:02PM +0100, Alejandro Colomar wrote:
> [...]
>>> +.B PTRACE_GET_SYSCALL_INFO
>>> +is limited to type
>>> +.B PTRACE_SYSCALL_INFO_NONE
>>> +unless
>>> +.B PTRACE_O_TRACESYSGOOD
>>> +option is set before the corresponding ptrace stop has occurred.
>>
>> You should say
>> .BR ptrace ()
>> right?
>> Or is unformatted ptrace common in this page?
>=20
> Or just say "syscall stop".

Sure, that would work.  BTW, se prefer system call over syscall
(there's not much consistency regarding that, but let's try to achieve it=
).

Thanks,

Alex

>=20
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------XhMhoygtXhBnJEjrH6rH0cp1--

--------------JrjbhM9NV2K1C340WOgxKN0l
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP716sACgkQnowa+77/
2zILexAAnctNMjF3Kg/0sgPeakyE+G++bSG7kjhSQ8dhAoSnsHz88swQsYuVBWpp
ohZwPqs/i68noMj5pHtaFDgk98DBxjEzFhrCXi2jzgeXkrYzlbO7MDYs0zj/hj16
NitPC24oAS22jSAg1fUMozeofZF7Fifbc1mXEh4aGQV3ubuy6LWctp2C175IBbuu
h3Q8Pis3Hzm7ZwicJVaaKVUWCcjwsW+jPyMEVKiNnDn/RQOHKWC5/b150joyBGaG
6HkUL/rWuzO2N+DvXCXYh6cKcL4yn1adXBofGZDXcoeGczMkm5RyP+gQDEHvrw4y
Co3TlxazGXuOtpmFkPGcQSSORlvbUKtBjmWsUFcCpRu8MvoLg3fX+FTh9Brjy1ZF
PTdI/M8J/UvSY6CoocNKz3ntmCruUU9oUbJjGDtaR4RDfLG7uSVsCQWUkJBwmh3y
O/o9eIZIe5khUXMKYOv73ZtAVsYUBBcZjj+pezgjuOc870moRCy3QgRNPUwUaWLV
aQ2KmjAH6cz70e+3oUrMC4j2eHX/ATAfF3B2qxXF/ihE6DmAOubG9F7INNTo0c0e
k2bjtCOhC2x940ocQsDWuEZvcBZkhFFm1DIi/Fv9gTmipqKUWFUARmo36hYsTSau
SdsJykNmAZjNJkxkWqDI/9fhlc8bj2LTMwuyK9nln4xHjpSUHuo=
=x7l2
-----END PGP SIGNATURE-----

--------------JrjbhM9NV2K1C340WOgxKN0l--
