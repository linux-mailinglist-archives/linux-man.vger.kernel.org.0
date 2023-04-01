Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3CB36D3144
	for <lists+linux-man@lfdr.de>; Sat,  1 Apr 2023 16:22:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229540AbjDAOWX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Apr 2023 10:22:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbjDAOWV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Apr 2023 10:22:21 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41248D323
        for <linux-man@vger.kernel.org>; Sat,  1 Apr 2023 07:22:19 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id y14so25126566wrq.4
        for <linux-man@vger.kernel.org>; Sat, 01 Apr 2023 07:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680358938; x=1682950938;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WevspwEyRu9737CkJOoVQBBxIVOBZZb+Y3QvrLjECso=;
        b=doaywav2xczkftNppB/Etq8M0dlj/ZYv3oBcxlm26M2zKfzs1AVlCWGicqWKGD0C7M
         5kIQx0d1t5uVfR/AGjIm1yio3tWb1qNIENFqO6j/Um1+mt9jpDqWJ5wDGtywl4DqCBNy
         sv6vMhEgX/e1B2+kBPaukz50rG42xf5U7mzTAIILgU9PYtc7XrsWSB6a96W7Fq8GA7jx
         XxADRD+0J34sJlwNm6XXOTqXkWO8TvkvUeWz4f3G4+Oq7Q2nFHZ0+QvlpFj16yC4i8ez
         hrAeR3ob4mdFQ9u9SbyJY4j6mja/KHB43Jlbxi+ZFp8KRv0VnIvKSU8/iND5EChPw9YG
         BU3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680358938; x=1682950938;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WevspwEyRu9737CkJOoVQBBxIVOBZZb+Y3QvrLjECso=;
        b=KoAKfeo0g8v466C/q3BWBAfH517UjFbDDSxYkM4yi01uxJzrB6tCtrff87W9lTvDR6
         7Is9X64tXgYwnGvtWWJ010YqQ/UHUFfTiUmDRZeuFZet7+YJdO7Q0nCY2f4Wqj3MjxCT
         gjQ/k8Xah0TdHx3K1FrTnT5rqrxOeqsdnii7SM/Bck1dbNmS4eeSMvIr0WegD3AULYSm
         ka7twhmXs/bzofKMjX/jN5LlSnYRPmDUlgVVM13l2J2HDyoJPyaFemL80kFK0z0O/vnD
         jPGdbnvaEk7q43hgXTHhoiPKzlvHgEUzi+68mXoG5MjEYJHfoxFFZnPh/hA2R2cQT+8u
         ZFBw==
X-Gm-Message-State: AAQBX9d1Tdu3DT5o7ftzhVm2Il5Ybvbqo4T4N+MsjaswNfjokuScTcec
        B1S6TD6Hd78oZRQRhNumNZ0=
X-Google-Smtp-Source: AKy350aYGHEwUqeCnptzuIg57ZT/uZ14X94JEdVMB0YelTPvm1Ike246MMMzlHIqd6pF1JPadra2/g==
X-Received: by 2002:a5d:6b8e:0:b0:2cf:e3d5:34db with SMTP id n14-20020a5d6b8e000000b002cfe3d534dbmr21770397wrx.36.1680358937586;
        Sat, 01 Apr 2023 07:22:17 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id q12-20020adff78c000000b002c5d3f0f737sm5009001wrp.30.2023.04.01.07.22.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Apr 2023 07:22:16 -0700 (PDT)
Message-ID: <a2a5fa2c-cc79-9d35-9fd7-0bdc54b4c82f@gmail.com>
Date:   Sat, 1 Apr 2023 16:21:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] printf.3: Fix wording for the 0 flag with given precision
To:     Vincent Lefevre <vincent@vinc17.net>
Cc:     linux-man@vger.kernel.org
References: <20230331143332.3649621-1-vincent@vinc17.net>
 <756bf5f3-a368-be05-5177-b113abf5741e@gmail.com>
 <20230401014604.GC7123@zira.vinc17.org>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230401014604.GC7123@zira.vinc17.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Z0UJFMmD3w7WFvde4A1NERyZ"
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
--------------Z0UJFMmD3w7WFvde4A1NERyZ
Content-Type: multipart/mixed; boundary="------------yr20jGsefEc2UA5a3RLz8p1g";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Vincent Lefevre <vincent@vinc17.net>
Cc: linux-man@vger.kernel.org
Message-ID: <a2a5fa2c-cc79-9d35-9fd7-0bdc54b4c82f@gmail.com>
Subject: Re: [PATCH] printf.3: Fix wording for the 0 flag with given precision
References: <20230331143332.3649621-1-vincent@vinc17.net>
 <756bf5f3-a368-be05-5177-b113abf5741e@gmail.com>
 <20230401014604.GC7123@zira.vinc17.org>
In-Reply-To: <20230401014604.GC7123@zira.vinc17.org>

--------------yr20jGsefEc2UA5a3RLz8p1g
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On 4/1/23 03:46, Vincent Lefevre wrote:
> Hi,
>=20
> On 2023-03-31 21:35:19 +0200, Alejandro Colomar wrote:
>> On 3/31/23 16:33, Vincent Lefevre wrote:
>>> When a precision is given, the 0 flag is ignored only for integer
>>> conversions, not for all numeric conversions.
>>
>> I think I've seen some related discussion in some other list,
>> right?  Could you please link to it in the commit message?
>=20
> If you mean my message "printf: 0 flag and given precision for %b" in
> the libc-alpha list, then this does not concern the printf man page
> yet, because this man page currently does not mention %b at all (%b
> is rather new, and not in the current C standard). This should be
> added to the man page, but this is not trivial, and I think that the
> inconsistency I've mentioned should be resolve in one way or the
> other before %b is added to the man page (in order to make sure that
> it does not contain something that could become obsolete).
>=20
> So, does one really need the link in the commit message, while %b is
> not in the man page yet?

Nah, I thought it might have something to do with it.

I applied the patch.  Thanks,

Alex

>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------yr20jGsefEc2UA5a3RLz8p1g--

--------------Z0UJFMmD3w7WFvde4A1NERyZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQoPgYACgkQnowa+77/
2zL2CQ/9HjEnDRvQZD7DLZb4Zu76Lv03RHanCZqNEKp6PJiNhA+drFDfYrMwZ/Mj
XsviRE3C2qh++wwnjj1eg4tG2A1CJSZVBI4cqnR2cw972D0EAB+/scFKBdW7tVkf
0fGYU01X5NLcbktUP7kyEJ6T/xBB71ggLUxMKr7xHXp5Ap9qFQQqUamnH77tu7lr
FBvnta5f2uTJP+AKsz0V4O47Blhy/QAZ5Uve56MG9QynxMCtRFHTMnuthrnD58lN
joEBV3q97xEKPe0PEw7vUpuaOAylc51W9ENpdFRPiOUGgjRLZASEgwE0H8iWv3oZ
BDZGZabIHTwAUWGcc91oLggewsg2Y6l+da8b5sbHULT9/FGiY6y1fvF3vGgdkgNH
McscrT5hMt6Ku4r1mNV2UcQQQ+/TftlD5dxhbZkalRSJfp0gHdqHZyGfTOvQRLMw
odffVvIucxz+g5UCL0L31fhIqaX4qqVOdsjJUIwC6+IR5bJ69Y1t2EtlyiwY5s4R
335on/LPt/5pWxhBvBYH5qaFQbrr6lvW1UKlPNPNTSLQz5IWK8RsDkhsR5U8y8JT
QOG+IeM2+rH1mrEAHarwqOdoG0Qg3IeUxzDanJWwZfKXo1bw28Uli1FaWtm/ALSW
BGsHJnTwQhzWeg6FhhZiAxhFvkVRDhl+nqu7JCWVS1nPJdXMXc8=
=oKw6
-----END PGP SIGNATURE-----

--------------Z0UJFMmD3w7WFvde4A1NERyZ--
