Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF8D566B204
	for <lists+linux-man@lfdr.de>; Sun, 15 Jan 2023 16:25:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231223AbjAOPZX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Jan 2023 10:25:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230494AbjAOPZW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Jan 2023 10:25:22 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97AAAC649
        for <linux-man@vger.kernel.org>; Sun, 15 Jan 2023 07:25:20 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id q10so5960583wrs.2
        for <linux-man@vger.kernel.org>; Sun, 15 Jan 2023 07:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:subject:from:references:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dT82OjMGY4pi3/gSZIv9iwBJHgMxQqCKk9G7ZQCny2g=;
        b=pd2VwuxY0Ri5xFDeHZ340jZ8PdKpXNPEdEE5daXDYTMi2Woke1aSy0qpNe/MUTe0+u
         We48f7CxPAp9+WANtZ1iQMKeZt8PpKhx/D8P6UlQUvcUBq0LtV8TfsVxOh28fVDSVFvN
         kGxSaerVl/98B+PF2uTVfCLchoYV58vmWmY/cKw2mOdomaE9SqsBposkVRQwbH1CyfSs
         JMYtfxmkVDT2S5U94iE549gWUtRxYamiA/Lwhk/02ENBp685Qr2agGzWNJF+5WEreXI0
         laPQASh3i0rDuovWKYP17QelEbLL8clEVBQYmoC+sqbB3CUyyq9TqB1raCaO4Q1tsrmT
         l1aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:subject:from:references:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dT82OjMGY4pi3/gSZIv9iwBJHgMxQqCKk9G7ZQCny2g=;
        b=DzHh0i0al6C78uwFTfT1pCwjXfX7Cu2X1TxJnkMwvhWrMjlCW3XTKn0ZcAcrSlcJHl
         AP57jW6tMyy47YxkfK6wAeErBYCrEQPzrdx0v0Tcvrjh0eMUVHBMmZolDec8tNOZxKOw
         NDvLcxU1+QocJe0SdblUWwGwvrjQ6mUfdKGLIzkLeUgkyu6t2OHSycR2bLAqjKNG9rJM
         R2xvD6XSkJa4DQcZsskEjWnT/RFzdKjOZ6cjbh9j0WrFu9BxZVjJgaTSlEkK3iZqEwlY
         /detoj5rZJcb2pYUYLVp4A1fChTwR3EodkzORqximAb/nPK/OYNwsv1p0j49JwHLmZxi
         3NeA==
X-Gm-Message-State: AFqh2kpJlgBLlPGlR1Phm38R5gMb0gM+WAsQ7BIDQ4PcPmkAPfKqpsJn
        7bS5wry+9kDhKRbDWkPuiBUjbGCxQ1U=
X-Google-Smtp-Source: AMrXdXsGkVjloyhVR9ysukj9/vKFxMG/ewrskeGzbXi9vAnjUWg0ZhqjXEIarZbvAspbXy4nMy/zlg==
X-Received: by 2002:a05:6000:100a:b0:2bb:eb1d:bbae with SMTP id a10-20020a056000100a00b002bbeb1dbbaemr18020665wrx.5.1673796319054;
        Sun, 15 Jan 2023 07:25:19 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q15-20020adfab0f000000b002bde7999cd6sm5688396wrc.61.2023.01.15.07.25.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Jan 2023 07:25:18 -0800 (PST)
Message-ID: <0a082e9b-dd13-7855-182c-4bde74837257@gmail.com>
Date:   Sun, 15 Jan 2023 16:25:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230115054414.b7furlu6higgqt2a@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: [PATCH v5 5/6] intro.3: Revise discussion
In-Reply-To: <20230115054414.b7furlu6higgqt2a@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------oIZXqoqJ8xxATRyXGDTKtgBL"
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
--------------oIZXqoqJ8xxATRyXGDTKtgBL
Content-Type: multipart/mixed; boundary="------------h0Gn8Ro00D9L9fhKn0yG5wVR";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <0a082e9b-dd13-7855-182c-4bde74837257@gmail.com>
Subject: Re: [PATCH v5 5/6] intro.3: Revise discussion
References: <20230115054414.b7furlu6higgqt2a@illithid>
In-Reply-To: <20230115054414.b7furlu6higgqt2a@illithid>

--------------h0Gn8Ro00D9L9fhKn0yG5wVR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS8xNS8yMyAwNjo0NCwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNCj4gKiBSZWNhc3QgaW50cm9kdWN0aW9uIHRvIGRpc2N1c3MgdGhlIHB1cnBvc2Ug
b2Ygc2VjdGlvbiAzIGFzIGEgd2hvbGUNCj4gICAgaW5zdGVhZCBvZiBmb2N1c3Npbmcgc29s
ZWx5IG9uIHRoZSBzdGFuZGFyZCBDIGxpYnJhcnkuDQo+ICogUHJvdmlkZSBoaXN0b3JpY2Fs
IGNvbnRleHQgZm9yIHVzYWdlIG9mIHN1YnNlY3Rpb25zIGluIHNlY3Rpb24gMy4NCj4gICAg
UmVzdXJyZWN0IGluZm9ybWF0aW9uIGZyb20gY29tbWVudHMsIGluIHJld3JpdHRlbiBmb3Jt
LCBvZiBzZWN0aW9uIDMNCj4gICAgc3Vic2VjdGlvbnMsIHNvIGFzIHRvIGNvbnRyYXN0IHRo
ZW0gd2l0aCB0aGUgY3VycmVudCBhcHByb2FjaA0KPiAgICBkZXZlbG9wZWQgYnkgQWxleC4g
IEJlIGV2ZW4gbW9yZSBlbXBoYXRpYyB0aGF0IHRob3NlIGRvY3VtZW50aW5nIG90aGVyDQo+
ICAgIEMgbGlicmFyaWVzIHNob3VsZCBub3QgbWVzcyB3aXRoIHN1YnNlY3Rpb25zLg0KPiAq
IEV4cGxhaW4gYmFzaWMgcHJpbmNpcGxlcyBvZiB1c2FnZSBvZiBhbnkgQyBsaWJyYXJ5IHRv
IHRoZSBub3ZpY2UuDQo+ICAgIChUaGlzIHBhZ2UgX2lzXyBjYWxsZWQgImludHJvIi4pDQo+
ICogRHJvcCBtYXRlcmlhbCBhYm91dCBvcmdhbml6YXRpb24gb2YgZ2xpYmMsIG5vdyBtb3Zl
ZCB0byBsaWJjKDcpLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogRy4gQnJhbmRlbiBSb2JpbnNv
biA8Zy5icmFuZGVuLnJvYmluc29uQGdtYWlsLmNvbT4NCj4gLS0tDQo+ICAgbWFuMy9pbnRy
by4zIHwgMTIyICsrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA1OSBpbnNlcnRpb25zKCspLCA2MyBkZWxl
dGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4zL2ludHJvLjMgYi9tYW4zL2ludHJv
LjMNCj4gaW5kZXggYmJhZWY1MjVlLi5mNWE0N2I1NjYgMTAwNjQ0DQo+IC0tLSBhL21hbjMv
aW50cm8uMw0KPiArKysgYi9tYW4zL2ludHJvLjMNCj4gQEAgLTcsMzQgKzcsMzQgQEANCj4g
ICAuU0ggTkFNRQ0KPiAgIGludHJvIFwtIGludHJvZHVjdGlvbiB0byBsaWJyYXJ5IGZ1bmN0
aW9ucw0KPiAgIC5TSCBERVNDUklQVElPTg0KPiAtU2VjdGlvbiAzIG9mIHRoZSBtYW51YWwg
ZGVzY3JpYmVzIGFsbCBsaWJyYXJ5IGZ1bmN0aW9ucw0KPiAtZXhjbHVkaW5nIHRoZSBsaWJy
YXJ5IGZ1bmN0aW9ucw0KPiAtKHN5c3RlbSBjYWxsIHdyYXBwZXJzKQ0KPiAtZGVzY3JpYmVk
IGluIFNlY3Rpb24gMiwNCj4gLXdoaWNoIGltcGxlbWVudCBzeXN0ZW0gY2FsbHMuDQo+IC0u
UFANCj4gLU1hbnkgb2YgdGhlIGZ1bmN0aW9ucyBkZXNjcmliZWQgaW4gdGhlIHNlY3Rpb24g
YXJlIHBhcnQgb2YgdGhlDQo+IC1TdGFuZGFyZCBDIExpYnJhcnkNCj4gLS5SSSAoIGxpYmMg
KS4NCj4gLVNvbWUgZnVuY3Rpb25zIGFyZSBwYXJ0IG9mIG90aGVyIGxpYnJhcmllcw0KPiAt
KGUuZy4sDQo+IC10aGUgbWF0aCBsaWJyYXJ5LA0KPiAtLklSIGxpYm0gLA0KPiAtb3IgdGhl
IHJlYWwtdGltZSBsaWJyYXJ5LA0KPiAtLklSIGxpYnJ0ICkNCj4gLWluIHdoaWNoIGNhc2Ug
dGhlIG1hbnVhbCBwYWdlIHdpbGwgaW5kaWNhdGUNCj4gLXRoZSBsaW5rZXIgb3B0aW9uIG5l
ZWRlZCB0byBsaW5rIGFnYWluc3QgdGhlIHJlcXVpcmVkIGxpYnJhcnkNCj4gLShlLmcuLA0K
PiAtLkkgXC1sbQ0KPiArU2VjdGlvbiAzIG9mIHRoZSBtYW51YWwgZGVzY3JpYmVzIGxpYnJh
cnkgZnVuY3Rpb25zDQo+ICtnZW5lcmFsbHkgdXNlZnVsIHRvIHByb2dyYW1tZXJzLA0KPiAr
ZXhjbHVkaW5nIHRoZSBzeXN0ZW0gY2FsbHMgZGVzY3JpYmVkIGluIHNlY3Rpb24gMi4NCj4g
K1VzZSBvZiBhIENcfmxhbmd1YWdlIGxpYnJhcnkgZW50YWlscyB0d28gcmVxdWlyZW1lbnRz
Og0KDQpJIHByZWZlciBDIGxpYnJhcnkuICBDIGxhbmd1YWdlIGxpYnJhcnkgc2VlbXMgcmVk
dW5kYW50LiAgQW5kIEMgbGlicmFyeSBpcyANCmNvbW1vbiBlbm91Z2guICBJIGd1ZXNzIHlv
dSB3YW50IHRvIGF2b2lkIGNvbmZ1c2lvbiB3aXRoIHRoZSBzdGFuZGFyZCBDIGxpYnJhcnku
IA0KICBGb3IgdGhhdCwgSSdkIGp1c3QgdXNlIHN0YW5kYXJkIEMgbGlicmFyeSBtb3JlIGNv
bnNpc3RlbnRseS4NCg0KPiAraXRzIHN5bWJvbCBuYW1lcyBtdXN0IGJlIGV4cG9zZWQgdG8g
dGhlIGNvbXBpbGVyDQo+ICt0aHJvdWdoIHRoZSBpbmNsdXNpb24gb2YgYQ0KPiArLklSICJo
ZWFkZXIgZmlsZSIgLA0KPiArcHJlc2VudGVkIGF0IHRoZSBiZWdpbm5pbmcgb2YgYSBtYW4g
cGFnZSdzIFwobHFTeW5vcHNpc1wocnEgc2VjdGlvbjsNCg0KV2UncmUgc3RpbGwgdXNpbmcg
dXBwZXJjYXNlLiAgQlRXLCBJIHRob3VnaHQgYnkgc2VudGVuY2UgY2FzZSB5b3UgbWVhbnQg
dGhhdCBpZiANCml0IGdvZXMgaW4gdGhlIG1pZGRsZSBvZiBhIHNlbnRlbmNlIGl0IHdvdWxk
IGJlIGxvd2VyY2FzZS4gIElzIHRoaXMgaHlicmlkIA0KYmV0d2VlbiB0aXRsZSBjYXNlIGFu
ZCBzZW50ZW5jZSBjYXNlIHNvbWV0aGluZyB1c3VhbCBpbiBFbmdsaXNoPw0KDQo+ICAgYW5k
DQo+IC0uSVIgXC1scnQgLA0KPiAtcmVzcGVjdGl2ZWx5LA0KPiAtZm9yIHRoZSBhZm9yZW1l
bnRpb25lZCBsaWJyYXJpZXMpLg0KPiArKHdpdGggb25lIGV4Y2VwdGlvbikNCj4gK3RvIHRo
ZSBsaW5rZXIgdGhyb3VnaCB0aGUgc3BlY2lmaWNhdGlvbiBvZiBhbg0KPiArLkkgXC1sDQo+
ICtmbGFnLA0KPiArZG9jdW1lbnRlZCBpbiB0aGUgcGFnZSdzIFwobHFMaWJyYXJ5XChycSBz
ZWN0aW9uLg0KPiArLlBQDQo+ICtNYW55IG9mIHRoZSBmdW5jdGlvbnMgZGVzY3JpYmVkIGFy
ZSBwYXJ0IG9mIHRoZSBTdGFuZGFyZCBDIExpYnJhcnkNCj4gKyhzZWUNCj4gKy5CUiBsaWJj
ICg3KSkuDQo+ICtDXH5saW5rZXJzIGxpbmsgd2l0aA0KDQpJcyBsZCgxKSBhIEMgbGlua2Vy
PyAgSSdkIGNhbGwgaXQganVzdCBhIGxpbmtlciwgc2luY2UgaXQgbGlua3Mgb2JqZWN0IGNv
ZGUsIA0Kd2hlcmV2ZXIgaXQgY29tZXMgZnJvbSAoY29kZSBjb3VsZCBoYXZlIGJlZW4gd3Jp
dHRlbiBpbiBhc3NlbWJseSkuICBJbiBmYWN0LCBJJ20gDQpub3Qgc3VyZSBpZiBpdCBrbm93
cyBhYm91dCAtbGMgKG1heWJlIGl0IGRvZXMsIEkgZG9uJ3QgcmVtZW1iZXIpLiAgSXQncyBv
bmx5IA0Kd2hlbiB5b3UgY2FsbCB0aGUgY29tcGlsZXIgKG5vdCB0aGUgbGlua2VyKSB0byBs
aW5rIGNvZGUsIHdoZW4gdGhlIGNvbXBpbGVyIA0KY2FsbHMgdGhlIGxpbmtlciB3aXRoIHRo
ZSBhcHByb3ByaWF0ZSBDIGxpYnJhcmllcy4gIFRoZSBzYW1lIGFzIHdoZW4geW91IGNvbXBp
bGUgDQpDKysgd2l0aCBnKyssIHdoaWNoIGNhbGxzIHRoZSBsaW5rZXIgd2l0aCB0aGUgYXBw
cm9wcmlhdGUgbGlicmFyaWVzIGZvciBDKysuDQoNCj4gKy5JIGxpYmMNCj4gK2ltcGxpY2l0
bHkgYnkgZGVmYXVsdDsNCj4gK2FuDQo+ICsuSSBcLWxjDQo+ICtvcHRpb24gaXMgcmVkdW5k
YW50Lg0KPiAgIC5QUA0KPiAtSW4gc29tZSBjYXNlcywNCj4gLXRoZSBwcm9ncmFtbWVyIG11
c3QgZGVmaW5lIGEgZmVhdHVyZSB0ZXN0IG1hY3JvIGluIG9yZGVyIHRvIG9idGFpbg0KPiAt
dGhlIGRlY2xhcmF0aW9uIG9mIGEgZnVuY3Rpb24gZnJvbSB0aGUgaGVhZGVyIGZpbGUgc3Bl
Y2lmaWVkDQo+IC1pbiB0aGUgbWFuIHBhZ2UgU1lOT1BTSVMgc2VjdGlvbi4NCj4gK1NvbWV0
aW1lcywNCj4gK3RoZSBwcm9ncmFtbWVyIG11c3QgZGVmaW5lIGEgQ1x+cHJlcHJvY2Vzc29y
IG1hY3JvDQo+ICt0byBhY2Nlc3MgdGhlIGRlY2xhcmF0aW9uIG9mIGEgc3ltYm9sIGZyb20g
YSBoZWFkZXIgZmlsZS4NCj4gICAoV2hlcmUgcmVxdWlyZWQsDQo+ICAgdGhlc2UNCj4gICAu
SSBmZWF0dXJlIHRlc3QgbWFjcm9zDQo+IEBAIC00NSw1NCArNDUsNTAgQEAgSW4gc3VjaCBj
YXNlcywNCj4gICB0aGUgcmVsZXZhbnQgZnVuY3Rpb24ncyBtYW4gcGFnZSBkZXNjcmliZXMg
dGhlIHJlcXVpcmVkIG1hY3JvLg0KPiAgIFNlZQ0KPiAgIC5CUiBmZWF0dXJlX3Rlc3RfbWFj
cm9zICg3KS4NCj4gLS5cIg0KPiAtLlwiIFRoZXJlDQo+IC0uXCIgYXJlIHZhcmlvdXMgZnVu
Y3Rpb24gZ3JvdXBzIHdoaWNoIGNhbiBiZSBpZGVudGlmaWVkIGJ5IGEgbGV0dGVyIHdoaWNo
DQo+IC0uXCIgaXMgYXBwZW5kZWQgdG8gdGhlIGNoYXB0ZXIgbnVtYmVyOg0KPiAtLlwiIC5J
UCAoM0MpDQo+IC0uXCIgVGhlc2UgZnVuY3Rpb25zLA0KPiAtLlwiIHRoZSBmdW5jdGlvbnMg
ZnJvbSBjaGFwdGVyIDIgYW5kIGZyb20gY2hhcHRlciAzUyBhcmUNCj4gLS5cIiBjb250YWlu
ZWQgaW4gdGhlIEMgc3RhbmRhcmQgbGlicmFyeSBsaWJjLA0KPiAtLlwiIHdoaWNoIHdpbGwg
YmUgdXNlZCBieQ0KPiAtLlwiIC5CUiBjYyAoMSkNCj4gLS5cIiBieSBkZWZhdWx0Lg0KPiAt
LlwiIC5JUCAoM1MpDQo+IC0uXCIgVGhlc2UgZnVuY3Rpb25zIGFyZSBwYXJ0cyBvZiB0aGUN
Cj4gLS5cIiAuQlIgc3RkaW8gKDMpDQo+IC0uXCIgbGlicmFyeS4gIFRoZXkgYXJlIGNvbnRh
aW5lZCBpbiB0aGUgc3RhbmRhcmQgQyBsaWJyYXJ5IGxpYmMuDQo+IC0uXCIgLklQICgzTSkN
Cj4gLS5cIiBUaGVzZSBmdW5jdGlvbnMgYXJlIGNvbnRhaW5lZCBpbiB0aGUgYXJpdGhtZXRp
YyBsaWJyYXJ5IGxpYm0uICBUaGV5IGFyZQ0KPiAtLlwiIHVzZWQgYnkgdGhlDQo+IC0uXCIg
LkJSIGY3NyAoMSkNCj4gLS5cIiBGT1JUUkFOIGNvbXBpbGVyIGJ5IGRlZmF1bHQsDQo+IC0u
XCIgYnV0IG5vdCBieSB0aGUNCj4gLS5cIiAuQlIgY2MgKDEpDQo+IC0uXCIgQyBjb21waWxl
ciwNCj4gLS5cIiB3aGljaCBuZWVkcyB0aGUgb3B0aW9uIFxmSVwtbG1cZlAuDQo+ICAgLlwi
IC5JUCAoM0YpDQo+ICAgLlwiIFRoZXNlIGZ1bmN0aW9ucyBhcmUgcGFydCBvZiB0aGUgRk9S
VFJBTiBsaWJyYXJ5IGxpYkY3Ny4gIFRoZXJlIGFyZSBubw0KPiAgIC5cIiBzcGVjaWFsIGNv
bXBpbGVyIGZsYWdzIG5lZWRlZCB0byB1c2UgdGhlc2UgZnVuY3Rpb25zLg0KPiAtLlwiIC5J
UCAoM1gpDQo+IC0uXCIgVmFyaW91cyBzcGVjaWFsIGxpYnJhcmllcy4gIFRoZSBtYW51YWwg
cGFnZXMgZG9jdW1lbnRpbmcgdGhlaXIgZnVuY3Rpb25zDQo+IC0uXCIgc3BlY2lmeSB0aGUg
bGlicmFyeSBuYW1lcy4NCj4gICAuU1MgU3Vic2VjdGlvbnMNCj4gK0luIFVuaXggc3lzdGVt
cyBjaXJjYSAxOTgwLA0KPiArc2VjdGlvbiAzIG9mIHRoZSBwcm9ncmFtbWVyJ3MgbWFudWFs
IGRvY3VtZW50ZWQNCj4gKy5JIGxpYmMNCj4gK2Z1bmN0aW9ucyBpbiBzdWJzZWN0aW9uczsN
Cj4gKy5cIiBWNyAoMTk3OS0wMSkgdXNlZCBhbiB1bnN1ZmZpeGVkICIzIjsgU3lzdGVtIElJ
SSAoMTk4MC0wNikgdXNlZCAzQy4NCj4gKy5cIiBCU0QgYXQgZmlyc3QgaWdub3JlZCB0aGlz
IHNoaWZ0OyBpdCBpcyBub3Qgc2VlbiBpbiAzQlNEIChsYXRlIDE5NzkpDQo+ICsuXCIgb3Ig
NEJTRCAoMTk4MC0xMSksIGJ1dCBib3RoIGNvbnZlbnRpb25zIGFyZSBkb2N1bWVudGVkIGlu
IDQuMWNCU0Qncw0KPiArLlwiIGludHJvKDMpICgxOTgzLTA0KS4NCj4gK1wobHEzQ1wocnEg
d2FzIHVzZWQgZm9yIG1vc3QsDQo+ICt3aXRoDQo+ICtcKGxxM01cKHJxIGZvciB0aG9zZSBm
cm9tIHRoZSBtYXRoIGxpYnJhcnksDQo+ICthbmQNCj4gK1wobHEzU1wocnEgZm9yIHRoZSBz
dGFuZGFyZCBJL08gcGFja2FnZS4NCj4gK1wobHEzWFwocnEgd2FzIHJlc2VydmVkIGZvciBc
KGxxdmFyaW91cyBzcGVjaWFsaXplZCBsaWJyYXJpZXNcKHJxLg0KPiArLlBQDQo+ICAgVGhl
IExpbnV4DQo+ICAgLkkgbWFuLXBhZ2VzDQo+IC1vcmdhbml6ZSBzZWN0aW9uIDMgaW50byBz
dWJzZWN0aW9ucw0KPiAtdGhhdCByZWZsZWN0IHRoZSBjb21wbGV4IHN0cnVjdHVyZSBvZiB0
aGUgc3RhbmRhcmQgQyBsaWJyYXJ5DQo+IC1hbmQgaXRzIG1hbnkgaW1wbGVtZW50YXRpb25z
Lg0KPiArcHJvamVjdCBwcmVmZXJzIHRvIGVtcGxveSBzdWJzZWN0aW9ucyBkaWZmZXJlbnRs
eSwNCj4gK3JlY29nbml6aW5nIHRoYXQgdGhlIG1hbnkgY29uc3RhbnRzLA0KPiArZGF0YSB0
eXBlcywNCj4gK2FuZCBoZWFkZXIgZmlsZSBuYW1lcw0KPiArZGVmaW5lZCBieQ0KPiArLkkg
bGliYw0KPiArYXJlIGFzIGltcG9ydGFudCBhcyB0aGUgbmFtZXMgb2YgaXRzIGZ1bmN0aW9u
cy4NCj4gKy5UUCAxMG4NCg0KSSdkIHByZWZlciB0byBhdm9pZCB0aGlzLg0KDQo+ICsuQiAz
Y29uc3QNCj4gK0NvbnN0YW50cy4NCj4gKy5UUA0KPiArLkIgM2hlYWQNCj4gK0hlYWRlciBm
aWxlcy4NCj4gKy5UUA0KPiArLkIgM3R5cGUNCj4gK0RhdGEgdHlwZXMuDQo+ICsuUFANCj4g
K1dlIGRpc2NvdXJhZ2UgdXNlIG9mIHRoZXNlIHN1YnNlY3Rpb25zIHRvIGRvY3VtZW50IGFu
eSBvdGhlciBsaWJyYXJ5Lg0KDQpJJ2QgY2xhcmlmeSB0aGF0IGl0J3Mgbm90IHRoZSBkb2N1
bWVudGF0aW9uIHRoYXQgaXMgd3JvbmcsIGJ1dCByYXRoZXIgdGhlIGRlc2lnbiANCm9mIHRo
ZSBsaWJyYXJ5LiAgVGhlcmUgYXJlIGxpa2VseSBtYW55IGxpYnJhcmllcyB0aGF0IGFyZSBh
cyBiYWRseSBkZXNpZ25lZCBhcyANCmxpYmMsIGFuZCBmb3IgdGhvc2UsIEknZCByZWNvbW1l
bmQgcmV1c2luZyB0aGVzZSBzdWJzZWN0aW9ucy4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4g
ICAuSVIgbGliYyAncw0KPiAgIGRpZmZpY3VsdCBoaXN0b3J5IGZyZXF1ZW50bHkgbWFrZXMg
aXQgYSBwb29yIGV4YW1wbGUgdG8gZm9sbG93DQo+ICAgaW4gZGVzaWduLA0KPiAgIGltcGxl
bWVudGF0aW9uLA0KPiAgIGFuZCBwcmVzZW50YXRpb24uDQo+IC0uSVAgXChidSAzDQo+IC0z
Y29uc3QNCj4gLS5JUCBcKGJ1DQo+IC0zaGVhZA0KPiAtLklQIFwoYnUNCj4gLTN0eXBlDQo+
IC0uUFANCj4gICBJZGVhbGx5LA0KPiAgIGEgbGlicmFyeSBmb3IgdGhlIEMgbGFuZ3VhZ2UN
Cj4gICBpcyBkZXNpZ25lZCBzdWNoIHRoYXQgZWFjaCBoZWFkZXIgZmlsZQ0KDQotLSANCjxo
dHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------h0Gn8Ro00D9L9fhKn0yG5wVR--

--------------oIZXqoqJ8xxATRyXGDTKtgBL
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPEGtcACgkQnowa+77/
2zLalw//UgDifkvH/UutCYMJGlSx6GhnP2tJvK3iScH3F+tb87+tdDbyDp4Sljrd
vEZgJZpRtyXuX1EXlTkg8RwmFv1qmd6+5K0I5yWwz17N1dU/4vIDBA98wxFXgb5v
hj/2wTV6JUYAhoNLLMlHmf7ULhf48NpgB6RIt6hj9hsHKAP4WYbbl/Fjd+Hskbsq
0yQItJExiQnOYavnAikdBDqt/CL4wSHDYU5LcqlA3MiAOUVbjY9zuoxsU7FxQIuS
7oXWhvBOfgG7fZZhCcOF6uyU5uPZs/D2nftvaARrAnsC3e6z1k8ZRwnI/S81UcCI
Zgbdh6Pp4q9NSTVeROvYQqlK1t83EjTJnuwSC14CWKbZTEt9IW/E+QMo3iAsrFBk
HqCNlwqQx2WElWe3pvuWWiYDvLZ96Iws5R9woJFfHC4SGde4YM5/hJL/yCe6P326
IYYykymrylVepaR88dIL89lEf9ptl7587y7HanA1LP8oMKc+3VemVR0UWBycDMaK
58hfxeSm6ekGS+Dlav/qg/bkjNEVmSrPuxabXilex4xHRgCBpgp+d/CkFpTUB7jH
hofsTxY/ecyy7e7G3F3nVBSovwvbZo475UHcNKlopgQTFGErmdPcGPbampMg4yQJ
4vECR+OKqh6ZtqzS+7m7vfSlQhtQvbIIlA0cauPpruUlsJmCc7Y=
=bfh0
-----END PGP SIGNATURE-----

--------------oIZXqoqJ8xxATRyXGDTKtgBL--
