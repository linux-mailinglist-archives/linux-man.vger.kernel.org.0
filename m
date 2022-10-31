Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24B596132C6
	for <lists+linux-man@lfdr.de>; Mon, 31 Oct 2022 10:33:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229648AbiJaJdN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Oct 2022 05:33:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230252AbiJaJdL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Oct 2022 05:33:11 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87FFFDEE7
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 02:33:06 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id bg9-20020a05600c3c8900b003bf249616b0so7627680wmb.3
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 02:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=71gq/Ri3FkmCCb4NP1bGO9sBN50+8oh7GlYNMcAE8lo=;
        b=cecQ0jzk6RoD16mDSmuZrxx4CEV0xXNFYbBo2W2BL55GhJqwFLSRxJYcinjeyEgkSP
         EUcYnRzMqwaShEJLPyA/v1BsW4u3XxL3mNw/4epwDHYN1nvz7PUUATg79NE39cXux/sP
         gDyakym3Qqda9oGTAwU0ipBUdKEVmM/fcjsML+cLpliczk1s3EWsIzB58SKNQy9yTXHX
         E1kw7P2KRiQtzDu173QbdBtr44vZpD9c32FprWvX/bpBeGOhBthKIqalo8h/6nnFTAGs
         FPYS4ke4IdK8iKxnM0iuWhxBkUztFknzm2RYL4QGX7eqBoK8D5JMGcTR7+eH59sKC2Wp
         oV3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=71gq/Ri3FkmCCb4NP1bGO9sBN50+8oh7GlYNMcAE8lo=;
        b=fl1zUS6A+y4JGgnkRs0f1aCV2Qh4Xstj8cqqkw/0pRRlNjLgZGxz/uD1I4w2DIsVkt
         Jqhox74ZjLJTleZsbo0mFjTXivd/eUgTe064v/aiiRLk3fh2IN8qmbjyemqUxyHH6Ayp
         f1XXg6D1waiGMfTyaHHTh24paQniQkCGxnKyN8BrlNUh7WIBh2u9XeapWn12ooP1V1gD
         Foan60PyE22QFYdoTMHfRQ/5KC0ZaVKjnh7jGvXq9k6X97JGsdTPzEqqksBWwCZy/n1s
         HmwVzI5TwDK8mDa5GS+OK4O+wYAWB3wmUk3ENoi90p+XiUFxId7JlIPCyPtshs1jhJQ5
         lzyA==
X-Gm-Message-State: ACrzQf17t2N2ObwM1NIOBccBrkIHFXxE4R6e2P9bgDTLoAFaDLRJIyzN
        f6cyUoRsiil1TH3snv9jMW8=
X-Google-Smtp-Source: AMsMyM7uaP31RR16llvKcsNFWIBYT7hovhCbbN04q8CnaLNDSCkdYX9fDahXt5WzkB+7IKpi7B1RRg==
X-Received: by 2002:a05:600c:5493:b0:3c9:c18:87d5 with SMTP id iv19-20020a05600c549300b003c90c1887d5mr16870107wmb.188.1667208784702;
        Mon, 31 Oct 2022 02:33:04 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q9-20020adfdfc9000000b002366d1cc198sm6664960wrn.41.2022.10.31.02.33.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 02:33:04 -0700 (PDT)
Message-ID: <2e221b59-2833-ba00-2dae-f7ccbb2df816@gmail.com>
Date:   Mon, 31 Oct 2022 10:32:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: Possible typo in errno(3)
To:     Jun Ishiguro <algon.0320@gmail.com>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <ab3898b4-58b5-d1f8-8cfa-a332e996881c@gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ab3898b4-58b5-d1f8-8cfa-a332e996881c@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------avTytJ4geXHaAhA9JJGXu2Xd"
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
--------------avTytJ4geXHaAhA9JJGXu2Xd
Content-Type: multipart/mixed; boundary="------------psZUOdMQxWQ4eF0BHfZvUswV";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jun Ishiguro <algon.0320@gmail.com>, mtk.manpages@gmail.com
Cc: linux-man@vger.kernel.org
Message-ID: <2e221b59-2833-ba00-2dae-f7ccbb2df816@gmail.com>
Subject: Re: Possible typo in errno(3)
References: <ab3898b4-58b5-d1f8-8cfa-a332e996881c@gmail.com>
In-Reply-To: <ab3898b4-58b5-d1f8-8cfa-a332e996881c@gmail.com>

--------------psZUOdMQxWQ4eF0BHfZvUswV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSnVuLA0KDQpPbiAxMC8zMS8yMiAwNDoyOCwgSnVuIElzaGlndXJvIHdyb3RlOg0KPiBI
aSBtYW4tcGFnZXMgbWFpbnRhaW5lcnMsDQo+IA0KPiBJIGZvdW5kIGEgcG9zc2libGUgdHlw
byBpbiBlcnJubygzKSBzcGVjaWZpY2FsbHkgdGhlIGZvbGxvd2luZyBsaW5lOg0KPiANCj4g
RUxOUkFOR0XCoMKgwqDCoMKgwqDCoCBMaW5rIG51bWJlciBvdXQgb2YgcmFuZ2UuDQo+IA0K
PiBJIGxvb2tlZCBhcm91bmQgaW5jbHVkZS91YXBpL2FzbS1nZW5lcmljL2Vycm5vLmgNCj4g
YnV0IEkgY291bGQgbm90IGZpbmQgIkVMTlJBTkdFIiBhbmQgZm91bmQgIkVMTlJORyIgaW5z
dGVhZC4NCj4gU28sIEkgc3VzcGVjdCB0aGlzIGxpbmUgc2hvdWxkIGJlOg0KPiANCj4gRUxO
Uk5HwqDCoMKgwqDCoMKgwqDCoMKgIExpbmsgbnVtYmVyIG91dCBvZiByYW5nZS4NCg0KRml4
ZWQuDQoNClRoYW5rcywNCg0KQWxleA0KDQo+IA0KPiBUaGFua3MsDQo+IEp1biBJc2hpZ3Vy
bw0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------psZUOdMQxWQ4eF0BHfZvUswV--

--------------avTytJ4geXHaAhA9JJGXu2Xd
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNflkcACgkQnowa+77/
2zLvWhAAgMgE0JSS5/QWGkJB9UObs2fXocJdNCnXmsZK0/XT9w7f87Irpy9mEHb9
RpagmPCfXN59lww5ZTcOA9R9vjv6u0cZoFdo0ySSsICltvcoJWEx3QaDv2UhH34S
hxrWEvgRx6Li07CR5MMtgdaX7U16Kc/gVVg3asW7g2ecGBC224p//txBYYH6LQno
s9U3/YuS/RSHlKWv3kGhq7h36p4RoGB+Oe9gDFp9Z/SZQ4av3IQoPCbHUoaNWH5z
Ul+KQRY0FbtGP0pI3vDC9SZE8wpqrF4ldmsXxG0Y0/drmOzTO6etewlxk7povJ+A
ETpw5nGdiAkZgWMgdntVeS2NVM8BLYq9FQYbcpaRnHg8EsJBUwtuEvsg1xk4FNfQ
nA8ZwVx3LSHND2u0EqasFOT8wvqI3YxJEsQeMrgaQCvOe2nJv2cOZRasKQuHJ2aq
Thrw6GYd4J4S1BMp0LXQGgTfrdfbCe5k0P5aCqwLvIT5CKue5Rc7PQjKR6HgX9OZ
yifvYr4f4jr1ihd/VJ0ZfKooTf9f3+yU1BJgMtqYbDXencjblBCVfN/1hOj+Zp0P
HeevbWEE7g72zN5jtEjQdt6tdrrTnVZuwKVcmoHS2d+p+/iuyF82f5veyTCEeuAn
8s0CzF8IK1mviHGQgJngjRCtcsTcLO26CxSvOpaNnB2fRnLqs78=
=jlgf
-----END PGP SIGNATURE-----

--------------avTytJ4geXHaAhA9JJGXu2Xd--
