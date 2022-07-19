Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CEBB579CEB
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 14:45:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241553AbiGSMpm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 08:45:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241690AbiGSMoW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 08:44:22 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD2E785FAA
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 05:17:26 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id z12so21329605wrq.7
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 05:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=LLJZIGmPkgEqs7jpg8I6EElIXjxWztXmxfOfTrIaseg=;
        b=U7pRj/BhAsk4jeuQ5E8q/7blyV2nenB1fR/FVZI8YCZvJvQGBLgCwM+mgOPE6OPJFC
         fY2PZFiCP+rtLoR1jsMzUFDSHsp+tqjnEPtbXpT09WIiSSOQvB5jgQsIcPWdnZ8A7TyA
         LN42GufR+v1pVINW2yH8XGdB3yLQA3Muja7a1Y13ox5MSCjJXc9DOAJNtRMBYtXWDKBc
         0fZAtwVvelUyeVSEr3A0fQPDDqynXqyD9IVnqjHvDBEE+PEg3hXi4wlni/ASuexB2z5t
         rVZpvNd4RceR0wOzD+kfC1x0QXBMCVd/vZ3XWlF+ZHnrVWxfXNSqyIAcyy1mNdwDUTGw
         ckHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=LLJZIGmPkgEqs7jpg8I6EElIXjxWztXmxfOfTrIaseg=;
        b=zVmSYrdjsRQtQKM6FWNR5cciM5eGYb7BoUwc/61AbVtXB29+pl3fyWYdqv3txyz6qw
         xgMzKFBzHPmhtlfdhevvoY3O0EfxY8slWCKpplGO0VLidDBJsJs+926ztR3ytlT8rYGM
         EzNa3CDQwu3oq5xvtDxxjDqvoR8JEaOJuqF3zSrhcCnDpSETLsakmWmV7NXiKehRs5Az
         czE4+4b6cPeEXP+nP2EfPB+Jk6EI9EcfnR43BPECV6iEN5CKC33Krkr3Om02hFa8tL0z
         ZuZpeDg59sSehri6crrZCLoDophUmKiHEuME6WcuQz3d9aRJwjmbyKA4r2VYItikUuh7
         pmTw==
X-Gm-Message-State: AJIora8vcRHY87slolXrQAyIyNBLOYtNwS4pgLZwPBkjxoICybTiwonA
        gqrBwWOXlCjiAnPiXYUdih0=
X-Google-Smtp-Source: AGRyM1vVLqu96sRaOwCKPVnyBipscWklJtlLn9vUl4n1bpcAJ1IhLqxeZI2WB+TL4YxuHKDo9k7yFA==
X-Received: by 2002:adf:f14d:0:b0:21d:ad67:c2e0 with SMTP id y13-20020adff14d000000b0021dad67c2e0mr26865179wro.247.1658233044204;
        Tue, 19 Jul 2022 05:17:24 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d13-20020adfe84d000000b0020fcaba73bcsm13216662wrn.104.2022.07.19.05.17.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 05:17:23 -0700 (PDT)
Message-ID: <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>
Date:   Tue, 19 Jul 2022 14:17:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH 4/5] tm.3type: describe tm_zone, tm_gmtoff
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <a8be8830890c50b1a36e9b7d20693c19c77ca4e5.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <a8be8830890c50b1a36e9b7d20693c19c77ca4e5.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------CyXrCmQ0gK0dDFf1hiyWbLht"
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
--------------CyXrCmQ0gK0dDFf1hiyWbLht
Content-Type: multipart/mixed; boundary="------------LsjcI0pZX4sweBlCwCczwq5v";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org,
 "G . Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>
Subject: Re: [PATCH 4/5] tm.3type: describe tm_zone, tm_gmtoff
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <a8be8830890c50b1a36e9b7d20693c19c77ca4e5.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <a8be8830890c50b1a36e9b7d20693c19c77ca4e5.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>

--------------LsjcI0pZX4sweBlCwCczwq5v
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksINC90LDQsSBhbmQgQnJhbmRlbiENCg0KT24gNy8xOS8yMiAwMzo1Niwg0L3QsNCxIHdy
b3RlOg0KPiBGcmVlQlNEIHRpbWV6b25lKDMpIGlzIFY3IGNoYXIgKnRpbWV6b25lKGludCB6
b25lLCBpbnQgZHN0KSwNCj4gb3VyIGRvY3VtZW50YXRpb24gd291bGQgaW1wbHkgaXQncyBp
bXBvc3NpYmxlIHRvIHNlcnZpY2UgdGhpcyB0eXBlIG9mDQo+IHN5c3RlbSBwb3J0YWJseQ0K
PiANCj4gSW5kZWVkLCBnbGliYyBkZWZpbmVzIHRoZW0gYm90aCwgYW5kIHRoZXkgbWFrZSBt
b3JlIHNlbnNlIGZvciBtb3N0DQo+IHVzZS1jYXNlcyB0aGFuIHRyeWluZyB0byB1c2UgdGhl
IGdsb2JhbHMNCg0KR3JlYXQhDQoNCj4gDQo+IGdsaWJjIGNpdGVkIGZvciBfX1VTRV9NSVND
LCB0bV96b25lIGludmFsaWRhdGlvbiBpcyBEZWJpYW4gMi4zMy03DQoNCkJ1dCBJIGd1ZXNz
IGl0IGlzIHByZXNlbnQgaW4gbXVjaCBvbGRlciBnbGliY3MsIHJpZ2h0Pw0KT3RoZXJ3aXNl
IHdlIHNob3VsZCBhZGQgYSBWRVJTSU9OUyB0aGluZ3kuDQoNCj4gUE9TSVggY2l0ZWQgZm9y
IFhTSSBtYXJraW5nIGlzIElzc3VlIDcgVEMyDQo+IENTUkcgQ0QgIzIgY29udGFpbnMgNC4z
QlNELVRhaG9lIHdpdGggYm90aCBtZW1iZXJzDQo+IA0KPiBUaGlzIGFsc28gZml4ZXMgdGhl
IG11bHRpcGxlIGxpZXMgaW4gbWFuLXBhZ2VzIDUuMTAgbG9jYWx0aW1lKDMpLA0KPiB3aGlj
aCBzYXlzIG9ubHk6DQo+ICAgICAgVGhlIGdsaWJjIHZlcnNpb24gb2Ygc3RydWN0IHRtIGhh
cyBhZGRpdGlvbmFsIGZpZWxkcw0KPiAgICAgICAgICBjb25zdCBjaGFyICp0bV96b25lOyAg
ICAgIC8qIFRpbWV6b25lIGFiYnJldmlhdGlvbiAqLw0KPiAgICAgIGRlZmluZWQgd2hlbiBf
QlNEX1NPVVJDRSB3YXMgc2V0IGJlZm9yZSBpbmNsdWRpbmcgPHRpbWUuaD4uDQo+ICAgICAg
VGhpcyBpcyBhIEJTRCBleHRlbnNpb24sIHByZXNlbnQgaW4gNC4zQlNELVJlbm8uDQoNCkRp
ZCB5b3UgZm9yZ2V0IHRoYXQgcmVtb3ZhbCBvZiBsaWVzPyAgSSBkb24ndCBzZWUgaXQgaW4g
dGhlIHBhdGNoLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQWhlbGVuaWEgWmllbWlhxYRza2Eg
PG5hYmlqYWN6bGV3ZWxpQG5hYmlqYWN6bGV3ZWxpLnh5ej4NCj4gLS0tDQo+ICAgbWFuMy90
bS4zdHlwZSB8IDQ1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKw0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA0NSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvbWFuMy90bS4zdHlwZSBiL21hbjMvdG0uM3R5cGUNCj4gaW5kZXggMTkzMWQ4
OTBkLi44YjZmOGQ5YmYgMTAwNjQ0DQo+IC0tLSBhL21hbjMvdG0uM3R5cGUNCj4gKysrIGIv
bWFuMy90bS4zdHlwZQ0KPiBAQCAtMjUsOCArMjUsMjYgQEAgU3RhbmRhcmQgQyBsaWJyYXJ5
DQo+ICAgLkJSICIgICAgaW50ICB0bV95ZGF5OyIgXA0KPiAgICIgICAvKiBEYXkgb2YgdGhl
IHllYXIgIFsiIDAgIiwgIiAzNjUgIl0gKEphbi8wMSA9ICIgMCAiKSAqLyINCj4gICAuQlIg
IiAgICBpbnQgIHRtX2lzZHN0OyIgIiAgLyogRGF5bGlnaHQgc2F2aW5ncyBmbGFnICovIg0K
PiArDQo+ICsuQlIgIiAgICBsb25nIHRtX2dtdG9mZjsiICIgLyogU2Vjb25kcyBFYXN0IG9m
IFVUQyAqLyINCj4gKy5CUiAiICAgIGNoYXIqdG1fem9uZTsiICIgICAvKiBUaW1lem9uZSBh
YmJyZXZpYXRpb24gKi8iDQoNClBsZWFzZSBhZGQgY29zbWV0aWMgd2hpdGVzcGFjZSAoYXQg
bGVhc3QgMSBmb3IgZXZlcnkgbWVtYmVyLCBwb3NzaWJseSAyLCANCmRlcGVuZGluZyBvbiB5
b3VyIHRhc3RlKSA6KQ0KDQo+ICAgLkIgfTsNCj4gICAuZmkNCj4gKy5QUA0KPiArLlJTIC00
DQo+ICtGZWF0dXJlIFRlc3QgTWFjcm8gUmVxdWlyZW1lbnRzIGZvciBnbGliYyAoc2VlDQo+
ICsuQlIgZmVhdHVyZV90ZXN0X21hY3JvcyAoNykpOg0KPiArLlJFDQo+ICsuUFANCj4gKy5J
UiB0bV9nbXRvZmYgLA0KPiArLklSIHRtX3pvbmUgOg0KPiArLm5mDQo+ICsuXCIgR3VhcmRl
ZCB3aXRoIF9fVVNFX01JU0M6DQo+ICsgICAgU2luY2UgZ2xpYmMgMi4xOToNCj4gKyAgICAg
ICAgX0RFRkFVTFRfU09VUkNFDQo+ICsgICAgR2xpYmMgMi4xOSBhbmQgZWFybGllcjoNCj4g
KyAgICAgICAgX0JTRF9TT1VSQ0UgfHwgX1NWSURfU09VUkNFDQo+ICsuZmkNCj4gICAuU0gg
REVTQ1JJUFRJT04NCj4gICBEZXNjcmliZXMgdGltZSwgYnJva2VuIGRvd24gaW50byBkaXN0
aW5jdCBjb21wb25lbnRzLg0KPiAgIC5QUA0KPiBAQCAtMzUsNiArNTMsMTYgQEAgZGVzY3Jp
YmVzIHdldGhlciBkYXlsaWdodCBzYXZpbmcgdGltZSBpcyBpbiBlZmZlY3QgYXQgdGhlIHRp
bWUgZGVzY3JpYmVkLg0KPiAgIFRoZSB2YWx1ZSBpcyBwb3NpdGl2ZSBpZiBkYXlsaWdodCBz
YXZpbmcgdGltZSBpcyBpbiBlZmZlY3QsDQo+ICAgemVybyBpZiBpdCBpcyBub3QsDQo+ICAg
YW5kIG5lZ2F0aXZlIGlmIHRoZSBpbmZvcm1hdGlvbiBpcyBub3QgYXZhaWxhYmxlLg0KPiAr
LlBQDQo+ICsuSSB0bV9nbXRvZmYNCj4gK2lzIHRoZSBkaWZmZXJlbmNlLCBpbiBzZWNvbmRz
LCBvZiB0aGUgdGltZXpvbmUgcmVwcmVzZW50ZWQgYnkgdGhpcyBicm9rZW4tZG93biB0aW1l
IGFuZCBVVEMNCj4gKyh0aGlzIGlzIHRoZSByZXZlcnNlIG9mDQoNCkNvdWxkIHlvdSBjb21l
IHVwIHdpdGggYSBtb3JlIG1hdGhlbWF0aWNhbGx5IHByZWNpc2UgdGVybSBmb3IgInJldmVy
c2UiPyANCiAgV2hhdCBpcyByZXZlcnNlPyAgVGhlIGFkZGl0aXZlIGludmVyc2U/ICBNYXli
ZSB1c2UgImFkZGl0aXZlIGludmVyc2UiPyANCiAgSSB0aGluayAib3Bwb3NpdGUiIGFsc28g
aGFzIHRoZSBtZWFuaW5nIG9mIGFkZGl0aXZlIGludmVyc2UgaW4gbWF0aHMsIA0KYW5kIGl0
J3MgbWF5YmUgYSBzaW1wbGVyIHRlcm0gKGFsdGhvdWdoIGFkZGl0aXZlIGludmVyc2UgaXMg
bW9yZSANCnByZWNpc2UsIElNSE8pLiAgQnV0IHJldmVyc2UgaXMgZGVmaW5pdGVseSBjb25m
dXNpbmcgdG8gbWUuDQoNCj4gKy5CUiB0aW1lem9uZSAoMykpLg0KPiArLlBQDQo+ICsuSSB0
bV96b25lDQo+ICtpcyB0aGUgZXF1aXZhbGVudCBvZg0KPiArLkJSIHR6bmFtZSAoMykNCj4g
K2ZvciB0aGUgdGltZXpvbmUgcmVwcmVzZW50ZWQgYnkgdGhpcyBicm9rZW4tZG93biB0aW1l
Lg0KPiAgIC5TSCBWRVJTSU9OUw0KPiAgIEluIEM5MCwNCj4gICAuSSB0bV9zZWMNCj4gQEAg
LTQ4LDEwICs3NiwyNyBAQCBpbiBDOTkuDQo+ICAgLlNIIENPTkZPUk1JTkcgVE8NCj4gICBD
OTAgYW5kIGxhdGVyOw0KPiAgIFBPU0lYLjEtMjAwMSBhbmQgbGF0ZXIuDQo+ICsuUFANCj4g
Ky5JUiB0bV9nbXRvZmYgIiBhbmQgIiB0bV96b25lDQo+ICtvcmlnaW5hdGUgZnJvbSA0LjNC
U0QtVGFob2UuDQo+ICAgLlNIIE5PVEVTDQo+ICAgLkkgdG1fc2VjDQo+ICAgY2FuIHJlcHJl
c2VudCBhIGxlYXAgc2Vjb25kIHdpdGggdGhlIHZhbHVlDQo+ICAgLkJSIDYwIC4NCj4gKy5Q
UA0KPiArLkJSIHRpbWV6b25lICgzKSwNCj4gK2FzIGEgdmFyaWFibGUsIGlzIGFuIFhTSSBl
eHRlbnNpb24gXChlbSBzb21lIHN5c3RlbXMgcHJvdmlkZSB0aGUgVjctY29tcGF0aWJsZQ0K
DQpJIHRlbmQgdG8gcHJlZmVyIHRoZSBlbSBkYXNoIHRvIGJlIG5leHQgdG8gKG5vIHdoaXRl
c3BhY2UpIHRoZSBlbmNsb3NlZCANCmNsYXVzZS4gIFRoYXQgbWFrZXMgaXQgZWFzaWVyIHRv
IG1lbnRhbGx5IGFzc29jaWF0ZSAoYXMgaW4gYSBzZXQgb2YgDQpwYXJlbnRoZXNlcykgdG8g
dGhlIGNsYXVzZS4gIEknbSBub3Qgc3VyZSBpZiBpdCdzIGEgdGhpbmcgb2YgbWluZSwgb3Ig
aWYgDQppdCdzIHN0YW5kYXJkIHByYWN0aXNlPw0KDQo+ICsuXCIgRnJlZUJTRA0KPiArLkJS
IHRpbWV6b25lICgpDQo+ICtmdW5jdGlvbi4NCj4gK1RoZQ0KPiArLkkgdG1fZ210b2ZmDQo+
ICtmaWVsZHMgcHJvdmlkZXMgYW4gYWx0ZXJuYXRpdmUgKHdpdGggdGhlIG9wcG9zaXRlIHNp
Z24pIGZvciB0aG9zZSBzeXN0ZW1zLg0KPiArLlBQDQo+ICsuSSB0bV96b25lDQo+ICtwb2lu
dHMgdG8gcG90ZW50aWFsbHktY29uc3RhbnQgc3RhdGljIHN0b3JhZ2UgYW5kIG1heSBiZSBv
dmVycmlkZW4gb24gc3Vic2VxdWVudCBjYWxscyB0bw0KPiArLkJSIGxvY2FsdGltZSAoMykN
Cj4gKyZhLiAodGhpcywgaG93ZXZlciwgbmV2ZXIgaGFwcGVucyB1bmRlciBnbGliYykuDQoN
CldoYXQgaXMgIiZhLiI/ICBJcyB0aGF0IGRvY3VtZW50ZWQgc29tZXdoZXJlPyAgSSBkaWRu
J3Qga25vdyB0aGF0IA0KYWJicmV2aWF0dXJlLg0KDQpLZWVwIGluIG1pbmQgbWFuLXBhZ2Vz
KDcpOg0KICAgIFVzZSBvZiBlLmcuLCBpLmUuLCBldGMuLCBhLmsuYS4sIGFuZCBzaW1pbGFy
DQogICAgICAgIEluIGdlbmVyYWwsIHRoZSB1c2UgIG9mICBhYmJyZXZpYXRpb25zICBzdWNo
ICBhcyAgImUuZy4iLA0KICAgICAgICAiaS5lLiIsICJldGMuIiwgImNmLiIsIGFuZCAiYS5r
LmEuIiBzaG91bGQgYmUgYXZvaWRlZCwgaW4NCiAgICAgICAgZmF2b3IgIG9mICBzdWl0YWJs
ZSAgZnVsbCAgd29yZGluZ3MgKCJmb3IgZXhhbXBsZSIsICJ0aGF0DQogICAgICAgIGlzIiwg
ImFuZCBzbyBvbiIsICJjb21wYXJlIHRvIiwgImFsc28ga25vd24gYXMiKS4NCg0KICAgICAg
ICBUaGUgb25seSBwbGFjZSB3aGVyZSBzdWNoIGFiYnJldmlhdGlvbnMgbWF5IGJlIGFjY2Vw
dGFibGUNCiAgICAgICAgaXMgaW4gc2hvcnQgcGFyZW50aGV0aWNhbCBhc2lkZXMgKGUuZy4s
IGxpa2UgdGhpcyBvbmUpLg0KDQogICAgICAgIEFsd2F5cyBpbmNsdWRlIHBlcmlvZHMgaW4g
c3VjaCAgYWJicmV2aWF0aW9ucywgIGFzICBzaG93bg0KICAgICAgICBoZXJlLiAgIEluICBh
ZGRpdGlvbiwgICJlLmcuIiBhbmQgImkuZS4iIHNob3VsZCBhbHdheXMgYmUNCiAgICAgICAg
Zm9sbG93ZWQgYnkgYSBjb21tYS4NCg0KDQpCVFcsIGlmIHRoZSAnLicgaXMgbm90IGEgc2Vu
dGVuY2UgZW5kaW5nLCBpdCBtaWdodCBiZSBnb29kIHRvIG1hcmsgaXQgDQp3aXRoIHRoZSBp
bmVmZmFibGUgXCYgZXNjYXBlIDopDQoNCiZhLlwmICh0aGlzIC4uLg0KDQo+ICAgLlNIIFNF
RSBBTFNPDQo+ICAgLkJSIGN0aW1lICgzKSwNCj4gICAuQlIgc3RyZnRpbWUgKDMpLA0KDQot
LSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5l
cy8+DQo=

--------------LsjcI0pZX4sweBlCwCczwq5v--

--------------CyXrCmQ0gK0dDFf1hiyWbLht
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLWoMsACgkQnowa+77/
2zK+yA/8DusfcU3cbS+nAGJBC5G6vygOJ2jrNjuWl8Ggqf6Q5st7587GCfydUhYF
LRE54udWhi9DcFwx9OaKn6rFz8cvCARliGSq8wTyrjDUNV/6FQG7aFcMUUj5a2lY
DWnRKbz4q90lN6zkS1hVXBdBMBCi4uqKPkRUpgX5Vbl+ftSzf0qU4JoBcmUUJfEB
9gZr8GkASr6CdtLFeFyk65npY2UcXB6g7SkWNK8Aym1RK10HUtyXt64REdj0TtmQ
bsO/pI/A5DNtnQcRYUzdLd1hu5LCe8lDlUuuFN6YGtQqK5s/ATCtVcps0fSp33Es
ondcSf2Tj5ABcobz19etoCn6Rf85KRZSEIH9g9SZxftFC2RzsbI4xHFUYEISa0nh
XyYC85TL3yJS+JEuw7KA1y9ssRvpKJIzJVhmmqALopb6NaMdgLciSabJOKgTQzjo
23TzA9bRjYHl8Avk+Tcagf5HVdVjVmKTpkRbnkBFryUY/RKncErwKznQzY/WeQPC
A0unQKQvCVMTCsgHfZhl09RGTz0jEkI5jU12NRZYU9c93qDeFVcy8WRXZvHfDN08
J0cN8ZIG3WvDK6SclR2NRWJ1VYT0+rIwjKqk9NK8h6TtUQc/+0gclEdTyT/PI7Kf
im/Qm2lNIKChkQwHVQglzdOfA8v+LDVsTzXCFU2bXFrljEJgGgM=
=m9WG
-----END PGP SIGNATURE-----

--------------CyXrCmQ0gK0dDFf1hiyWbLht--
