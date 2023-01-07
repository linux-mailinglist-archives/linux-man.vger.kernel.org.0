Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FAD0660EC8
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 13:32:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230178AbjAGMcu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 07:32:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229656AbjAGMct (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 07:32:49 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73509625DA
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 04:32:47 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id az7so3559855wrb.5
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 04:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v0LcuEmHr96OHQ6mG890m4fAG+CgrBwK7kcBaxGhJ8E=;
        b=pzIluTO2qjeYGyUMGWBsQTbZBnO9/K4nCbg+BD4nxApbDmcYzNqF7hXUTbRwGrlIcc
         6VshHlxru+wEpyF0t4QasGhdDetcJZXqvr5yiI8WhteuPpD6tQ9om3j1htDfLrEYuW9Q
         4AD4HE0MYU5cXMh6TUSWjjVGH6/87OF2U/DFGqkd5Ct7rUbaKST0i+soj8QO3reYcFuD
         hLYoDoBRLK8Q67MqHBoRUCptJ4018fsPYAPY8uAliiDBFutp1LiWGEpalFw2VuJKDaIX
         F+vtvhqhAOCfwNrCgCbPLrMlNnd0gBgOvJBFxLbWXxjiq4OXB+5KpTtlwc0ptuOV+mSy
         X2Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=v0LcuEmHr96OHQ6mG890m4fAG+CgrBwK7kcBaxGhJ8E=;
        b=NMOrRFwZTo8mCxOZbdhlKz1dX0GfpEfZRht5LA6g46BZOlfU+THvcOdOXLKHvcxwyq
         +GRuUU6Ic4QV4MZDBywThg1w9uyLXNdJUf3plnyMQ28/8cZyG3RVEV2ohUtLVTORN1ey
         4DEP5wCQyiw5CNgljjtOEz8DBq/i4LUkc6RcMJMOC9itcaORIp/LsljhZGbVDcTzS0BL
         X2f8Jw5CP0rBOI8EywOBN/uVTtjmLudySzYvXSn3uKiRm4ChyAGZ71F7tXf6kpMPquDX
         Zs6Ds2x25M6Ld2LuFVAgPDkxX+fIB3MHZBkJGudKmAPTc+Oqlba2v8u5qk/c4Fj0c/EF
         v12g==
X-Gm-Message-State: AFqh2kp3yJ++cqWHQ+ZuipLBcwlQYPhcA3WTCoy1qdUK2vcMvVMgKlea
        s1ZCFMpIr0wlN8LMcWiAIpEvwpUR4pk=
X-Google-Smtp-Source: AMrXdXuWoma0sqla1oDoBqvaxiB9jpiMkNDVJNGeNafY7hHxauVYK/VhsdRQTvlluQMeyJo2WAE9gw==
X-Received: by 2002:a5d:69cd:0:b0:242:6b2f:4988 with SMTP id s13-20020a5d69cd000000b002426b2f4988mr36883653wrw.46.1673094765924;
        Sat, 07 Jan 2023 04:32:45 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a26-20020a5d457a000000b0028e8693bb75sm4293311wrc.63.2023.01.07.04.32.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jan 2023 04:32:45 -0800 (PST)
Message-ID: <b4002bb3-bc18-8833-a40d-01f2dad6f46e@gmail.com>
Date:   Sat, 7 Jan 2023 13:32:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 04/10] libc.7: wfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230107095438.y4e3jh7nlrlrvagv@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230107095438.y4e3jh7nlrlrvagv@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------WfZNQErveQyKszUVnsrAzo0y"
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
--------------WfZNQErveQyKszUVnsrAzo0y
Content-Type: multipart/mixed; boundary="------------uQTIoQ6S0a33TFxqN0Z2CoaR";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <b4002bb3-bc18-8833-a40d-01f2dad6f46e@gmail.com>
Subject: Re: [PATCH v4 04/10] libc.7: wfix
References: <20230107095438.y4e3jh7nlrlrvagv@illithid>
In-Reply-To: <20230107095438.y4e3jh7nlrlrvagv@illithid>

--------------uQTIoQ6S0a33TFxqN0Z2CoaR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS83LzIzIDEwOjU0LCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiAqIFNheSAiR05VL0xpbnV4IGRpc3RyaWJ1dGlvbnMiIGluc3RlYWQgb2YgIkxp
bnV4IGRpc3RyaWJ1dGlvbnMiLg0KPiAqIENsYXJpZnkgY2xhaW0gYWJvdXQgcG9wdWxhcml0
eSBvZiBnbGliYy4NCj4gKiBUaWdodGVuIHdvcmRpbmcuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBHLiBCcmFuZGVuIFJvYmluc29uIDxnLmJyYW5kZW4ucm9iaW5zb25AZ21haWwuY29tPg0K
DQpQYXRjaCBhcHBsaWVkLg0KDQpUaGFua3MsDQoNCkFsZXgNCg0KPiAtLS0NCj4gICBtYW43
L2xpYmMuNyB8IDEwMyArKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDU1IGluc2VydGlvbnMoKyksIDQ4
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjcvbGliYy43IGIvbWFuNy9s
aWJjLjcNCj4gaW5kZXggNDNlYzAyNjlmLi5jNjE4MDA3NWMgMTAwNjQ0DQo+IC0tLSBhL21h
bjcvbGliYy43DQo+ICsrKyBiL21hbjcvbGliYy43DQo+IEBAIC0xNiw4MCArMTYsODggQEAg
QmVjYXVzZSBvZiBzb21lIGhpc3RvcnkNCj4gICB1c2Ugb2YgdGhlIHRlcm0gXChscWxpYmNc
KHJxDQo+ICAgdG8gcmVmZXIgdG8gdGhlIHN0YW5kYXJkIEMgbGlicmFyeSBpcyBzb21ld2hh
dCBhbWJpZ3VvdXMgb24gTGludXguDQo+ICAgLlNTIGdsaWJjDQo+IC1CeSBmYXIgdGhlIG1v
c3Qgd2lkZWx5IHVzZWQgQyBsaWJyYXJ5IG9uIExpbnV4IGlzIHRoZQ0KPiArVGhlIHN0YW5k
YXJkIGxpYmMgbW9zdCBwb3B1bGFybHkgdXNlZCB3aXRoIHRoZSBMaW51eCBrZXJuZWwgaXMN
Cj4gICAuVVIgaHR0cDovL3d3dy5nbnUub3JnXDovc29mdHdhcmVcOi9saWJjLw0KPiAgIEdO
VSBDIExpYnJhcnkNCj4gICAuVUUgLA0KPiAtb2Z0ZW4gcmVmZXJyZWQgdG8gYXMNCj4gK3dp
ZGVseSBjYWxsZWQNCj4gICAuSVIgZ2xpYmMgLg0KPiAtVGhpcyBpcyB0aGUgQyBsaWJyYXJ5
IHRoYXQgaXMgbm93YWRheXMgdXNlZCBpbiBhbGwNCj4gLW1ham9yIExpbnV4IGRpc3RyaWJ1
dGlvbnMuDQo+IC1JdCBpcyBhbHNvIHRoZSBDIGxpYnJhcnkgd2hvc2UgZGV0YWlscyBhcmUg
ZG9jdW1lbnRlZA0KPiArVGhpcyBpbXBsZW1lbnRhdGlvbiBpcyBub3dhZGF5cyB1c2VkDQo+
ICtpbiBhbGwgbWFqb3IgR05VL0xpbnV4IGRpc3RyaWJ1dGlvbnMuDQo+ICtJdHMgZGV0YWls
cyBhcmUgZG9jdW1lbnRlZA0KPiAgIGluIHRoZSByZWxldmFudCBwYWdlcyBvZiB0aGUNCj4g
K0xpbnV4DQo+ICAgLkkgbWFuLXBhZ2VzDQo+IC1wcm9qZWN0DQo+IC0ocHJpbWFyaWx5IGlu
IFNlY3Rpb24gMyBvZiB0aGUgbWFudWFsKS4NCj4gLURvY3VtZW50YXRpb24gb2YgZ2xpYmMg
aXMgYWxzbyBhdmFpbGFibGUgaW4gdGhlIGdsaWJjIG1hbnVhbCwNCj4gLWF2YWlsYWJsZSB2
aWEgdGhlIGNvbW1hbmQNCj4gLS5JUiAiaW5mbyBsaWJjIiAuDQo+IC1SZWxlYXNlIDEuMCBv
ZiBnbGliYyB3YXMgbWFkZSBpbiBTZXB0ZW1iZXIgMTk5Mi4NCj4gK3Byb2plY3QsDQo+ICtw
cmltYXJpbHkgaW4gc2VjdGlvbiAzIG9mIHRoZSBtYW51YWwuDQo+ICtnbGliYyBhbHNvIG9m
ZmVycyBhIG1hbnVhbCBvZiBpdHMgb3duIGluIFRleGluZm8gZm9ybWF0LA0KPiArYnJvd3Nh
YmxlIGF0IHRoZSBjb21tYW5kIGxpbmUgd2l0aA0KPiArLlJJIFwobHEgImluZm8gbGliYyIg
XChycS4NCj4gK1ZlcnNpb24gMS4wIG9mIGdsaWJjIHdhcyByZWxlYXNlZCBpbiBTZXB0ZW1i
ZXIgMTk5Mi4NCj4gICAoVGhlcmUgd2VyZSBlYXJsaWVyIDAueCByZWxlYXNlcy4pDQo+IC1U
aGUgbmV4dCBtYWpvciByZWxlYXNlIG9mIGdsaWJjIHdhcyAyLjAsDQo+ICtUaGUgbmV4dCBt
YWpvciByZWxlYXNlIG9mIGdsaWJjIHdhcyAyLjANCj4gICBhdCB0aGUgYmVnaW5uaW5nIG9m
IDE5OTcuDQo+ICAgLlBQDQo+IC1UaGUgcGF0aG5hbWUNCj4gK1RoZSBmaWxlDQo+ICAgLkkg
L2xpYi9saWJjLnNvLjYNCj4gLShvciBzb21ldGhpbmcgc2ltaWxhcikNCj4gLWlzIG5vcm1h
bGx5IGEgc3ltYm9saWMgbGluayB0aGF0DQo+IC1wb2ludHMgdG8gdGhlIGxvY2F0aW9uIG9m
IHRoZSBnbGliYyBsaWJyYXJ5LA0KPiAtYW5kIGV4ZWN1dGluZyB0aGlzIHBhdGhuYW1lIHdp
bGwgY2F1c2UgZ2xpYmMgdG8gZGlzcGxheQ0KPiAtdmFyaW91cyBpbmZvcm1hdGlvbiBhYm91
dCB0aGUgdmVyc2lvbiBpbnN0YWxsZWQgb24geW91ciBzeXN0ZW0uDQo+ICtvciBzaW1pbGFy
DQo+ICtpcyBub3JtYWxseSBhIHN5bWJvbGljIGxpbmsgdG8gdGhlIGdsaWJjIGxpYnJhcnku
DQo+ICtFeGVjdXRlIGl0IHRvIGRpc3BsYXkgaW5mb3JtYXRpb24gYWJvdXQgdGhlIHZlcnNp
b24gaW5zdGFsbGVkIG9uIHlvdXINCj4gK3N5c3RlbS4NCj4gICAuU1MgTGludXggbGliYw0K
PiAtSW4gdGhlIGVhcmx5IHRvIG1pZCAxOTkwcywNCj4gLXRoZXJlIHdhcyBmb3IgYSB3aGls
ZQ0KPiArSW4gdGhlIGVhcmx5IHRvIG1pZC0xOTkwcywNCj4gICAuSVIgIkxpbnV4IGxpYmMi
ICwNCj4gLWEgZm9yayBvZiBnbGliYyAxLnggY3JlYXRlZCBieSBMaW51eCBkZXZlbG9wZXJz
IHdobyBmZWx0IHRoYXQgZ2xpYmMNCj4gLWRldmVsb3BtZW50IGF0IHRoZSB0aW1lIHdhcyBu
b3Qgc3VmZmljaW5nIGZvciB0aGUgbmVlZHMgb2YgTGludXguDQo+ICthIGZvcmsgb2YgZ2xp
YmNcfjEsDQo+ICt3YXMgbWFpbnRhaW5lZCBieSBMaW51eCBkZXZlbG9wZXJzDQo+ICt3aG8g
ZmVsdCB0aGF0IGdsaWJjIGRldmVsb3BtZW50IGF0IHRoZSB0aW1lDQo+ICtkaWQgbm90IG1l
ZXQgdGhlIExpbnV4IHVzZXIgY29tbXVuaXR5J3MgbmVlZHMuDQo+ICAgT2Z0ZW4sDQo+IC10
aGlzIGxpYnJhcnkgd2FzIHJlZmVycmVkIHRvIChhbWJpZ3VvdXNseSkgYXMganVzdCBcKGxx
bGliY1wocnEuDQo+ICt0aGlzIGxpYnJhcnkgd2FzIHJlZmVycmVkIHRvLA0KPiArc2ltcGx5
IGFuZCBhbWJpZ3VvdXNseSwNCj4gK2FzIFwobHFsaWJjXChycS4NCj4gICBMaW51eCBsaWJj
IHJlbGVhc2VkIG1ham9yIHZlcnNpb25zIDIsIDMsIDQsIGFuZCA1LA0KPiAtYXMgd2VsbCBh
cyBtYW55IG1pbm9yIHZlcnNpb25zIG9mIHRob3NlIHJlbGVhc2VzLg0KPiAtTGludXggbGli
YzQgd2FzIHRoZSBsYXN0IHZlcnNpb24gdG8gdXNlIHRoZSBhLm91dCBiaW5hcnkgZm9ybWF0
LA0KPiAtYW5kIHRoZSBmaXJzdCB2ZXJzaW9uIHRvIHByb3ZpZGUgKHByaW1pdGl2ZSkgc2hh
cmVkIGxpYnJhcnkgc3VwcG9ydC4NCj4gLUxpbnV4IGxpYmMgNSB3YXMgdGhlIGZpcnN0IHZl
cnNpb24gdG8gc3VwcG9ydCB0aGUgRUxGIGJpbmFyeSBmb3JtYXQ7DQo+IC10aGlzIHZlcnNp
b24gdXNlZCB0aGUgc2hhcmVkIGxpYnJhcnkgc29uYW1lDQo+ICthbG9uZyB3aXRoIG1hbnkg
bWlub3IgdXBkYXRlcy4NCj4gK0xpbnV4IGxpYmNcfjQgd2FzIHRoZSBsYXN0IHRvIHVzZSB0
aGUNCj4gK29iamVjdCBmaWxlIGZvcm1hdCBjYWxsZWQgXChscWEub3V0XChycSwNCj4gK2Fu
ZCB0aGUgZmlyc3Qgb24gTGludXggdG8gcHJvdmlkZSAocHJpbWl0aXZlKSBzaGFyZWQgbGli
cmFyeSBzdXBwb3J0Lg0KPiArTGludXggbGliY1x+NSB3YXMgdGhlIGZpcnN0IG9uIExpbnV4
IHRvIHN1cHBvcnQgRUxGIG9iamVjdCBjb2RlOw0KPiAraXQgZW1wbG95ZWQgdGhlDQo+ICsu
SSBzb25hbWUNCj4gKyhzaGFyZWQgb2JqZWN0IG5hbWUpDQo+ICAgLklSIGxpYmMuc28uNSAu
DQo+ICAgRm9yIGEgd2hpbGUsDQo+IC1MaW51eCBsaWJjIHdhcyB0aGUgc3RhbmRhcmQgQyBs
aWJyYXJ5IGluIG1hbnkgTGludXggZGlzdHJpYnV0aW9ucy4NCj4gK0xpbnV4IGxpYmMgd2Fz
IHRoZSBzdGFuZGFyZCBDIGxpYnJhcnkgaW4gbWFueSBHTlUvTGludXggZGlzdHJpYnV0aW9u
cy4NCj4gICAuUFANCj4gLUhvd2V2ZXIsDQo+IC1ub3R3aXRoc3RhbmRpbmcgdGhlIG9yaWdp
bmFsIG1vdGl2YXRpb25zIG9mIHRoZSBMaW51eCBsaWJjIGVmZm9ydCwNCj4gLWJ5IHRoZSB0
aW1lIGdsaWJjIDIuMCB3YXMgcmVsZWFzZWQNCj4gLShpbiAxOTk3KSwNCj4gK05vdHdpdGhz
dGFuZGluZyB0aGUgb3JpZ2luYWwgbW90aXZhdGlvbnMgb2YgdGhlIExpbnV4IGxpYmMgZWZm
b3J0LA0KPiArYnkgdGhlIHRpbWUgZ2xpYmMgMi4wIHdhcyByZWxlYXNlZCwNCj4gICBpdCB3
YXMgY2xlYXJseSBzdXBlcmlvciB0byBMaW51eCBsaWJjLA0KPiAtYW5kIGFsbCBtYWpvciBM
aW51eCBkaXN0cmlidXRpb25zIHRoYXQgaGFkIGJlZW4gdXNpbmcgTGludXggbGliYw0KPiAt
c29vbiBzd2l0Y2hlZCBiYWNrIHRvIGdsaWJjLg0KPiAtVG8gYXZvaWQgYW55IGNvbmZ1c2lv
biB3aXRoIExpbnV4IGxpYmMgdmVyc2lvbnMsDQo+IC1nbGliYyAyLjAgYW5kIGxhdGVyIHVz
ZWQgdGhlIHNoYXJlZCBsaWJyYXJ5IHNvbmFtZQ0KPiAtLklSIGxpYmMuc28uNiAuDQo+ICth
bmQgYWxsIG1ham9yIEdOVS9MaW51eCBkaXN0cmlidXRpb25zIHRoYXQgaGFkIGJlZW4gdXNp
bmcgTGludXggbGliYw0KPiArc29vbiBzd2l0Y2hlZCAoYmFjaykgdG8gZ2xpYmMuDQo+ICtU
byBhdm9pZCBjb25mdXNpb24gd2l0aCBMaW51eCBsaWJjIHZlcnNpb25pbmcsDQo+ICtnbGli
YyAyLjAgYW5kIGxhdGVyIHVzZSB0aGUgc29uYW1lDQo+ICsuSSBsaWJjLnNvLjYNCj4gK29u
IExpbnV4IHN5c3RlbXMgdG8gaW5kaWNhdGUgdGhlaXIgc3RhdHVzIGFzIHN1Y2Nlc3NvcnMN
Cj4gK3RvIExpbnV4IGxpYmNcfjUuDQo+ICAgLlBQDQo+ICAgU2luY2UgdGhlIHN3aXRjaCBm
cm9tIExpbnV4IGxpYmMgdG8gZ2xpYmMgMi4wIG9jY3VycmVkIGxvbmcgYWdvLA0KPiAgIC5J
IG1hbi1wYWdlcw0KPiAgIG5vIGxvbmdlciB0YWtlcyBjYXJlIHRvIGRvY3VtZW50IExpbnV4
IGxpYmMgZGV0YWlscy4NCj4gICBOZXZlcnRoZWxlc3MsDQo+IC10aGUgaGlzdG9yeSBpcyB2
aXNpYmxlIGluIHZlc3RpZ2VzIG9mIGluZm9ybWF0aW9uDQo+IC1hYm91dCBMaW51eCBsaWJj
IHRoYXQgcmVtYWluIGluIGEgZmV3IG1hbnVhbCBwYWdlcywNCj4gK3Zlc3RpZ2VzIG9mIHRo
aXMgaGlzdG9yeSBsaW5nZXIgaW4gY29tbWVudHMNCj4gK2Fib3V0IExpbnV4IGxpYmMgaW4g
YSBmZXcgbWFudWFsIHBhZ2VzXChlbVwNCj4gICBpbiBwYXJ0aWN1bGFyLA0KPiAgIHJlZmVy
ZW5jZXMgdG8NCj4gICAuSSBsaWJjNA0KPiAgIGFuZA0KPiAgIC5JUiBsaWJjNSAuDQo+ICAg
LlNTIE90aGVyIEMgbGlicmFyaWVzDQo+IC1UaGVyZSBhcmUgdmFyaW91cyBvdGhlciBsZXNz
IHdpZGVseSB1c2VkIEMgbGlicmFyaWVzIGZvciBMaW51eC4NCj4gLVRoZXNlIGxpYnJhcmll
cyBhcmUgZ2VuZXJhbGx5IHNtYWxsZXIgdGhhbiBnbGliYywNCj4gLWJvdGggaW4gdGVybXMg
b2YgZmVhdHVyZXMgYW5kIG1lbW9yeSBmb290cHJpbnQsDQo+IC1hbmQgb2Z0ZW4gaW50ZW5k
ZWQgZm9yIGJ1aWxkaW5nIHNtYWxsIGJpbmFyaWVzLA0KPiAtcGVyaGFwcyB0YXJnZXRlZCBh
dCBkZXZlbG9wbWVudCBmb3IgZW1iZWRkZWQgTGludXggc3lzdGVtcy4NCj4gK090aGVyLA0K
PiArbGVzcyB3aWRlbHkgdXNlZCwNCj4gK0MgbGlicmFyaWVzIGZvciBMaW51eCBleGlzdC4N
Cj4gK1RoZXkgYXJlIGdlbmVyYWxseSBzbWFsbGVyIHRoYW4gZ2xpYmMNCj4gK2luIHRlcm1z
IG9mIGZlYXR1cmVzIGFuZCBtZW1vcnkgZm9vdHByaW50LA0KPiArYW5kIGFyZSBvZnRlbiBp
bnRlbmRlZCBmb3IgYnVpbGRpbmcgc21hbGwgYmluYXJpZXMsDQo+ICtzdWNoIGFzIHRob3Nl
IHRhcmdldHRpbmcgZW1iZWRkZWQgc3lzdGVtcy4NCj4gICBBbW9uZyBzdWNoIGxpYnJhcmll
cyBhcmUNCj4gICAuVVIgaHR0cDovL3d3d1w6LnVjbGliY1w6Lm9yZy8NCj4gICAuSSB1Q2xp
YmMNCj4gQEAgLTEwMSwxMCArMTA5LDkgQEAgYW5kDQo+ICAgLlVSIGh0dHA6Ly93d3dcOi5t
dXNsXC1saWJjXDoub3JnLw0KPiAgIC5JICJtdXNsIGxpYmMiDQo+ICAgLlVFIC4NCj4gLURl
dGFpbHMgb2YgdGhlc2UgbGlicmFyaWVzIGFyZSBjb3ZlcmVkIGJ5IHRoZQ0KPiArRGV0YWls
cyBvZiB0aGVzZSBhcmUgb2ZmZXJlZCBieSBMaW51eA0KPiAgIC5JIG1hbi1wYWdlcw0KPiAt
cHJvamVjdCwNCj4gLXdoZXJlIHRoZXkgYXJlIGtub3duLg0KPiArd2hlcmUga25vd24uDQo+
ICAgLlNIIFNFRSBBTFNPDQo+ICAgLkJSIHN5c2NhbGxzICgyKSwNCj4gICAuQlIgZ2V0YXV4
dmFsICgzKSwNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=


--------------uQTIoQ6S0a33TFxqN0Z2CoaR--

--------------WfZNQErveQyKszUVnsrAzo0y
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO5ZmwACgkQnowa+77/
2zJIJA//figyWndFF4W4awcKH//HpwvOlPZm5hoYt3v1OVgRlp3iyoGL4z7Npj0P
iwoK1XuB5RbDcvhZfwf/OvRzDsyznCwzi3w9VVgAFN7YbGfHXN6O3tDIdfL7Jkl1
qKSiLXuAAbhGwd7Zg20GX5zaHILtRrK6ceN+eDOmKB38VTsUkhZCLECAFgXcYcun
62ZqHccW4NX7UDRnWeufOlLJyiR5neH2jhchCETMZpl9m81CUbFuhoKrTCpcNwqh
g1r1JSmGNWlbmCQfX7jAuSpbux0KNmRMlXdf5SFMEYA+AujWHyo1nBwyxhBFZlJv
PIM0uFSXQdXWcjIv8vO6XkxwvBl+Tb3EapvYXFwn5bWEzHROy3G/KoBFo2lVFdH9
+KZ7PnEE7oNMlHRqDlHQyNI2MO9c8riVqXUJ3091ndjbNYEV7NO2KTB3CfHnTolv
V3baJThUzlcTgfAvEUPIOZjtiHiNH3R3X0rDZOGjANE0+5Tw/v1Wr9DLyN2G+Rcq
EXxG1oQXuKtkV9qqSx2O5xW+eQCLLGNdOybL7DmGvpoBR4mazBmnEt1r6vz9A3LA
6f1/0XRbJ2NicwFxhHV5+3Nmt/XGfBcr4FUr7ZCZy8d20PU773yeFzml8Zusl6zJ
LWd2/7Wlgto/fZ+ZPSGbtreBp+z8LhpjF1AW292+KooAiEyxnUI=
=Bebj
-----END PGP SIGNATURE-----

--------------WfZNQErveQyKszUVnsrAzo0y--
