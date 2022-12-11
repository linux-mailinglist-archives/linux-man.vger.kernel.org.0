Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5A1164957C
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 18:59:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230019AbiLKR7R (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 12:59:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229656AbiLKR7Q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 12:59:16 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F6D6DFA8
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 09:59:15 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id ja17so532980wmb.3
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 09:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9SiF7ELXl/xoI68GYh4/a81we7nhZcMOAZ1nsnB/Wqw=;
        b=NYl87mERZqp40qgXHx4bBItPn96C1LyACcCrCQzDC2Btz5jOxw2ZkBUiHWxxODU9VO
         WOeW5hUVcsnFgkVlGM5ckPGHjmvI3CVKvUf5ss1vWxUtU2Pgq+Wrv1N83+GRlg8wgc9g
         MUj+Vr5bz3glIRmzy7VcE4Fs7y4xRATI2qbjkIV7yC5hWl0nobb9yQeShwdGoCBXSS+1
         oCNmNO/TyJ1Hqp6ISSMu6u/4rQjeksEvlGP1+GezxIgulZ3pN8qVLCmerpdTcbkf1DSC
         m9bc9WbaNfIPQ/XDeVHpLGGnct1iVzL5+/s5srrG2NKPx+No0qp18jbeY7Z/ZfOPXqwE
         Td7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9SiF7ELXl/xoI68GYh4/a81we7nhZcMOAZ1nsnB/Wqw=;
        b=lKREe5DmxAOZfFGG+Bg8pozFjXdRMNsKW4hXFzwbxepqOLNdijvmtRdzxFWIyaev8j
         /cspeW7/B34zVmXBpvUBfH2PZASlw64FFthC0dNO8AFP1E30F4jYnm3p+vgurLw/YKC4
         w/7Qj5402M4h+/akWl0cngXR9GvqIEYTTnyBBhwSvakccathDzhyzS10n8UNpX/SWmRK
         Xqt23ehMaOGtJFJnlTF6yW+gfiOx9h24NjMGxgXH77ditR1bBgohHZJah5g/Jj0A8Mc1
         3FlZV/CXXO7IWO8pBYEH7M1lwtl104nYd4qQYpwme+6M57ZaEoQd/bB1HP17dYf15tAi
         2vcw==
X-Gm-Message-State: ANoB5pk1dItNuzx9jBp3QzYcEk97eJ+tvpFDhOh/C4pc9qHG3O8OC5cW
        J4sRTpWMlBymukozQo1T4Pw=
X-Google-Smtp-Source: AA0mqf7BDoZw/Irrub0HA9Q+e8wX8pp6+NlbwsPE37GylLn8U6l2cZmt+DnMfDcdukUPVUfOXxBRzg==
X-Received: by 2002:a05:600c:310e:b0:3cf:a39f:eb2a with SMTP id g14-20020a05600c310e00b003cfa39feb2amr10580445wmo.11.1670781554010;
        Sun, 11 Dec 2022 09:59:14 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 17-20020a05600c26d100b003c6c3fb3cf6sm6310190wmv.18.2022.12.11.09.59.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 09:59:13 -0800 (PST)
Message-ID: <374b1dcd-6a2c-a452-9c1b-9f5945df493b@gmail.com>
Date:   Sun, 11 Dec 2022 18:59:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH man-pages v3 4/4] madvise.2: add documentation for
 MADV_COLLAPSE
Content-Language: en-US
To:     Zach OKeefe <zokeefe@google.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-5-zokeefe@google.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221021223300.3675201-5-zokeefe@google.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------quKv9ptJEfrGLlrnuFSXNoZr"
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
--------------quKv9ptJEfrGLlrnuFSXNoZr
Content-Type: multipart/mixed; boundary="------------kb8WYnOm6oPGlcgG8V9l9850";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zach OKeefe <zokeefe@google.com>
Cc: Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
 linux-man@vger.kernel.org
Message-ID: <374b1dcd-6a2c-a452-9c1b-9f5945df493b@gmail.com>
Subject: Re: [PATCH man-pages v3 4/4] madvise.2: add documentation for
 MADV_COLLAPSE
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-5-zokeefe@google.com>
In-Reply-To: <20221021223300.3675201-5-zokeefe@google.com>

--------------kb8WYnOm6oPGlcgG8V9l9850
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmFjaCwNCg0KT24gMTAvMjIvMjIgMDA6MzMsIFphY2ggT0tlZWZlIHdyb3RlOg0KPiBG
cm9tOiBaYWNoIE8nS2VlZmUgPHpva2VlZmVAZ29vZ2xlLmNvbT4NCj4gDQo+IExpbnV4IDYu
MSBpbnRyb2R1Y2VkIE1BRFZfQ09MTEFQU0UgaW4gdXBzdHJlYW0gY29tbWl0IDdkOGZhYWYx
NTU0NQ0KPiAoIm1tL21hZHZpc2U6IGludHJvZHVjZSBNQURWX0NPTExBUFNFIHN5bmMgaHVn
ZXBhZ2UgY29sbGFwc2UiKSBhbmQNCj4gdXBzdHJlYW0gY29tbWl0IDM0NDg4Mzk5ZmEwOCAo
Im1tL21hZHZpc2U6IGFkZCBmaWxlIGFuZCBzaG1lbSBzdXBwb3J0IHRvDQo+IE1BRFZfQ09M
TEFQU0UiKS4gIFVwZGF0ZSB0aGUgbWFuLXBhZ2VzIGZvciBtYWR2aXNlKDIpIGFuZA0KPiBw
cm9jZXNzX21hZHZpc2UoMikuDQo+IA0KPiBMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9saW51eC1tbS8yMDIyMDkyMjIyNDA0Ni4xMTQzMjA0LTEtem9rZWVmZUBnb29nbGUuY29t
Lw0KPiBMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tbS8yMDIyMDcwNjIz
NTkzNi4yMTk3MTk1LTEtem9rZWVmZUBnb29nbGUuY29tLw0KPiBTaWduZWQtb2ZmLWJ5OiBa
YWNoIE8nS2VlZmUgPHpva2VlZmVAZ29vZ2xlLmNvbT4NCg0KUGxlYXNlIHNlZSBhIGZldyBj
b21tZW50cyBiZWxvdy4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFuMi9t
YWR2aXNlLjIgICAgICAgICB8IDkwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrLQ0KPiAgIG1hbjIvcHJvY2Vzc19tYWR2aXNlLjIgfCAxMCArKysrKw0KPiAg
IDIgZmlsZXMgY2hhbmdlZCwgOTggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9tYW4yL21hZHZpc2UuMiBiL21hbjIvbWFkdmlzZS4yDQo+IGlu
ZGV4IGRmMzQxM2NjOC4uYjAzZmM3MzFkIDEwMDY0NA0KPiAtLS0gYS9tYW4yL21hZHZpc2Uu
Mg0KPiArKysgYi9tYW4yL21hZHZpc2UuMg0KPiBAQCAtMzg1LDkgKzM4NSwxMCBAQCBzZXQg
KHNlZQ0KPiAgIC5CUiBwcmN0bCAoMikgKS4NCj4gICAuSVANCj4gICBUaGUNCj4gLS5CIE1B
RFZfSFVHRVBBR0UNCj4gKy5CUiBNQURWX0hVR0VQQUdFICwNCj4gKy5CUiBNQURWX05PSFVH
RVBBR0UgLA0KPiAgIGFuZA0KPiAtLkIgTUFEVl9OT0hVR0VQQUdFDQo+ICsuQiBNQURWX0NP
TExBUFNFDQo+ICAgb3BlcmF0aW9ucyBhcmUgYXZhaWxhYmxlIG9ubHkgaWYgdGhlIGtlcm5l
bCB3YXMgY29uZmlndXJlZCB3aXRoDQo+ICAgLkIgQ09ORklHX1RSQU5TUEFSRU5UX0hVR0VQ
QUdFDQo+ICAgYW5kIGZpbGUvc2htZW0gbWVtb3J5IGlzIG9ubHkgc3VwcG9ydGVkIGlmIHRo
ZSBrZXJuZWwgd2FzIGNvbmZpZ3VyZWQgd2l0aA0KPiBAQCAtNDAwLDYgKzQwMSw4MSBAQCBh
bmQNCj4gICAuSSBsZW5ndGgNCj4gICB3aWxsIG5vdCBiZSBiYWNrZWQgYnkgdHJhbnNwYXJl
bnQgaHVnZXBhZ2VzLg0KPiAgIC5UUA0KPiArLkJSIE1BRFZfQ09MTEFQU0UgIiAoc2luY2Ug
TGludXggNi4xKSINCj4gKy5cIiBjb21taXQgN2Q4ZmFhZjE1NTQ1NGY4Nzk4ZWM1NjQwNGZh
Y2EyOWE4MjY4OWM3Nw0KPiArLlwiIGNvbW1pdCAzNDQ4ODM5OWZhMDhmYWFmNjY0NzQzZmE1
NGIyNzFlYjZmOWUxMzIxDQo+ICtQZXJmb3JtIGEgYmVzdC1lZmZvcnQgc3luY2hyb25vdXMg
Y29sbGFwc2Ugb2YgdGhlIG5hdGl2ZSBwYWdlcyBtYXBwZWQgYnkgdGhlDQoNClBsZWFzZSB1
c2Ugc2VtYW50aWMgbGluZSBicmVha3MuICBJbiB0aGlzIGNhc2UsIEknZCBicmVhayBhZnRl
ciAicGFnZXMiLg0KDQptYW4tcGFnZXMoNyk6DQogICAgVXNlIHNlbWFudGljIG5ld2xpbmVz
DQogICAgICAgIEluICB0aGUgc291cmNlIG9mIGEgbWFudWFsIHBhZ2UsIG5ldyBzZW50ZW5j
ZXMgc2hvdWxkIGJlIHN0YXJ0ZWQgb24gbmV3DQogICAgICAgIGxpbmVzLCBsb25nIHNlbnRl
bmNlcyBzaG91bGQgYmUgc3BsaXQgaW50byBsaW5lcyBhdCBjbGF1c2UgYnJlYWtzIChjb23i
gJANCiAgICAgICAgbWFzLCBzZW1pY29sb25zLCBjb2xvbnMsIGFuZCBzbyBvbiksIGFuZCBs
b25nIGNsYXVzZXMgc2hvdWxkICBiZSAgc3BsaXQNCiAgICAgICAgYXQgIHBocmFzZSAgYm91
bmRhcmllcy4gICBUaGlzIGNvbnZlbnRpb24sIHNvbWV0aW1lcyBrbm93biBhcyAic2VtYW50
aWMNCiAgICAgICAgbmV3bGluZXMiLCBtYWtlcyBpdCBlYXNpZXIgdG8gc2VlIHRoZSBlZmZl
Y3Qgb2YgIHBhdGNoZXMsICB3aGljaCAgb2Z0ZW4NCiAgICAgICAgb3BlcmF0ZSBhdCB0aGUg
bGV2ZWwgb2YgaW5kaXZpZHVhbCBzZW50ZW5jZXMsIGNsYXVzZXMsIG9yIHBocmFzZXMuDQoN
Cj4gK21lbW9yeSByYW5nZSBpbnRvIFRyYW5zcGFyZW50IEh1Z2UgUGFnZXMgKFRIUHMpLg0K
PiArLkIgTUFEVl9DT0xMQVBTRQ0KPiArb3BlcmF0ZXMgb24gdGhlIGN1cnJlbnQgc3RhdGUg
b2YgbWVtb3J5IG9mIHRoZSBjYWxsaW5nIHByb2Nlc3MgYW5kIG1ha2VzIG5vDQoNCkhlcmUg
SSdkIGJyZWFrIGFmdGVyICJhbmQiLg0KDQo+ICtwZXJzaXN0ZW50IGNoYW5nZXMgb3IgZ3Vh
cmFudGVlcyBvbiBob3cgcGFnZXMgd2lsbCBiZSBtYXBwZWQsDQo+ICtjb25zdHJ1Y3RlZCwN
Cj4gK29yIGZhdWx0ZWQgaW4gdGhlIGZ1dHVyZS4NCj4gKy5JUA0KPiArLkIgTUFEVl9DT0xM
QVBTRQ0KPiArc3VwcG9ydHMgcHJpdmF0ZSBhbm9ueW1vdXMgcGFnZXMgKHNlZQ0KPiArLkJS
IG1tYXAgKDIpKSwNCj4gK3NobWVtIHBhZ2VzLA0KPiArYW5kIGZpbGUtYmFja2VkIHBhZ2Vz
Lg0KPiArU2VlDQo+ICsuQiBNQURWX0hVR0VQQUdFDQo+ICtmb3IgZ2VuZXJhbCBpbmZvcm1h
dGlvbiBvbiBtZW1vcnkgcmVxdWlyZW1lbnRzIGZvciBUSFAuDQo+ICtJZiB0aGUgcmFuZ2Ug
cHJvdmlkZWQgc3BhbnMgbXVsdGlwbGUgVk1BcywNCj4gK3RoZSBzZW1hbnRpY3Mgb2YgdGhl
IGNvbGxhcHNlIG92ZXIgZWFjaCBWTUEgaXMgaW5kZXBlbmRlbnQgZnJvbSB0aGUgb3RoZXJz
Lg0KPiArSWYgY29sbGFwc2Ugb2YgYSBnaXZlbiBodWdlIHBhZ2UtYWxpZ25lZC9zaXplZCBy
ZWdpb24gZmFpbHMsDQo+ICt0aGUgb3BlcmF0aW9uIG1heSBjb250aW51ZSB0byBhdHRlbXB0
IGNvbGxhcHNpbmcgdGhlIHJlbWFpbmRlciBvZiB0aGUNCg0KQnJlYWsgYWZ0ZXIgImNvbGxh
cHNpbmciLg0KDQo+ICtzcGVjaWZpZWQgbWVtb3J5Lg0KPiArLkIgTUFEVl9DT0xMQVBTRQ0K
PiArd2lsbCBhdXRvbWF0aWNhbGx5IGNsYW1wIHRoZSBwcm92aWRlZCByYW5nZSB0byBiZSBo
dWdlcGFnZS1hbGlnbmVkLg0KPiArLklQDQo+ICtBbGwgbm9uLXJlc2lkZW50IHBhZ2VzIGNv
dmVyZWQgYnkgdGhlIHJhbmdlIHdpbGwgZmlyc3QgYmUNCg0KQnJlYWsgYWZ0ZXIgInJhbmdl
Ii4NCg0KPiArc3dhcHBlZC9mYXVsdGVkLWluLA0KPiArYmVmb3JlIGJlaW5nIGNvcGllZCBv
bnRvIGEgZnJlc2hseSBhbGxvY2F0ZWQgaHVnZXBhZ2UuDQo+ICtJZiB0aGUgbmF0aXZlIHBh
Z2VzIGNvbXBvc2UgdGhlIHNhbWUgUFRFLW1hcHBlZCBodWdlcGFnZSwNCj4gK2FuZCBhcmUg
c3VpdGFibHkgYWxpZ25lZCwNCj4gK2FsbG9jYXRpb24gb2YgYSBuZXcgaHVnZXBhZ2UgbWF5
IGJlIGVsaWRlZCBhbmQgY29sbGFwc2UgbWF5IGhhcHBlbg0KDQpCcmVhayBiZWZvcmUgb3Ig
YWZ0ZXIgImFuZCIuDQoNCj4gK2luLXBsYWNlLg0KPiArVW5tYXBwZWQgcGFnZXMgd2lsbCBo
YXZlIHRoZWlyIGRhdGEgZGlyZWN0bHkgaW5pdGlhbGl6ZWQgdG8gMCBpbiB0aGUgbmV3DQoN
CkJyZWFrIGFmdGVyICIwIi4NCg0KPiAraHVnZXBhZ2UuDQo+ICtIb3dldmVyLA0KPiArZm9y
IGV2ZXJ5IGVsaWdpYmxlIGh1Z2VwYWdlLWFsaWduZWQvc2l6ZWQgcmVnaW9uIHRvIGJlIGNv
bGxhcHNlZCwNCj4gK2F0IGxlYXN0IG9uZSBwYWdlIG11c3QgY3VycmVudGx5IGJlIGJhY2tl
ZCBieSBwaHlzaWNhbCBtZW1vcnkuDQo+ICsuSVANCj4gKy5CUiBNQURWX0NPTExBUFNFDQoN
CnMvQlIvQi8NCg0KPiAraXMgaW5kZXBlbmRlbnQgb2YgYW55IHN5c2ZzDQo+ICsoc2VlDQo+
ICsuQlIgc3lzZnMgKDUpKQ0KPiArc2V0dGluZyB1bmRlcg0KPiArLklSIC9zeXMva2VybmVs
L21tL3RyYW5zcGFyZW50X2h1Z2VwYWdlICwNCj4gK2JvdGggaW4gdGVybXMgb2YgZGV0ZXJt
aW5pbmcgVEhQIGVsaWdpYmlsaXR5LA0KPiArYW5kIGFsbG9jYXRpb24gc2VtYW50aWNzLg0K
PiArU2VlIExpbnV4IGtlcm5lbCBzb3VyY2UgZmlsZQ0KPiArLkkgRG9jdW1lbnRhdGlvbi9h
ZG1pblwtZ3VpZGUvbW0vdHJhbnNodWdlLnJzdA0KPiArZm9yIG1vcmUgaW5mb3JtYXRpb24u
DQo+ICsuQlIgTUFEVl9DT0xMQVBTRQ0KDQpzL0JSL0IvDQoNCj4gK2Fsc28gaWdub3Jlcw0K
PiArLkIgaHVnZT0NCj4gK3RtcGZzIG1vdW50IHdoZW4gb3BlcmF0aW5nIG9uIHRtcGZzIGZp
bGVzLg0KPiArQWxsb2NhdGlvbiBmb3IgdGhlIG5ldyBodWdlcGFnZSBtYXkgZW50ZXIgZGly
ZWN0IHJlY2xhaW0gYW5kL29yIGNvbXBhY3Rpb24sDQo+ICtyZWdhcmRsZXNzIG9mIFZNQSBm
bGFncw0KPiArKHRob3VnaA0KPiArLkJSIFZNX05PSFVHRVBBR0UNCg0Kcy9CUi9CLw0KDQo+
ICtpcyBzdGlsbCByZXNwZWN0ZWQpLg0KPiArLklQDQo+ICtXaGVuIHRoZSBzeXN0ZW0gaGFz
IG11bHRpcGxlIE5VTUEgbm9kZXMsDQo+ICt0aGUgaHVnZXBhZ2Ugd2lsbCBiZSBhbGxvY2F0
ZWQgZnJvbSB0aGUgbm9kZSBwcm92aWRpbmcgdGhlIG1vc3QgbmF0aXZlDQoNCkJyZWFrIGFm
dGVyICJmcm9tIi4NCg0KPiArcGFnZXMuDQo+ICsuSVANCj4gK0lmIGFsbCBodWdlcGFnZS1z
aXplZC9hbGlnbmVkIHJlZ2lvbnMgY292ZXJlZCBieSB0aGUgcHJvdmlkZWQgcmFuZ2Ugd2Vy
ZQ0KDQpQcmVmZXIgRW5nbGlzaCByYXRoZXIgdGhhbiAiLyIuDQoNCj4gK2VpdGhlciBzdWNj
ZXNzZnVsbHkgY29sbGFwc2VkLA0KPiArb3Igd2VyZSBhbHJlYWR5IFBNRC1tYXBwZWQgVEhQ
cywNCj4gK3RoaXMgb3BlcmF0aW9uIHdpbGwgYmUgZGVlbWVkIHN1Y2Nlc3NmdWwuDQo+ICtO
b3RlIHRoYXQgdGhpcyBkb2VzbuKAmXQgZ3VhcmFudGVlIGFueXRoaW5nIGFib3V0IG90aGVy
IHBvc3NpYmxlIG1hcHBpbmdzIG9mDQoNCkJyZWFrIGFmdGVyICJhYm91dCIuDQoNCj4gK3Ro
ZSBtZW1vcnkuDQo+ICtBbHNvIG5vdGUgdGhhdCBtYW55IGZhaWx1cmVzIG1pZ2h0IGhhdmUg
b2NjdXJyZWQgc2luY2UgdGhlIG9wZXJhdGlvbiBtYXkNCj4gK2NvbnRpbnVlIHRvIGNvbGxh
cHNlIGluIHRoZSBldmVudCBjb2xsYXBzZSBvZiBhIHNpbmdsZSBodWdlcGFnZS1zaXplZC9h
bGlnbmVkDQoNCkFkZCBzb21lIG9taXR0ZWQgInRoYXQiIG9yIHNvbWV0aGluZyB0aGF0IHdp
bGwgaGVscCByZWFkYWJpbGl0eSB0byANCm5vbi1uYXRpdmUtRW5nbGlzaCByZWFkZXJzLg0K
DQpBbmQgYnJlYWsgYXQgYSBiZXR0ZXIgcGxhY2UuDQoNCj4gK3JlZ2lvbiBmYWlscy4NCj4g
Ky5UUA0KPiAgIC5CUiBNQURWX0RPTlREVU1QICIgKHNpbmNlIExpbnV4IDMuNCkiDQo+ICAg
LlwiIGNvbW1pdCA5MDlhZjc2OGU4ODg2NzAxNmY0MjcyNjRhZTM5ZDI3YTU3YjZhOGVkDQo+
ICAgLlwiIGNvbW1pdCBhY2NiNjFmZTdiYjBmNWMyYTQxMDIyMzllNDk4MTY1MGY5MDQ4NTE5
DQo+IEBAIC02MTksNiArNjk1LDExIEBAIEEga2VybmVsIHJlc291cmNlIHdhcyB0ZW1wb3Jh
cmlseSB1bmF2YWlsYWJsZS4NCj4gICAuQiBFQkFERg0KPiAgIFRoZSBtYXAgZXhpc3RzLCBi
dXQgdGhlIGFyZWEgbWFwcyBzb21ldGhpbmcgdGhhdCBpc24ndCBhIGZpbGUuDQo+ICAgLlRQ
DQo+ICsuQiBFQlVTWQ0KPiArKGZvcg0KPiArLkJSIE1BRFZfQ09MTEFQU0UgKQ0KPiArQ291
bGQgbm90IGNoYXJnZSBodWdlcGFnZSB0byBjZ3JvdXA6IGNncm91cCBsaW1pdCBleGNlZWRl
ZC4NCj4gKy5UUA0KPiAgIC5CIEVGQVVMVA0KPiAgIC5JIGFkdmljZQ0KPiAgIGlzDQo+IEBA
IC03MTYsNiArNzk3LDExIEBAIG1heGltdW0gcmVzaWRlbnQgc2V0IHNpemUuDQo+ICAgTm90
IGVub3VnaCBtZW1vcnk6IHBhZ2luZyBpbiBmYWlsZWQuDQo+ICAgLlRQDQo+ICAgLkIgRU5P
TUVNDQo+ICsoZm9yDQo+ICsuQlIgTUFEVl9DT0xMQVBTRSApDQo+ICtOb3QgZW5vdWdoIG1l
bW9yeTogY291bGQgbm90IGFsbG9jYXRlIGh1Z2VwYWdlLg0KPiArLlRQDQo+ICsuQiBFTk9N
RU0NCj4gICBBZGRyZXNzZXMgaW4gdGhlIHNwZWNpZmllZCByYW5nZSBhcmUgbm90IGN1cnJl
bnRseQ0KPiAgIG1hcHBlZCwgb3IgYXJlIG91dHNpZGUgdGhlIGFkZHJlc3Mgc3BhY2Ugb2Yg
dGhlIHByb2Nlc3MuDQo+ICAgLlRQDQo+IGRpZmYgLS1naXQgYS9tYW4yL3Byb2Nlc3NfbWFk
dmlzZS4yIGIvbWFuMi9wcm9jZXNzX21hZHZpc2UuMg0KPiBpbmRleCA0NGQzYjk0ZTguLjhi
MGRkY2NkZCAxMDA2NDQNCj4gLS0tIGEvbWFuMi9wcm9jZXNzX21hZHZpc2UuMg0KPiArKysg
Yi9tYW4yL3Byb2Nlc3NfbWFkdmlzZS4yDQo+IEBAIC03Myw2ICs3MywxMCBAQCBhcmd1bWVu
dCBpcyBvbmUgb2YgdGhlIGZvbGxvd2luZyB2YWx1ZXM6DQo+ICAgU2VlDQo+ICAgLkJSIG1h
ZHZpc2UgKDIpLg0KPiAgIC5UUA0KPiArLkIgTUFEVl9DT0xMQVBTRQ0KPiArU2VlDQo+ICsu
QlIgbWFkdmlzZSAoMikuDQo+ICsuVFANCj4gICAuQiBNQURWX1BBR0VPVVQNCj4gICBTZWUN
Cj4gICAuQlIgbWFkdmlzZSAoMikuDQo+IEBAIC0xNzMsNiArMTc3LDEyIEBAIFRoZSBjYWxs
ZXIgZG9lcyBub3QgaGF2ZSBwZXJtaXNzaW9uIHRvIGFjY2VzcyB0aGUgYWRkcmVzcyBzcGFj
ZSBvZiB0aGUgcHJvY2Vzcw0KPiAgIC5UUA0KPiAgIC5CIEVTUkNIDQo+ICAgVGhlIHRhcmdl
dCBwcm9jZXNzIGRvZXMgbm90IGV4aXN0IChpLmUuLCBpdCBoYXMgdGVybWluYXRlZCBhbmQg
YmVlbiB3YWl0ZWQgb24pLg0KPiArLlBQDQo+ICtTZWUNCj4gKy5CUiBtYWR2aXNlICgyKQ0K
PiArZm9yDQo+ICsuSVIgYWR2aWNlIC1zcGVjaWZpYw0KPiArZXJyb3JzLg0KPiAgIC5TSCBW
RVJTSU9OUw0KPiAgIFRoaXMgc3lzdGVtIGNhbGwgZmlyc3QgYXBwZWFyZWQgaW4gTGludXgg
NS4xMC4NCj4gICAuXCIgY29tbWl0IGVjYjhhYzhiMWYxNDY5MTVhYTZiOTY0NDliNjZkZDQ4
OTg0Y2FhY2MNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=


--------------kb8WYnOm6oPGlcgG8V9l9850--

--------------quKv9ptJEfrGLlrnuFSXNoZr
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOWGmkACgkQnowa+77/
2zLdag//XOMHpU0/S7rFqKfuRrRbX3p+BUidlCMBbCE7zZXY6tcJJtQUCEGgMoXq
P0ZagrsyXAKyfjI2oxP+nwhZU2HDuHW0crqYw3P96KUxwTOtjW/WmFJLdI1PFNMl
YLK5ylUAft7H5o5eadF762nR+ie2W0001qBu4cWcCvzFEFcCPKgsQCd0KglhQLCE
f+0s5ETklRufs+WmUoddR4h8Zbi0G80P+Anz8l/spYNtSQ3Q5T1oKWYiAdcmL2h/
eQylmnHRxvr++FcJCGVxTdPUwN7gwdajeaYSD3KVB98Vuc5DvwRijCwUtaFp/RsS
lWDh+1gb5AH+KcbX+0aZkqfg8cC3uvRVncJySalCA0vmuMQYX8tQLDaABzyy6ftX
ZyEUXBUkShLXZcorehrUolgQvKOMoFOTkgKfCt+MzkXW+vT5Tct9HpyCQLcuYgF1
9ziTWVUs8diuj3BdlJCpPJMPRJTU3MBVLk+Gorx1FuQDwrO7OfeUgpMRbR0aOeU8
Fsab2aqVMYKHfXGt0p/QTkVfWL/5l7mABJEWHPmXbXd2vm/u9c4un8tiRX76JTtW
e3gwRV7Mkj9rsE8oYriW20Xsh96Q+FllaKVtEyJGeBf7gRhRJKc6WfFnIh7qjQOn
gttNmzCWGOe/OLzhEGI+XIWOhbO/oP4b03/tRDGkOOWiKmzMs0k=
=E1ub
-----END PGP SIGNATURE-----

--------------quKv9ptJEfrGLlrnuFSXNoZr--
