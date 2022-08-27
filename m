Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BA795A378F
	for <lists+linux-man@lfdr.de>; Sat, 27 Aug 2022 14:17:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231464AbiH0MPx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Aug 2022 08:15:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229659AbiH0MPw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Aug 2022 08:15:52 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC2E089932
        for <linux-man@vger.kernel.org>; Sat, 27 Aug 2022 05:15:50 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id bu22so4364969wrb.3
        for <linux-man@vger.kernel.org>; Sat, 27 Aug 2022 05:15:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=XondQpEZigYZ1FNZ9bcW4Yn8wt/TkJVoQCLnIxIhR/o=;
        b=OA3MBQNm661vPARSL2fqNcqz1izhvDP+wFgPlKFiebHpDzRG0R34kHpcHZ+OiMJu4y
         nD89eWj3dZfaN95vHFKs8owsI9cAuDokTt7xD4xxEEoNM4A7JGybwG6v/q1tsDydsgoL
         cUeO+eLnlfRU29xd+8eldjtZXNl/O3woIxZQmRhuFBrJk/zkASdaEeRzuZJeGFDhq8PW
         8HMjmovQ4hPZVIkAIQrFfKGCDYEhdj9iC5uGr5N2PygKSLE+SnhjUpJmX4lYU6aEDw8W
         IBGCi2aDy/Rj7O2k4XXENbvqo3s8E8fge+Cltyt6Hu9V/F5wVeWUleI3wqWj2yRv4SFa
         qe7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=XondQpEZigYZ1FNZ9bcW4Yn8wt/TkJVoQCLnIxIhR/o=;
        b=pPOzPxOmXVWoz7ffXBx83YCpx1yWf/RmS+tl6d2nTPsM7cSIOsve+Bak+NWL17lPE8
         /iY/ntMj/icy6q0/I7tb4fxkhBbCD471TJbEeshbkq5C1SHv+CHqsLsINvo5/VrGVCsU
         mtGX1JbenQh6nIyMBJ4cXyAR+g8I/SjQAXGty7sTM+1lZ9+OpK7LeSdbjcdMl6IQKjLJ
         IRG2342hLbZfgWa5Fxn9s3plcJDxCJF4qNVrzeVi8hr/XnipsF2O98kSgGF1xCBjNsle
         cLUSgkiSXljc/T1K/NiwIJzD4Z+ITSfhmrzwS5d8AHkTAhAsYXfLaIMwftVuPxo1mP/8
         MJsw==
X-Gm-Message-State: ACgBeo2wuO6rL3tTTMtWL9w5hPsmCS6E0AfsR5ECugzFEnSBnhzUHJsy
        7h/SPD7pStA3DzTB/LXyxkHW/6wdlr8=
X-Google-Smtp-Source: AA6agR4IWWVBpaMwIilg/HwTOH0H+cg/wJedp/tn0+Yg4SvGJVhe2XiRmf58B50ENLee01mAz1Ee/Q==
X-Received: by 2002:a5d:6e8e:0:b0:21d:ea5:710f with SMTP id k14-20020a5d6e8e000000b0021d0ea5710fmr2094421wrz.48.1661602549337;
        Sat, 27 Aug 2022 05:15:49 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h4-20020a05600c350400b003a54f49c1c8sm3158072wmq.12.2022.08.27.05.15.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Aug 2022 05:15:48 -0700 (PDT)
Message-ID: <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
Date:   Sat, 27 Aug 2022 14:15:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <Ywn7jMtB5ppSW0PB@asta-kit.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Y7SF5J0jIzj9FJUPiSGLWqPM"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Y7SF5J0jIzj9FJUPiSGLWqPM
Content-Type: multipart/mixed; boundary="------------pCSnYSpRIg0xPr6LG942X87j";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>
Cc: linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>
Message-ID: <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
In-Reply-To: <Ywn7jMtB5ppSW0PB@asta-kit.de>

--------------pCSnYSpRIg0xPr6LG942X87j
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSW5nbywNCg0KT24gOC8yNy8yMiAxMzoxMCwgSW5nbyBTY2h3YXJ6ZSB3cm90ZToNCj4g
SGkgQWxlamFuZHJvLA0KPiANCj4+IC0uQkkgImNoYXIgKmdldGN3ZChjaGFyICoiIGJ1ZiAi
LCBzaXplX3QgIiBzaXplICk7DQo+PiArLkJJICJjaGFyICpnZXRjd2QoY2hhciAiIGJ1ZiBb
IHNpemUgIl0sIHNpemVfdCAiIHNpemUgKTsNCj4gDQo+IEkgZGlzbGlrZSB0aGlzLg0KPiAN
Cj4gTWFudWFsIHBhZ2VzIHNob3VsZCBzaG93IGZ1bmN0aW9uIHByb3RvdHlwZXMgYXMgdGhl
eSByZWFsbHkgYXJlIGluDQo+IHRoZSBoZWFkZXIgZmlsZSwgb3IgaWYgdGhlIGhlYWRlciBm
aWxlIGNvbnRhaW5zIHVzZWxlc3MgZmx1ZmYgbGlrZQ0KPiAicmVzdHJpY3QiLCBhIHNob3J0
ZW5lZCBmb3JtIHNob3dpbmcgdGhlIGVzc2VuY2UgdGhhdCBhY3R1YWxseSBtYXR0ZXJzDQo+
IGZvciB1c2luZyB0aGUgQVBJLg0KDQpSZWdhcmRpbmcgcmVzdHJpY3QsIGl0IGlzIGVzc2Vu
dGlhbCB0byBkaWZmZXJlbnRpYXRlIG1lbWNweSgzKSBhbmQgDQptZW1tb3ZlKDMpLCB3aGlj
aCBhcmUgb3RoZXJ3aXNlIGlkZW50aWNhbDoNCg0KICAgICB2b2lkICptZW1tb3ZlKHZvaWQg
KmRlc3QsIGNvbnN0IHZvaWQgKnNyYywgc2l6ZV90IG4pOw0KDQogICAgIHZvaWQgKm1lbWNw
eSh2b2lkICpyZXN0cmljdCBkZXN0LCBjb25zdCB2b2lkICpyZXN0cmljdCBzcmMsDQogICAg
ICAgICAgICAgICAgICBzaXplX3Qgbik7DQoNCkkgZ3Vlc3MgeW91IHdpbGwgYXJndWUgdGhh
dCB0aGUgZGVzY3JpcHRpb24gc3BlY2lmaWVkIHRoZSBkaWZmZXJlbmNlLCBzbyANCml0J3Mg
bm90IG5lY2Vzc2FyeSBpbiB0aGUgc3lub3BzaXMuICBUaGF0J3MgdHJ1ZS4gIEJ1dCByZWFs
aXR5IGlzIHRoYXQgDQpwcm9ncmFtbWVycyBoYXZlIGhpc3RvcmljYWxseSBub3QgY2FyZWQg
YWJvdXQgdGhvc2UgZGV0YWlsczsgc28gbXVjaCANCnRoYXQgZ2xpYmMgaGFkIHRvIHByb3Zp
ZGUgYSBjb21wYXQgc3ltYm9sIGZvciBvbGQgcHJvZ3JhbXMsIHdoaWNoIA0KYmFzaWNhbGx5
IG1hcHMgbWVtY3B5KDMpIHRvIG1lbW1vdmUoMykgZm9yIGNvZGUgbGlua2VkIGFnYWluc3Qg
b2xkIGdsaWJjIA0KdmVyc2lvbnMuDQoNCkluIHNvbWUgY2FzZXMsIGxpa2UgaW4gbWVtY3B5
KDMpLCB0aGUgdXNlIG9mIHJlc3RyaWN0IGlzIGltcG9ydGFudDsgaW4gDQpvdGhlcnMsIHN1
Y2ggYXMgaW4gcHJpbnRmKDMpLCBpdCBpcyBpcnJlbGV2YW50LiAgQnV0IGZvciBjb25zaXN0
ZW5jeSwgSSANCmRlY2lkZWQgdG8gdXNlIHJlc3RyaWN0IGV2ZXJ5d2hlcmUgd2hlcmUgb25l
IG9mIFBPU0lYLCBvciBnbGliYyB1c2VkIGl0IA0KKGFzc3VtaW5nIHRoYXQgUE9TSVggd291
bGQgbmV2ZXIgcmVtb3ZlIGEgcmVzdHJpY3QgcXVhbGlmaWVyIGlmIElTTyBDIA0KcmVxdWly
ZWQgaXQpLiAgSW4gc29tZSBjYXNlcywgZ2xpYmMgYW5kIFBPU0lYIGRpZmZlcmVkLCBhbmQg
SSB1c2VkIHRoZSANCm1vc3QgcmVzdHJpY3RpdmUgcHJvdG90eXBlLg0KDQpJIGRpZG4ndCBh
ZGQgdGhhdCBjaGFuZ2UgYWJvdXQgcmVzdHJpY3Qgd2l0aG91dCBjb25jZXJucyBhYm91dCBi
ZWluZyB0b28gDQpub2lzeS4gIEkgaGFkIHRoZW0sIGFuZCBzdGlsbCBoYXZlIHRoZW0uICBC
dXQgSSB0aGluayB0aGUgYWRkZWQgdmFsdWUgaXMgDQptb3JlIHRoYW4gdGhlIG9uZSBJIHJl
bW92ZWQuICBOb3cgcHJvdG90eXBlcyBhcmUgbW9yZSBwcmVjaXNlLCBhbmQgDQpvdmVyY29t
aW5nIHRoZSBub2lzZSBzaG91bGRuJ3QgYmUgdG9vIG11Y2ggb2YgYSBwcm9ibGVtLg0KDQpJ
biB0aGUgY2FzZSBvZiAoYWJ1c2luZykgVkxBIHN5bnRheCwgaXQncyBtb3JlIG9yIGxlc3Mg
dGhlIHNhbWUgdGhpbmcsIA0Kd2l0aCBhIGJpdCBvZiBhZGRlZCBXVEYgbW9tZW50cyBhYm91
dCB0aGUgIldoeSBpcyB0aGlzIGNvZGUgdXNpbmcgYW4gDQppZGVudGlmaWVyIGRlY2xhcmVk
IHJpZ2h0IGFmdGVyIGl0PyAgSXMgaXQgYSB0eXBvPyIuICBJIGd1ZXNzIHRoZSBXVEYgDQpt
b21lbnRzIHdpbGwgYmUgbW9yZSByZWxldmFudCB0aGUgZmlyc3QgZmV3IG1vbnRocywgYW5k
IGxlc3Mgc28gd2hlbiANCnRpbWUgcGFzc2VzIGFuZCBwcm9ncmFtbWVycyBnZXQgdXNlZCB0
byB0aGUgc3ludGF4Lg0KDQpJIHVzZWQgc3RybGNweSgzKSBpbiB0aGUgY29tbWl0IG1lc3Nh
Z2Ugb24gcHVycG9zZSwgYXMgaXQncyBhIGdyZWF0IA0KZXhhbXBsZSwgc2ltaWxhciB0byBo
b3cgZ29vZCBpcyB0aGUgb25lIGFib3V0IG1lbWNweSgzKS4gIFRoZSBjb21wZXRpdG9yIA0K
KGFzIHRoZXkgcHJvbW90ZWQgaXQpIHRvIHN0cmxjcHkoMykgaW4gdGhlIExpbnV4IGtlcm5l
bCBpcyBzdHJzY3B5KDkpIA0KKG5vdCBhdmFpbGFibGUgdG8gdXNlciBzcGFjZSkuICBUaGV5
IHNlZW0gdG8gYmUgdGhlIHNhbWUgdGhpbmcsIGJ1dCB0aGV5IA0KYXJlIG5vdC4gIExldCdz
IHNob3cgdGhlaXIgcHJvdG90eXBlczoNCg0KICAgICBzaXplX3Qgc3RybGNweShjaGFyIGRz
dFtzaXplXSwgY29uc3QgY2hhciAqc3JjLCBzaXplX3Qgc2l6ZSk7DQoNCiAgICAgc3NpemVf
dCBzdHJzY3B5KGNoYXIgZHN0W3NpemVdLCBjb25zdCBjaGFyIHNyY1tzaXplXSwgc2l6ZV90
IHNpemUpOw0KDQogRnJvbSB0aG9zZSBwcm90b3R5cGVzLCBJIGNhbiBhbHJlYWR5IHNlZSB0
aGF0IHRoZSBrZXJuZWwgYWNjZXB0cyBhIA0KcG9zc2libHktbm90LXRlcm1pbmF0ZWQgc3Ry
aW5nLCB3aGlsZSBzdHJsY3B5KDMpIHJlcXVpcmVzIHRoYXQgdGhlIA0Kc3RyaW5nIGlzIHRl
cm1pbmF0ZWQuICBJIGRpZG4ndCB1c2UgcmVzdHJpY3QgaGVyZSB0byBtb3JlIGNsZWFybHkg
c2hvdyANCnRoZSBkaWZmZXJlbmNlIGluIFZMQSBzeW50YXggKHRoZXJlZm9yZSBhZG1pdHRp
bmcgdGhhdCBhIGJpdCBvZiBub2lzZSBpcyANCnRydWUpLg0KDQpUaGVuIG9mIGNvdXJzZSwg
dGhlcmUncyBubyBkaWZmZXJlbmNlIGluIHRoZSBwcm90b3R5cGVzIGJldHdlZW4gDQpzdHJz
Y3B5KDkpIGFuZCBzdHJuY3B5KDMpLCBhcGFydCBmcm9tIHRoZSByZXR1cm4gdmFsdWUsIG9m
IGNvdXJzZToNCg0KICAgICBjaGFyICpzdHJuY3B5KGNoYXIgZGVzdFtuXSwgY29uc3QgY2hh
ciBzcmNbbl0sIHNpemVfdCBuKTsNCg0KQW5kIHlldCB0aGV5IGFyZSBkaWZmZXJlbnQgZnVu
Y3Rpb25zIChvbmUgZ3VhcmFudGVlcyB0aGUgcHJvZHVjZWQgc3RyaW5nIA0KdG8gYmUgTlVM
LXRlcm1pbmF0ZWQgYW5kIHRoZSBvdGhlciBub3QgKGFuZCBhbHNvIGNsZWFycyB1bm5lY2Vz
c2FyaWx5IA0KdGhlIHJlc3Qgb2YgdGhlIGJ1ZmZlciwgc28gc3RybmNweSgzKSBpcyBqdXN0
IGJyb2tlbikuICBCdXQgdGhleSBhcmUgDQptb3JlIG9yIGxlc3MgaW4gdGhlIHNhbWUgbGVh
Z3VlLCBhcyB0aGV5IGFyZSB1c2VkIGZvciB0cmFuc2Zvcm1pbmcgDQp1bnRydXN0ZWQgc3Ry
aW5ncyBpbnRvIHByb3BlciBzdHJpbmdzIChzdHJuY3B5KDMpIG9ubHkgaWYgeW91IHVzZSBp
dCANCndpdGggc2l6ZW9mKGJ1ZikgLSAxKSwgYW5kIHRoYXQncyBzaG93biBieSB0aGUgcHJv
dG90eXBlcy4NCg0KRG8geW91IHJlZ2FyZCB0aGUgKGFidXNlZCkgVkxBIHN5bnRheCBhcyBz
b21ldGhpbmcgbXVjaCB3b3JzZSB0aGFuIHRoZSANCnVzZSBvZiByZXN0cmljdD8gIE9yIGFy
ZSB0aGV5IG1vcmUgb3IgbGVzcyBlcXVpdmFsZW50IHRvIHlvdT8NCg0KPiAgVGhleSBzaG91
bGQgY2VydGFpbmx5IG5vdCBzaG93IHNvbWV0aGluZyBpbWFnaW5hcnkNCj4gdGhhdCBkb2Vz
IG5vdCBtYXRjaCByZWFsaXR5LCBhbmQgZXZlbiBsZXNzIHNvIHVzaW5nIGludmFsaWQgc3lu
dGF4Lg0KDQpXZWxsLCBub3QgdGhhdCBJIGhhdmVuJ3QgaGFkIHRob3NlIHRob3VnaHRzLCBi
dXQgd2UgYWxyZWFkeSB1c2UgaWxlZ2FsIA0Kc3ludGF4IGluIHNvbWUgY2FzZXMgZm9yIGdv
b2QgcmVhc29ucy4gIFNlZSBmb3IgZXhhbXBsZSBvcGVuKDIpOg0KDQogICAgICAgIGludCBv
cGVuKGNvbnN0IGNoYXIgKnBhdGhuYW1lLCBpbnQgZmxhZ3MpOw0KICAgICAgICBpbnQgb3Bl
bihjb25zdCBjaGFyICpwYXRobmFtZSwgaW50IGZsYWdzLCBtb2RlX3QgbW9kZSk7DQoNCk9m
IGNvdXJzZSwgeW91IGNhbid0IGRlY2xhcmUgdHdvIGNvbmZsaWN0aW5nIHByb3RvdHlwZXMg
bGlrZSB0aGF0LiAgQnV0IA0KaXQgc2hvd3MgdGhhdCB0aG9zZSBhcmUgdGhlIHR3byBvbmx5
IHdheXMgeW91IGNhbiB1c2UgaXQuICBJJ2xsIGFkbWl0IA0KdGhhdCBhIGxvbmcgdGltZSBh
Z28gSSB0b2xkIE1pY2hhZWwgdGhhdCB3ZSBzaG91bGQgZml4IHRob3NlIHByb3RvdHlwZXMg
DQp0byBtYXRjaCByZWFsaXR5LCB3aXRoIGxlZ2FsIHN5bnRheCwgYmVjYXVzZSBvdGhlcndp
c2UgdGhleSBhcmUgDQpjb25mdXNpbmcuICBCdXQgd2l0aCB0aW1lLCBJIGdvdCB1c2VkIHRv
IHRoYXQgd2VpcmRuZXNzLCBhbmQgaXQgbm93IA0Kc2VlbXMgdG8gbWUgbW9yZSBpbmZvcm1h
dGl2ZSB0aGFuIGp1c3QgJy4uLicgYXMgRnJlZUJTRCBhbmQgT3BlbkJTRCANCmRvY3VtZW50
Lg0KDQo+IA0KPiBZb3VycywNCj4gICAgSW5nbw0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0g
DQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMv
Pg0K

--------------pCSnYSpRIg0xPr6LG942X87j--

--------------Y7SF5J0jIzj9FJUPiSGLWqPM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMKCuQACgkQnowa+77/
2zIUDA/9F9fkMVHui+u9gzeVCq9sdP4d/D586xf7p/ZSNI/CusGWCpXix+gM7LsD
RhCryjg6FCFXbo4m+ul3CnTUQVmiCqNo+KRwbX7ohzRf0kXMTOltrM79DhRebKbS
bUgHw9xopL3L7Z76/rWHE2yV1FT3P2jPHVjV1jQfuS4cbIqZdBzR0WPWilmKrC7H
Ptn+emPalJbtVNz854OS+LYPlnRlpFOfJblYpPoVpFuBxAFet2f06ehNa4Ur6/P4
GNpvpEr15szX6J3+AFaOib9spTO1zmVrS1T8DC9CpSqhFkF31IbG339EeHPGpKwX
rAQWx4QlIHxFLytyxIjaxqRbW4nif43QgVSGNPtKZeBB4wGyQfiL5xoRiLhAJ0Hp
8PptSMxnx6sgN0RC0OY8aWYV5BX5oHh2iauINZL6RmIet4aHOCiO/mYwcyI9X93a
3T4bPQFpLnnsNDcEfJ8lSKEZceFPYU7S+/KIMnrBEg4Iph9anDNGSw3XNPV1HBS8
UKYJwdXrndDOtaJfOYoeJgePclo0epldNFwl5Bs1aSDwejbM4H8640Ry8OqELMf7
aGYBVE/CUA4hdtfXwCX7GRTXhKSOuUZGv9MIr3oWaRQK1huhsbiL6XkxrMW8zCz0
bZLsu9uLZ1/+xIHfql3FE+PqL8QZWzH0IuS3GGrgTLNA+CDf1Os=
=S/KN
-----END PGP SIGNATURE-----

--------------Y7SF5J0jIzj9FJUPiSGLWqPM--
