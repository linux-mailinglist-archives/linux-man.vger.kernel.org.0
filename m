Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7232B5ABF25
	for <lists+linux-man@lfdr.de>; Sat,  3 Sep 2022 15:41:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230274AbiICNl2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Sep 2022 09:41:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229595AbiICNl1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Sep 2022 09:41:27 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 173325302D
        for <linux-man@vger.kernel.org>; Sat,  3 Sep 2022 06:41:26 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id k6-20020a05600c1c8600b003a54ecc62f6so3017608wms.5
        for <linux-man@vger.kernel.org>; Sat, 03 Sep 2022 06:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=MwG3KmRjuZ+magU91b544PhkQ7iMadDzPI5qNzFfir4=;
        b=GRtqEtT9Cauk+JouW09P0XoB/y8rOqA7UYXUwQLN+L0wslee1vP9UD4p6Gp//rjEwV
         5zTABdZFV/kWvY61ZtUPEhj1+0pLb3IisjdKHroNZ14O+G1w/TwQ7BbcHqf6TNJhhiBv
         LiE/EcK5kfm1+G7YDHB3XJzN3R/p9K/ErXR19aoz28DZ0Gevnrvzy0HJhydzbFKDmTUR
         l2MRh7DWZPW0MTnUQryqbPcaYuKmbFUeruIMc0wbX7KhLqbUKb7XTALoPu11ya7vqhG1
         TyB5PPkiuk70zN/v9azfV2APfyiW+MaB0Ufscd/EzlX1TTTgxv6Z/AXAFsvv93swc7pl
         9DKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=MwG3KmRjuZ+magU91b544PhkQ7iMadDzPI5qNzFfir4=;
        b=JMfXg/xrMOypfmc12MIKPvaPuBn/m3WDDTsf3fUFPIyCN+nhO2hCFUWRauPr09RnGd
         tKhgwR0jCMZk1WuyqSAq4TN56wlnnwxdq/0zYDPse1hVQRgWEkBH9RriWncujP0U0yT9
         47IWUhjEUTMQeEIFeQoka9SlR79cZEoYQUl77/WSi5rWTNbvk6KOWLyf8k6nKfD2NXMn
         ayj2pkv0h5YS4gSYID1LfdlD7y1W+ckBVBXY6WqIRCucRgGEQcZb7k1X0QW4+gjgwJkV
         BFBV9pQz9UF2vfyqmq85ZR5BA+z6vZhtR33gH8dkP/FzhpBxT+tuL1p1RzqDtpVWC+Hy
         pimA==
X-Gm-Message-State: ACgBeo1dVGfPrhwCQjua+lN/w/fbGedIQGgWoaMQ1angmbXDjF7lLBIW
        ufrBYxDkkUsC7b2AqOEsKObpRaeBB8A=
X-Google-Smtp-Source: AA6agR6DHCMp7bNYd5SwLWZyNN+glJKuT37FwjdrhJ++eK3ZXwPf7hl3pfhw7DGKWsUKItQDwXM61g==
X-Received: by 2002:a05:600c:1990:b0:3a6:2a00:3ddb with SMTP id t16-20020a05600c199000b003a62a003ddbmr6118482wmq.72.1662212484399;
        Sat, 03 Sep 2022 06:41:24 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y10-20020adfe6ca000000b002250fa18eb6sm3739733wrm.71.2022.09.03.06.41.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Sep 2022 06:41:23 -0700 (PDT)
Message-ID: <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
Date:   Sat, 3 Sep 2022 15:41:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
To:     Martin Uecker <uecker@tugraz.at>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------gCN4ZpHCKFc4x1M0XAxSm90W"
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
--------------gCN4ZpHCKFc4x1M0XAxSm90W
Content-Type: multipart/mixed; boundary="------------bCR00T0CbWdRF2pwHIfjklfk";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
In-Reply-To: <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>

--------------bCR00T0CbWdRF2pwHIfjklfk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWFydGluLA0KDQpPbiA5LzMvMjIgMTQ6NDcsIE1hcnRpbiBVZWNrZXIgd3JvdGU6DQpb
Li4uXQ0KDQo+IEdDQyB3aWxsIHdhcm4gaWYgdGhlIGJvdW5kIGlzIHNwZWNpZmllZCBpbmNv
bnNpc3RlbnRseSBiZXR3ZWVuDQo+IGRlY2xhcmF0aW9ucyBhbmQgYWxzbyBlbWl0IHdhcm5p
bmdzIGlmIGl0IGNhbiBzZWUgdGhhdCBhIGJ1ZmZlcg0KPiB3aGljaCBpcyBwYXNzZWQgaXMg
dG9vIHNtYWxsOg0KPiANCj4gaHR0cHM6Ly9nb2Rib2x0Lm9yZy96L1BzalBHMW52Nw0KDQpU
aGF0J3MgdmVyeSBnb29kIG5ld3MhDQoNCkJUVywgaXQncyBuaWNlIHRvIHNlZSB0aGF0IEdD
QyBkb2Vzbid0IG5lZWQgJ3N0YXRpYycgZm9yIGFycmF5IA0KcGFyYW1ldGVycy4gIEkgbmV2
ZXIgdW5kZXJzdG9vZCB3aGF0IHRoZSBzdGF0aWMga2V5d29yZCBhZGRzIHRoZXJlLiANClRo
ZXJlJ3Mgbm8gd2F5IG9uZSBjYW4gc3BlY2lmeSBhbiBhcnJheSBzaXplIGFuIG1lYW4gYW55
dGhpbmcgb3RoZXIgdGhhbiANCnJlcXVpcmluZyB0aGF0LCBmb3IgYSBub24tbnVsbCBwb2lu
dGVyLCB0aGUgYXJyYXkgc2hvdWxkIGhhdmUgYXQgbGVhc3QgDQp0aGF0IHNpemUuDQoNCj4g
DQo+IA0KPiBCVFc6IElmIHlvdSBkZWNsYXJlIHBvaW50ZXJzIHRvIGFycmF5cyAobm90IGZp
cnN0IGVsZW1lbnRzKSB5b3UNCj4gY2FuIGdldCBydW4tdGltZSBib3VuZHMgY2hlY2tpbmcg
d2l0aCBVQlNhbjoNCj4gDQo+IGh0dHBzOi8vZ29kYm9sdC5vcmcvei9Udk1vODlXZlANCg0K
Q291bGRuJ3QgdGhhdCBiZSBjYXVnaHQgYXQgY29tcGlsZSB0aW1lPyAgbiBpcyBjZXJ0YWlu
bHkgb3V0IG9mIGJvdW5kcyANCmFsd2F5cyBmb3Igc3VjaCBhbiBhcnJheSwgc2luY2UgdGhl
IGxhc3QgZWxlbWVudCBpcyBuLTEuDQoNCj4gDQo+IA0KPj4NCj4+IEFsc28sIG5ldyBjb2Rl
IGNhbiBiZSBkZXNpZ25lZCBmcm9tIHRoZSBiZWdpbm5pbmcgc28gdGhhdCBzaXplcyBnbw0K
Pj4gYmVmb3JlIHRoZWlyIGNvcnJlc3BvbmRpbmcgYXJyYXlzLCBzbyB0aGF0IG5ldyBjb2Rl
IHdvbid0IHR5cGljYWxseSBiZQ0KPj4gYWZmZWN0ZWQgYnkgdGhlIGxhY2sgb2YgdGhpcyBm
ZWF0dXJlIGluIHRoZSBsYW5ndWFnZS4NCj4+DQo+PiBUaGlzIGxlYXZlcyB1cyB3aXRoIGxl
Z2FjeSBjb2RlLCBlc3BlY2lhbGx5IGxpYmMsIHdoaWNoIGp1c3Qgd29ya3MsIGFuZA0KPj4g
ZG9lc24ndCBoYXZlIGFueSB1cmdlbnQgbmVlZHMgdG8gY2hhbmdlIHRoZWlyIHByb3RvdHlw
ZXMgaW4gdGhpcyByZWdhcmQNCj4+ICh0aGV5IGNvdWxkLCB0byBpbXByb3ZlIHN0YXRpYyBh
bmFseXNpcywgYnV0IG5vdCB3aGF0IHdlJ2QgY2FsbCB1cmdlbnQpLg0KPiANCj4gSXQgd291
bGQgYmUgdXNlZnVsIHN0ZXAgdG8gZmluZCBvdXQtb2YtYm91bmRzIHByb2JsZW0gaW4NCj4g
YXBwbGljYXRpb25zIHVzaW5nIGxpYmMuDQoNClllcCwgaXQgd291bGQgYmUgdmVyeSB1c2Vm
dWwgZm9yIHRoYXQuICBOb3QgdXJnZW50LCBidXQgeWVzLCB2ZXJ5IHVzZWZ1bC4NCg0KDQo+
PiBMZXQncyB0YWtlIGFuIGV4YW1wbGU6DQo+Pg0KPj4NCj4+ICAgICAgICAgIGludCBnZXRu
YW1laW5mbyhjb25zdCBzdHJ1Y3Qgc29ja2FkZHIgKnJlc3RyaWN0IGFkZHIsDQo+PiAgICAg
ICAgICAgICAgICAgICAgICAgICAgc29ja2xlbl90IGFkZHJsZW4sDQo+PiAgICAgICAgICAg
ICAgICAgICAgICAgICAgY2hhciAqcmVzdHJpY3QgaG9zdCwgc29ja2xlbl90IGhvc3RsZW4s
DQo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgY2hhciAqcmVzdHJpY3Qgc2Vydiwgc29j
a2xlbl90IHNlcnZsZW4sDQo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IGZsYWdz
KTsNCj4+DQo+PiBhbmQgc29tZSB0cmFuc2Zvcm1hdGlvbnM6DQo+Pg0KPj4NCj4+ICAgICAg
ICAgIGludCBnZXRuYW1laW5mbyhjb25zdCBzdHJ1Y3Qgc29ja2FkZHIgKnJlc3RyaWN0IGFk
ZHIsDQo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgc29ja2xlbl90IGFkZHJsZW4sDQo+
PiAgICAgICAgICAgICAgICAgICAgICAgICAgY2hhciBob3N0W3Jlc3RyaWN0IGhvc3RsZW5d
LCBzb2NrbGVuX3QgaG9zdGxlbiwNCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBjaGFy
IHNlcnZbcmVzdHJpY3Qgc2Vydmxlbl0sIHNvY2tsZW5fdCBzZXJ2bGVuLA0KPj4gICAgICAg
ICAgICAgICAgICAgICAgICAgIGludCBmbGFncyk7DQo+Pg0KPj4NCj4+ICAgICAgICAgIGlu
dCBnZXRuYW1laW5mbyhzb2NrbGVuX3QgaG9zdGxlbjsNCj4+ICAgICAgICAgICAgICAgICAg
ICAgICAgICBzb2NrbGVuX3Qgc2VydmxlbjsNCj4+ICAgICAgICAgICAgICAgICAgICAgICAg
ICBjb25zdCBzdHJ1Y3Qgc29ja2FkZHIgKnJlc3RyaWN0IGFkZHIsDQo+PiAgICAgICAgICAg
ICAgICAgICAgICAgICAgc29ja2xlbl90IGFkZHJsZW4sDQo+PiAgICAgICAgICAgICAgICAg
ICAgICAgICAgY2hhciBob3N0W3Jlc3RyaWN0IGhvc3RsZW5dLCBzb2NrbGVuX3QgaG9zdGxl
biwNCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBjaGFyIHNlcnZbcmVzdHJpY3Qgc2Vy
dmxlbl0sIHNvY2tsZW5fdCBzZXJ2bGVuLA0KPj4gICAgICAgICAgICAgICAgICAgICAgICAg
IGludCBmbGFncyk7DQo+Pg0KPj4gKEknbSBub3Qgc3VyZSBpZiBJIHVzZWQgY29ycmVjdCBH
TlUgc3ludGF4LCBzaW5jZSBJIG5ldmVyIHVzZWQgdGhhdA0KPj4gZXh0ZW5zaW9uIG15c2Vs
Zi4pDQo+Pg0KPj4gVGhlIGZpcnN0IHRyYW5zZm9ybWF0aW9uIGFib3ZlIGlzIG5vbi1hbWJp
Z3VvdXMsIGFzIGNvbmNpc2UgYXMgcG9zc2libGUsDQo+PiBhbmQgaXRzIG9ubHkgaXNzdWUg
aXMgdGhhdCBpdCBtaWdodCBjb21wbGljYXRlIHRoZSBpbXBsZW1lbnRhdGlvbiBhIGJpdA0K
Pj4gdG9vIG11Y2guICBJIGRvbid0IHRoaW5rIGZvcndhcmQtdXNpbmcgYSBwYXJhbWV0ZXIn
cyBzaXplIHdvdWxkIGJlIHRvbw0KPj4gbXVjaCBvZiBhIHBhcnNpbmcgcHJvYmxlbSBmb3Ig
aHVtYW4gcmVhZGVycy4NCj4gDQo+IA0KPiBJIHBlcnNvbmFsbHkgZmluZCB0aGUgc2Vjb25k
IGZvcm0gbm90IHRlcnJpYmxlLiAgQmVpbmcNCj4gYWJsZSB0byByZWFkIGNvZGUgbGVmdC10
by1yaWdodCwgdG9wLWRvd24gaXMgaGVscGZ1bCBpbiBtb3JlDQo+IGNvbXBsaWNhdGVkIGV4
YW1wbGVzLg0KPiANCj4gDQo+IA0KPj4gVGhlIHNlY29uZCBvbmUgaXMgdW5uZWNlc3Nhcmls
eSBsb25nIGFuZCB2ZXJib3NlLCBhbmQgc2VtaWNvbG9ucyBhcmUgbm90DQo+PiB2ZXJ5IGRp
c3Rpbmd1aXNoYWJsZSBmcm9tIGNvbW1hcywgZm9yIGh1bWFuIHJlYWRlcnMsIHdoaWNoIG1h
eSBiZSB2ZXJ5DQo+PiBjb25mdXNpbmcuDQo+Pg0KPj4gICAgICAgICAgaW50IGZvbyhpbnQg
YTsgaW50IGJbYV0sIGludCBhKTsNCj4+ICAgICAgICAgIGludCBmb28oaW50IGEsIGludCBi
W2FdLCBpbnQgbyk7DQo+Pg0KPj4gVGhvc2UgdHdvIGFyZSB2ZXJ5IGRpZmZlcmVudCB0byB0
aGUgY29tcGlsZXIsIGFuZCB5ZXQgdmVyeSBzaW1pbGFyIHRvDQo+PiB0aGUgaHVtYW4gZXll
LiAgSSBkb24ndCBsaWtlIGl0LiAgVGhlIGZhY3QgdGhhdCBpdCBhbGxvd3MgZm9yIHNpbXBs
ZXINCj4+IGNvbXBpbGVycyBpc24ndCBlbm91Z2ggdG8gb3ZlcmNvbWUgdGhlIHJlYWRhYmls
aXR5IGlzc3Vlcy4NCj4gDQo+IFRoaXMgaXMgdHJ1ZSwgSSB3b3VsZCBwcm9iYWJseSB1c2Ug
aXQgd2l0aCBhIGNvbW1hIGFuZC9vcg0KPiBzeW50YXggaGlnaGxpZ2h0aW5nLg0KPiANCj4g
DQo+PiBJIHRoaW5rIEknZCBwcmVmZXIgaGF2aW5nIHRoZSBmb3J3YXJkLXVzaW5nIHN5bnRh
eCBhcyBhIG5vbi1zdGFuZGFyZA0KPj4gZXh0ZW5zaW9uIC0tb3IgYSBzdGFuZGFyZCBidXQg
b3B0aW9uYWwgbGFuZ3VhZ2UgZmVhdHVyZS0tIHRvIGF2b2lkDQo+PiBmb3JjaW5nIHNtYWxs
IGNvbXBpbGVycyB0byBpbXBsZW1lbnQgaXQsIHJhdGhlciB0aGFuIGhhdmluZyB0aGUgR05V
DQo+PiBleHRlbnNpb24gc3RhbmRhcmRpemVkIGluIGFsbCBjb21waWxlcnMuDQo+IA0KPiBU
aGUgcHJvYmxlbXMgd2l0aCB0aGUgc2Vjb25kIGZvcm0gYXJlOg0KPiANCj4gLSBpdCBpcyBu
b3QgMTAwJSBiYWNrd2FyZHMgY29tcGF0aWJsZSAod2hpY2ggbWF5YmUgb2sgdGhvdWdoKSBh
cw0KPiB0aGUgc2VtYW50aWNzIG9mIHRoZSBmb2xsb3dpbmcgY29kZSBjaGFuZ2VzOg0KPiAN
Cj4gaW50IG47DQo+IGludCBmb28oaW50IGFbbl0sIGludCBuKTsgLy8gcmVmZXJzIHRvIGRp
ZmZlcmVudCBuIQ0KPiANCj4gQ29kZSB3cml0dGVuIGZvciBuZXcgY29tcGlsZXJzIGNvdWxk
IHRoZW4gYmUgbWlzdW5kZXJzdG9vZA0KPiBieSBvbGQgY29tcGlsZXJzIHdoZW4gYSB2YXJp
YWJsZSB3aXRoICduJyBpcyBpbiBzY29wZS4NCj4gDQo+IA0KDQpIbW1tLCB0aGlzIG9uZSBp
cyBzZXJpb3VzLiAgSSBjYW4ndCBzZWVtIHRvIHNvbHZlIGl0IHdpdGggdGhhdCBzeW50YXgu
DQoNCj4gLSBpdCB3b3VsZCBnZW5lcmFsbHkgYmUgZnVuZGFtZW50YWxseSBuZXcgdG8gQyB0
byBoYXZlDQo+IGJhY2t3YXJkcyByZWZlcmVuY2VzIGFuZCBwYXJzZXIgbWlnaHQgbmVlZCB0
byBiZSBjaGFuZ2VzDQo+IHRvIGFsbG93IHRoaXMNCj4gDQo+IA0KPiAtIGEgY29tcGlsZXIg
b3IgdG9vbCB0aGVuIGhhcyB0byBkZWFsIGFsc28gd2l0aCB1Z2x5DQo+IGNvcm5lciBjYXNl
cyBzdWNoIGFzIG11dHVhbCByZWZlcmVuY2VzOg0KPiANCj4gaW50IGZvbyhpbnQgKCphKVtz
aXplb2YoKmIpXSwgaW50ICgqYilbc2l6ZW9mKCphKV0pOw0KPiANCj4gDQo+IA0KPiBXZSBj
b3VsZCBjb25zaWRlciBuZXcgc3ludGF4IHN1Y2ggYXMNCj4gDQo+IGludCBmb28oY2hhciBi
dWZbLm5dLCBpbnQgbik7DQo+IA0KPiANCj4gUGVyc29uYWxseSwgSSB3b3VsZCBwcmVmZXIg
dGhlIGNvbmNlcHR1YWwgc2ltcGxpY2l0eSBvZiBmb3J3YXJkDQo+IGRlY2xhcmF0aW9ucyBh
bmQgdGhlIGZhY3QgdGhhdCB0aGVzZSBleGlzdCBhbHJlYWR5IGluIEdDQw0KPiBvdmVyIGFu
eSBhbHRlcm5hdGl2ZS4gIEkgd291bGQgYWxzbyBub3QgbWluZCBuZXcgc3ludGF4LCBidXQN
Cj4gdGhlbiBvbmUgaGFzIHRvIGRlZmluZSB0aGUgcnVsZXMgbW9yZSBwcmVjaXNlbHkgdG8g
YXZvaWQgdGhlDQo+IGFmb3JlbWVudGlvbmVkIHByb2JsZW1zLg0KDQpXaGF0IGFib3V0IHRh
a2luZyBzb21ldGhpbmcgZnJvbSBLJlIgZnVuY3Rpb25zIGZvciB0aGlzPzoNCg0KaW50IGZv
byhxOyB3OyBpbnQgYVtxXSwgaW50IHEsIGludCBzW3ddLCBpbnQgdyk7DQoNCkJ5IG5vdCBz
cGVjaWZ5aW5nIHRoZSB0eXBlcywgdGhlIHN5bnRheCBpcyBhZ2FpbiBzaG9ydC4NClRoaXMg
aXMgbGVmdC10by1yaWdodCwgc28gbm8gcHJvYmxlbXMgd2l0aCBnbG9iYWwgdmFyaWFibGVz
LCBhbmQgbm8gbmVlZCANCmZvciBjb21wbGV4IHBhcnNlcnMuDQpBbHNvLCBieSBub3Qgc3Bl
Y2lmeWluZyB0eXBlcywgbm93IGl0J3MgbW9yZSBvYnZpb3VzIHRvIHRoZSBuYWtlZCBleWUg
DQp0aGF0IHRoZXJlJ3MgYSBkaWZmZXJlbmNlOg0KDQoNCiAgICAgICAgICAgaW50IGZvbyhh
OyBpbnQgYlthXSwgaW50IGEpOw0KICAgICAgICAgICBpbnQgZm9vKGludCBhLCBpbnQgYlth
XSwgaW50IG8pOw0KDQoNCldoYXQgZG8geW91IHRoaW5rIGFib3V0IHRoaXMgc3ludGF4Pw0K
DQoNClRoYW5rcywNCg0KQWxleA0KDQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDov
L3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------bCR00T0CbWdRF2pwHIfjklfk--

--------------gCN4ZpHCKFc4x1M0XAxSm90W
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMTWXsACgkQnowa+77/
2zKbrg//bSTbltL9JbK36v2MPTvNmNl5ajz63szVTFCMkLw8ldMwvNQL566lZPYn
VbXDSUS1CtbSckNmPA7OpShuVlym69Q0bYxOEO1k/j3aHOqx5CpwCp8s9jFWDLmo
yIzdBfCiqq5Aa84gVFsaLQ7yX+4odrT2a895GpKOACcuYSGgRXbqk+RGCz8fWAQx
W1c3HvBRw8mMNvww2zPm/amOmdV6508dXmZYaOJrM1Ru5b/JPvCATw8xODDabMWx
BUA13J5wV6vK/I12J64z51jgp0J9zuEOE6oHb2vVUDI6cYshfzeX8hc+3m3b7Xfe
mlLXtRP+m+VS/qipbZDY8OPs+mpUq70KcqMl/G5T4PzIiMCveDfjMTaPkWk2X6X5
E1hWUUufZK6BhbljxkCo/XpfdDEaKJ00XaScg1bXi/exFnRytDKsegVoo2AFFSmy
gKSRZc5aGJstHNOJEq7M6DcA3iWBcGPViYUa/twYqshYKIj4X2D5TuHJA1SvD7bt
Q81VPv28YaGctWxPvbZvIASnkpSKACaW8SESAX5vPiX7yer7Zm9Qukfk8H3C/D+q
qHPHUb7oulEl2Bsb+KcxPssYwuP28t8E7xbknOGSfLdlJet8eEPAn2kzouQRuRvQ
nVELx3dg+3C4BDul6Uj5I6LIXFRqZTnbSBx+rqJlmJ8D8731WNs=
=s5O1
-----END PGP SIGNATURE-----

--------------gCN4ZpHCKFc4x1M0XAxSm90W--
