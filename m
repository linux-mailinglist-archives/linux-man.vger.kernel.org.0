Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94A4B6738E7
	for <lists+linux-man@lfdr.de>; Thu, 19 Jan 2023 13:45:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230044AbjASMpI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Jan 2023 07:45:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229592AbjASMoT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Jan 2023 07:44:19 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC0E126A3
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 04:43:08 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id f12-20020a7bc8cc000000b003daf6b2f9b9so3474780wml.3
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 04:43:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6mmBmShcwjdNwAnqHg2okHfJ/SEsfvBYtbI0IdTajhw=;
        b=CAQv0Z/ZJfN/HhbpD/Ee8fsjQsNSbzW84Cl8pgHV737JL16J3Yzs2EfrSyLXRQ7I/A
         jl/KHia0u9UCMsszBQr3cjWPAQZZPdpEjh7KhwZlhR7fs6HEoYuRrmLCstP3eGBLxpkc
         PDti+F5K/vNA/mI+SzKxDT37qkquG+PhMCjXIx2MOXWWL3AyR1DSeq5sX59ZevVU3gd9
         1dOjrtPl8AdZUck3bnbiI5O3GZKnqPi/txOYKVDjYFaQNVo22wqEtXuqrN4EFBPzH5vy
         FAA7140lQ6fXielubc43blNFMYGdKg7GG/aB6dk7Ml2o3iLnOLTKOBJj9qQsbHNzyJu9
         3hrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6mmBmShcwjdNwAnqHg2okHfJ/SEsfvBYtbI0IdTajhw=;
        b=VIWNIr3iPvOdrNFvH7/bTXrJoLwAWKLhAxXTzeM6EVQJDLbXF9hINgKEZ3DXEs1Xu7
         0kbxP8Wte95TkXNBaS0H9j43sHMaHsr29U+5PK0/iv/BFAFAk9Rb3Kz6sbh16ch+PhKm
         E1vv/sFcWzm8Gy/S9KV14s1pNGa55FROSOuyGt/qMTD78VYg/HqhzqnEAR3rM9qTDs2y
         EX60mhFuHcB76aU0Vatvdy1gicu4S4DQRHteHP/BjCkdo+3KtorTMUoqNRJeuvC55SgJ
         8fcPND3EMyZPPFPGoaE7kJEvpzUpnauF9CSCWnFRQMYBQ8esGBApAx9P/45oTbEOFq8i
         w2rQ==
X-Gm-Message-State: AFqh2kqEVQ1tazmpEnn0CNRg0OVrCU3xH1NfQW5Z7s9c2zg7vD7q3Si4
        H0V/15g8MColx+snaAiHvOM=
X-Google-Smtp-Source: AMrXdXtVYRHg3ryHq81yiandOyiP4fi0BqwYj83+afX3MreqSSuIVEn44GtWBt/4rI9CjjQM5GNCfg==
X-Received: by 2002:a05:600c:5488:b0:3da:1e3e:1ce8 with SMTP id iv8-20020a05600c548800b003da1e3e1ce8mr10131503wmb.13.1674132187086;
        Thu, 19 Jan 2023 04:43:07 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bg1-20020a05600c3c8100b003db09eaddb5sm5634512wmb.3.2023.01.19.04.43.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jan 2023 04:43:06 -0800 (PST)
Message-ID: <5c06b714-80fb-b2c5-0721-72c19f22819f@gmail.com>
Date:   Thu, 19 Jan 2023 13:42:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Improve getsockname
Content-Language: en-US
To:     =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <2889739.XEG2VLDMQ1@portable-bastien>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <2889739.XEG2VLDMQ1@portable-bastien>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------80ymY5IOwU6DEst9q10HreHC"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------80ymY5IOwU6DEst9q10HreHC
Content-Type: multipart/mixed; boundary="------------dU1wJ0399ubqMKEyI0Abb9Re";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Message-ID: <5c06b714-80fb-b2c5-0721-72c19f22819f@gmail.com>
Subject: Re: Improve getsockname
References: <2889739.XEG2VLDMQ1@portable-bastien>
In-Reply-To: <2889739.XEG2VLDMQ1@portable-bastien>

--------------dU1wJ0399ubqMKEyI0Abb9Re
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQmFzdGllbiwNCg0KT24gMS8xNy8yMyAxMToyMiwgQmFzdGllbiBSb3VjYXJpw6hzIHdy
b3RlOg0KPiBIaSwNCj4gDQo+IEkgaGF2ZSBhIGxvdCBvZiBzdHVkZW50IHRoYXQgZG9lcyBu
b3QgdXNlIGNvcnJlY3RseSBnZXRzb2NrbmFtZSBpbiBjYXNlIG9mDQo+IGR1YWwgc3RhY2su
DQoNClBsZWFzZSBzaG93IHNvbWUgZXhhbXBsZXMgb2YgY29tbW9uIG1pc3Rha2VzLCBpZiB5
b3UgY2FuLg0KDQo+IA0KPiBNYXkgYmUgdGhpcyBraW5kIG9mIGRpc2N1c3Npb24gc2hvdWxk
IGJlIGZhY3Rvcml6ZWQgaW4gIHNvY2thZGRyX3N0b3JhZ2UgKHRoZQ0KPiBoaXN0b3JpY2Fs
IG5vdGUgcGFydGljdWxhcmx5KS4NCj4gDQo+IGkgc3VwcG9zZSB0aGUgc2FtZSBzaG91bGQg
YmUgZG9uZSBmb3IgZ2V0cGVlcm5hbWUNCj4gDQo+IEkgdGhpbmsgYSBzYWZlIHByb2dyYW1t
aW5nIGV4YW1wbGUgbWF5IGJlIGdpdmVuIHRoYXQgYWNjZXB0IGEgc29ja2V0IGFzIHN0ZGlu
DQo+IGFuZCBwcmludCBpbmZvcm1hdGlvbiBvbiBpdC4gVXNpbmcgc29jYXQgaXQgY291bGQg
YmUgc2ltcGxlIHRvIHRlc3QuDQoNClBsZWFzZSBwcm92aWRlIHNvbWUgaWYgeW91IGNhbi4g
IEhvd2V2ZXIsIGJlIGNhcmVmdWwsIHNpbmNlIGl0IG1pZ2h0IGVhc2lseSBmYWxsIA0KaW50
byBVbmRlZmluZWQgQmVoYXZpb3IuDQoNCj4gbWF5YmUNCj4gZm9yY2luZyBFTk9UU1VQUCBp
ZiAqYWRkciA+IHNpemVvZihzb2NrYWRkX3N0b3JhZ2UpDQo+IA0KPiBSZWdhcmRzDQo+IA0K
PiBCYXN0aWVuDQoNCkknbGwgYWRkIHNvbWUgY29tbWVudHMgdG8gdGhlIHBhdGNoLg0KDQo+
IEZyb20gMGFmYjNhZDIzZjhlYTA5MzMxZjIxYTM3N2UzYWQxOWM0NGU0ZGYxOCBNb24gU2Vw
IDE3IDAwOjAwOjAwIDIwMDENCj4gRnJvbTogPT9VVEYtOD9xP0Jhc3RpZW49MjBSb3VjYXJp
PUMzPUE4cz89IDxyb3VjYUBkZWJpYW4ub3JnPg0KPiBEYXRlOiBUdWUsIDE3IEphbiAyMDIz
IDEwOjA3OjQzICswMDAwDQo+IFN1YmplY3Q6IFtQQVRDSF0gRG9jdW1lbnQgdXNlIG9mIHN0
cnVjdCBzb2NrYWRkcl9zdG9yYWdlIGluIGdldHNvY2tuYW1lDQo+IA0KPiBEb2N1bWVudDoN
Cj4gLSBzdG9yYWdlIHJlcXVpZXJlbWVudA0KPiAtIGZ1dHVyZSBjb21wYXRpYmlsaXR5DQo+
IC0tLQ0KPiAgbWFuMi9nZXRzb2NrbmFtZS4yIHwgNTYgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDU2IGluc2Vy
dGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4yL2dldHNvY2tuYW1lLjIgYi9tYW4y
L2dldHNvY2tuYW1lLjINCj4gaW5kZXggZTZlODk4MGM5Li41OTE0YzllMTIgMTAwNjQ0DQo+
IC0tLSBhL21hbjIvZ2V0c29ja25hbWUuMg0KPiArKysgYi9tYW4yL2dldHNvY2tuYW1lLjIN
Cj4gQEAgLTM5LDYgKzM5LDE3IEBAIFRoZSByZXR1cm5lZCBhZGRyZXNzIGlzIHRydW5jYXRl
ZCBpZiB0aGUgYnVmZmVyIHByb3ZpZGVkIGlzIHRvbyBzbWFsbDsNCj4gIGluIHRoaXMgY2Fz
ZSwNCj4gIC5JIGFkZHJsZW4NCj4gIHdpbGwgcmV0dXJuIGEgdmFsdWUgZ3JlYXRlciB0aGFu
IHdhcyBzdXBwbGllZCB0byB0aGUgY2FsbC4NCj4gKy5QUA0KPiArRm9yIGdyZWF0ZXIgcG9y
dGFiaWxpdHkNCj4gKy5JIGFkZHINCj4gK3Nob3VsZCBwb2ludCB0byBhIHN0cnVjdHVyZSBv
ZiB0eXBlDQo+ICsuSSBzb2NrYWRkcl9zdG9yYWdlLg0KDQpUaGlzIGlzIG5vdCBjb3JyZWN0
LiAgSWYgdGhlIG9iamVjdCBoYXMgYSB0eXBlIG9mICdzdHJ1Y3Qgc29ja2FkZHJfc3RvcmFn
ZScsIA0KdGhlbiBpdCBjYW4gb25seSBiZSBhY2Nlc3NlZCBhcyBhICdzdHJ1Y3Qgc29ja2Fk
ZHJfc3RvcmFnZScuICBUcnlpbmcgdG8gYWNjZXNzIA0KaXQgYXMgYW55IG90aGVyIHN0cnVj
dHVyZSB0eXBlIHdvdWxkIGJlIFVuZGVmaW5lZCBCZWhhdmlvci4gIFRoZSB3YXkgdG8gZG8g
aXQgDQpjb25mb3JtaW5nIHRvIElTTyBDIHdvdWxkIGJlIHRvIGRlY2xhcmUgYSB1bmlvbiB3
aGljaCBjb250YWlucyBhbGwgdGhlICdzdHJ1Y3QgDQpzb2NrYWRkcl8qJyB0aGF0IGFyZSBp
bnRlcmVzdGluZywgYW5kIGFjY2VzcyBpdCB0aHJvdWdoIHRoZSBjb3JyZWN0IHVuaW9uIA0K
bWVtYmVyLiAgQW55dGhpbmcgZWxzZSBpcyBvbiBVQiBsYW5kLiAgVGhlIG9ubHkgdXNlIG9m
ICdzdHJ1Y3Qgc29ja2FkZHJfc3RvcmFnZScgDQp0aGF0IEkgY2FuIHRoaW5rIG9mLCBpcyBm
b3IgaGF2aW5nIGEgbW9yZSBjb25zaXN0ZW50IHVuaW9uIHNpemUuDQoNCj4gKy5JIHNvY2th
ZGRyX3N0b3JhZ2UNCj4gK3N0cnVjdHVyZSBpcyBsYXJnZSBlbm91Z2ggdG8gaG9sZCBhbnkg
b2YgdGhlIG90aGVyDQo+ICsuSSBzb2NrYWRkcl8qDQo+ICt2YXJpYW50cyBhbmQgYWx3YXlz
IHdlbGwgYWxpZ25lZC4gT24gcmV0dXJuLCBpdCBzaG91bGQgYmUgY2FzdCB0byB0aGUgY29y
cmVjdA0KPiArLkkgc29ja2FkZHJfKg0KDQpUaGUgZmFjdCB0aGF0IGl0IGlzIGNvcnJlY3Rs
eSBhbGlnbmVkLCBhbmQgYSBjYXN0IHdpbGwgd29yayBtb3N0IG9mIHRoZSB0aW1lLCANCmlz
bid0IGVub3VnaCBmb3Igc3RyaWN0IGFsaWFzaW5nIHJ1bGVzLiAgVGhlIGNvbXBpbGVyIGlz
IGZyZWUgdG8gYXNzdW1lIHRoaW5ncywgDQpqdXN0IGJ5IHRoZSBmYWN0IHRoYXQgaXQncyBh
IGRpZmZlcmVudCB0eXBlLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiArdHlwZSwgYWNjb3Jk
aW5nIHRvIHRoZSBjdXJyZW50IHByb3RvY29sIGZhbWlseSwgZ2l2ZW4gYnkgdGhlIG1lbWJl
ciBzc19mYW1pbHkuDQo+ICAuU0ggUkVUVVJOIFZBTFVFDQo+ICBPbiBzdWNjZXNzLCB6ZXJv
IGlzIHJldHVybmVkLg0KPiAgT24gZXJyb3IsIFwtMSBpcyByZXR1cm5lZCwgYW5kDQo+IEBA
IC04MCwxMCArOTEsNTUgQEAgRm9yIGJhY2tncm91bmQgb24gdGhlDQo+ICAuSSBzb2NrbGVu
X3QNCj4gIHR5cGUsIHNlZQ0KPiAgLkJSIGFjY2VwdCAoMikuDQo+ICsuUFANCj4gK1NlY3Vy
aXR5IGFuZCBwb3J0YWJpbGl0eSB3aXNlLCB1c2Ugb2YNCj4gKy5JIHN0cnVjdCBzb2NrYWRk
cl9zdG9yYWdlDQo+ICt0eXBlIGFzDQo+ICsuSSBhZGRyDQo+ICthbmQNCj4gKy5JIGFkZHJs
ZW4NCj4gK3NldCB0bw0KPiArLkJJICJzaXplb2Yoc3RydWN0IHNvY2thZGRyX3N0b3JhZ2Up
Ig0KPiAraXMgc3Ryb25nbHkgZW5jb3VyYWdlZC4gUGFydGljdWxhcmx5IHRoaXMgdXNhZ2Ug
YXZvaWQgYnVncyBpbiBkdWFsIHN0YWNrIElQdjQrSVB2NiBjb25maWd1cmF0aW9uLg0KPiAr
LlBQDQo+ICtIaXN0b3JpY2FsIHVzZSBvZg0KPiArLkkgYWRkcg0KPiArcmVxdWlyZXMgb25l
IHRvIHVzZSBhIHN0cnVjdHVyZSBzcGVjaWZpYyB0byB0aGUgcHJvdG9jb2wgZmFtaWx5IGlu
IHVzZSwNCj4gK3N1Y2ggYXMNCj4gKy5JIHNvY2thZGRyX2luDQo+ICsoQUZfSU5FVCBvciBJ
UHY0KSwNCj4gKy5JIHNvY2thZGRyX2luNg0KPiArKEFGX0lORVQ2IG9yIElQdjYpLCBvcg0K
PiArLkkgc29ja2FkZHJfdW4NCj4gKyhBRl9VTklYKQ0KPiArY2FzdCB0byBhDQo+ICsuSSAo
c3RydWN0IHNvY2thZGRyICopLg0KPiArVGhlIHB1cnBvc2Ugb2YgdGhlDQo+ICsuSSBzdHJ1
Y3Qgc29ja2FkZHIgKg0KPiArdHlwZQ0KPiAraXMgcHVyZWx5IHRvIGFsbG93IGNhc3Rpbmcg
b2YgIGRvbWFpbi1zcGVjaWZpYyAgc29ja2V0ICBhZGRyZXNzICB0eXBlcyAgdG8gIGENCj4g
KyJnZW5lcmljIiB0eXBlLCBzbyBhcyB0byBhdm9pZCBjb21waWxlciB3YXJuaW5ncyBhYm91
dCB0eXBlIG1pc21hdGNoZXMgaW4gY2FsbHMgdG8gdGhlIHNvY2tldHMgQVBJLg0KPiArTmV2
ZXJ0aGVsZXNzLA0KPiArLiBJIHN0cnVjdCBzb2NrYWRkciAqDQo+ICtpcyB0b28gc21hbGwg
dG8gaG9sZCBuZXdlciBwcm90b2NvbCBhZGRyZXNzIChmb3IgaW5zdGFuY2UgSVB2NikgYW5k
IG5vdCBhbHdheXMgd2VsbCBhbGlnbmVkLg0KPiArLlBQDQo+ICtFdmVuIGlmDQo+ICsuSSBz
b2NrYWRkcl9zdG9yYWdlDQo+ICt0eXBlIGlzIGxhcmdlIGVub3VnaCBhdCBjb21waWxhdGlv
biB0aW1lIHRvIGhvbGQgYW55IG9mIHRoZQ0KPiArLkkgc29ja2FkZHJfKg0KPiArdmFyaWFu
dHMga25vd24gYnkgdGhlIGxpYnJhcnksDQo+ICt0aGlzIGd1YXJhbnRlZSB3aWxsIG5vdCBo
b2xkIGZvciBmdXR1cmUuIE5ld2VyIHByb3RvY29sIG1heSBuZWVkIGFuIGluY3JlYXNlIG9m
DQo+ICsuSSBzb2NrYWRkcl9zdG9yYWdlDQo+ICtzaXplIG9yIGFsaWduZW1lbnQgcmVxdWly
ZW1lbnQsIGFuZCBzYWZlIHByb2dyYW0gc2hvdWxkIGFsd2F5cyBydW50aW1lIGNoZWNrIGlm
IHJldHVybmVkDQo+ICsuSSBhZGRyDQo+ICtpcyBzbWFsbGVyIG9yIGVxdWFsIHRvIGNvbXBp
bGUgdGltZQ0KPiArLkJJICJzaXplb2Yoc3RydWN0IHNvY2thZGRyX3N0b3JhZ2UpIg0KPiAr
c2l6ZS4NCj4gIC5TSCBTRUUgQUxTTw0KPiAgLkJSIGJpbmQgKDIpLA0KPiAgLkJSIHNvY2tl
dCAoMiksDQo+ICAuQlIgZ2V0aWZhZGRycyAoMyksDQo+ICsuQlIgc29ja2FkZHJfc3RvcmFn
ZSAoM3R5cGUpLA0KPiAgLkJSIGlwICg3KSwNCj4gIC5CUiBzb2NrZXQgKDcpLA0KPiAgLkJS
IHVuaXggKDcpDQo+IC0tIA0KPiAyLjM5LjANCj4gDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------dU1wJ0399ubqMKEyI0Abb9Re--

--------------80ymY5IOwU6DEst9q10HreHC
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPJOswACgkQnowa+77/
2zKGpxAAkprduMqVReAquzA2BTX/17IWPrf+Xt7GruB6xhbV8VfW04HHH8v6Dyga
3kr14b5TpCFHTpOOS4p0oOAzimN5eFouZg0N+cLxiDIQvmZU49X5n1b4eTbmvnvz
LCJ8WqYPlUCUiIlHUFOtb20Wg1agRhuRyDnMTxSXZvm2DDkqIEY5kPVK4OcGnIk4
GOCGzarzmkTkSmNKtOsWZrts7wHQCt4haepsM3VW+Zi+WnSyl2oKrn16kLGG2ONa
EE0N/ZE1DT4j2dYq1darOHP2LG2AGvi5AaNrW21q9ptHMkAdFnxaHcTNYWYREG5n
CowHrdJ2pTLpJd52E+gRNWiSXMHn/Mb5c7q24LwQ4NMk79sirjz6vECnkROkBk/X
KnlNEq8IL4IgHC1JQ+tA5eApIUDnCKck1lEWkN+zyBvlES0V5gLZ+SV1uFKN70LZ
f/JX16Oml/tgm5zuAaZjqRMUjwV6PgYVjGoNxbKYJrNEJ5xyfHm5psBdHadNtGv0
5uKIBEH0JShuQKFIAfJ7+jJAY47eN4JV0H3c/XpWxyQ8v0gvM+2a+iYKZmkTuMeJ
290h0vIJuxrfNVutxMzoYJqWT1otalf47ir7jFLkAll/a/d1V3BiuoKHTZr5KLqy
SEHggdwGLrXgcxLlF83AB70gHC2bT1gKDW1NbabmLOYKK+O0c6k=
=uLEU
-----END PGP SIGNATURE-----

--------------80ymY5IOwU6DEst9q10HreHC--
