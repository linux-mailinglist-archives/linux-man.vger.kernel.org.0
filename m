Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CD586B620C
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 00:29:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229704AbjCKX3v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 18:29:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229655AbjCKX3v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 18:29:51 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAE1852F7C
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:29:48 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id f11so8194039wrv.8
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:29:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678577387;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5UABPxcBepGFVvGmwc9M3c81zl1uQ1ZNl+BrlZdGzF8=;
        b=S51kniQwf6F4TpwURExnTtK7PD48WikfWeTTmgPMI3B6tKY6KOMTbPkpu+fgcXvlyi
         izuoDJF9xywrXfECazP4ITEb4qzbjnZq9hsVRyvTehpgPvz1cakXwUiw/qb/oOLcNu9D
         NyaUvlTs86GH91VrDZgizhl1YooU8bv9DJEiU+JszkEW2NUIqOu3i9SynlUHaAZJDMW2
         QUdToQgDiNL/5f/LZzDVHW4NoJe3pRIRZEo/cuR8EzgUL2XfY8ZeeJ40pOJZo0TIgboT
         DSRn84heTViL8/iq3CeVDNvSluaGHOdi5sbIK10J6umnBSd+ZNbXFsTI3iOgPC0p7O9k
         jz2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678577387;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5UABPxcBepGFVvGmwc9M3c81zl1uQ1ZNl+BrlZdGzF8=;
        b=Dn9skHL1BZAuhDhTiTwHjb8VFfbQ4G2Jjt2Gfyj0ai06tk9LRPvzFaqSHCutVdjtv9
         FlA8c2rg7p/mMXKxzsLxy8xFFxKOUYgN1IPs6S8/UT1JMy2n4kZWa8peAOhp4hovD9k4
         TXfnLuy7+eZalZg7Vj/H9xeAYUTQZ7G5iAHCR2L3Xd8zVARUCXCWFs4BozzcHhf6Wszh
         OFIEz4xFDmbmqdLgMr+XYop0JTwn5SANN0WBVjIzyWAuPJ7cVyrF4swo9crAch9nLS6S
         JYysq/eHJEk7oFn5YrN+bNOlOQ5DVL1zpMx2QfvspHLMfQwn4MSG+6FoQEiJhZWUhPDz
         AHOw==
X-Gm-Message-State: AO0yUKXGdZ8o+i1V4QTgC1b2hDqR12qUYo+qrO2nY3RbeakBFVCMhHi4
        R9fVUqAyTzOaQ5j7Qzh0nTo=
X-Google-Smtp-Source: AK7set+zXoVzbBQxpWyt9TBhkgQD690VmoeGe0P/6jWcRI2Hf1OJK7lqbSaIFB0Kgmilz3sU7HgEmQ==
X-Received: by 2002:a5d:4b04:0:b0:2c5:3cfa:f7dc with SMTP id v4-20020a5d4b04000000b002c53cfaf7dcmr21575634wrq.7.1678577387318;
        Sat, 11 Mar 2023 15:29:47 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id g14-20020a05600c310e00b003e8dcc67bdesm4230883wmo.30.2023.03.11.15.29.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Mar 2023 15:29:46 -0800 (PST)
Message-ID: <5f55b64b-0cdf-6a2f-3af8-b9dd9e8ff070@gmail.com>
Date:   Sun, 12 Mar 2023 00:29:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Dear linux man-pages maintainer,
Content-Language: en-US
To:     Seth David Schoen <schoen@loyalty.org>,
        Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230311171354.GA4709@Debian-50-lenny-64-minimal>
 <20230311185634.GA441010@demorgan>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230311185634.GA441010@demorgan>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------FQvIN0uCnishXM6Axan9n2tt"
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
--------------FQvIN0uCnishXM6Axan9n2tt
Content-Type: multipart/mixed; boundary="------------UGaXfxsbD8WwhL67GD4KEG2X";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Seth David Schoen <schoen@loyalty.org>,
 Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <5f55b64b-0cdf-6a2f-3af8-b9dd9e8ff070@gmail.com>
Subject: Re: Dear linux man-pages maintainer,
References: <20230311171354.GA4709@Debian-50-lenny-64-minimal>
 <20230311185634.GA441010@demorgan>
In-Reply-To: <20230311185634.GA441010@demorgan>

--------------UGaXfxsbD8WwhL67GD4KEG2X
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Seth, Helge,

On 3/11/23 19:56, Seth David Schoen wrote:
> Hi Helge,
>=20
> I am not the maintainer or anything, but I think it's great that
> translators give feedback on the original text.
>=20
> I have two disagreements with your changes:
>=20
> (1) You proposed correcting "null byte" to "NUL byte".  However, "null
> byte" is a standard way to refer to a byte with the numerical value of
> zero.  This byte is also the same as the ASCII character NUL; it could
> be regarded as the "encoding" of that character.

Agree.

>=20
> (2) You proposed correcting "runlevel" to "run level".  The word
> "runlevel" is a coinage by operating system developers; in ordinary
> English it would indeed have to be two words, but it's common to write
> it with no space in this context.

About this, in the Linux man-pages we tend to favor correct English,
and not words like runlevel or userspace.  So, when it is a noun it
is run level, and when it's an adjective, it's run-level.  I'll have
a look at it, and see what needs fixing.

Cheers,

Alex

>=20
> https://en.wikipedia.org/wiki/Runlevel

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------UGaXfxsbD8WwhL67GD4KEG2X--

--------------FQvIN0uCnishXM6Axan9n2tt
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQNDukACgkQnowa+77/
2zIKHg/8DYJAHVdEc+VJpWbVxQFpQLaw3XIHev3fe7gLwEJRMkE6NCI+eLXB7wY4
O7FHdiuorBoStM6h8Ky3H64wdv6/2TqgTjq7uifZBWNdd58Q3GJ+WNeln8sQI+Gg
qNMn8Km/7XO9UT8OTD0vTd7ldTMS+pPWyvuqHZti2iOiQp65EvY33PIH6rqPiFvP
HoiSs/1WOHL+0NetJ4dejdl3VZEUCzn7enO0MyfytgfLlrgdGKq28e3JzKiUOLGJ
q5UvKSRQuDuo23AZPqeI67tT1BIIVMjoOjSNtT+2306p+GAxfcwqzS7cYLQNpAAp
Q7NzV710E0VFeqdpul8XRbiPi3dcWT5nVNZTsMls1LItfnl+lJc7c/fgJTraajsW
CbYyBQ76/5+qETGmQZeRCuLjX4sujk/HsENPAK0Igf4gcb8+GYqrQVnmMjgqa/ZJ
g6+Ypn4GL63lByD50lvjBM/6CUq2lVcFjBfx3AjDNmL633bhRugzNkQRCi7cWATY
rPfUKQae/avVg2ypfxOYTO3jOQDIVN7SQTrFY9fuj+TL8VrfxLhpVORGzI2EiI26
mZK/j+uuZa1eMOuXx6k8Dd4AT0vBGv65JihOkXs54qxeV/AZoTmWJ3No9lkvVlPU
JnWbIbpFx4l1ILqYgLPPpiq5dKKWDJRdV2yMJKvmOuPKGXoVPR8=
=COMb
-----END PGP SIGNATURE-----

--------------FQvIN0uCnishXM6Axan9n2tt--
