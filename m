Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D985D530642
	for <lists+linux-man@lfdr.de>; Sun, 22 May 2022 23:37:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344497AbiEVVhk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 May 2022 17:37:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234556AbiEVVhj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 May 2022 17:37:39 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00D0A37AB3
        for <linux-man@vger.kernel.org>; Sun, 22 May 2022 14:37:37 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id ay35so6003215wmb.5
        for <linux-man@vger.kernel.org>; Sun, 22 May 2022 14:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=kXNQSOItzwVrkmtZjblgRHW6RKfuPn8uiT0th5XxWvE=;
        b=EBv9MhrId+9bjZyxaPPYWRikUhhx626xgqFkxLB3IoYQ7mbSTuI6AfzV9uEztqZIS8
         ZPEUgTrv498WOHS4+Bx+rMtTpgnuO3FqGewHGxrP0OWkWSyS+gUZOlaFv4TtyyVkGQKF
         wIhTKTLct8zBwmuVEtf3iU0dmDFP6T34ExSqaro6aYwCZbol3ZGyILrjNnLHOtkOR9ok
         R0lmAA+0ypm5Gpaez5JiFNiorbwzpDupNXzbdGVXeC3MSry4ktXdjIZb/pVyzNK/jQiJ
         L96YDMkLbEm7WXnUy7HkSdLMO5OddQDrkDhwDBz2ODSAx7xQ7aObaeFYyEsssEuZfmM+
         nzMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=kXNQSOItzwVrkmtZjblgRHW6RKfuPn8uiT0th5XxWvE=;
        b=rp4rt2MQ6f42ovoGie5WGaHkghXS9EbYVcUDs03yM/WEPn13td7QcP38JZsDvK4vQy
         t/trrA6yYECJ1ezT8coCupZjxGQMfPUiL0m5IQ8x/jZa/iSSYY+PL/Xfbea46FRz+vBY
         0spUaPNim/r+0FiTgTxUqOB4vQDVC/43DjKRib0EqoBFqOZ2Iw/XOs4pFvxBdsCQBcYm
         N27LstsvhUCbJNISapU2rae3QrG5A9Ct0gXkA9WOJmDmBTw8a/3AGuVBh/L/ppq1G6iA
         afM+jeTo2J6ZOw3dP01HEYWrtvaToDuawwBoD7+1LefbKDH0weddKnTqcT9FACiG83OK
         wtHg==
X-Gm-Message-State: AOAM531VmsWQFqGuA20D7GwbKIlA1jca8g70Qcux0Fj2wv5PORbzXxL4
        4uoxJNHxnDWjtojrc25Yfhs=
X-Google-Smtp-Source: ABdhPJwTZHbH3++QF6RHJK8z5Y67Ct8yQbXuG6gMUIB//A3E1GlQjCviw8hzsDM86rDVepx8n35P0Q==
X-Received: by 2002:a1c:f30b:0:b0:380:e444:86b9 with SMTP id q11-20020a1cf30b000000b00380e44486b9mr17558529wmq.81.1653255456488;
        Sun, 22 May 2022 14:37:36 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h22-20020adfa4d6000000b0020cff559b1dsm8257802wrb.47.2022.05.22.14.37.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 May 2022 14:37:35 -0700 (PDT)
Message-ID: <e8daa69c-8f07-6fe7-8e63-96e23f8deec6@gmail.com>
Date:   Sun, 22 May 2022 23:37:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH RESEND v5] fanotify.7, fanotify_mark.2: Document
 FAN_FS_ERROR
Content-Language: en-US
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Gabriel Krisman Bertazi <krisman@collabora.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>
References: <20220520180935.37796-1-krisman@collabora.com>
 <CAOQ4uxjd-xKz1=Z+165s4hX0aiBsbui2_+JAqaGr0AT0z5+scg@mail.gmail.com>
 <77ebe2f4-461a-4c3c-d53e-7a4c1f94e506@gmail.com>
 <CAOQ4uxjuVjDZN6+mvCV6Yk1=bn_oYVVxpS=Q6bn5=uQOSDv9wg@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAOQ4uxjuVjDZN6+mvCV6Yk1=bn_oYVVxpS=Q6bn5=uQOSDv9wg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------NUp5SUAjWTCWLma2kf243emv"
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
--------------NUp5SUAjWTCWLma2kf243emv
Content-Type: multipart/mixed; boundary="------------YJL4Ioa9x9piadICGSwR2z1L";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Gabriel Krisman Bertazi <krisman@collabora.com>,
 linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>,
 Matthew Bobrowski <repnop@google.com>
Message-ID: <e8daa69c-8f07-6fe7-8e63-96e23f8deec6@gmail.com>
Subject: Re: [PATCH RESEND v5] fanotify.7, fanotify_mark.2: Document
 FAN_FS_ERROR
References: <20220520180935.37796-1-krisman@collabora.com>
 <CAOQ4uxjd-xKz1=Z+165s4hX0aiBsbui2_+JAqaGr0AT0z5+scg@mail.gmail.com>
 <77ebe2f4-461a-4c3c-d53e-7a4c1f94e506@gmail.com>
 <CAOQ4uxjuVjDZN6+mvCV6Yk1=bn_oYVVxpS=Q6bn5=uQOSDv9wg@mail.gmail.com>
In-Reply-To: <CAOQ4uxjuVjDZN6+mvCV6Yk1=bn_oYVVxpS=Q6bn5=uQOSDv9wg@mail.gmail.com>

--------------YJL4Ioa9x9piadICGSwR2z1L
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQW1pciwNCg0KT24gNS8yMi8yMiAxODoxMiwgQW1pciBHb2xkc3RlaW4gd3JvdGU6DQo+
IEl0IGlzIGFwcGxpZWQgb24gdG9wIG9mOg0KPiANCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbGludXgtbWFuLzIwMjIwNTE0MTMxMzQ2LjEwMTcxLTEtYWx4Lm1hbnBhZ2VzQGdtYWls
LmNvbS9ULyN1DQoNCk9rYXksIEkgc2VlIHRoYXQgb3RoZXIgb25lIGlzIHBlbmRpbmcgc29t
ZSByZXdvcmRpbmcsIHNvIEknbGwgaG9sZCB0aGlzIG9uZS4NCg0KPiANCj4gV2UgaGF2ZSBh
IHJhdGhlciBsb25nIGJhY2tsb2cgb2YgbWFuIHBhZ2UgdXBkYXRlcyBwZW5kaW5nIG1lcmdl
DQo+IGZyb20gTWF0dGhldywgR2FicmllbCBhbmQgbXlzZWxmLg0KPiBXZSBuZWVkIHRvIG1l
cmdlIHRoZW0gYnkgb3JkZXIuDQo+IFRoZSBlbnRpcmUgc3RhY2sgaXMgYXZhaWxhYmxlIGlu
IFtCUkFOQ0hFU10gb24gbXkgZ2l0aHViIHRyZWUgWzFdLg0KPiANCj4gTGV0IG1lIHN1bW1h
cml6ZSBpdCBmb3IgeW91IGFnYWluOg0KDQpUaGFua3MuICBJJ2xsIHdyaXRlIGhlcmUgd2hh
dCBJIGtub3cgYWJvdXQgdGhlLCBqdXN0IHRvIGJlIHN1cmUgSSBkaWRuJ3QgDQptaXNzIGFu
eXRoaW5nLiAgSWYgeW91IG5lZWQgYW55dGhpbmcgZnJvbSBtZSwgcGxlYXNlIHRlbGwgbWUu
DQoNCj4gDQo+IEZBTl9SRVBPUlRfUElERkQgdjUuMTUgW2Zhbm90aWZ5X3BpZGZkXQ0KDQpQ
ZW5kaW5nIGEgcmV3b3JkaW5nIG9mIGEgcGFyYWdyYXBoLg0KDQo+IEZBTl9GU19FUlJPUiB2
NS4xNiBbZmFuLWZzLWVycm9yXQ0KDQpUaGlzIG9uZS4gIExvb2tzIGdvb2QgdG8gbWUuDQoN
Cj4gRkFOX1JFUE9SVF9UQVJHRVRfRklEIHY1LjE3IFtmYW5vdGlmeV90YXJnZXRfZmlkXQ0K
DQpJIGRvbid0IHNlZSB0aGlzIG9uZSBpbiBteSBtYm94IG9yIGxpbnV4LW1hbkAuDQpJIGFz
c3VtZSBpdCdzIG5vdCB5ZXQgcmVhZHk/DQoNCj4gRkFOX1JFTkFNRSB2NS4xNyBbZmFuX3Jl
bmFtZV0NCg0KSSBkb24ndCBzZWUgdGhpcyBlaXRoZXIuICBJIGFzc3VtZSBpdCdzIG5vdCBy
ZWFkeSBlaXRoZXIuDQoNCj4gDQo+IEFuZCBJIGhhdmUgbW9yZSBjaGFuZ2VzIGZvciB1cGNv
bWluZyB2NS4xOS4uLiA+DQo+IExldCBtZSBrbm93IGlmIGFueXRoaW5nIGlzIG5vdCBjbGVh
ci4NCj4gDQo+IEJUVywgaXMgdGhlcmUgYW55IHByb3NwZWN0IG9mIHVwZGF0aW5nIGtlcm5l
bC5vcmcgbWFuIHBhZ2VzDQo+IGFueXRpbWUgc29vbj8NCg0KTm90IGxpa2VseSBmb3IgMjAy
Mi4gIFNvcnJ5Lg0KDQo+IA0KPiBUaGFua3MsDQo+IEFtaXIuDQo+IA0KPiBbMV0gaHR0cHM6
Ly9naXRodWIuY29tL2FtaXI3M2lsL21hbi1wYWdlcw0KDQpSZWdhcmRzLA0KDQpBbGV4DQoN
Ci0tIA0KQWxlamFuZHJvIENvbG9tYXINCkxpbnV4IG1hbi1wYWdlcyBjb21haW50YWluZXI7
IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL21hbi1wYWdlcy8NCmh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvDQo=

--------------YJL4Ioa9x9piadICGSwR2z1L--

--------------NUp5SUAjWTCWLma2kf243emv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKKrRUACgkQnowa+77/
2zJ16Q/+ODL8Ki7PWLF8Okt/sfrcJkAbNQbCEzo7f/pp4PC7bu1jj45vY0eVloLg
Qox2iVEsejhtZBhnPYkd4+hdccHkMQbO6ia/RPQWUky0CRbSAmkqIXzNSx1bv9YT
TCjbApF2A57eOfwa/hV+mzPTFjP+FhWxnsDQFlPKRGyADRXeycBAxIdLVWTBwfiJ
QLPoCsm8enp5lrMWd/gsrzYU9CcMXTyQBNw15aYtCQAjZ6LQc+cQOVvFetkhvBF9
nru8XIFMHs4KBuv3moU10Q4TbtaTyss3h88Y/7xfWzZ8mPSozgZrTug8eyz+fN/p
4dUFV27xbxV9kJCYijO2bJ0UpKoJma21xfEajWTrAVg9Tdt+2LbaNBmwWik1zbHJ
8RJJnTTtIgU54gz0nzX9zSOT2W1RvEy73r3QbFl74nKZL2X13i1s0ntDzXlLLzRS
Q+SlX3qiLLry4BlfDjADz0Gd/95Ud5wc7/7QPeuFLaWKTnKCH4+3bFj/54qNPi0e
EnjlHwqydxsbiqL78DnrvHol77EJLVvoiahvP2+yzY2XCbmIBEVKnJ1MnYehr6jB
aOfE66O0zRltogPP1JdoGkst2IXzOu4WYcLQqHRYRJpOh8xF1wk4nfis8qP6joxq
IgxdQQRDHz21H1c2J+BbTAZVRSzUb51LMfUMOGCIgTplTd0Tvzc=
=wpm1
-----END PGP SIGNATURE-----

--------------NUp5SUAjWTCWLma2kf243emv--
