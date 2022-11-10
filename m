Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8698624AC5
	for <lists+linux-man@lfdr.de>; Thu, 10 Nov 2022 20:37:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230359AbiKJTha (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 14:37:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230294AbiKJTh3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 14:37:29 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84A3C1180C
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 11:37:28 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id p16so1747576wmc.3
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 11:37:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i1+5ne6J5TUURnWmMnvrUaTKrZApk+G1MvYncpOJDa0=;
        b=WAiCKzIywO6Ir89esSDYXblzftsYuF5Y1Zz0Mwk08+tyUub/8xd5cGjYjMcL/e/vZf
         jpymnCMBSuNun0UxOrua4/bxL/bXydPhmF3MAC6CPpyHHQ3qI95NfKPJO36eR1Xjb9eK
         XMs/EmPrCXqxDNKLosteEpcCfMLYt4gGLd6R4m5uSUOTi5e6RYg6zaO6oUdTeefBR3Rh
         lWYskmbH84UQtR7nbGFNIHOiFxLvuLi748AWoDZlBprm3iSWCTpbx0grwVKvjf77waJ+
         W8nq3n7oe5xo4XrKwqwX0aNh3sqAGyvFb29qC43yaue5mybHgwZE6aeymEH/WysS9Wbp
         i74g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=i1+5ne6J5TUURnWmMnvrUaTKrZApk+G1MvYncpOJDa0=;
        b=jSSaGmmvO83+Jf3sEearIC3TzH9hyXZYkr7l2+ftFJl+OD1fxULuRKzur/mWagr8Rv
         iRYz5Js2zUcpCv547s7JhmaZvWbXaq2D8FKswsyBp/Ltr4ed/gaApvyXjDuru/SdYUFL
         Jt2ZKjkGJeHXNiA5luBzlZdoxnqb/dHF5K08WfjWu2NckGOrEfXwZvPs67VdaV19FPui
         vqHIqQLeU7slGIML/WCe/wtDPL46vZGmbTObAk3auEInmBhpI0bx4MtnwJG/d6vLV7i6
         OC3l7Y1rBxSQdzAtV9l0a/Eqw1IfMCFvawFaOxw6kC3A1YARLzm2UyIdmqvijsmtehnK
         EM7g==
X-Gm-Message-State: ACrzQf32/JvWUrSoUEEg5mD0aSxfwMOBJe3kabwhiq6OmX+WEGxb4eJA
        fOV2sTEaCSWXRwL6VW0PjKPiJdMKJtA=
X-Google-Smtp-Source: AMsMyM4Z4RcmL41yveMQT9vhimmzKc8rqo5TiDBVjkmooR+f55CC3vR721KdoVNRrfU1R271Jnxd/A==
X-Received: by 2002:a05:600c:4f01:b0:3cf:a08f:10a0 with SMTP id l1-20020a05600c4f0100b003cfa08f10a0mr19397215wmq.115.1668109046943;
        Thu, 10 Nov 2022 11:37:26 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r7-20020a05600c458700b003c7087f6c9asm6418806wmo.32.2022.11.10.11.37.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 11:37:25 -0800 (PST)
Message-ID: <125368cf-e85a-d2f5-a943-9ebe0118e3b0@gmail.com>
Date:   Thu, 10 Nov 2022 20:37:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: MR macro 4th argument (was: [PATCH] Various pages: SYNOPSIS: Use
 VLA syntax in function parameters)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        groff <groff@gnu.org>
Cc:     Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org
References: <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <20221110094033.ptpfsqpvvx2yd5xs@illithid>
 <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
 <01da77c7-fed2-0fc1-ae6a-770885057a27@gmail.com>
 <5e3a103d-2aff-511a-e819-96dafb640c24@gmail.com>
In-Reply-To: <5e3a103d-2aff-511a-e819-96dafb640c24@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------WHLNngwxsWZa6IScqPyjE2OI"
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
--------------WHLNngwxsWZa6IScqPyjE2OI
Content-Type: multipart/mixed; boundary="------------8Ox8fzGp2DIZOAvC7NlHjOWp";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 groff <groff@gnu.org>
Cc: Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org
Message-ID: <125368cf-e85a-d2f5-a943-9ebe0118e3b0@gmail.com>
Subject: Re: MR macro 4th argument (was: [PATCH] Various pages: SYNOPSIS: Use
 VLA syntax in function parameters)
References: <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <20221110094033.ptpfsqpvvx2yd5xs@illithid>
 <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
 <01da77c7-fed2-0fc1-ae6a-770885057a27@gmail.com>
 <5e3a103d-2aff-511a-e819-96dafb640c24@gmail.com>
In-Reply-To: <5e3a103d-2aff-511a-e819-96dafb640c24@gmail.com>

--------------8Ox8fzGp2DIZOAvC7NlHjOWp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMTEvMTAvMjIgMTk6MDQsIEFsZWphbmRybyBDb2xvbWFyIHdy
b3RlOg0KPiBPZiBjb3Vyc2UgSSBmb3Jnb3QgdG8gcmVuYW1lIHRoZSB0aXRsZSwgYW5kIHRv
IGFnZyBncm9mZkAuwqAgTmljZS4NCj4gDQo+IC0tLS0tLS0tIEZvcndhcmRlZCBNZXNzYWdl
IC0tLS0tLS0tDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIFZhcmlvdXMgcGFnZXM6IFNZTk9Q
U0lTOiBVc2UgVkxBIHN5bnRheCBpbiBmdW5jdGlvbiBwYXJhbWV0ZXJzDQo+IERhdGU6IFRo
dSwgMTAgTm92IDIwMjIgMTg6NDc6MzggKzAxMDANCj4gRnJvbTogQWxlamFuZHJvIENvbG9t
YXIgPGFseC5tYW5wYWdlc0BnbWFpbC5jb20+DQo+IFRvOiBHLiBCcmFuZGVuIFJvYmluc29u
IDxnLmJyYW5kZW4ucm9iaW5zb25AZ21haWwuY29tPg0KPiBDQzogSW5nbyBTY2h3YXJ6ZSA8
c2Nod2FyemVAdXN0YS5kZT4sIGxpbnV4LW1hbkB2Z2VyLmtlcm5lbC5vcmcNCj4gDQo+IFty
ZW1vdmVkIGdjY0AgYW5kIG90aGVyIHVuaW50ZXJlc3RlZCBwZW9wbGU7IGFkZGVkIGdyb2Zm
QF0NCj4gDQo+IEhpIEJyYW5kZW4hDQo+IA0KPiBPbiAxMS8xMC8yMiAxMTo1OSwgQWxlamFu
ZHJvIENvbG9tYXIgd3JvdGU6DQo+ICA+PiBBbHNvLCBhcyBzb29uIGFzIEJlcnRyYW5kIGFu
ZCBJIGNhbiBnZXQgZ3JvZmYgMS4yMyBvdXRbMV0sIEkgYW0gaG9waW5nDQo+ICA+PiB5b3Ug
d2lsbCwgc2hvcnRseSB0aGVyZWFmdGVyLCBtaWdyYXRlIHRvIHRoZSBuZXcgYE1SYCBtYWNy
by4NCj4gID4NCj4gID4gTm90IGFzIHNvb24gYXMgaXQgZ2V0cyByZWxlYXNlZCwgYmVjYXVz
ZSBJIGV4cGVjdCAoYXQgbGVhc3QgYSBkZWNlbnQgYW1vdW50IG9mKQ0KPiAgPiBjb250cmli
dXRvcnMgdG8gYmUgYWJsZSB0byByZWFkIHRoZSBwYWdlcyB0byB3aGljaCB0aGV5IGNvbnRy
aWJ1dGUgdG8sIGJ1dCBhcw0KPiAgPiBzb29uIGFzIGl0IG1ha2VzIGl0IGludG8gRGViaWFu
IHN0YWJsZSwgeWVzLCB0aGF0J3MgaW4gbXkgcGxhbnMuwqAgU28sIGlmIHlvdQ0KPiAgPiBt
YWtlIGl0IGJlZm9yZSB0aGUgZnJlZXplLCB0aGF0IG1lYW5zIGFyb3VuZCBhIGNvdXBsZSBv
ZiBtb250aHMgZnJvbSBub3cuDQo+IA0KPiBJIHdvbid0IGJlIGFwcGx5aW5nIHRoZSBwYXRj
aCBub3csIHRvIGF2b2lkIGNvbnRyaWJ1dG9ycyBzZWVpbmcgcGVvcGxlIHN1ZGRlbmx5IA0K
PiBub3Qgc2VlaW5nIG1hbiBwYWdlIHJlZmVyZW5jZXMgd2hpbGUgcHJlcGFyaW5nIHBhdGNo
ZXMuwqAgQnV0IEknbGwgc3RhcnQgDQo+IHByZXBhcmluZyB0aGUgcGF0Y2gsIHRvIHNlZSB3
aGVyZSBhcmUgdGhlIG1vc3QgZGlmZmljdWx0IHBhcnRzLsKgIEFuZCBtYXliZSANCj4gcmVw
b3J0IHNvbWUgaXNzdWVzIHdpdGggdGhlIHVzYWJpbGl0eS4NCj4gDQo+IE15IGZpcnN0IHRo
aW5nIHdhcyB0byBydW46DQo+IA0KPiAkIGdyZXAgLXJuICdeXC5CUiAuKiAoWzEtOV1cdyop
Jw0KPiANCj4gSSdtIHN1cnByaXNlZCBmb3IgZ29vZCB0aGF0IGl0IHNlZW1zIHRoYXQgdGhl
cmUgYXJlIG5vIGZhbHNlIHBvc2l0aXZlcy7CoCBJIA0KPiBkaWRuJ3QgZXhwZWN0IHRoYXQu
wqAgQnV0IHNpbmNlIHRoaW5ncyBsaWtlIGV4aXQoMSkgYXJlIGNvZGUsIHRoZXkgYXJlIHBy
b2JhYmx5IA0KPiBlaXRoZXIgbm90IGhpZ2hsaWdodGVkIGF0IGFsbCwgb3IgbWF5YmUgYXJl
IGl0YWxpY2l6ZWQgKGFzIGNvZGUgaXMpLsKgIFNvIHRoYXQncyANCj4gYSBnb29kIHRoaW5n
Lg0KPiANCj4gSXQgc2hvd2VkIGEgZmV3IGxpbmVzIHRoYXQgbWlnaHQgYmUgcHJvYmxlbWF0
aWMsIGJ1dCB0aGF0J3MgYWN0dWFsbHkgYmFkIGNvZGUsIA0KPiB3aGljaCBJIG5lZWQgdG8g
Zml4Og0KPiANCj4gbWFuNy9jcmVkZW50aWFscy43OjI3MDouQlIgc2V0dWlkICIoMikgKCIg
c2V0Z2lkICgyKSkNCj4gbWFuNy9jcmVkZW50aWFscy43OjI3NDouQlIgc2V0ZXVpZCAiKDIp
ICgiIHNldGVnaWQgKDIpKQ0KPiBtYW43L2NyZWRlbnRpYWxzLjc6Mjc3Oi5CUiBzZXRmc3Vp
ZCAiKDIpICgiIHNldGZzZ2lkICgyKSkNCj4gbWFuNy9jcmVkZW50aWFscy43OjI4MDouQlIg
c2V0cmV1aWQgIigyKSAoIiBzZXRyZWdpZCAoMikpDQo+IG1hbjcvY3JlZGVudGlhbHMuNzoy
ODQ6LkJSIHNldHJlc3VpZCAiKDIpICgiIHNldHJlc2dpZCAoMikpDQo+IA0KPiBUaG9zZSBh
cmUgYXNraW5nIGZvciBhIDItbGluZSB0aGluZywgd2hlcmUgdGhlIHNlY29uZCBsaW5lIGlz
IFJCIGluc3RlYWQgb2YgQlIuIA0KPiBXaGljaCByZW1pbmRzIG1lIHRvIGNoZWNrIFJCOg0K
PiANCj4gJCBncmVwIC1ybiAnXlwuUkIgLiogKFsxLTldXHcqKScNCj4gDQo+IFRoZXJlIGFy
ZSBtdWNoIGxlc3MgY2FzZXMsIGFuZCBhbHNvIHNlZW0gdG8gYmUgZmluZSB0byBzY3JpcHQs
IHdpdGggYSBmZXcgbWlub3IgDQo+IGZmaXhlcyB0b28uDQo+IA0KPiBUaGUgYmlnIGlzc3Vl
IGlzIHRoYXQgeW91ciBNUiBkb2Vzbid0IHN1cHBvcnQgbGVhZGluZyB0ZXh0Og0KPiANCj4g
IMKgwqDCoMKgwqDCoMKgIC5NUiBwYWdl4oCQdGl0bGUgbWFudWFs4oCQc2VjdGlvbiBbdHJh
aWxpbmfigJB0ZXh0XQ0KPiANCj4gSSByZW1lbWJlciB3ZSBoYWQgdGhpcyBkaXNjdXNzaW9u
IGFib3V0IHdoYXQgdG8gZG8gd2l0aCBpdC7CoCBBIDR0aCBhcmd1bWVudD8gDQo+IFRoZXJl
J3MgYWxzbyBjb25mbGljdCB3aXRoIGEgaHlwb3RoZXRpY2FsIGxpbmsgdGhhdCB3ZSBtaWdo
dCB3YW50IHRvIGFkZCBsYXRlci4NCj4gDQo+IE15IG9waW5pb24gaXMgdGhhdCB0aGUgNHRo
IGFyZ3VtZW50IHNob3VsZCBiZSB0aGUgbGVhZGluZyB0ZXh0LsKgIEFza2luZyB0byB1c2Ug
DQo+IHRoZSBlc2NhcGUgKHdhcyBpdCBcYz8pIHNlcXVlbmNlIHRvIHdvcmthcm91bmQgdGhh
dCBsaW1pdGF0aW9uIGlzIG5vdCB2ZXJ5IG5pY2UuIA0KPiAgwqAgRXNwZWNpYWxseSBmb3Ig
c2NyaXB0aW5nIHRoZSBjaGFuZ2UuDQo+IA0KPiBJZiB5b3Ugd2FudCBhIDV0aCBhcmd1bWVu
dCBmb3IgYSBVUkksIHlvdSBjYW4gc3BlY2lmeSB0aGUgbGVhZGluZyB0ZXh0IGFzICIiLCAN
Cj4gd2hpY2ggaXMgbm90IG11Y2ggb2YgYW4gaXNzdWUuwqAgQW5kIHlvdSBrZWVwIHRoZSB0
cmFpbGluZyB0ZXh0IGFuZCB0aGUgbGVhZGluZyANCj4gb25lIHRvZ2V0aGVyLg0KPiANCj4g
V2hhdCBhcmUgeW91ciB0aG91Z2h0cz/CoCBXaGF0IHNob3VsZCB3ZSBkbz8NCg0KVG8gZG9j
dW1lbnQgYW5kIGRpc2N1c3MgdGhlIHdheSBJJ20gbWlncmF0aW5nLCBJJ2xsIHNoYXJlIGhl
cmUgdGhlIHNjcmlwdHM6DQoNClRoZSBzaW1wbGVzdCBjYXNlOiBhIHNpbmdsZSBtYW4gcGFn
ZSByZWZlcmVuY2Ugd2l0aCBubyBvdGhlciBzdHVmZiBhcm91bmQgaXQ6DQoNCiQgZmluZCBt
YW4qIC10eXBlIGYgXA0KICAgfCB4YXJncyBzZWQgLWkgJ3MvXlwuQlIgXChbXiBdKlwpIChc
KFsxLTldXHcqXCkpJC8uTVIgXDEgXDIvJw0KDQpTZWNvbmQgc2ltcGxlc3QgY2FzZTogYSBz
aW5nbGUgbWFuIHBhZ2UgcmVmZXJlbmNlIHdpdGggb25seSB0cmFpbGluZyBzdHVmZjoNCg0K
JCBmaW5kIG1hbiogLXR5cGUgZiBcDQogICB8IHhhcmdzIHNlZCAtaSAncy9eXC5CUiBcKFte
IF0qXCkgKFwoWzEtOV1cdypcKSkvLk1SIFwxIFwyIC8nDQoNCg0KQW5kIGhlcmUgSSBjb250
aW51ZSB3aXRoIGh5cG90aGV0aWNhbCBzeW50YXggbm90IHlldCBhbGxvd2VkIGJ5IGdyb2Zm
Lg0KDQpBIHNpbmdsZSBtYW4gcGFnZSByZWZlcmVuY2Ugd2l0aCBvbmx5IGxlYWRpbmcgc3R1
ZmY6DQoNCiQgZmluZCBtYW4qIC10eXBlIGYgXA0KICAgfCB4YXJncyBzZWQgLWkgJ3MvXlwu
UkIgXChbXiBdKlwpIFwoW14gXSpcKSAoXChbMS05XVx3KlwpKSQvLk1SIFwyIFwzICIiIFwx
LycNCg0KQSBzaW5nbGUgbWFuIHBhZ2UgcmVmZXJlbmNlIHdpdGggYm90aCBsZWFkaW5nIGFu
ZCB0cmFpbGluZyBzdHVmZiAodGhhbmsgJERFSVRZIA0KZm9yIG5vdCBoYXZpbmcgY29tbWVu
dHMgaW4gYW55IG9mIHRob3NlLCBzbyBJIGNhbiBqdXN0IHJ1biB0aGUgc2NyaXB0KToNCg0K
JCBmaW5kIG1hbiogLXR5cGUgZiBcDQogICB8IHhhcmdzIHNlZCAtaSAncy9eXC5SQiBcKFte
IF0qXCkgXChbXiBdKlwpIChcKFsxLTldXHcqXCkpXCguKlwpLy5NUiBcMiBcMyBcNCANClwx
LycNCg0KDQpBZnRlciBydW5uaW5nIHRob3NlIDQsIGFuZCBpbnNwZWN0aW5nIHRoZSBjaGFu
Z2VzIHRvIG1ha2Ugc3VyZSB0aGV5IGxvb2sgZ29vZCANCihhbmQgdGhleSBkbyksIEkgaGF2
ZSBhIHF1aXRlIHNtYWxsIGFtb3VudCBvZiByZWZlcmVuY2VzIHRoYXQgbXkgc2NyaXB0cyBk
aWRuJ3QgDQpjYXRjaC4gIFNvbWUgb2YgdGhlbSwganVzdCBuZWVkIGEgZmZpeCBiZWZvcmUg
cnVubmluZyB0aGUgc2NyaXB0cyBhZ2Fpbiwgc29tZSANCm90aGVycyBuZWVkIGEgbWFudWFs
IG1pZ3JhdGlvbiwgYnV0IG5vdGhpbmcgdG9vIGRpZmZpY3VsdC4NCg0KDQphbHhAYXN1czU3
NzU6fi9zcmMvbGludXgvbWFuLXBhZ2VzL21hbi1wYWdlcy9NUiQgZ3JlcCAtcm4gJ15cLlJC
IC4qIC5cPyhbMS05XVx3KiknDQptYW4yL21yZW1hcC4yOjMyNDouUkIgKCBtbWFwICIoMikg
IiBNQVBfUFJJVkFURSApLA0KbWFuMi9wZXJmX2V2ZW50X29wZW4uMjozNTouUkIgKCByZWFk
ICIoMiksICIgbW1hcCAiKDIpLCAiIHByY3RsICIoMiksICIgZmNudGwgDQoiKDIpLCBldGMu
KS4iDQptYW4yL29wZW4uMjo4NjouUkIgKCByZWFkICIoMiksICIgd3JpdGUgIigyKSwgIiBs
c2VlayAiKDIpLCAiIGZjbnRsICgyKSwNCm1hbjN0eXBlL2Rpdl90LjN0eXBlOjQzOi5SQiBb
WyBsIF0gbCBdIGRpdiAoMykNCm1hbjMvZnRzLjM6MTg5Oi5SQiBbIGwgXSBzdGF0ICgyKQ0K
bWFuMy9mdHMuMzoyMDA6LlJCIFsgbCBdIHN0YXQgKDIpDQptYW4zL2Z0cy4zOjMzMTouUkIg
WyBsIF0gc3RhdCAoMikNCm1hbjMvZnRzLjM6NzQ1Oi5SQiBbIGwgXSBzdGF0ICgyKS4NCm1h
bjUvcHJvYy41OjM0MjY6LlJCICggZmxvY2sgIigyKSBhbmQgIiBmY250bCAoMikpDQptYW43
L3B0eS43OjEyNTouUkIgKCBzc2ggIigxKSwgIiBybG9naW4gIigxKSwgIiB0ZWxuZXQgKDEp
KSwNCmFseEBhc3VzNTc3NTp+L3NyYy9saW51eC9tYW4tcGFnZXMvbWFuLXBhZ2VzL01SJCBn
cmVwIC1ybiAnXlwuQlIgLiogLlw/KFsxLTldXHcqKScNCm1hbjEvZ2V0ZW50LjE6MzQ2Oi5C
UiBhaG9zdHMgLyBnZXRhZGRyaW5mbyAoMykNCm1hbjIvaW9wcmlvX3NldC4yOjI3ODouQlIg
SU9QUklPX0NMQVNTX1JUICIgKDEpIg0KbWFuMi9pb3ByaW9fc2V0LjI6MjkzOi5CUiBJT1BS
SU9fQ0xBU1NfQkUgIiAoMikiDQptYW4yL2lvcHJpb19zZXQuMjozMDY6LkJSIElPUFJJT19D
TEFTU19JRExFICIgKDMpIg0KbWFuMi9rZXljdGwuMjo5ODU6LkJSICBleGVjdmUgKDIpLg0K
bWFuMi9pb2N0bF9pZmxhZ3MuMjo2MzouQlIgbW91bnQgICgyKQ0KbWFuMi9tZW1mZF9jcmVh
dGUuMjoyMzI6LkJSICBvcGVuICgyKQ0KbWFuMi9zeXNsb2cuMjo3NzouQlIgU1lTTE9HX0FD
VElPTl9PUEVOICIgKDEpIg0KbWFuMi9zeXNsb2cuMjo4MTouQlIgU1lTTE9HX0FDVElPTl9S
RUFEICIgKDIpIg0KbWFuMi9zeXNsb2cuMjo5MzouQlIgU1lTTE9HX0FDVElPTl9SRUFEX0FM
TCAiICgzKSINCm1hbjIvc3lzbG9nLjI6MTAzOi5CUiBTWVNMT0dfQUNUSU9OX1JFQURfQ0xF
QVIgIiAoNCkiDQptYW4yL3N5c2xvZy4yOjEwOTouQlIgU1lTTE9HX0FDVElPTl9DTEVBUiAi
ICg1KSINCm1hbjIvc3lzbG9nLjI6MTI4Oi5CUiBTWVNMT0dfQUNUSU9OX0NPTlNPTEVfT0ZG
ICIgKDYpIg0KbWFuMi9zeXNsb2cuMjoxNTI6LkJSIFNZU0xPR19BQ1RJT05fQ09OU09MRV9P
TiAiICg3KSINCm1hbjIvc3lzbG9nLjI6MTc1Oi5CUiBTWVNMT0dfQUNUSU9OX0NPTlNPTEVf
TEVWRUwgIiAoOCkiDQptYW4yL3N5c2xvZy4yOjE5MjouQlIgU1lTTE9HX0FDVElPTl9TSVpF
X1VOUkVBRCAiICg5KSAoc2luY2UgTGludXggMi40LjEwKSINCm1hbjIvc3lzbG9nLjI6MjAz
Oi5CUiBTWVNMT0dfQUNUSU9OX1NJWkVfQlVGRkVSICIgKDEwKSAoc2luY2UgTGludXggMi42
LjYpIg0KbWFuMi9zaWdyZXR1cm4uMjo0MjouQlIgc2lnYWx0c3RhY2sgIigyKSlcKGVtaW4i
DQptYW4yL3RpbWVyZmRfY3JlYXRlLjI6MzIwOi5CUiBwb2xsICIoMiksICIgc2VsZWN0ICIo
MikgKGFuZCBzaW1pbGFyKSINCm1hbjIvZXZlbnRmZC4yOjE0NDouQlIgcG9sbCAiKDIpLCAi
IHNlbGVjdCAiKDIpIChhbmQgc2ltaWxhcikiDQptYW4yL3NpZ25hbGZkLjI6MTM0Oi5CUiBw
b2xsICIoMiksICIgc2VsZWN0ICIoMikgKGFuZCBzaW1pbGFyKSINCm1hbjMvZHVwbG9jYWxl
LjM6OTk6LkJSICBmcmVlbG9jYWxlICgzKS4NCm1hbjcvc3B1ZnMuNzoxMjI6LkJSIHJlYWQg
IigyKSwgIiBwcmVhZCAiKDIpLCAiIHdyaXRlICIoMiksICIgcHdyaXRlICIoMiksICIgDQps
c2VlayAoMikNCm1hbjcvY3JlZGVudGlhbHMuNzoyNzA6LkJSIHNldHVpZCAiKDIpICgiIHNl
dGdpZCAoMikpDQptYW43L2NyZWRlbnRpYWxzLjc6Mjc0Oi5CUiBzZXRldWlkICIoMikgKCIg
c2V0ZWdpZCAoMikpDQptYW43L2NyZWRlbnRpYWxzLjc6Mjc3Oi5CUiBzZXRmc3VpZCAiKDIp
ICgiIHNldGZzZ2lkICgyKSkNCm1hbjcvY3JlZGVudGlhbHMuNzoyODA6LkJSIHNldHJldWlk
ICIoMikgKCIgc2V0cmVnaWQgKDIpKQ0KbWFuNy9jcmVkZW50aWFscy43OjI4NDouQlIgc2V0
cmVzdWlkICIoMikgKCIgc2V0cmVzZ2lkICgyKSkNCg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0K
LS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------8Ox8fzGp2DIZOAvC7NlHjOWp--

--------------WHLNngwxsWZa6IScqPyjE2OI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNtUu0ACgkQnowa+77/
2zKfFBAAhcFP7/k5tmQLhBgry73wa75zmUG3uV8EJD8ozGk2yZPNCFyVncrH2PL6
A/WiGz61hDxXYI7maYiXGWFnT8ang4Rc/XmBlASX+GJ3sodjLECqPMThfmrJGwm5
1ZvDc74z2bOyI5Zy9P0y1XdOvYBvhoaCA9FxDOWy6+xl5FKQo1GczUIQkChN2gnx
Rq9dtWkHIMWj5bnxxI5FwrH+Q7kc1ITOu/k9DldJaRgi+W1MxqrfCr1jDBSeyfaQ
6WPP+ImBMBBsjGCF93K9P3wqOs1xTug4uEYB0cRHkxIk86H4xCOz95T6m02yjhyY
9a39ghVoJYETxuU5RzVJb5DFmmXzcuRNr6XlUgA8/wjjGgA3uTUpU4AdCO8Dttij
ylJh1x17rY5aZ3QqrE2+jE13ZG1zGKreZUeRNr7YH6zqtOIsokQ0cmwKS96AXTkK
n9aNcqJIy0Rh3dGh/Uvd4yYfhdFSHaCSMOBsj6DUCmuK7ZrviIEjzOVL14SxShdZ
xYm2sci+lVkVErKU4thrf52HPy6nILKpU/RLNMu6i9hCmmw50ZsbeFXCsyXoNrYp
zxvMthJbC4AiPXHKgLJEF7pKYsn/eYovkkJcAmmiuQLnzYgqHvkzfEYqH/xNTo84
GPh7W1EwOO6BY3KcFa9GV2CbArB9I9lu7uDpgQJ0nLjpWKuW3fg=
=IckM
-----END PGP SIGNATURE-----

--------------WHLNngwxsWZa6IScqPyjE2OI--
