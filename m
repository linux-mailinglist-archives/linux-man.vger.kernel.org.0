Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFB1E581A32
	for <lists+linux-man@lfdr.de>; Tue, 26 Jul 2022 21:18:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233380AbiGZTSk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Jul 2022 15:18:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231793AbiGZTSj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Jul 2022 15:18:39 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1E7E29C84
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 12:18:34 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id n185so9316869wmn.4
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 12:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=5HcA+23AFKM1HXFZvZczrYiCLusMOvtpQQwx+4o8x5I=;
        b=RfmboS0AM4FXN/QAY99s3w94gORWQQsusoTw578HzCcNYDapp63kGpKi92Z25lp6wF
         g0v3nrJzx78aGS89vtRyn4A3+zrSlci5wlnpI9XigdmcAcHlbHUW2Q8v9sGCmtCgzy7v
         vVODHAUnax4p9FKQKrDXYlsgvCENU+A42ROgCVkDwVOmpIGn6DH2Sc9rc690SvYmgh9b
         skiw80qbe3K/FJJ8clpPSNVTudP1D9Dz9RtvKUZmUIDBgSYqcS1pnRC6J0SM4b/xAhZc
         NUaTGlYvVKzTQKRTo/X2J99Bm7S4QgVSc+XqMYE8xB2rYL3uUJ89be9l2f18tbj1Gbnu
         FhQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=5HcA+23AFKM1HXFZvZczrYiCLusMOvtpQQwx+4o8x5I=;
        b=hotM9JZD0V0krwe1O31Dzz9n27IdO9QEU6PXTlaHdwtqkKbJF80QKNmmR6QzgIE3fG
         6aMwmxLNR6fkzqVcAqBiowKCz6Ut9BVQQSFdC2Roimajrdgsp0hhRrr7L71aZGrK98v1
         QJSR0wteaoaoRZErwaDXMJy3kj2RiIv+opkJzFyMoFUdnE39FMbkqJzRKDB/gzb5BI/U
         WkV9Hu79vFWkHftaKjKzQCAXRt2pKSD1wQziW8nc1kFfKGnSo4JPqDHNX0QW0now/eqz
         L+1DMf2yJYleoPhDgoVCxzoX41awESEXX8cGagMWTRHk1HtY+UCH6ypvXUWGh389PfLk
         l6fg==
X-Gm-Message-State: AJIora8Oecxd/bKVVTde7TVOm/tL/gexW3IhMObl6ZJhCfSEs4y1g0tL
        H1u+8Iyc2tuRK+YkR6CpFuI3YlObGj8=
X-Google-Smtp-Source: AGRyM1s5dkWZgMT2JzQTahU+o4UIoXTg8XXVj0inAwPuI6Aw6IxLjkbd0RN75AyBM9IRdwCyZdRg3Q==
X-Received: by 2002:a1c:4487:0:b0:3a2:fb76:7981 with SMTP id r129-20020a1c4487000000b003a2fb767981mr459343wma.98.1658863113394;
        Tue, 26 Jul 2022 12:18:33 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l37-20020a05600c1d2500b003a33227e49bsm19033348wms.4.2022.07.26.12.18.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 12:18:32 -0700 (PDT)
Message-ID: <dcd16a37-82e4-d7c4-dbbc-0764cadfee76@gmail.com>
Date:   Tue, 26 Jul 2022 21:18:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [patch] RLIMIT_NPROC not enforced for root user, irrespective
 capabilities
Content-Language: en-US
To:     "Schneider, Robert" <robert.schneider03@sap.com>,
        Eric Paris <eparis@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        David Howells <dhowells@redhat.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
References: <PAXPR02MB72147C88F7E9F82CC1AA577F8FAD9@PAXPR02MB7214.eurprd02.prod.outlook.com>
 <9e740310-6a05-5a05-b403-98369960830e@gmail.com>
 <PAXPR02MB7214288BB38033ACE0DBE35E8F879@PAXPR02MB7214.eurprd02.prod.outlook.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <PAXPR02MB7214288BB38033ACE0DBE35E8F879@PAXPR02MB7214.eurprd02.prod.outlook.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------HjVOG84UyEwtYZlCbEaWB0fW"
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
--------------HjVOG84UyEwtYZlCbEaWB0fW
Content-Type: multipart/mixed; boundary="------------bm00mD0NBR0QIaRB0JHbgnmZ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "Schneider, Robert" <robert.schneider03@sap.com>,
 Eric Paris <eparis@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 David Howells <dhowells@redhat.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
 "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
Message-ID: <dcd16a37-82e4-d7c4-dbbc-0764cadfee76@gmail.com>
Subject: Re: [patch] RLIMIT_NPROC not enforced for root user, irrespective
 capabilities
References: <PAXPR02MB72147C88F7E9F82CC1AA577F8FAD9@PAXPR02MB7214.eurprd02.prod.outlook.com>
 <9e740310-6a05-5a05-b403-98369960830e@gmail.com>
 <PAXPR02MB7214288BB38033ACE0DBE35E8F879@PAXPR02MB7214.eurprd02.prod.outlook.com>
In-Reply-To: <PAXPR02MB7214288BB38033ACE0DBE35E8F879@PAXPR02MB7214.eurprd02.prod.outlook.com>

--------------bm00mD0NBR0QIaRB0JHbgnmZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUm9iZXJ0LA0KDQpPbiA3LzExLzIyIDE0OjMzLCBTY2huZWlkZXIsIFJvYmVydCB3cm90
ZToNCj4gSGkgZXZlcnlvbmUsDQo+IA0KPiBJIGhvcGUgeW91IGRvbid0IG1pbmQgbWUgYXNr
aW5nIGFnYWluIDopDQo+IEkgd291bGQgcmVhbGx5IGFwcHJlY2lhdGUgaWYgeW91IGNvdWxk
IHRha2Ugc29tZSB0aW1lIHRvIHJldmlldyBteSBtYW4tcGFnZSBmaXg6DQo+IA0KPj4gSSd2
ZSBub3RpY2VkIHRoYXQgdWlkIDAgaWdub3JlcyBSTElNSVRfTlBST0MgZXZlbiBpZiBpdCBk
b2Vzbid0IGhhdmUgbmVpdGhlciBDQVBfU1lTX0FETUlOIG5vciBDQVBfU1lTX1JFU09VUkNF
Lg0KPj4gVGhlIGNvcnJlc3BvbmRpbmcga2VybmVsIGNvZGUgaXMgaW4ga2VybmVsL2Zvcmsu
YyBsaW5lIDIxMDAsDQo+PiBhbmQgSSdtIG5vdCBzdXJlIGlmIHAtPnJlYWxfY3JlYWQtPnVz
ZXIgIT0gSU5JVF9VU0VSIHJlYWxseSBjaGVja3MgdGhlIHJ1aWQuDQo+IA0KPiANCj4gVGhh
bmtzIGFnYWluLA0KPiBSb2JlcnQNCg0KDQpJIHRyaWVkIHRvIGFwcGx5IHRoZSBwYXRjaCwg
d2hlbiBJIG5vdGljZWQgdGhhdCB0aGUgZm9ybWF0IGlzIG5vdCBwbGFpbiANCnRleHQuICAo
QW5kIGdpdCByZWZ1c2VzIHRvIGFwcGx5IGl0LikNCg0KQ291bGQgeW91IHBsZWFzZSByZXNl
bmQgaXQgbWFraW5nIHN1cmUgdGhhdCBpdCdzIHBsYWluIHRleHQ/DQpnaXQtZm9ybWF0LXBh
dGNoKDEpIGluIGNvbWJpbmF0aW9uIHdpdGggZ2l0LXNlbmQtZW1haWwoMSkgbWlnaHQgaGVs
cC4NCg0KT3RoZXJ3aXNlLCBJIGNhbiB0cnkgdG8gYXBwbHkgaXQgbWFudWFsbHkuLi4NCg0K
VGhhbmtzLA0KDQpBbGV4DQo+IA0KPiANCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
Cj4gRnJvbTogQWxlamFuZHJvIENvbG9tYXIgPGFseC5tYW5wYWdlc0BnbWFpbC5jb20+DQo+
IFNlbnQ6IDE1IEp1bmUgMjAyMiAxODoyNw0KPiBUbzogRXJpYyBQYXJpcyA8ZXBhcmlzQHJl
ZGhhdC5jb20+OyBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPjsg
RGF2aWQgSG93ZWxscyA8ZGhvd2VsbHNAcmVkaGF0LmNvbT4NCj4gQ2M6IGxpbnV4LW1hbkB2
Z2VyLmtlcm5lbC5vcmc7IG10ay5tYW5wYWdlc0BnbWFpbC5jb207IFNjaG5laWRlciwgUm9i
ZXJ0IDxyb2JlcnQuc2NobmVpZGVyMDNAc2FwLmNvbT4NCj4gU3ViamVjdDogUmU6IFtwYXRj
aF0gUkxJTUlUX05QUk9DIG5vdCBlbmZvcmNlZCBmb3Igcm9vdCB1c2VyLCBpcnJlc3BlY3Rp
dmUgY2FwYWJpbGl0aWVzDQo+IA0KPiBIaSBFcmljLCBBbmRyZXcsIGFuZCBEYXZpZCwNCj4g
DQo+IE9uIDYvMTUvMjIgMTg6MDQsIFNjaG5laWRlciwgUm9iZXJ0IHdyb3RlOg0KPj4gSGks
DQo+Pg0KPj4gSSd2ZSBub3RpY2VkIHRoYXQgdWlkIDAgaWdub3JlcyBSTElNSVRfTlBST0Mg
ZXZlbiBpZiBpdCBkb2Vzbid0IGhhdmUgbmVpdGhlciBDQVBfU1lTX0FETUlOIG5vciBDQVBf
U1lTX1JFU09VUkNFLg0KPj4gVGhlIGNvcnJlc3BvbmRpbmcga2VybmVsIGNvZGUgaXMgaW4g
a2VybmVsL2ZvcmsuYyBsaW5lIDIxMDAsDQo+PiBodHRwczovL2VsaXhpci5ib290bGluLmNv
bS9saW51eC9sYXRlc3Qvc291cmNlL2tlcm5lbC9mb3JrLmMjTDIxMDANCj4+DQo+PiAgICAg
ICAgICAgaWYgKGlzX3Vjb3VudHNfb3ZlcmxpbWl0KHRhc2tfdWNvdW50cyhwKSwgVUNPVU5U
X1JMSU1JVF9OUFJPQywgcmxpbWl0KFJMSU1JVF9OUFJPQykpKSB7DQo+PiAgICAgICAgICAg
ICAgICAgICBpZiAocC0+cmVhbF9jcmVkLT51c2VyICE9IElOSVRfVVNFUiAmJg0KPj4gICAg
ICAgICAgICAgICAgICAgICAgICFjYXBhYmxlKENBUF9TWVNfUkVTT1VSQ0UpICYmICFjYXBh
YmxlKENBUF9TWVNfQURNSU4pKQ0KPj4gICAgICAgICAgICAgICAgICAgICAgICAgICBnb3Rv
IGJhZF9mb3JrX2NsZWFudXBfY291bnQ7DQo+PiAgICAgICAgICAgfSA+IEkgZG9uJ3QgdW5k
ZXJzdGFuZCBfd2h5XyB1aWQgMCBpcyBleGNsdWRlZCBpbiBzdWNoIGEgd2F5LA0KPj4gYW5k
IEknbSBub3QNCj4gc3VyZSBpZiBwLT5yZWFsX2NyZWFkLT51c2VyICE9IElOSVRfVVNFUiBy
ZWFsbHkgY2hlY2tzIHRoZSBydWlkLg0KPj4gQW55d2F5LCBoZXJlJ3MgYSBwYXRjaCBmb3Ig
dGhlIG1hbiBwYWdlIG9mIGdldHJsaW1pdCB0aGF0IHdvdWxkIGhhdmUNCj4+IGhlbHBlZCBt
ZSBzYXZlIHNvbWUgdHJvdWJsZSA6KQ0KPj4NCj4gDQo+IENvdWxkIHlvdSBwbGVhc2UgY29u
ZmlybSB0aGF0IHRoaXMgbWFudWFsIHBhZ2UgdXBkYXRlIGlzIHByZWNpc2U/DQo+IA0KPiBU
aGFua3MsDQo+IA0KPiBBbGV4DQo+IA0KPj4NCj4+IGRpZmYgLS1naXQgYS9tYW4yL2dldHJs
aW1pdC4yIGIvbWFuMi9nZXRybGltaXQuMiBpbmRleA0KPj4gNjQ4ZmQzYzg1Li43MjY4NTU2
ZTYgMTAwNjQ0DQo+PiAtLS0gYS9tYW4yL2dldHJsaW1pdC4yDQo+PiArKysgYi9tYW4yL2dl
dHJsaW1pdC4yDQo+PiBAQCAtMzU5LDcgKzM1OSw4IEBAIGxpbWl0IGlzIG5vdCBlbmZvcmNl
ZCBmb3IgcHJvY2Vzc2VzIHRoYXQgaGF2ZSBlaXRoZXIgdGhlDQo+PiAgICAuQiBDQVBfU1lT
X0FETUlODQo+PiAgICBvciB0aGUNCj4+ICAgIC5CIENBUF9TWVNfUkVTT1VSQ0UNCj4+IC1j
YXBhYmlsaXR5Lg0KPj4gK2NhcGFiaWxpdHksDQo+PiArb3IgcnVuIHdpdGggcmVhbCB1c2Vy
IElEIDAuDQo+PiAgICAuVFANCj4+ICAgIC5CIFJMSU1JVF9SU1MNCj4+ICAgIFRoaXMgaXMg
YSBsaW1pdCAoaW4gYnl0ZXMpIG9uIHRoZSBwcm9jZXNzJ3MgcmVzaWRlbnQgc2V0DQo+Pg0K
Pj4NCj4+IFJvYmVydA0KPiANCj4gLS0NCj4gQWxlamFuZHJvIENvbG9tYXINCj4gPGh0dHA6
Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KDQotLSANCkFsZWphbmRybyBDb2xvbWFy
DQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------bm00mD0NBR0QIaRB0JHbgnmZ--

--------------HjVOG84UyEwtYZlCbEaWB0fW
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLgPgcACgkQnowa+77/
2zLB+A/+PvziL+EoeFBE+VgA5yqejQdvrwX3BN+rI0aX0/riKLoKtEGal6M/5BG7
nC7U/Rrah1FCvOodqwAE6UaNAY6g015qIv7kL60HScTAWyqDirFUYWh4P1TMWl76
Z5AJMulSs7OFDdPGDPYMrqL19ZyFe32YbB4hRA2o2vNfAL6Q1HPeiv9HU1pBF5Jh
ljqX3fpQAyAIQfQp0y2jTk36dySJil6qXibrwKOy3qu8tMs/yDFxtEQ9fMoTM/xC
xZGTCeRtdQ4jrbczFaF6RrgoviWhM4n7q6twovUH7X28IhPGfK9QL+5YFStfgXBR
pfhyftoPrDbV7uHcRSHcLAZlBNfzd2xITvQ+M+DVSSlukOw2iBWI4qLMvYlqstoF
RCdEBYdp7t61x9aZvf59UrifOjd3ZaNGHkWxhSZn2aMK47+7wRlwcPTUP4K8XTid
Ay7erUxetod0W98ZEBgOVWWSbRZ+rF3pjWUX9IMNhtb9aXBA6X1Igs03JT3LnhOg
GJMVL/zJCTvdTCaawd/NP9RWKjz46TgJN+c2ryymCDNBJMmfY8GRToF/Tz1lWBUn
b5OJ1QCG88uRTBZ5mppD58Y8Ao5+rXvkprDC2pnSqljN5lkfI8s5VwxyzVEDLT3d
l+Idw1opBLOetUDlersLIEokLOJTWptawYGfxOXCqoz64EUkrQc=
=fy4e
-----END PGP SIGNATURE-----

--------------HjVOG84UyEwtYZlCbEaWB0fW--
