Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 453D3582762
	for <lists+linux-man@lfdr.de>; Wed, 27 Jul 2022 15:11:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232361AbiG0NLP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Jul 2022 09:11:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229565AbiG0NLO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Jul 2022 09:11:14 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C91C11706E
        for <linux-man@vger.kernel.org>; Wed, 27 Jul 2022 06:11:12 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id u14-20020a05600c00ce00b003a323062569so979560wmm.4
        for <linux-man@vger.kernel.org>; Wed, 27 Jul 2022 06:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=nZrwvix0yQB058dJNqdGJNUAkSHShTr72dJjbeFvdJU=;
        b=je8k+NFg/VjSb0bJmikKJsS9CjQEyr3sRU6qHqHRQAoWdAAKUrtfRfZ0T3El/F7oEN
         l5qsEcUAjMcOLfiL/Ts9/WkBbBTGSTLlhb+1vlsvRDY0eNmwpa46WsHQNvund+So4a+f
         bWl5L3irt7f+30AI8RXnv7Hy2WbYIavLMMB0f9Ib7JKwavbvWtVnc3HJy4Qkp3jdx3A2
         7p7ye5ho/Hn2da05vFCfWFoFPEFcGcLudoF908xlmo+DNStVPM9N/d4pZYgEBg79XH51
         EnG0PTvp9PbwoNb5n9XLROP6uUEDjkYatMK2RE+aMK/r6D7Euykjf95N4u1k8gW0RvLt
         FJmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=nZrwvix0yQB058dJNqdGJNUAkSHShTr72dJjbeFvdJU=;
        b=M1y7dORws8QgiX1ln4UOl7RA8W9zgidLolKAqDNu32Wt3LapviNcyhGaq1G+TrKRK7
         ORZpC9EXXQrvnZQcn862uy1CJESkPS+BtEYpOBURZXAOkC+wpqd5Q8VkI6Vufkxu5SoB
         3Ts7oMrV+SEufiV/OBECA1JbHmVpNmsVTKUvtRTVIkHABZhfTRK4+2wM3rMDnPjBWrra
         fPOGBSGdqz3/SRXDE7ktcBJxPRTdiAJVwOKXsp4stqVxek6dBxSv4CshL0ZIYtAtrpuU
         UYKjdoDYfvKX7BdvIoqvPhdrDxIfbfC1cufMsovKuJ7qQDDQXN9PSbdyyu6pk1VJMlST
         ZGyQ==
X-Gm-Message-State: AJIora9ESD47dinzYqp7umV03MmBZcNR5U6uN5hY8sOrjpiKBe/ZKU4K
        5vHGFziyyBXb6x6QBFCWIC4=
X-Google-Smtp-Source: AGRyM1vl3pfiRJdrJ9ZESDwvQGT2AoSWC3WisbL3+1q/1oKZhkipYHhzNZXTSa9wZus6edpXDnP+Zg==
X-Received: by 2002:a05:600c:2d4c:b0:3a3:22c0:c3dd with SMTP id a12-20020a05600c2d4c00b003a322c0c3ddmr3135355wmg.107.1658927470995;
        Wed, 27 Jul 2022 06:11:10 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h3-20020a1ccc03000000b003a331c6bffdsm2214829wmb.47.2022.07.27.06.11.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 06:11:10 -0700 (PDT)
Message-ID: <36ff0943-4766-e933-012a-82c9ad611791@gmail.com>
Date:   Wed, 27 Jul 2022 15:11:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH v3] NULL.3const: Add documentation for NULL
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     linux-man@vger.kernel.org, groff@gnu.org,
        g.branden.robinson@gmail.com,
        Ralph Corderoy <ralph@inputplus.co.uk>
References: <20220722153127.14528-1-alx.manpages@gmail.com>
 <20220724191931.15683-1-alx.manpages@gmail.com>
 <Yt7loB0u3RgKGiDt@asta-kit.de>
 <7368e5aa-4f26-4623-9f29-7564ff36fde5@gmail.com>
 <YuEYRGc1/KBiIfuw@asta-kit.de>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <YuEYRGc1/KBiIfuw@asta-kit.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------c9hfEIBi8AuKULeEsevZW7d7"
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
--------------c9hfEIBi8AuKULeEsevZW7d7
Content-Type: multipart/mixed; boundary="------------AhfudH8xNwe0HOEQDruN6mDp";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>
Cc: linux-man@vger.kernel.org, groff@gnu.org, g.branden.robinson@gmail.com,
 Ralph Corderoy <ralph@inputplus.co.uk>
Message-ID: <36ff0943-4766-e933-012a-82c9ad611791@gmail.com>
Subject: Re: [PATCH v3] NULL.3const: Add documentation for NULL
References: <20220722153127.14528-1-alx.manpages@gmail.com>
 <20220724191931.15683-1-alx.manpages@gmail.com>
 <Yt7loB0u3RgKGiDt@asta-kit.de>
 <7368e5aa-4f26-4623-9f29-7564ff36fde5@gmail.com>
 <YuEYRGc1/KBiIfuw@asta-kit.de>
In-Reply-To: <YuEYRGc1/KBiIfuw@asta-kit.de>

--------------AhfudH8xNwe0HOEQDruN6mDp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSW5nbywNCg0KT24gNy8yNy8yMiAxMjo0OSwgSW5nbyBTY2h3YXJ6ZSB3cm90ZToNCj4g
SGkgQWxlamFuZHJvLA0KPiANCj4gQWxlamFuZHJvIENvbG9tYXIgd3JvdGUgb24gVHVlLCBK
dWwgMjYsIDIwMjIgYXQgMDI6MDI6NTZQTSArMDIwMDoNCj4+IE9uIDcvMjUvMjIgMjA6NDks
IEluZ28gU2Nod2FyemUgd3JvdGU6DQo+Pj4gQWxlamFuZHJvIENvbG9tYXIgd3JvdGUgb24g
U3VuLCBKdWwgMjQsIDIwMjIgYXQgMDk6MTk6MzJQTSArMDIwMDoNCj4gDQo+Pj4+ICsuQiAw
DQo+IA0KPj4+IFRoZXJlIGlzIHJlYWxseSBubyBuZWVkIHRvIG1hcmsgdXAgaW50ZWdlciBj
b25zdGFudHMuDQo+IA0KPj4gZ3JvZmZfbWFuX3N0eWxlKDcpOg0KPj4gICAgICAgICAgICAg
ICAgIFVzZSAgYm9sZCBmb3IgbGl0ZXJhbCBwb3J0aW9ucyBvZiBzeW50YXggc3lub3BzZXMs
DQo+PiAgICAgICAgICAgICAgICAgZm9yIGNvbW1hbmTigJBsaW5lIG9wdGlvbnMgaW4gcnVu
bmluZyB0ZXh0LCBhbmQgIGZvcg0KPj4gICAgICAgICAgICAgICAgIGxpdGVyYWxzICB0aGF0
IGFyZSBtYWpvciB0b3BpY3Mgb2YgdGhlIHN1YmplY3QgdW7igJANCj4+ICAgICAgICAgICAg
ICAgICBkZXIgZGlzY3Vzc2lvbjsgZm9yIGV4YW1wbGUsIHRoaXMgcGFnZSAgdXNlcyAgYm9s
ZA0KPj4gICAgICAgICAgICAgICAgIGZvciAgbWFjcm8sICBzdHJpbmcsICBhbmQgIHJlZ2lz
dGVyICBuYW1lcy4gIEluIGFuDQo+PiAgICAgICAgICAgICAgICAgLkVYLy5FRSBleGFtcGxl
IG9mICBpbnRlcmFjdGl2ZSAgSS9PICAoc3VjaCAgYXMgIGENCj4+ICAgICAgICAgICAgICAg
ICBzaGVsbCBzZXNzaW9uKSwgc2V0IG9ubHkgdXNlciBpbnB1dCBpbiBib2xkLg0KPj4NCj4+
IFNpbmNlIHRoaXMgaXMgYSBsaXRlcmFsIHRoYXQgaXMgYSBtYWpvciB0b3BpYyBvZiB0aGUg
c3ViamVjdCB1bmRlcg0KPj4gZGlzY3Vzc2lvbiwgSSBwcmVmZXIgdG8gYmUgYSBiaXQgcGVk
YW50aWMgaGVyZSBhbmQgYm9sZGZhY2UgaXQuDQo+Pg0KPj4gSSBndWVzcyBpdCdzIG5vIGJp
ZyBpc3N1ZTsgZG9lcyBpdCBodXJ0IHJlYWRhYmlsaXR5IHRvbyBtdWNoIGZvciB5b3U/DQo+
IA0KPiBObywgaXQncyBubyBiaWcgZGVhbCBhbmQgZG9lc24ndCBodXJ0IHJlYWRhYmlsaXR5
LiAgSXQgb25seSBsb29rcw0KPiBzbGlnaHRseSB1bnVzdWFsLg0KPiANCj4gVGhlcmUgYXJl
IGNhc2VzIHdoZXJlIGEgYmFyZSAnMCcgY2hhcmFjdGVyIG5lZWRzIHRvIGJlIGJvbGQgZmFj
ZSwNCj4gZm9yIGV4YW1wbGUgd2hlbiBkaXNjdXNzaW5nICIuRmwgMCIgaW4geGFyZ3MoMSku
ICBCdXQgaGVyZSwgeW91DQo+IGFyZSBqdXN0IHRhbGtpbmcgYWJvdXQgdGhlIGludGVnZXIg
MC4gIFRoZSAibWFqb3IgdG9waWMiIGhlcmUNCj4gaXMgIi5EdiBOVUxMIiwgbm90IHRoZSBv
cmRpbmFyeSBpbnRlZ2VyIDAgdGhhdCBpcyBpbnRlcm5hbGx5IHVzZWQNCj4gdG8gZGVmaW5l
IHRoYXQgY29uc3RhbnQuDQo+IEJvbGQgZmFjZSBpcyBtb3N0bHkgZm9yIGxpdGVyYWxzIHRo
YXQgdGhlIHVzZXIgbmVlZHMgdG8gdHlwZSAtDQo+IGFuZCB0aGUgdXNlciBpcyBzcGVjaWZp
Y2FsbHkgKm5vdCogc3VwcG9zZWQgdG8gdHlwZSB0aGlzIDAuDQoNCldlbGwsIHRoZSBzdWdn
ZXN0aW9uIG9mIG5vdCByZWNvbW1lbmRpbmcgdHlwaW5nIDAgaXMgb25lIHRoaW5nLg0KDQpC
dXQsIHRoZSB0aGluZyBpcywgaXQncyBub3QgZXhhY3RseSB0aGUgaW50ZWdlciAwOyAwIHJl
cHJlc2VudHMgdGhlIG51bGwgDQpwb2ludGVyIGluIHBvaW50ZXIgY29udGV4dHMsIGV2ZW4g
aWYgdGhlIG51bGwgcG9pbnRlciB3YXMgZm9yIGV4YW1wbGUgDQoweEZGRkYgb24gc29tZSB3
ZWlyZCBwbGF0Zm9ybS4gIEV2ZW4gaW4gSVNPIEMsIHdoZXJlIE5VTEwgaXMgbm90IGRlZmlu
ZWQgDQp0byBiZSAodm9pZCAqKTA7IHNvbWUgY29uZm9ybWluZyBwbGF0Zm9ybSBjb3VsZCBw
ZXJmZWN0bHkgYCNkZWZpbmUgKHZvaWQgDQoqKS0xYCwgYnV0IHRoZSBwbGF0Zm9ybSBzaG91
bGQgdGhlbiBzdGlsbCBpbnRlcnByZXQgbGl0ZXJhbCBgMGAgYXMgaWYgDQp0aGUgdXNlciBo
YWQgdHlwZWQgYE5VTExgLCBvciBgKHZvaWQgKiktMWAuDQoNClNvLCBJIHJlYWxseSBjb25z
aWRlciBgMGAgYXMgYW4gYWx0ZXJuYXRpdmUgcmVwcmVzZW50YXRpb24sIG9mIGNvdXJzZSAN
CndvcnNlIHRoYW4gTlVMTCwgb2YgdGhlIG1ham9yIHRvcGljICJudWxsIHBvaW50ZXIgY29u
c3RhbnQiLg0KDQo+IA0KPiBUaGF0J3Mgd2h5IGkgY29uc2lkZXIgdGhlIC5CIHBvaW50bGVz
czsgdGhlbiBhZ2FpbiwgaXQgZG9lcyBub3QNCj4gZG8gbXVjaCBoYXJtIGVpdGhlci4NCj4g
DQo+IA0KPj4+PiArLlNIIENPTkZPUk1JTkcgVE8NCj4gDQo+Pj4gVGhhdCBzaG91bGQgYmUg
Ii5TSCBTVEFOREFSRFMiLg0KPiANCj4+IFdlIHVzZSBDT05GT1JNSU5HIFRPIGluIExpbnV4
LiAgRG9uJ3Qga25vdyB3aHk7IGp1c3QgaGlzdG9yeSwgSSBndWVzcy4NCj4+IFNlZSBtYW4t
cGFnZXMoNykuDQo+IA0KPiBXZWlyZC4NCj4gDQo+IEkgZmFpbGVkIHRvIGZpbmQgYSBzaW5n
bGUgaW5zdGFuY2Ugb2YgIkNPTkZPUk1JTkcgVE8iIGluIEFUJlQgVU5JWA0KPiAoaW5jbHVk
aW5nIHY2LCBQV0IsIHY3LCAzMnYsIHY4LCB2MTAsIFN5c3RlbSBJSUksIFNWUjEsIFNWUjIp
IG5vciBpbg0KPiBhbnkgdmVyc2lvbiBvZiBVQ0IgQ1NSRyBCU0QuICBTbyBjb25zaWRlcmlu
ZyB0aGF0IFN5c3RlbSBWIGFuZCBCU0QgYXJlDQo+IHdpZGVseSBjb25zaWRlcmVkIHRoZSB0
d28gbWFpbiBvcmlnaW5hbCBicmFuY2hlcyBvZiB0aGUgZGV2ZWxvcG1lbnQNCj4gb2YgVW5p
eC1saWtlIG9wZXJhdGluZyBzeXN0ZW1zIGFuZCBMaW51eCBpcyBvZnRlbiBjb25zaWRlcmVk
IHRvIGhhdmUNCj4gZHJhd24gaW5zcGlyYXRpb24gZnJvbSBib3RoLCB0aGUgc2VjdGlvbiBu
YW1lICJDT05GT1JNSU5HIFRPIiBkb2VzDQo+IG5vdCBhcHBlYXIgdG8gYmUgYSBVTklYIHRo
aW5nLiAgRm9yIGV4YW1wbGUsIEFlbGVlbiBGcmlzY2gsICJFc3NlbnRpYWwNCj4gU3lzdGVt
IEFkbWluaXN0cmF0aW9uIiwgTydSZWlsbHksIENhbWJyaWRnZSAxOTk1LCBjb25zaWRlcnMg
TGludXgNCj4gYXMgc2xpZ2h0bHkgbW9yZSBpbmZsdWVuY2VkIGJ5IDQuM0JTRCB0aGFuIGJ5
IFN5c3RlbSBWIFJlbGVhc2UgMy4NCj4gDQo+IFNUQU5EQVJEUywgb24gdGhlIG90aGVyIGhh
bmQsIGlzIHByZXNlbnQgc2luY2UgNC4zQlNELVJlbm8gKEp1bmUgMTk5MCkuDQo+IA0KPiA0
LjNCU0QtUmVubyBwcmVkYXRlcyB0aGUgZmlyc3QgdmVyc2lvbiBvZiB0aGUgTGludXgga2Vy
bmVsIGJ5IG1vcmUgdGhhbg0KPiBhIHllYXIsIGFuZCB0aGUgZmlyc3QgTGludXggbWFudWFs
IHBhZ2VzIHByb2JhYmx5IGZvciBsb25nZXIgdGhhbiB0aGF0Lg0KPiANCj4gU28gaSBoYXZl
IG5vIGlkZWEgd2hlcmUgIkNPTkZPUk1JTkcgVE8iIG1heSBoYXZlIGNvbWUgZnJvbS4NCg0K
SSBkb24ndCBsaWtlIHRoZSBpZGVhIG9mIGJlaW5nIGluY29uc2lzdGVudCB3aXRoIG90aGVy
IFVuaXggc3lzdGVtcyB3aXRoIA0Kbm8gZ29vZCByZWFzb24uICAncy9DT05GT1JNSU5HIFRP
L1NUQU5EQVJEUy8nIG1pZ2h0IGhhcHBlbiBzb21lIGRheTsgDQpqdXN0IHNheWluZy4NCg0K
PiANCj4gDQo+IFsuLi5dDQo+Pj4+ICsuU0ggQlVHUw0KPiANCj4+PiBUaGUgZm9sbG93aW5n
IGlzIG1pc3BsYWNlZCBpbiBCVUdTLiAgSXQgaXMgbm90IHRhbGtpbmcgYWJvdXQgYW55IGJ1
ZywNCj4+PiBub3IgYWJvdXQgYW55IEFQSSBkZXNpZ24gZGVmZWN0Lg0KPiANCj4+IE9oLCBJ
IGRvIGNvbnNpZGVyIHRoaXMgYSBidWcgaW4gdGhlIEFQSSBkZXNpZ24uICBJIHBsYWNlZCBp
dCB0aGVyZSBvbg0KPj4gcHVycG9zZS4NCj4+DQo+PiBBbGxvd2luZyB0aGUgYml0IHBhdHRl
cm4gb2YgYWxsIDBzIHRvIHJlcHJlc2VudCBhIHZhbGlkIHBvaW50ZXIgKGFuZA0KPj4gdGh1
cyBub3QgYSBudWxsIHBvaW50ZXIpIGlzIHNvbWV0aGluZyB0aGF0IGNvdWxkIGJlIG1lYW5p
bmdmdWwgbWFueQ0KPj4gZGVjYWRlcyBhZ28sIHdoZW4gYXJjaGl0ZWN0dXJlcyB3ZXJlIG1v
cmUgZGlmZmVyZW50Lg0KPj4NCj4+IE5vd2FkYXlzLCBldmVyeSBhcmNoIG91dCB0aGVyZSBp
cyAyJ3MgY29tcGxlbWVudCwgYW5kIHVzZXMgMHMgYXMgdGhlDQo+PiBudWxsIHBvaW50ZXIu
ICBUaGUgc3RhbmRhcmQgc2hvdWxkIHNpbXBsaWZ5LCBhbmQgYWxsb3cgbWVtc2V0KDIpaW5n
DQo+PiBwb2ludGVycy4NCj4+DQo+PiBJbiBmYWN0LCBBRkFJSywgdGhlIG5leHQgcmV2aXNp
b24gb2YgUE9TSVggd2lsbCBmaXggdGhhdCBidWcuICBCdXQgSQ0KPj4gZG9uJ3QgcmVtZW1i
ZXIgd2VsbCB0aGUgZGV0YWlscyBvZiB0aGF0Lg0KPiANCj4gRmFpciBwb2ludHMuICBZb3Ug
Y29udmluY2VkIG1lIHRoaXMgaXNuJ3QgbWlzcGxhY2VkIGluIEJVR1MuDQoNCkF3d3csIEkg
ZGlkISA6LSkNCg0KU3RpbGwsIEkgbWF5IGNvbXBsZXRlbHkgcmVtb3ZlIHRoYXQgdGV4dCwg
c2luY2UgaXQgZG9lc24ndCB0cmlnZ2VyIGluIA0KUE9TSVggc3lzdGVtcywgQUZBSUsuICBU
aGUgYnVnIGlzIG9ubHkgdGhlb3JldGljYWwgaW4gUE9TSVggKGFuZCANCnByYWN0aWNhbCBp
biBub24tUE9TSVgsIGJ1dCB0aGF0J3Mgb3V0c2lkZSBvZiBvdXIgc2NvcGUpLg0KDQpJJ20g
YWxzbyBjb25zaWRlcmluZyBhIHJvdW5kIG9mIHRyaW1taW5nIDN0eXBlIHBhZ2VzLCBieSBy
ZW1vdmluZyANCnRoZW9yZXRpY2FsIHN0dWZmIHRoYXQgSSBhZGRlZCwgdGhhdCByZWFsbHkg
ZG9lc24ndCBtYXR0ZXIgaW4gUE9TSVggDQpzeXN0ZW1zLCBvciBkb2Vzbid0IG1hdHRlciB0
byB1c2Vycy4NCg0KWW91cnMsDQoNCkFsZXgNCg0KDQo+IA0KPiBZb3VycywNCj4gICAgSW5n
bw0KDQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29s
b21hci5lcy8+DQo=

--------------AhfudH8xNwe0HOEQDruN6mDp--

--------------c9hfEIBi8AuKULeEsevZW7d7
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLhOW0ACgkQnowa+77/
2zIWCA/+K1TGvCgNvBvYveiN08WMmpWeKR4fj7WwFF9TN7hJdUK7K9IgIMahY1K8
k03xnL3HohcpNL88QUbCBlnP0zbG9UlxY+hD7OhljuTOTEo4r+BSDSym8G58vo3Y
6HaQNe8sNwne5X8jzChFN5rhxIb9N7lfrYQw0Bv5uqAZIjxDlD2yLaTgm379fqJK
rjqdZTS7o7ikWpV0Z0i6ESoh1vvLsqicyMHSs/4hgSGHgEmdwKLPlJ1yRRH6jffg
iBSNyG8w1c3uPOF+AMjaglYfb/ZmypQjkSqymJ//n5KnoynP8aRsYGGbYe4Lz8PV
WO4axyZgkclAbeSei6mUXhkbsJfZ7/3EQUsV8D+1VgKjS/Yninc9L8lTmeGVxKUm
L42oi97BXHtvNBgwy+QMK2c7jjrO6SL2jpgSDKAI7yBnx3nQxgATiBa69fiKLmTr
QW3O2b7lynVio0NXDScPecrNTJDecusTRg68Cyp+LZXP2nslbg8jtCVTzZvYeX0o
ew0nTy/2bN7S/8s+82pCasOsf+PNpIrDIV7kzYX20ZO9KcxDwhbL+8C2bQWcJd0X
fL7BGeafLEu7yfzScaaFzb6mSFNQFJbXkSx9fe9Fq0Bqqgz/LZP1TP6jTGcRiCLh
AFcg3aLnzuM1MK2pFkro4v31209Lja2Df0d37LcsdPy2+u0Za+w=
=jdsT
-----END PGP SIGNATURE-----

--------------c9hfEIBi8AuKULeEsevZW7d7--
