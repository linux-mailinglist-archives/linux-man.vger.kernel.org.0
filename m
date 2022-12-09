Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD2E36489AB
	for <lists+linux-man@lfdr.de>; Fri,  9 Dec 2022 21:48:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229521AbiLIUsy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Dec 2022 15:48:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229538AbiLIUss (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Dec 2022 15:48:48 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51B9A7BC36
        for <linux-man@vger.kernel.org>; Fri,  9 Dec 2022 12:48:46 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id h8-20020a1c2108000000b003d1efd60b65so717683wmh.0
        for <linux-man@vger.kernel.org>; Fri, 09 Dec 2022 12:48:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S0XBTXPqx7hekk+WWSqroBk7cNViFcraImGvZwSu21s=;
        b=AEEefzuEpv2CB94q5mSt2JYOpu1SGJCjKJ+UU/+iCogIVI/7trcXclc0aO2ZYvhu6q
         VKmNB6CuXXEcortM3N0EilNvUd7hfOXUKNjLSaxJQ/qBwo+u0JypVicyKN/mdcJbFTKj
         Uia7EMIZEqxrzLMa5qA7VnLcRWcGA5XK63V3MUzc1gaV+6YNm9d9+ZJoqwAdw84xubVL
         YSo05G3HlWRexQd86q89QvTcjuAYgLx9AZaew9/loiFBXtRNSwzzefszy+xuQ6nMEETp
         GVIBElL4h7RVzAYVjR1XQeuWyQ1MTUpWI866Dz4cTojdyLWIbyJ44nVZNQp+tOSR8TSH
         sGcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S0XBTXPqx7hekk+WWSqroBk7cNViFcraImGvZwSu21s=;
        b=ved5N9wO2RD1P0zY2qtf72sspq5WQgVxH1lszqa6cbwjAP8DKIHiLtK5de3BWBQEnJ
         9epw89XtrFBU+oNpUKKm/ubmu+OY4JE0UvWrVQdrSuyClH0Fd3l+m14kMjUSTqetcZTT
         n9rQmm6xmrPesjVX64mT9Cid/P/QhJDNqCLuzpypraVZtwYoPvozIhVWk04GsV7Gt/Aa
         MXl18Ai/gJeBs3R2UkGxm45iKXk1pF4H0l85zZBCXMraYmujx5nXRwaXou+zT8lr5Oz1
         jU8/AjKVQa4rPazYhj770pfrQINtP4dPPjdO0A/Nz8O+AzYHpDS28hmX6J7ieo3L3xQF
         lL+w==
X-Gm-Message-State: ANoB5plW7+rimWpPteZM5WsSxrEKxwEs/LSBm+AshiFcdHmCyMiyw4G8
        qCvMC/MzG6KG7wWlLah71Ig=
X-Google-Smtp-Source: AA0mqf5vvWC3POtPliZCuiFP/Mw8IxCYXfqOCBBXWScOBr49GyZ5fG/GHGHv716pp2F2r7eyrIel2w==
X-Received: by 2002:a05:600c:3ac7:b0:3d0:7fee:8a70 with SMTP id d7-20020a05600c3ac700b003d07fee8a70mr6125604wms.19.1670618924805;
        Fri, 09 Dec 2022 12:48:44 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i2-20020a1c5402000000b003c6c182bef9sm930566wmb.36.2022.12.09.12.48.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Dec 2022 12:48:44 -0800 (PST)
Message-ID: <93e226a0-983b-f6d7-13bc-cd6240a45a93@gmail.com>
Date:   Fri, 9 Dec 2022 21:48:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: man-db bugs? (was: Conflicting alias for some man pages)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        Colin Watson <cjwatson@debian.org>, linux-man@vger.kernel.org,
        =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
        Marcos Fouces <marcos@debian.org>,
        "Dr. Tobias Quathamer" <toddy@debian.org>,
        Helge Kreutzmann <debian@helgefjell.de>
References: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
 <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
 <4aaf7fb4-8d4b-e050-b376-9120d8c328ac@gmail.com>
 <20221209203719.yh5eosxv6ckgfuhz@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221209203719.yh5eosxv6ckgfuhz@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------sfdAzjgZnrZ5PTFUxds2aNkQ"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------sfdAzjgZnrZ5PTFUxds2aNkQ
Content-Type: multipart/mixed; boundary="------------xURVoBd3qVYxf8rVuhY0YSMG";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Ingo Schwarze <schwarze@usta.de>, Colin Watson <cjwatson@debian.org>,
 linux-man@vger.kernel.org, =?UTF-8?Q?Mario_Bl=c3=a4ttermann?=
 <mario.blaettermann@gmail.com>, Marcos Fouces <marcos@debian.org>,
 "Dr. Tobias Quathamer" <toddy@debian.org>,
 Helge Kreutzmann <debian@helgefjell.de>
Message-ID: <93e226a0-983b-f6d7-13bc-cd6240a45a93@gmail.com>
Subject: man-db bugs? (was: Conflicting alias for some man pages)
References: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
 <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
 <4aaf7fb4-8d4b-e050-b376-9120d8c328ac@gmail.com>
 <20221209203719.yh5eosxv6ckgfuhz@illithid>
In-Reply-To: <20221209203719.yh5eosxv6ckgfuhz@illithid>

--------------xURVoBd3qVYxf8rVuhY0YSMG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwgQ29saW4sDQoNCk9uIDEyLzkvMjIgMjE6MzcsIEcuIEJyYW5kZW4gUm9i
aW5zb24gd3JvdGU6DQo+IEhpIEFsZXgsDQo+IA0KPiBBdCAyMDIyLTEyLTA5VDE5OjUzOjQ0
KzAxMDAsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPj4+PiBDb3VsZCB5b3UgcmVtb3Zl
IHRoZXNlIGR1cGxpY2F0ZXMgaW4geW91ciBuZXh0IHVwbG9hZD8NCj4+Pj4NCj4+Pj4gSSBm
b3VuZCB0aGUgZm9sbG93aW5nIGR1cGxpY2F0ZXMsIEkgZGlkIG5vdCBkbyBhbiBleHRlbnNp
dmUgc2VhcmNoOg0KPj4+PiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+Pj4+IHJpbmRleCAtIEJvdGggaW4g
aW5kZXguMyBhbmQgaW4gc3RyaW5nLjMNCj4+Pj4gc3RybmNhc2VjbXAgLSBCb3RoIGluIHN0
cmNhc2VjbXAuMyBhbmQgaW4gc3RyaW5nLjMNCj4+Pj4gc3RybmNhdCAtIEJvdGggaW4gc3Ry
Y2F0LjMgYW5kIGluIHN0cmluZy4zDQo+Pj4+IHN0cm5jbXAgLSBCb3RoIGluIHN0cmNtcC4z
IGFuZCBpbiBzdHJpbmcuMw0KPj4+PiBzdHJuY3B5IC0gQm90aCBpbiBzdHJjcHkuMyBhbmQg
aW4gc3RyaW5nLjMNCj4+Pj4gX19mcHVyZ2UgLSBCb3RoIGluIGZwdXJnZS4zIGFuZCBpbiBz
dGRpb19leHQuMw0KPj4+PiBzdHJjc3BuIC0gQm90aCBpbiBzdHJzcG4uMyBhbmQgaW4gc3Ry
aW5nLjMNCj4+Pj4gc3RycmNociAtIEJvdGggaW4gc3RyY2hyLjMgYW5kIGluIHN0cmluZy4z
DQo+Pj4+IHBzZWxlY3QgLSBCb3RoIGluIHNlbGVjdC4yIGFuZCBpbiBzZWxlY3RfdHV0LjIN
Cj4+DQo+PiBDb3VsZCB5b3UgcGxlYXNlIGNvbmZpcm0gaWYgdGhpcyBpcyBhIGJ1ZyBpbiB0
aGUgTGludXggbWFuLXBhZ2VzLCBvciBpcyBpdA0KPj4gc29tZXRoaW5nIGRlc2lyYWJsZT8N
Cj4gDQo+IEkgZG9uJ3QgdGhpbmsgaXQgaXMgYSBidWcgZm9yIG11bHRpcGxlIHBhZ2VzIHRv
IGhhdmUgYSBtYW5kYiBlbnRyeSBmb3INCj4gdGhlIHNhbWUgbmFtZS4gIFRoZSBtYW4oMSkg
bGlicmFyaWFuIGlzIGRlc2lnbmVkIGluIGV4cGVjdGF0aW9uIG9mIHRoYXQ7DQo+IHdlIGhh
dmUgYm90aCBwcmludGYoMSkgYW5kIHByaW50ZigzKSwgYWZ0ZXIgYWxsLg0KPiANCj4+IEkg
ZmluZCBpdCBhIGJpdCB3ZWlyZCB0aGF0IHdlIG5lZWQgdG8gc3BlY2lmeSBhIE5BTUUgb25s
eSBvbmNlLg0KPiANCj4gVGhlcmUgaXMgbm8gc3VjaCBuZWVkLCBhbmQgaXQgd291bGQgYmUg
aW1wb3NzaWJsZSB0byBlbmZvcmNlIGFjcm9zcw0KPiBwcm9qZWN0cyBhbnl3YXkuDQo+IA0K
Pj4gVGhlbiB3aGF0aXMoMSkgd2lsbCBub3QgZmluZCB0aGUgb3RoZXIgcGFnZXMgdGhhdCBh
bHNvIHRhbGsNCj4+IGFib3V0IGFuIGludGVyZmFjZSAob2YgY291cnNlLCBpZGVhbGx5LCBv
bmx5IGEgcGFnZSB3b3VsZCBkZXNjcmliZSBhbg0KPj4gaW50ZXJmYWNlLCBidXQgd2Uga25v
dyB0aGF0J3Mgbm90IHJlYWxpdHkpLg0KPiANCj4gYXByb3BvcygxKSBhbmQgd2hhdGlzKDEp
IGRvIGluZGVlZCBiZWhhdmUgaW4gYSB3YXkgdGhhdCBzdXJwcmlzZXMgbWUgb24NCj4gbXkg
RGViaWFuIHN5c3RlbSAobWFuLWRiIDIuOS40LTIpLiAgSSB3b3VsZCBoYXZlIGV4cGVjdGVk
IG11bHRpcGxlDQo+IHJlc3VsdHMuDQo+IA0KPiBXaGF0IEkgZXhwZWN0ZWQ6DQo+IA0KPiAk
IHdoYXRpcyByaW5kZXgNCj4gcmluZGV4ICgzKSAgICAgICAgICAgLSBsb2NhdGUgY2hhcmFj
dGVyIGluIHN0cmluZw0KPiBzdHJpbmcgKDMpICAgICAgICAgICAtIHN0cmluZyBvcGVyYXRp
b25zDQo+IFsuLi5hbmQgbWF5YmUgb3RoZXJzIEkgaGF2ZW4ndCB0aG91Z2h0IG9mXQ0KPiAN
Cj4gV2hhdCBJIGdvdDoNCj4gcmluZGV4ICgzKSAgICAgICAgICAgLSBsb2NhdGUgY2hhcmFj
dGVyIGluIHN0cmluZw0KPiANCj4gSSBhbSBub3Qgc3VyZSB3aHkgZnVydGhlciBtYXRjaGVz
IGFyZSBiZWluZyBoaWRkZW4uDQo+IA0KPiAiYXByb3BvcyIgKHN5bm9ueW06ICJtYW4gLWsi
KSBzZWFyY2hlcyB0aGUgcGFnZSB0b3BpY3MgX2FuZF8gc3VtbWFyeQ0KPiBkZXNjcmlwdGlv
bnMsIHdoaWxlICJ3aGF0aXMiIChzeW5vbnltOiAibWFuIC1mIikgc2VhcmNoZXMgb25seSB0
aGUNCj4gdG9waWNzLg0KPiANCj4gSG93ZXZlciwgZ2l2ZW4gdGhlIHN0cmluZygzKSBwYWdl
Og0KPiANCj4gLlNIIE5BTUUNCj4gc3RwY3B5LCBzdHJjYXNlY21wLCBzdHJjYXQsIHN0cmNo
ciwgc3RyY21wLCBzdHJjb2xsLCBzdHJjcHksIHN0cmNzcG4sDQo+IHN0cmR1cCwgc3RyZnJ5
LCBzdHJsZW4sIHN0cm5jYXQsIHN0cm5jbXAsIHN0cm5jcHksIHN0cm5jYXNlY21wLCBzdHJw
YnJrLA0KPiBzdHJyY2hyLCBzdHJzZXAsIHN0cnNwbiwgc3Ryc3RyLCBzdHJ0b2ssIHN0cnhm
cm0sIGluZGV4LCByaW5kZXgNCj4gXC0gc3RyaW5nIG9wZXJhdGlvbnMNCj4gDQo+IEkgZG9u
J3Qgc2VlIHdoeSAicmluZGV4IiBpc24ndCB0cmVhdGVkIGFzIGEgbWF0Y2ggZm9yICJyaW5k
ZXgiLg0KPiAiaW5kZXgiLCAic3RyY29sbCIsIGFuZCAic3RwY3B5IiBhcmVuJ3QgZWl0aGVy
LCBzbyB0aGUgcG9zaXRpb24gaW4gdGhlDQo+IHRvcGljIGxpc3QgZG9lc24ndCBzZWVtIHRv
IG1hdHRlci4NCj4gDQo+IEkgZG9uJ3Qgc2VlIGFueXRoaW5nIGlsbC1mb3JtZWQgYWJvdXQg
dGhlIG1hbiBwYWdlcyBpbiBxdWVzdGlvbiwgc28gSQ0KPiBjYW4gb25seSBhc3N1bWUgdGhp
cyBpcyBlaXRoZXIgYSBtYW4tZGIgYnVnIG9yIGFuIGFzcGVjdCBvZiBpdHMgYmVoYXZpb3IN
Cj4gdGhhdCBJIGRvbid0IHVuZGVyc3RhbmQuICBCdXQgbWFuLWRiJ3MgbWFuKDEpIHBhZ2Ug
c3VnZ2VzdHMgdGhhdCBteQ0KPiBleHBlY3RhdGlvbnMgYXJlIGNvcnJlY3QuDQo+IA0KPiAt
LXNuaXAtLQ0KPiAgICAgICAgIG1hbiAtayBwcmludGYNCj4gICAgICAgICAgICAgU2VhcmNo
IHRoZSBzaG9ydCBkZXNjcmlwdGlvbnMgYW5kIG1hbnVhbCBwYWdlIG5hbWVzIGZvciB0aGUN
Cj4gICAgICAgICAgICAga2V5d29yZCAgcHJpbnRmICBhcyAgcmVndWxhciAgZXhwcmVzc2lv
bi4gICBQcmludCAgb3V0ICBhbnkNCj4gICAgICAgICAgICAgbWF0Y2hlcy4gIEVxdWl2YWxl
bnQgdG8gYXByb3BvcyBwcmludGYuDQo+IA0KPiAgICAgICAgIG1hbiAtZiBzbWFpbA0KPiAg
ICAgICAgICAgICBMb29rdXAgdGhlIG1hbnVhbCBwYWdlcyByZWZlcmVuY2VkIGJ5IHNtYWls
IGFuZCAgcHJpbnQgIG91dA0KPiAgICAgICAgICAgICB0aGUgICBzaG9ydCAgZGVzY3JpcHRp
b25zICBvZiAgYW55ICBmb3VuZC4gICBFcXVpdmFsZW50ICB0bw0KPiAgICAgICAgICAgICB3
aGF0aXMgc21haWwuDQo+IC0tc25pcC0tDQo+IA0KPiBOb3RlIHRoZSBwbHVyYWxzLiAgU28g
SSB3aWxsIHB1bnQgdG8gQ29saW4gV2F0c29uIGhlcmUuDQoNCkhtbSwgbm93IHlvdSBzYXkg
aXQsIEkgbm90aWNlZCByZWNlbnRseSB0aGF0IHByb2JsZW0gdG9vLiAgRXZlcnkgbm93IGFu
ZCB0aGVuLCBJIA0KdHJ5IHRvIG9wZW4gYSBwYWdlLCBhbmQgc29tZSBvZiB0aGUgbGluayBw
YWdlcyB0aGF0IEkgaGFkIGluIHRoZSBwYXN0IHRoYXQgd2FzIA0KbGF0ZXIgbW92ZWQgdG8g
YSBzdWJzZWN0aW9uIGJpdGVzIG1lLiAgU2luY2UgJ21ha2UgdW5pbnN0YWxsJyBkb2Vzbid0
IHJlbW92ZSANCnBhZ2VzIG5vdCBwcmVzZW50IGluIHRoZSBzb3VyY2UgY29kZSwgSSBjYW4n
dCByZW1vdmUgdGhlbSAoYXQgbGVhc3Qgbm90IGVhc2lseSkuIA0KICBXaGVuIEkgdHJ5IHRv
IHNlZSBhbGwgcGFnZXMgYXZhaWxhYmxlIHdpdGggYSBuYW1lLCBJIGNhbid0IGZpbmQgdGhl
bS4NCg0KSSB3b3VsZCBzd2VhciB0aGF0IGluIHRoZSBwYXN0IEkgY291bGQgc2VlIHRoZW0g
YWxsLCBhbmQgaXQncyBzaW5jZSBsYXN0IGhhbGYgDQp5ZWFyIG9yIHllYXIgdGhhdCBJIG9u
bHkgc2VlIG9uZSBwYWdlLiAgVGhlcmUgbWF5IGJlIGEgYnVnIGluIG1hbi1kYi4uLg0KDQpD
aGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5l
cy8+DQo=

--------------xURVoBd3qVYxf8rVuhY0YSMG--

--------------sfdAzjgZnrZ5PTFUxds2aNkQ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOTnysACgkQnowa+77/
2zJsixAAkXvMAaCETznWfaOWacqOtcZkbJUgBbf66bVBTM/KGgtEqbxy2JAa1lw4
ij/6cp6XB95ybajXWS9OXqJsa7jvkebXAnQRqvpJa5HxxNxMyr2F+wizw+orRwws
RM9VF+xY1t8yjTRjVpWePvxs83nb7Ub/Zka16yLAKmHoxNO/80ncYMaBobylxGkV
QE4xwHq+pYzV4wab8uL8JQqRKyDxl9sRGjiacKp4ilkEa+1N1C+o1IrE7LtCKDLR
i+ANLVB4P2HWY49JNrIx06ferPL9uoUqguovt9cefyO96UMNSB3ozZlJEb6F62t4
+M6QVnkmchBCHsBIMFdsl2sHPHu/5Mvyec0zefetX72LxZbKr9jtj2RDhTko0Q2S
VSFG5T+2rUMOkRyhZ1M8UEPSYtgGrnGcJk/CBc6JlJ9+Te+CGlEofkWiLzQ5AmyG
w66GzKo3zxwzo0fbUkczroy71gf+X3Ync1jW6Om5zvSlO8YQkRO+gh436hgBUOiz
uHeIDjkzarAJRwd15PfGj2eEBpUmOtW9oUtYHn6t7JLg4zakclZG0M8Jlh2GV6li
xyGgombjbuxd3jae/wycvpBoFtPQHPDZXqpHxU38Wvvn/F3bdT1wvdoa7Ry2MH4q
lOErmqSAW2F1LAAsLxTCrphRbtcVFDNJR1TANLtC8rgkpDCElhA=
=5PwE
-----END PGP SIGNATURE-----

--------------sfdAzjgZnrZ5PTFUxds2aNkQ--
