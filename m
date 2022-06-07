Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5473553F98D
	for <lists+linux-man@lfdr.de>; Tue,  7 Jun 2022 11:24:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239008AbiFGJYH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Jun 2022 05:24:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237984AbiFGJYG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Jun 2022 05:24:06 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BC5D49F34
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 02:24:05 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id l2-20020a05600c4f0200b0039c55c50482so1329856wmq.0
        for <linux-man@vger.kernel.org>; Tue, 07 Jun 2022 02:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=PIpG8tFIkI+n1WU6TfRsatv2VRqHLJcw2VXE18tpfm8=;
        b=fQPM+9gGtxgvc+HmxbXb0tzSf4VcRIRX72N/3SMwjsJWKjyCMCzLz+jQYP4GIeOr0w
         30bGoSZWOS+wrgQvDeXW3eCpnM90lfu+y0SsOq4NIXbtp2AsmCAvhGTpiP5Km0leQffy
         EyZyv1TuO31xbhQKEYkkX4QgpwTJa+KBcS2O88WD9amh27SFbXFam6ppbt2qLRUjwEmP
         CmyAEaRHrG2NbCh9DoBrC4r+tJQhJsDkPwEtEg+S4yrTjBaskGCR04RUPV+tcP5L/oNK
         3qt4W6excaFloFHfJy6CL0l3tL7b2pUdtpNZXfyxjtIs82ySR3UcutNVqIOwOlxvTImA
         IhlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=PIpG8tFIkI+n1WU6TfRsatv2VRqHLJcw2VXE18tpfm8=;
        b=6erSQ+qH5KYztTmfIQjVRGhsj2yOuIO3yu6kRvC73b3G9ukfPCua6Wkn31aT9juNhK
         zT4dV1Bqd3QvAKzbzjKJMiFRl1on+aQn8BmZ+sWNuTHVbsnL3AnTAQ+4scApzxxt5z9C
         mMdnSdDRyxj2T7fmEEq8f+h48lCE6f4Olx6UdtXXira6UvEyquqFP+qah3dHhK4CwMy6
         nQL4Cvx5rpY4yeY9nJJ3rYHPuFiWkvSsQ/dSSIz1yz8tc7Suf6Nk18oA+O8UkI+Lf46h
         rtmEqKjhdhU/Cs4dxqArx3xib+puT8KcLeURpBGnOJ++Evv+CMoi+UeMnOlP0lacYoEl
         4F7A==
X-Gm-Message-State: AOAM5330/m+d/OABxNAz4eXdV4Ij2dbP6TQkF/IUbcfC4O7rTbRdk26q
        AaAfVUgSx7lAPDzQjCNCcm4=
X-Google-Smtp-Source: ABdhPJw14RrCAzcBdQaXnn4Rw1r3qSMZ9rcgJkjE30KWcpz8G8vwmugURufsZAJJBQ8AN6rvGfgjEg==
X-Received: by 2002:a7b:c394:0:b0:39c:4f5e:11d1 with SMTP id s20-20020a7bc394000000b0039c4f5e11d1mr9736347wmj.120.1654593843822;
        Tue, 07 Jun 2022 02:24:03 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bg20-20020a05600c3c9400b0039c15861001sm17889757wmb.21.2022.06.07.02.24.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 02:24:03 -0700 (PDT)
Message-ID: <2868d619-8ed5-4dbc-cb62-751f36885c28@gmail.com>
Date:   Tue, 7 Jun 2022 11:23:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v2 0/2] userfaultfd.2: Update to latest
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Peter Xu <peterx@redhat.com>, linux-man@vger.kernel.org
References: <20220603173736.62581-1-peterx@redhat.com>
 <7acfdeb8-5dd3-dfe2-5717-b64006281a8f@gmail.com>
 <Yp5YGMFJWLtthc8U@xz-m1.local> <20220606213323.xtfx7qpab6dwdqpk@illithid>
 <20220607091743.qx5ngkcmjnte7wld@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220607091743.qx5ngkcmjnte7wld@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------M0TB40oEWIuLkKvXBEwVQ3Dm"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------M0TB40oEWIuLkKvXBEwVQ3Dm
Content-Type: multipart/mixed; boundary="------------VFiDitdrglXdyGLc6RRMu91Y";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Peter Xu <peterx@redhat.com>, linux-man@vger.kernel.org
Message-ID: <2868d619-8ed5-4dbc-cb62-751f36885c28@gmail.com>
Subject: Re: [PATCH v2 0/2] userfaultfd.2: Update to latest
References: <20220603173736.62581-1-peterx@redhat.com>
 <7acfdeb8-5dd3-dfe2-5717-b64006281a8f@gmail.com>
 <Yp5YGMFJWLtthc8U@xz-m1.local> <20220606213323.xtfx7qpab6dwdqpk@illithid>
 <20220607091743.qx5ngkcmjnte7wld@jwilk.net>
In-Reply-To: <20220607091743.qx5ngkcmjnte7wld@jwilk.net>

--------------VFiDitdrglXdyGLc6RRMu91Y
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIhDQoNCk9uIDYvNy8yMiAxMToxNywgSmFrdWIgV2lsayB3cm90ZToNCj4gKiBH
LiBCcmFuZGVuIFJvYmluc29uIDxnLmJyYW5kZW4ucm9iaW5zb25AZ21haWwuY29tPiwgMjAy
Mi0wNi0wNiwgMTY6MzM6DQo+PiBBdCAyMDIyLTA2LTA2VDE1OjQwOjA4LTA0MDAsIFBldGVy
IFh1IHdyb3RlOg0KPj4+PiBJIHRoaW5rIHRoZSBwYXRjaCBiZWxvdyB3b3VsZCBpbXByb3Zl
IGEgbGl0dGxlIGJpdCB0aGUgd29yZGluZyAoYW5kIA0KPj4+PiBuZXdsaW5lcykuwqAgSSBz
dGlsbCBoYXZlIGEgYml0IG9mIHRyb3VibGUgdW5kZXJzdGFuZGluZyAiV2hlbiBhIA0KPj4+
PiBrZXJuZWwtb3JpZ2luYXRlZCBmYXVsdCB3YXMgdHJpZ2dlcmVkIG9uIHRoZSByZWdpc3Rl
cmVkIHJhbmdlIHdpdGggDQo+Pj4+IHRoaXMgdXNlcmZhdWx0ZmQiLsKgIERpZCB5b3UgbWF5
YmUgbWVhbiAicmFuZ2UgcmVnaXN0ZXJlZCIgaW5zdGVhZCBvZiANCj4+Pj4gInJlZ2lzdGVy
ZWQgcmFuZ2UiPw0KPj4+DQo+Pj4gU2luY2UgSSdtIG5vdCBhIG5hdGl2ZSBzcGVha2VyIEkg
ZG9uJ3QgaW1tZWRpYXRlbHkgc2VlIHRoZSBkaWZmZXJlbmNlIA0KPj4+IGJldHdlZW4gdGhl
IHR3by4NCj4+DQo+PiBTaG9ydCBhbnN3ZXI6IEkgdGhpbmsgeW91ciBleGlzdGluZyB3b3Jk
aW5nIGlzIGFjY2VwdGFibGUuDQo+IA0KPiBJIHRoaW5rIHlvdSBtaXNzZWQgdGhlIGNvbnRl
eHQuIFlvdSBnZXQgYSBkaWZmZXJlbnQgcGFyc2UgdHJlZSB3aGVuIHlvdSANCj4gc3dhcCB0
aGUgd29yZHM6DQo+IA0KPiAgwqAgLi4udHJpZ2dlcmVkIChvbiB0aGUgcmVnaXN0ZXJlZCBy
YW5nZSkgKHdpdGggdGhpcyB1c2VyZmF1bHRmZCkuDQo+IA0KPiB2cw0KPiANCj4gIMKgIC4u
LnRyaWdnZXJlZCAob24gdGhlIHJhbmdlIChyZWdpc3RlcmVkIHdpdGggdGhpcyB1c2VyZmF1
bHRmZCkpLg0KPiANCg0KVGhhbmtzLCB0aGF0J3MgYSB2ZXJ5IG5pY2Ugd2F5IHRvIHNob3cg
aXQhICBJdCBtYXkgaGVscCBQZXRlciB0b28uIA0KQmFzaWNhbGx5LCB0aGUgcGxhY2VzIHdo
ZXJlIHlvdSBjYW4gcGFyZW50aGVzaXplIHNlbnRlbmNlcyBhcyBpZiB0aGV5IA0Kd2VyZSBt
YXRoZW1hdGljYWwgZXhwcmVzc2lvbnMgaXMgd2hlcmUgbGluZXMgYnJlYWtzIHNob3VsZCBn
byA6KQ0KDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8
aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------VFiDitdrglXdyGLc6RRMu91Y--

--------------M0TB40oEWIuLkKvXBEwVQ3Dm
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKfGRkACgkQnowa+77/
2zIvjw/+Kl8kzSdhM1AREDY8tsoCCmABgcZRdzNLXokFrutp7XIlbceJXocVbuST
6aieJKFU0zDzyzpv7xzeSlLhjOY4UtRzIjP+JcMDL4IGUKpwmYoOjuwbrACooF9a
dCYFKXJuQ0qUG6PztFeAT7SYWCW8xMPYV3ILSqrjmx9Q+lIRnYF96ubAJi+6n8zt
QwQV+sdDn2l2MsuATlKQSwgcInvfIuAw7a1CWicjBF3rmPkrdXGzwHmihyjpSDRA
y/680YFtfCZZkQXaVy8sCbP8c1zm7e/PdlzSJ06Nr579O2k49N45A8hfI0Pgaydq
rdpJyV+OQFdUIUcK3TTOqUQkJoOkWSCOGzCz08c25YbEZ3/qAQst4kJUThoD+Boa
qgNQ6SIiYmjZm/g8uJA/aj21mVUhp5H2fGtKMWAhRmTJLUGtMfCUScykQ4yoT79g
3vRwluJpIlQszaj+WCrfgslGkD4WiXSKptniN83jJ7SBxxMnOoKVdSSB5I+pKDGO
rM3RH9XRz8WagdUDRc2/iAQoG+Pg8uCYYoJn1ZHcMECjWlbdL6qDN3LUjYXyXBrC
+NQRsPF6rePuRoB6a/X94Ip7012Lu1mko8zgX/ERlvzUZPGUEfeNdMnZwzyWxepU
ztxPVj380XbjPVxoLboQDudh/0EJsqm55t0iA/6aNEs9el5DZUg=
=p8vr
-----END PGP SIGNATURE-----

--------------M0TB40oEWIuLkKvXBEwVQ3Dm--
