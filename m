Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 383AD660ECB
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 13:33:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230258AbjAGMdV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 07:33:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229656AbjAGMdU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 07:33:20 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73CE0625DB
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 04:33:19 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id z8-20020a05600c220800b003d33b0bda11so4962644wml.0
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 04:33:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S6ZP9SCoIHrLHfwwFODwLsTCjhkBuL5Ng3k1FsK+tAA=;
        b=qR/uNbn4n5O55yGZiNNoBLvrVdseqdhdLqNOSkAbhxnY82pZf+EgT7W7zoO2M0J6tO
         cYYcHhwOIqqLGuDcpyMSsUlcFzDJSFONXuMIJMYawF+pJt15j2GZAv9kiJOoprvGsE7H
         ufyrMKVyba3cOmQxZL+7tkTBHARXVyiGDv/Atio/pCxXpoui8yLIAkofMOGGmdHX9evB
         dKrquJDg1lLDKmeN16EbCA4EEciRhBalglmqtnCqcHo3EhsYqlKMkHuplJhA83wzh9Kg
         0S15oGBmlIQLP2wEei6KNXfKm6OkowuzHwE9M7PcfuU+U5YGkljApVtQPgLUkOkBamdK
         Fwow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S6ZP9SCoIHrLHfwwFODwLsTCjhkBuL5Ng3k1FsK+tAA=;
        b=JQh6ytTAMc3tN8+FcgHlZ1wIyoht/iqR1t1ELKCpzuRR1iYXJoDvsigx5ftwTe1w84
         nAET4AgVAswbzo0XrjQI5ecDoeuMYjq4HOFyBPohBCZg142hO6YEg6OJ6is1EG2oLwAn
         DJgyuYUCYjx23RY9i4Jtg+ZYnD+vfEPL5P84JsFl4R0zWmFNa9tyIndgNEj9OayDZUrb
         cUHS21dUHV3OJWcvE5ghya213hGOIHBwNTOECCwlIu23nNmP5gMGJP1D0g+Jql+NkYDF
         RzL10g1q0AVTLbiQoCZiiub/xLB7vzyXk9Wl2/acoN0n0DB9b7p7tXXu1iMlUtMIEE1L
         F0Pw==
X-Gm-Message-State: AFqh2kpXvx1P2VaZetDPoPNxD77wbdh93PlhgOQ/bQ1YDfMfb1/Iaa34
        dcTr7aHzEBMg9l2vm3ldxKc=
X-Google-Smtp-Source: AMrXdXsdsl5cJR4c5tVjDY8lkAJpVyv4nBcwBnBJuu8qTqepQXX3WHdjwAoeOsZachWIe/yh1uGvlg==
X-Received: by 2002:a05:600c:4c21:b0:3cf:f18b:327e with SMTP id d33-20020a05600c4c2100b003cff18b327emr42501058wmp.4.1673094797919;
        Sat, 07 Jan 2023 04:33:17 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h10-20020a1ccc0a000000b003d237d60318sm5245004wmb.2.2023.01.07.04.33.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jan 2023 04:33:17 -0800 (PST)
Message-ID: <b3f75749-8506-0e29-8a26-3d27b737b6ce@gmail.com>
Date:   Sat, 7 Jan 2023 13:33:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 04/10] libc.7: wfix
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230107095438.y4e3jh7nlrlrvagv@illithid>
 <b4002bb3-bc18-8833-a40d-01f2dad6f46e@gmail.com>
In-Reply-To: <b4002bb3-bc18-8833-a40d-01f2dad6f46e@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------U9iC05JPD1uc2dE23aomqZ9R"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------U9iC05JPD1uc2dE23aomqZ9R
Content-Type: multipart/mixed; boundary="------------2zSKcPg6myqL2JMpdYr9DSxg";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <b3f75749-8506-0e29-8a26-3d27b737b6ce@gmail.com>
Subject: Re: [PATCH v4 04/10] libc.7: wfix
References: <20230107095438.y4e3jh7nlrlrvagv@illithid>
 <b4002bb3-bc18-8833-a40d-01f2dad6f46e@gmail.com>
In-Reply-To: <b4002bb3-bc18-8833-a40d-01f2dad6f46e@gmail.com>

--------------2zSKcPg6myqL2JMpdYr9DSxg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvNy8yMyAxMzozMiwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+IEhpIEJy
YW5kZW4sDQo+IA0KPiBPbiAxLzcvMjMgMTA6NTQsIEcuIEJyYW5kZW4gUm9iaW5zb24gd3Jv
dGU6DQo+PiAqIFNheSAiR05VL0xpbnV4IGRpc3RyaWJ1dGlvbnMiIGluc3RlYWQgb2YgIkxp
bnV4IGRpc3RyaWJ1dGlvbnMiLg0KPj4gKiBDbGFyaWZ5IGNsYWltIGFib3V0IHBvcHVsYXJp
dHkgb2YgZ2xpYmMuDQo+PiAqIFRpZ2h0ZW4gd29yZGluZy4NCj4+DQo+PiBTaWduZWQtb2Zm
LWJ5OiBHLiBCcmFuZGVuIFJvYmluc29uIDxnLmJyYW5kZW4ucm9iaW5zb25AZ21haWwuY29t
Pg0KPiANCj4gUGF0Y2ggYXBwbGllZC4nDQoNClNvcnJ5LiAgTm90LiAgSSByZXBsaWVkIHRv
IHRoZSB3cm9uZyBwYXRjaC4NCg0KDQo+IA0KPiBUaGFua3MsDQo+IA0KPiBBbGV4DQo+IA0K
Pj4gLS0tDQo+PiDCoCBtYW43L2xpYmMuNyB8IDEwMyArKysrKysrKysrKysrKysrKysrKysr
KysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwg
NTUgaW5zZXJ0aW9ucygrKSwgNDggZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBh
L21hbjcvbGliYy43IGIvbWFuNy9saWJjLjcNCj4+IGluZGV4IDQzZWMwMjY5Zi4uYzYxODAw
NzVjIDEwMDY0NA0KPj4gLS0tIGEvbWFuNy9saWJjLjcNCj4+ICsrKyBiL21hbjcvbGliYy43
DQo+PiBAQCAtMTYsODAgKzE2LDg4IEBAIEJlY2F1c2Ugb2Ygc29tZSBoaXN0b3J5DQo+PiDC
oCB1c2Ugb2YgdGhlIHRlcm0gXChscWxpYmNcKHJxDQo+PiDCoCB0byByZWZlciB0byB0aGUg
c3RhbmRhcmQgQyBsaWJyYXJ5IGlzIHNvbWV3aGF0IGFtYmlndW91cyBvbiBMaW51eC4NCj4+
IMKgIC5TUyBnbGliYw0KPj4gLUJ5IGZhciB0aGUgbW9zdCB3aWRlbHkgdXNlZCBDIGxpYnJh
cnkgb24gTGludXggaXMgdGhlDQo+PiArVGhlIHN0YW5kYXJkIGxpYmMgbW9zdCBwb3B1bGFy
bHkgdXNlZCB3aXRoIHRoZSBMaW51eCBrZXJuZWwgaXMNCj4+IMKgIC5VUiBodHRwOi8vd3d3
LmdudS5vcmdcOi9zb2Z0d2FyZVw6L2xpYmMvDQo+PiDCoCBHTlUgQyBMaWJyYXJ5DQo+PiDC
oCAuVUUgLA0KPj4gLW9mdGVuIHJlZmVycmVkIHRvIGFzDQo+PiArd2lkZWx5IGNhbGxlZA0K
Pj4gwqAgLklSIGdsaWJjIC4NCj4+IC1UaGlzIGlzIHRoZSBDIGxpYnJhcnkgdGhhdCBpcyBu
b3dhZGF5cyB1c2VkIGluIGFsbA0KPj4gLW1ham9yIExpbnV4IGRpc3RyaWJ1dGlvbnMuDQo+
PiAtSXQgaXMgYWxzbyB0aGUgQyBsaWJyYXJ5IHdob3NlIGRldGFpbHMgYXJlIGRvY3VtZW50
ZWQNCj4+ICtUaGlzIGltcGxlbWVudGF0aW9uIGlzIG5vd2FkYXlzIHVzZWQNCj4+ICtpbiBh
bGwgbWFqb3IgR05VL0xpbnV4IGRpc3RyaWJ1dGlvbnMuDQo+PiArSXRzIGRldGFpbHMgYXJl
IGRvY3VtZW50ZWQNCj4+IMKgIGluIHRoZSByZWxldmFudCBwYWdlcyBvZiB0aGUNCj4+ICtM
aW51eA0KPj4gwqAgLkkgbWFuLXBhZ2VzDQo+PiAtcHJvamVjdA0KPj4gLShwcmltYXJpbHkg
aW4gU2VjdGlvbiAzIG9mIHRoZSBtYW51YWwpLg0KPj4gLURvY3VtZW50YXRpb24gb2YgZ2xp
YmMgaXMgYWxzbyBhdmFpbGFibGUgaW4gdGhlIGdsaWJjIG1hbnVhbCwNCj4+IC1hdmFpbGFi
bGUgdmlhIHRoZSBjb21tYW5kDQo+PiAtLklSICJpbmZvIGxpYmMiIC4NCj4+IC1SZWxlYXNl
IDEuMCBvZiBnbGliYyB3YXMgbWFkZSBpbiBTZXB0ZW1iZXIgMTk5Mi4NCj4+ICtwcm9qZWN0
LA0KPj4gK3ByaW1hcmlseSBpbiBzZWN0aW9uIDMgb2YgdGhlIG1hbnVhbC4NCj4+ICtnbGli
YyBhbHNvIG9mZmVycyBhIG1hbnVhbCBvZiBpdHMgb3duIGluIFRleGluZm8gZm9ybWF0LA0K
Pj4gK2Jyb3dzYWJsZSBhdCB0aGUgY29tbWFuZCBsaW5lIHdpdGgNCj4+ICsuUkkgXChscSAi
aW5mbyBsaWJjIiBcKHJxLg0KPj4gK1ZlcnNpb24gMS4wIG9mIGdsaWJjIHdhcyByZWxlYXNl
ZCBpbiBTZXB0ZW1iZXIgMTk5Mi4NCj4+IMKgIChUaGVyZSB3ZXJlIGVhcmxpZXIgMC54IHJl
bGVhc2VzLikNCj4+IC1UaGUgbmV4dCBtYWpvciByZWxlYXNlIG9mIGdsaWJjIHdhcyAyLjAs
DQo+PiArVGhlIG5leHQgbWFqb3IgcmVsZWFzZSBvZiBnbGliYyB3YXMgMi4wDQo+PiDCoCBh
dCB0aGUgYmVnaW5uaW5nIG9mIDE5OTcuDQo+PiDCoCAuUFANCj4+IC1UaGUgcGF0aG5hbWUN
Cj4+ICtUaGUgZmlsZQ0KPj4gwqAgLkkgL2xpYi9saWJjLnNvLjYNCj4+IC0ob3Igc29tZXRo
aW5nIHNpbWlsYXIpDQo+PiAtaXMgbm9ybWFsbHkgYSBzeW1ib2xpYyBsaW5rIHRoYXQNCj4+
IC1wb2ludHMgdG8gdGhlIGxvY2F0aW9uIG9mIHRoZSBnbGliYyBsaWJyYXJ5LA0KPj4gLWFu
ZCBleGVjdXRpbmcgdGhpcyBwYXRobmFtZSB3aWxsIGNhdXNlIGdsaWJjIHRvIGRpc3BsYXkN
Cj4+IC12YXJpb3VzIGluZm9ybWF0aW9uIGFib3V0IHRoZSB2ZXJzaW9uIGluc3RhbGxlZCBv
biB5b3VyIHN5c3RlbS4NCj4+ICtvciBzaW1pbGFyDQo+PiAraXMgbm9ybWFsbHkgYSBzeW1i
b2xpYyBsaW5rIHRvIHRoZSBnbGliYyBsaWJyYXJ5Lg0KPj4gK0V4ZWN1dGUgaXQgdG8gZGlz
cGxheSBpbmZvcm1hdGlvbiBhYm91dCB0aGUgdmVyc2lvbiBpbnN0YWxsZWQgb24geW91cg0K
Pj4gK3N5c3RlbS4NCj4+IMKgIC5TUyBMaW51eCBsaWJjDQo+PiAtSW4gdGhlIGVhcmx5IHRv
IG1pZCAxOTkwcywNCj4+IC10aGVyZSB3YXMgZm9yIGEgd2hpbGUNCj4+ICtJbiB0aGUgZWFy
bHkgdG8gbWlkLTE5OTBzLA0KPj4gwqAgLklSICJMaW51eCBsaWJjIiAsDQo+PiAtYSBmb3Jr
IG9mIGdsaWJjIDEueCBjcmVhdGVkIGJ5IExpbnV4IGRldmVsb3BlcnMgd2hvIGZlbHQgdGhh
dCBnbGliYw0KPj4gLWRldmVsb3BtZW50IGF0IHRoZSB0aW1lIHdhcyBub3Qgc3VmZmljaW5n
IGZvciB0aGUgbmVlZHMgb2YgTGludXguDQo+PiArYSBmb3JrIG9mIGdsaWJjXH4xLA0KPj4g
K3dhcyBtYWludGFpbmVkIGJ5IExpbnV4IGRldmVsb3BlcnMNCj4+ICt3aG8gZmVsdCB0aGF0
IGdsaWJjIGRldmVsb3BtZW50IGF0IHRoZSB0aW1lDQo+PiArZGlkIG5vdCBtZWV0IHRoZSBM
aW51eCB1c2VyIGNvbW11bml0eSdzIG5lZWRzLg0KPj4gwqAgT2Z0ZW4sDQo+PiAtdGhpcyBs
aWJyYXJ5IHdhcyByZWZlcnJlZCB0byAoYW1iaWd1b3VzbHkpIGFzIGp1c3QgXChscWxpYmNc
KHJxLg0KPj4gK3RoaXMgbGlicmFyeSB3YXMgcmVmZXJyZWQgdG8sDQo+PiArc2ltcGx5IGFu
ZCBhbWJpZ3VvdXNseSwNCj4+ICthcyBcKGxxbGliY1wocnEuDQo+PiDCoCBMaW51eCBsaWJj
IHJlbGVhc2VkIG1ham9yIHZlcnNpb25zIDIsIDMsIDQsIGFuZCA1LA0KPj4gLWFzIHdlbGwg
YXMgbWFueSBtaW5vciB2ZXJzaW9ucyBvZiB0aG9zZSByZWxlYXNlcy4NCj4+IC1MaW51eCBs
aWJjNCB3YXMgdGhlIGxhc3QgdmVyc2lvbiB0byB1c2UgdGhlIGEub3V0IGJpbmFyeSBmb3Jt
YXQsDQo+PiAtYW5kIHRoZSBmaXJzdCB2ZXJzaW9uIHRvIHByb3ZpZGUgKHByaW1pdGl2ZSkg
c2hhcmVkIGxpYnJhcnkgc3VwcG9ydC4NCj4+IC1MaW51eCBsaWJjIDUgd2FzIHRoZSBmaXJz
dCB2ZXJzaW9uIHRvIHN1cHBvcnQgdGhlIEVMRiBiaW5hcnkgZm9ybWF0Ow0KPj4gLXRoaXMg
dmVyc2lvbiB1c2VkIHRoZSBzaGFyZWQgbGlicmFyeSBzb25hbWUNCj4+ICthbG9uZyB3aXRo
IG1hbnkgbWlub3IgdXBkYXRlcy4NCj4+ICtMaW51eCBsaWJjXH40IHdhcyB0aGUgbGFzdCB0
byB1c2UgdGhlDQo+PiArb2JqZWN0IGZpbGUgZm9ybWF0IGNhbGxlZCBcKGxxYS5vdXRcKHJx
LA0KPj4gK2FuZCB0aGUgZmlyc3Qgb24gTGludXggdG8gcHJvdmlkZSAocHJpbWl0aXZlKSBz
aGFyZWQgbGlicmFyeSBzdXBwb3J0Lg0KPj4gK0xpbnV4IGxpYmNcfjUgd2FzIHRoZSBmaXJz
dCBvbiBMaW51eCB0byBzdXBwb3J0IEVMRiBvYmplY3QgY29kZTsNCj4+ICtpdCBlbXBsb3ll
ZCB0aGUNCj4+ICsuSSBzb25hbWUNCj4+ICsoc2hhcmVkIG9iamVjdCBuYW1lKQ0KPj4gwqAg
LklSIGxpYmMuc28uNSAuDQo+PiDCoCBGb3IgYSB3aGlsZSwNCj4+IC1MaW51eCBsaWJjIHdh
cyB0aGUgc3RhbmRhcmQgQyBsaWJyYXJ5IGluIG1hbnkgTGludXggZGlzdHJpYnV0aW9ucy4N
Cj4+ICtMaW51eCBsaWJjIHdhcyB0aGUgc3RhbmRhcmQgQyBsaWJyYXJ5IGluIG1hbnkgR05V
L0xpbnV4IGRpc3RyaWJ1dGlvbnMuDQo+PiDCoCAuUFANCj4+IC1Ib3dldmVyLA0KPj4gLW5v
dHdpdGhzdGFuZGluZyB0aGUgb3JpZ2luYWwgbW90aXZhdGlvbnMgb2YgdGhlIExpbnV4IGxp
YmMgZWZmb3J0LA0KPj4gLWJ5IHRoZSB0aW1lIGdsaWJjIDIuMCB3YXMgcmVsZWFzZWQNCj4+
IC0oaW4gMTk5NyksDQo+PiArTm90d2l0aHN0YW5kaW5nIHRoZSBvcmlnaW5hbCBtb3RpdmF0
aW9ucyBvZiB0aGUgTGludXggbGliYyBlZmZvcnQsDQo+PiArYnkgdGhlIHRpbWUgZ2xpYmMg
Mi4wIHdhcyByZWxlYXNlZCwNCj4+IMKgIGl0IHdhcyBjbGVhcmx5IHN1cGVyaW9yIHRvIExp
bnV4IGxpYmMsDQo+PiAtYW5kIGFsbCBtYWpvciBMaW51eCBkaXN0cmlidXRpb25zIHRoYXQg
aGFkIGJlZW4gdXNpbmcgTGludXggbGliYw0KPj4gLXNvb24gc3dpdGNoZWQgYmFjayB0byBn
bGliYy4NCj4+IC1UbyBhdm9pZCBhbnkgY29uZnVzaW9uIHdpdGggTGludXggbGliYyB2ZXJz
aW9ucywNCj4+IC1nbGliYyAyLjAgYW5kIGxhdGVyIHVzZWQgdGhlIHNoYXJlZCBsaWJyYXJ5
IHNvbmFtZQ0KPj4gLS5JUiBsaWJjLnNvLjYgLg0KPj4gK2FuZCBhbGwgbWFqb3IgR05VL0xp
bnV4IGRpc3RyaWJ1dGlvbnMgdGhhdCBoYWQgYmVlbiB1c2luZyBMaW51eCBsaWJjDQo+PiAr
c29vbiBzd2l0Y2hlZCAoYmFjaykgdG8gZ2xpYmMuDQo+PiArVG8gYXZvaWQgY29uZnVzaW9u
IHdpdGggTGludXggbGliYyB2ZXJzaW9uaW5nLA0KPj4gK2dsaWJjIDIuMCBhbmQgbGF0ZXIg
dXNlIHRoZSBzb25hbWUNCj4+ICsuSSBsaWJjLnNvLjYNCj4+ICtvbiBMaW51eCBzeXN0ZW1z
IHRvIGluZGljYXRlIHRoZWlyIHN0YXR1cyBhcyBzdWNjZXNzb3JzDQo+PiArdG8gTGludXgg
bGliY1x+NS4NCj4+IMKgIC5QUA0KPj4gwqAgU2luY2UgdGhlIHN3aXRjaCBmcm9tIExpbnV4
IGxpYmMgdG8gZ2xpYmMgMi4wIG9jY3VycmVkIGxvbmcgYWdvLA0KPj4gwqAgLkkgbWFuLXBh
Z2VzDQo+PiDCoCBubyBsb25nZXIgdGFrZXMgY2FyZSB0byBkb2N1bWVudCBMaW51eCBsaWJj
IGRldGFpbHMuDQo+PiDCoCBOZXZlcnRoZWxlc3MsDQo+PiAtdGhlIGhpc3RvcnkgaXMgdmlz
aWJsZSBpbiB2ZXN0aWdlcyBvZiBpbmZvcm1hdGlvbg0KPj4gLWFib3V0IExpbnV4IGxpYmMg
dGhhdCByZW1haW4gaW4gYSBmZXcgbWFudWFsIHBhZ2VzLA0KPj4gK3Zlc3RpZ2VzIG9mIHRo
aXMgaGlzdG9yeSBsaW5nZXIgaW4gY29tbWVudHMNCj4+ICthYm91dCBMaW51eCBsaWJjIGlu
IGEgZmV3IG1hbnVhbCBwYWdlc1woZW1cDQo+PiDCoCBpbiBwYXJ0aWN1bGFyLA0KPj4gwqAg
cmVmZXJlbmNlcyB0bw0KPj4gwqAgLkkgbGliYzQNCj4+IMKgIGFuZA0KPj4gwqAgLklSIGxp
YmM1IC4NCj4+IMKgIC5TUyBPdGhlciBDIGxpYnJhcmllcw0KPj4gLVRoZXJlIGFyZSB2YXJp
b3VzIG90aGVyIGxlc3Mgd2lkZWx5IHVzZWQgQyBsaWJyYXJpZXMgZm9yIExpbnV4Lg0KPj4g
LVRoZXNlIGxpYnJhcmllcyBhcmUgZ2VuZXJhbGx5IHNtYWxsZXIgdGhhbiBnbGliYywNCj4+
IC1ib3RoIGluIHRlcm1zIG9mIGZlYXR1cmVzIGFuZCBtZW1vcnkgZm9vdHByaW50LA0KPj4g
LWFuZCBvZnRlbiBpbnRlbmRlZCBmb3IgYnVpbGRpbmcgc21hbGwgYmluYXJpZXMsDQo+PiAt
cGVyaGFwcyB0YXJnZXRlZCBhdCBkZXZlbG9wbWVudCBmb3IgZW1iZWRkZWQgTGludXggc3lz
dGVtcy4NCj4+ICtPdGhlciwNCj4+ICtsZXNzIHdpZGVseSB1c2VkLA0KPj4gK0MgbGlicmFy
aWVzIGZvciBMaW51eCBleGlzdC4NCj4+ICtUaGV5IGFyZSBnZW5lcmFsbHkgc21hbGxlciB0
aGFuIGdsaWJjDQo+PiAraW4gdGVybXMgb2YgZmVhdHVyZXMgYW5kIG1lbW9yeSBmb290cHJp
bnQsDQo+PiArYW5kIGFyZSBvZnRlbiBpbnRlbmRlZCBmb3IgYnVpbGRpbmcgc21hbGwgYmlu
YXJpZXMsDQo+PiArc3VjaCBhcyB0aG9zZSB0YXJnZXR0aW5nIGVtYmVkZGVkIHN5c3RlbXMu
DQo+PiDCoCBBbW9uZyBzdWNoIGxpYnJhcmllcyBhcmUNCj4+IMKgIC5VUiBodHRwOi8vd3d3
XDoudWNsaWJjXDoub3JnLw0KPj4gwqAgLkkgdUNsaWJjDQo+PiBAQCAtMTAxLDEwICsxMDks
OSBAQCBhbmQNCj4+IMKgIC5VUiBodHRwOi8vd3d3XDoubXVzbFwtbGliY1w6Lm9yZy8NCj4+
IMKgIC5JICJtdXNsIGxpYmMiDQo+PiDCoCAuVUUgLg0KPj4gLURldGFpbHMgb2YgdGhlc2Ug
bGlicmFyaWVzIGFyZSBjb3ZlcmVkIGJ5IHRoZQ0KPj4gK0RldGFpbHMgb2YgdGhlc2UgYXJl
IG9mZmVyZWQgYnkgTGludXgNCj4+IMKgIC5JIG1hbi1wYWdlcw0KPj4gLXByb2plY3QsDQo+
PiAtd2hlcmUgdGhleSBhcmUga25vd24uDQo+PiArd2hlcmUga25vd24uDQo+PiDCoCAuU0gg
U0VFIEFMU08NCj4+IMKgIC5CUiBzeXNjYWxscyAoMiksDQo+PiDCoCAuQlIgZ2V0YXV4dmFs
ICgzKSwNCj4gDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K


--------------2zSKcPg6myqL2JMpdYr9DSxg--

--------------U9iC05JPD1uc2dE23aomqZ9R
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO5ZowACgkQnowa+77/
2zL6FBAAhNhuf0pPd9/eYwo0UDgDGrABXELp5sDzdblSdJCUKlxLlpde0Owrckmb
BTWrQM9rkkHNtZR4eW3dP8ECqmYYfD6Bj91LwjQwTTyFB2jVpn9DwUOdCfg+CXQy
9/hrrfa5OCqM8y8soHmCmla84NDxUyH03boqM5NKEiX59EEL7xihszIil05eJaLa
+zbDc7++hCl8RtXkkd3m38bHaG5/Tnkug3vX9mDChITqWDuhTsCCbyx6b3kfBtQ2
oS85uon0TQfyQgI/I64D0Amg/MbWVP1JxrfW/bQqdMpr4O8plqkTCLxxdadOZXDV
YhUHBPzumdsvRl6UvA8hVL+RJ7OuhVuH1iZzSkmA9t9pux4XA9q5g0Ics1gyvWkP
EhYZrh1kos9HMFA/YJGyN7OYbuRb9/nmRkyk0kj0G6JIVheqjJv55OyahzUe1Cws
OqWKKXS3mzetYgN87FPxDgroW3GpnKJjbT9Nwh3C7CCzY+L9Gt8MJDKPJdxJ7sBG
gIHimJBYBpNWvhzcQSAbEJIqF6m+tx1kwfh/UXBNM45YwVxWw1Aw3FGPGOTHWXSc
w0fhnDALO1I+rt+MB2Uj02UaNtlxESW/T2CSSFrdd3/9APBorXwnjLYd7fkeI6VE
45OwhRhJQ8qIcdBYSPg6U7OfW1EyBGTucfjZGPb8dUu5+km00Bc=
=dQ9P
-----END PGP SIGNATURE-----

--------------U9iC05JPD1uc2dE23aomqZ9R--
