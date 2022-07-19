Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB45A57A9BA
	for <lists+linux-man@lfdr.de>; Wed, 20 Jul 2022 00:20:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235617AbiGSWUi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 18:20:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229953AbiGSWUh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 18:20:37 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36DBC371A2
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 15:20:35 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id u5so578872wrm.4
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 15:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to;
        bh=8uZRr+ryIy9przHr3Qd2n2teQnINmZftdkgluonGd/k=;
        b=cakrzp8v07dy2oZaG08jH0UMEuqNi7kOApOibrkcf8FfRCvh2LNjRjWMru74lx1146
         5+TSeD2Eym+3ATr/z6q27s4HfZiKwRAQyA8momHvbcdp+kRNNNlGUnobi3PPb6BfmJm9
         8KfH7E8TybK8fbjnVrlVuPnCYYrylwBaCI1wqud10coh4AiFw0s4JIaDDGbjaV140jl3
         v/FXHj1MIPjyuGKfTES6DTQkUICqiihel85nzDBR3dvVwWBs4QeNCZl5we7CIF57/inB
         6GysqMiJ+GUbiXLr+B9vUZEUPR3gj2jOeh35GpmH+WdVfsAIDE8ScPzVAFO1htUwU3kW
         mNng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to;
        bh=8uZRr+ryIy9przHr3Qd2n2teQnINmZftdkgluonGd/k=;
        b=N89qg2PJo+d58KwL98uH0z6ccbsUd1h4lRA/HM5qEbLMOiLeyyiY99ocCUZMabNcfE
         0EvphKJI+11aWEVZrbOLkWS9RLNlQrn7YCFUWT5ZxNlfbtaATwHh/myrCmtmGYlzGJNU
         bSyrrZOCUZrOurYE4itsI71IM7WNuNsMGQwV6wF7v8LmHU6pfIPpXWy3ePPJXXcRu3q5
         mlgUvcTXotWFyFnLrXk+lW5qS014IIGMYWgW3SUHELx/mTy5wNDyDabusCQrzp00oTTn
         4YNdDPl8unAALZU9LpBGJVIOpDgLiXN6jARRz50aTRqDHK3lRltWdCFwQbt9K8drmMiF
         KEAg==
X-Gm-Message-State: AJIora9rSHmJxW6q0ovPvFD4K5++2GL6Nxm/CMMfCfNij8fZnJsr2DM8
        txptxjIwZZPSTyVKITTeT40=
X-Google-Smtp-Source: AGRyM1v9CU9zeCq66axww18hb4bJl9iXuR42dtI0rLXZP1fndN69x2QEnbK70JPqCXYrs4CYXP8k5w==
X-Received: by 2002:a05:6000:1a8d:b0:21d:9055:96a6 with SMTP id f13-20020a0560001a8d00b0021d905596a6mr27341705wry.245.1658269233630;
        Tue, 19 Jul 2022 15:20:33 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v6-20020adfe4c6000000b0021e0147da47sm8876991wrm.96.2022.07.19.15.20.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 15:20:33 -0700 (PDT)
Message-ID: <84e06095-1dac-0f3c-bb86-5ab81610d8c2@gmail.com>
Date:   Wed, 20 Jul 2022 00:20:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH] strftime.3: mention strftime_l() with .so link
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20220719184839.ear4elj2ls3fpzmz@tarta.nabijaczleweli.xyz>
 <9a085e45-f74f-2d6b-2f97-421a46670d8f@gmail.com>
 <20220719212759.ltj2zvgpiuv5mler@tarta.nabijaczleweli.xyz>
 <fb0a4055-9739-349c-0a20-ccf4ba8eb93d@gmail.com>
In-Reply-To: <fb0a4055-9739-349c-0a20-ccf4ba8eb93d@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------cYEuZsu07cacMgqTc8LNDSOD"
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
--------------cYEuZsu07cacMgqTc8LNDSOD
Content-Type: multipart/mixed; boundary="------------PyN0tmjhrl45XkRRvq8YBW1X";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <84e06095-1dac-0f3c-bb86-5ab81610d8c2@gmail.com>
Subject: Re: [PATCH] strftime.3: mention strftime_l() with .so link
References: <20220719184839.ear4elj2ls3fpzmz@tarta.nabijaczleweli.xyz>
 <9a085e45-f74f-2d6b-2f97-421a46670d8f@gmail.com>
 <20220719212759.ltj2zvgpiuv5mler@tarta.nabijaczleweli.xyz>
 <fb0a4055-9739-349c-0a20-ccf4ba8eb93d@gmail.com>
In-Reply-To: <fb0a4055-9739-349c-0a20-ccf4ba8eb93d@gmail.com>

--------------PyN0tmjhrl45XkRRvq8YBW1X
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDcvMTkvMjIgMjM6NTUsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPiBIaSEN
Cj4gDQo+IE9uIDcvMTkvMjIgMjM6MjcsINC90LDQsSB3cm90ZToNCj4+IE9uIFR1ZSwgSnVs
IDE5LCAyMDIyIGF0IDEwOjUwOjA2UE0gKzAyMDAsIEFsZWphbmRybyBDb2xvbWFyIHdyb3Rl
Og0KPj4+IEFsc28sIHBsZWFzZSBhZGQgdGhlIGxpbmsgcGFnZSBuYW1lIHRvIHRoZSBsaXN0
IG9mIGFmZmVjdGVlZCBwYWdlczoNCj4+PiBzdHJmdGltZS4zLCBzdHJmdGltZV9sLjM6IC4u
Lg0KPj4NCj4+IEZpeGVkLg0KPj4NCj4+PiBQcmVmZXIgLlBQDQo+Pj4NCj4+PiBXZSBhdm9p
ZCByYXcgcm9mZiByZXF1ZXN0cyBpbiBtYW4oNykgcGFnZXMgYXMgbXVjaCBhcyBwb3NzaWJs
ZS4NCj4+PiBJJ2QgdGVsbCB5b3UgaG93IHRvIGdldCB0aGUgc2FtZSBiZWhhdmlvciB3aXRo
IHJhcmUgbWFuKDcpIG1hY3JvcywgYnV0IEkNCj4+PiBkb24ndCB0aGluayB3ZSBuZWVkIHRv
IGNvbXBsaWNhdGUgaXQsIHdoZW4gLlBQIGlzIGFsc28gbmljZSBoZXJlLg0KPj4+IEJ1dCBq
dXN0IGZvciB5b3UgdG8ga25vdywgdGhlcmUncyAuUEQgMCBpbiBtYW4oNykuDQo+Pg0KPj4g
SSBncmVwcGVkIGZvciAuYnIgc3BlY2lmaWNhbGx5IGFuZCBzYXcgaXQncyB1c2VkIHNvIEkg
dXNlZCBpdC4NCj4+IFJlcGxhY2VkIHdpdGggLlBEIDAsIC5QUCwgLlBEIHRvIHRoZSBzYW1l
IGVmZmVjdC4NCj4gDQo+IFllYWgsIG10ayB3YXNuJ3QgdmVyeSBoYXBweSB3aXRoIG1lIGZp
eGluZyBleGlzdGluZyBwYWdlcywgdW5kZXIgdGhlIA0KPiBmZWFyIG9mIGNodXJuLsKgIEkn
bSBtb3JlIGNvbmNlcm5lZCB3aXRoIHRoZSBtYWludGFpbmFiaWxpdHkgaXNzdWVzIG9mIA0K
PiBoYXZpbmcgZXhpc3RpbmcgdW5kZXNpcmFibGUgY29kZSAoZXZlbiBpZiBpdCBKdXN0IFdv
cmtzIGZvciBub3cgYW5kIA0KPiBpc24ndCByZWFsbHkgYnJva2VuKSwgc2luY2UgaXQgbGVh
ZHMgdG8gY29udHJpYnV0b3JzIGxpa2UgeW91IHRvIHRoaW5rIA0KPiB0aGF0IHdlIGFjdHVh
bGx5IHVzZSBpdCwgYW5kIHRoZW4gd2UgKEk/KSBrZWVwIHJlY2VpdmluZyBwYXRjaGVzIHdp
dGggDQo+IHVuZGVzaXJhYmxlIGNvZGU7IHRoZW4gSSBuZWVkIHRvIGhhdmUgZGlzY3Vzc2lv
bnMgZXhwbGFpbmluZyB0aGF0IHdlIA0KPiBoYXZlIG9sZCBjb2RlIHRoYXQgdXNlcyBpdCwg
YnV0IEknZCBwcmVmZXIgdG8gYXZvaWQgaXQgaW4gbmV3IGNvZGUsIGV0Yy4NCj4gDQo+IFNv
IHllcywgd2UgaGF2ZSBvbGQgY29kZSB0aGF0IGF0IHNvbWUgcG9pbnQgSSdkIGxpa2UgdG8g
Zml4LCBhbmQgSSB3aWxsLCANCj4gYnV0IHRoZXJlJ3MgdG9vIG11Y2ggb2YgaXQuIDopDQo+
IA0KPj4NCj4+IFNlZSB1cGRhdGVkIHNjaXNzb3ItcGF0Y2ggYmVsb3c6DQo+PiAtLSA+OCAt
LQ0KPj4gRGF0ZTogVHVlLCAxOSBKdWwgMjAyMiAyMDo0Njo0OSArMDIwMA0KPj4gU3ViamVj
dDogW1BBVENIIHYyXSBzdHJmdGltZS4zLCBzdHJmdGltZV9sLjM6IG1lbnRpb24gc3RyZnRp
bWVfbCgpIA0KPj4gd2l0aCAuc28NCj4+IMKgIGxpbmsNCj4gDQo+IE9rYXksIHNvIHlvdSB3
YW50IHRvIGtlZXAgIm1lbnRpb24iLsKgIEkgd2lsbCBrZWVwIGl0IDspDQo+IA0KPiBDaGVl
cnMsDQo+IA0KPiBBbGV4DQo+IA0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IEFoZWxlbmlhIFpp
ZW1pYcWEc2thIDxuYWJpamFjemxld2VsaUBuYWJpamFjemxld2VsaS54eXo+DQo+PiAtLS0N
Cj4+IMKgIG1hbjMvc3RyZnRpbWUuM8KgwqAgfCAyOSArKysrKysrKysrKysrKysrKysrKysr
KysrKysrLQ0KPj4gwqAgbWFuMy9zdHJmdGltZV9sLjMgfMKgIDEgKw0KPj4gwqAgMiBmaWxl
cyBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+PiDCoCBjcmVh
dGUgbW9kZSAxMDA2NDQgbWFuMy9zdHJmdGltZV9sLjMNCj4+DQo+PiBkaWZmIC0tZ2l0IGEv
bWFuMy9zdHJmdGltZS4zIGIvbWFuMy9zdHJmdGltZS4zDQo+PiBpbmRleCBkYzk4YTUxMjIu
LmE5M2MwZjRjMiAxMDA2NDQNCj4+IC0tLSBhL21hbjMvc3RyZnRpbWUuMw0KPj4gKysrIGIv
bWFuMy9zdHJmdGltZS4zDQo+PiBAQCAtMjcsNiArMjcsMTEgQEAgU3RhbmRhcmQgQyBsaWJy
YXJ5DQo+PiDCoCAuQkkgInNpemVfdCBzdHJmdGltZShjaGFyICpyZXN0cmljdCAiIHMgIiwg
c2l6ZV90ICIgbWF4ICwNCj4+IMKgIC5CSSAiwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGNvbnN0IGNoYXIgKnJlc3RyaWN0ICIgZm9ybWF0ICwNCj4+IMKgIC5CSSAiwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCB0bSAqcmVzdHJpY3QgIiB0
bSApOw0KPj4gKy5QUA0KPj4gKy5CSSAic2l6ZV90IHN0cmZ0aW1lX2woY2hhciAqcmVzdHJp
Y3QgIiBzICIsIHNpemVfdCAiIG1heCAsDQo+PiArLkJJICLCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGNvbnN0IGNoYXIgKnJlc3RyaWN0ICIgZm9ybWF0ICwNCj4+ICsu
QkkgIsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IHRt
ICpyZXN0cmljdCAiIHRtICwNCj4+ICsuQkkgIsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgbG9jYWxlX3QgIiBsb2NhbGUgKTsNCj4+IMKgIC5maQ0KPj4gwqAgLlNIIERF
U0NSSVBUSU9ODQo+PiDCoCBUaGUNCj4+IEBAIC00NzEsNiArNDc2LDIwIEBAIGFzIGFuIGFy
Z3VtZW50IHRvIGENCj4+IMKgIE9uZSBleGFtcGxlIG9mIHN1Y2ggYWx0ZXJuYXRpdmUgZm9y
bXMgaXMgdGhlIEphcGFuZXNlIGVyYSBjYWxlbmRhciANCj4+IHNjaGVtZSBpbiB0aGUNCj4+
IMKgIC5CIGphX0pQDQo+PiDCoCBnbGliYyBsb2NhbGUuDQo+PiArLlBQDQo+PiArLlwiIFBP
U0lYLjEtMjAwOCBUQzI6DQo+PiArLlwiwqDCoCBbQ1hdIFRoZSBzdHJmdGltZV9sKCkgZnVu
Y3Rpb24gc2hhbGwgYmUgZXF1aXZhbGVudCB0byB0aGUgDQo+PiBzdHJmdGltZSgpIGZ1bmN0
aW9uLCBleGNlcHQgdGhhdCB0aGUgbG9jYWxlIGRhdGEgdXNlZCBpcyBmcm9tIHRoZSANCj4+
IGxvY2FsZSByZXByZXNlbnRlZCBieSBsb2NhbGUuDQo+PiArLlwiwqDCoCBbQ1hdIFRoZSBi
ZWhhdmlvciBpcyB1bmRlZmluZWQgaWYgdGhlIGxvY2FsZSBhcmd1bWVudCB0byANCj4+IHN0
cmZ0aW1lX2woKSBpcyB0aGUgc3BlY2lhbCBsb2NhbGUgb2JqZWN0IExDX0dMT0JBTF9MT0NB
TEUgb3IgaXMgbm90IGEgDQo+PiB2YWxpZCBsb2NhbGUgb2JqZWN0IGhhbmRsZS4NCg0KTWF5
YmUgdGhlc2UgY29tbWVudHMgd291bGQgYmUgYmV0dGVyIHBsYWNlZCBpbiB0aGUgY29tbWl0
IG1lc3NhZ2U/ICBJIA0KdGVuZCB0byBkaXNsaWtlIGNvZGUgY29tbWVudHMuDQoNCj4+ICsu
QlIgc3RyZnRpbWVfbCAoKQ0KPj4gK2lzIGVxdWl2YWxlbnQgdG8NCj4+ICsuQlIgc3RyZnRp
bWUgKCksDQo+PiArZXhjZXB0IGl0IHVzZXMgdGhlIHNwZWNpZmllZA0KPj4gKy5JIGxvY2Fs
ZQ0KPj4gK2luc3RlYWQgb2YgdGhlIGN1cnJlbnQgbG9jYWxlLg0KPj4gK1RoZSBiZWhhdmlv
dXIgaXMgdW5kZWZpbmVkIGlmDQo+PiArLkkgbG9jYWxlDQo+PiAraXMgaW52YWxpZCBvcg0K
Pj4gKy5CUiBMQ19HTE9CQUxfTE9DQUxFIC4NCj4+IMKgIC5TSCBSRVRVUk4gVkFMVUUNCj4+
IMKgIFByb3ZpZGVkIHRoYXQgdGhlIHJlc3VsdCBzdHJpbmcsDQo+PiDCoCBpbmNsdWRpbmcg
dGhlIHRlcm1pbmF0aW5nIG51bGwgYnl0ZSwgZG9lcyBub3QgZXhjZWVkDQo+PiBAQCAtNTE2
LDE0ICs1MzUsMjIgQEAgbGJ4IGxiIGxiDQo+PiDCoCBsIGwgbC4NCj4+IMKgIEludGVyZmFj
ZcKgwqDCoCBBdHRyaWJ1dGXCoMKgwqAgVmFsdWUNCj4+IMKgIFR7DQo+PiAtLkJSIHN0cmZ0
aW1lICgpDQo+PiArLkJSIHN0cmZ0aW1lICgpLA0KPj4gKy5CUiBzdHJmdGltZV9sICgpDQo+
PiDCoCBUfcKgwqDCoCBUaHJlYWQgc2FmZXR5wqDCoMKgIE1ULVNhZmUgZW52IGxvY2FsZQ0K
Pj4gwqAgLlRFDQo+PiDCoCAuaHkNCj4+IMKgIC5hZA0KPj4gwqAgLnNwIDENCj4+IMKgIC5T
SCBDT05GT1JNSU5HIFRPDQo+PiArLkJSIHN0cmZ0aW1lICgpOg0KPj4gwqAgU1ZyNCwgQzg5
LCBDOTkuDQo+PiArLlBEIDANCj4+ICsuUFANCj4+ICsuUEQNCj4+ICsuQlIgc3RyZnRpbWVf
bCAoKToNCj4+ICtQT1NJWC4xLTIwMDguDQo+PiArLlBQDQo+PiDCoCAuXCIgRklYTUUgc3Ry
ZnRpbWUoKSBpcyBpbiBQT1NJWC4xLTIwMDEgYW5kIFBPU0lYLjEtMjAwOCwgYnV0IHRoZSAN
Cj4+IGRldGFpbHMNCj4+IMKgIC5cIiBpbiB0aGUgc3RhbmRhcmRzIGNoYW5nZWQgYWNyb3Nz
IHZlcnNpb25zLiBJbnZlc3RpZ2F0ZSBhbmQNCj4+IMKgIC5cIiB3cml0ZSB1cC4NCj4+IGRp
ZmYgLS1naXQgYS9tYW4zL3N0cmZ0aW1lX2wuMyBiL21hbjMvc3RyZnRpbWVfbC4zDQo+PiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NA0KPj4gaW5kZXggMDAwMDAwMDAwLi4wMmU3OTdhMjMNCj4+
IC0tLSAvZGV2L251bGwNCj4+ICsrKyBiL21hbjMvc3RyZnRpbWVfbC4zDQo+PiBAQCAtMCww
ICsxIEBADQo+PiArLnNvIG1hbjMvc3RyZnRpbWUuMw0KPiANCg0KLS0gDQpBbGVqYW5kcm8g
Q29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------PyN0tmjhrl45XkRRvq8YBW1X--

--------------cYEuZsu07cacMgqTc8LNDSOD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLXLjAACgkQnowa+77/
2zLpZg//XeCk2WMEsErm6xGMfHLI6BRNxGGGIK/Fcc+Z+UArZ2gYuLLPK+kIUaFJ
tbkIT3fz2OGVZhFllVPLqG+zvSmW4IQ4tSqOu9G0vHlcQCB43sb/fnaYHrKaeE/d
0tUxMmjqocwLEJym0Z6vRQSk0+dRXZhp5I4CW1eSAUG8gav9BTvJYQYpYBjDCw6J
S6M6k7rYrg/i6qJeRilx8RA/y0XPR61iB/LFptDo7Cnut7WDq7gBl5frnnWyGmV0
18n2jRwT0fCS9SNfZlu7jk4ZPFj7sI+4mYiXpAeHIDgHiGWtsce5oq7D5pdizUDU
9Qdc00v1mUpJRsTPNcPMEAaNU04b6wOIWyCaqo09PxMQXM6ZpvM/rw3VaQhXAMdt
2hAQrszxVfhAwdwZfrceUJeXwf7sDQDjm9nIEPkvnQHsuai9mK+49rDE15m5ZN/I
Ir7FNyZwR9lCslwM25H51n5eHhu5wPNcW7wEr2PRx+k6Mr5OP9t6AKYmVyU83CJw
LYKf22ExR247Wq9zoQ5TXOvuQrJ6JLoA7cm5WWJettjedTyi0zZN49Phr4wvJRAn
UsAYKjN706AZHeIJeuR8gcmKb506QGDhvNnhNDYEBiQVsDnC2w5QMqwVmhtYXavL
aS2pNjIX6uMHvSSmQk1VTAwqwVu7RyQGzLrwSl/PR4qc6EnFR1s=
=mKfh
-----END PGP SIGNATURE-----

--------------cYEuZsu07cacMgqTc8LNDSOD--
