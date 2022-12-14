Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2195C64D295
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 23:51:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229454AbiLNWvR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 17:51:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbiLNWvP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 17:51:15 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C640205E6
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 14:51:14 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id h16so1309721wrz.12
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 14:51:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z62AOHR5Vx12UsbMUUScBO268V1KiuG1b9LpBbmd2Sw=;
        b=R6Kwo44LNU7AtaARBbVKQgP9W5RNM6iBmy54b2dNGZuRiXZXlGjdxnhieaJ9Cs56+x
         Pqq0bt7LXoPoC3EQyDk5uRJW5xP3c3u+HJo4/0hDk2L8spL0S58LT5y5J+4xx2qZ7c08
         Grlh7xPZ2VntA0JFIBhB/ble2qyaa4igqcwW8qyuMI4ULPUU0kfxyYYdsYNNA3SM9oyn
         lwGO1I5SAjc0eTxehVzsm5ysivneccr0sOTd/irab5sWFG60PXB7kua6i+m+M3D3LLhc
         l6+wrgfSrMlkxtmel2Nu7sERgnOVmhGbL8dHdJ+6byqyPd8MKSRtYm8eQ2KJ/GOPan9m
         MqxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Z62AOHR5Vx12UsbMUUScBO268V1KiuG1b9LpBbmd2Sw=;
        b=ZTiMm483hmzN0KGKxeZmd+bylxyiCeaXXbCWJC3qb8hnW1Pn9qhJJxQ0+5Ftiv/cp3
         Tl531BkRuN4Xr+BRWZDgns+GrzCjx3GKgXyt7laebZ3rb/yhC0S5aIxuocoYi6Xf+/AF
         Nd16fuOqaaLMj5Rr/kVt3wp+xgvS1XY0Y/m9ht3bHE1GN6wqt06wsMY31Fi22JI4BfJM
         t3CpXkb8GBbOUMNwfYprQOmyWdI+l9N8mkeJ+0vGQ1rM+zCDC0o8Vy3fccgqQ7I1sXze
         1ivzjQLG53TYNR0GRkw0Q9d8fgf2pME27Wul9zm0+EytcEzbkgP47ZISbF5ajy7x87Ij
         G9PA==
X-Gm-Message-State: ANoB5pniylJSealsfF6JkXFTHD1xpN91jgOWg9f5FpztFrdd8F9W/n2L
        xoOJ1G94ov+zp5AbZqphjQ0=
X-Google-Smtp-Source: AA0mqf6VhrSLc33uC37Q0eB7UwEZ6mKBX54FZgH65/FT8BrBDxL8B3UBWZNDdU9K+sfGChbHaJ/GEg==
X-Received: by 2002:a5d:4492:0:b0:242:3600:d221 with SMTP id j18-20020a5d4492000000b002423600d221mr16869972wrq.55.1671058273025;
        Wed, 14 Dec 2022 14:51:13 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id co22-20020a0560000a1600b0024228b0b932sm5128858wrb.27.2022.12.14.14.51.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 14:51:12 -0800 (PST)
Message-ID: <75defb3e-bbe4-3b26-980c-22d32f177033@gmail.com>
Date:   Wed, 14 Dec 2022 23:51:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [-Wstringop-overflow=] strncat(3)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     gcc@gcc.gnu.org
Cc:     linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
References: <30a77019-ded0-fe3b-d0db-6c77842674db@gmail.com>
In-Reply-To: <30a77019-ded0-fe3b-d0db-6c77842674db@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------IstlHADmPEYgfIWMKodsgb3U"
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
--------------IstlHADmPEYgfIWMKodsgb3U
Content-Type: multipart/mixed; boundary="------------GfAlGyrCU10FJgoD2yLKQATE";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: gcc@gcc.gnu.org
Cc: linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>
Message-ID: <75defb3e-bbe4-3b26-980c-22d32f177033@gmail.com>
Subject: Re: [-Wstringop-overflow=] strncat(3)
References: <30a77019-ded0-fe3b-d0db-6c77842674db@gmail.com>
In-Reply-To: <30a77019-ded0-fe3b-d0db-6c77842674db@gmail.com>

--------------GfAlGyrCU10FJgoD2yLKQATE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzE0LzIyIDIzOjQ1LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gSGks
DQo+IA0KPiBJIHdhcyByZXdyaXRpbmcgdGhlIHN0cm5jYXQoMykgbWFudWFsIHBhZ2UsIGFu
ZCB3aGVuIEkgdHJpZWQgdG8gY29tcGlsZSB0aGUgDQo+IGV4YW1wbGUgcHJvZ3JhbSwgSSBn
b3QgYSBzdXJwcmlzZSBmcm9tIHRoZSBjb21waWxlci4NCj4gDQo+IEhlcmUgZ29lcyB0aGUg
cGFnZToNCj4gDQo+IA0KPiAgwqAgc3RybmNhdCgzKcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgTGlicmFyeSBGdW5jdGlvbnMgTWFudWFswqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc3RybmNhdCgzKQ0KPiANCj4gIMKgIE5BTUUNCj4gIMKgwqDCoMKgwqDCoMKgwqAgc3Ry
bmNhdMKgIC3CoCBjb25jYXRlbmF0ZcKgIGHCoCBudWxs4oCQcGFkZGVkwqAgY2hhcmFjdGVy
IHNlcXVlbmNlIGludG8gYQ0KPiAgwqDCoMKgwqDCoMKgwqDCoCBzdHJpbmcNCj4gDQo+ICDC
oCBMSUJSQVJZDQo+ICDCoMKgwqDCoMKgwqDCoMKgIFN0YW5kYXJkIEMgbGlicmFyeSAobGli
YywgLWxjKQ0KPiANCj4gIMKgIFNZTk9QU0lTDQo+ICDCoMKgwqDCoMKgwqDCoMKgICNpbmNs
dWRlIDxzdHJpbmcuaD4NCj4gDQo+ICDCoMKgwqDCoMKgwqDCoMKgIGNoYXIgKnN0cm5jYXQo
Y2hhciAqcmVzdHJpY3QgZHN0LCBjb25zdCBjaGFyIHNyY1tyZXN0cmljdCAuc3pdLA0KPiAg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzaXplX3Qg
c3opOw0KPiANCj4gIMKgIERFU0NSSVBUSU9ODQo+ICDCoMKgwqDCoMKgwqDCoMKgIFRoaXMg
ZnVuY3Rpb24gY2F0ZW5hdGVzIHRoZSBpbnB1dCBjaGFyYWN0ZXIgc2VxdWVuY2UgY29udGFp
bmVkwqAgaW4NCj4gIMKgwqDCoMKgwqDCoMKgwqAgYcKgIG51bGzigJBwYWRkZWTCoCBmaXhl
ZOKAkHdpZHRowqAgYnVmZmVyLMKgIGludG/CoCBhIHN0cmluZyBhdCB0aGUgYnVmZmVyDQo+
ICDCoMKgwqDCoMKgwqDCoMKgIHBvaW50ZWQgdG8gYnkgZHN0LsKgIFRoZSBwcm9ncmFtbWVy
IGlzIHJlc3BvbnNpYmxlIGZvciBhbGxvY2F0aW5nIGENCj4gIMKgwqDCoMKgwqDCoMKgwqAg
YnVmZmVyIGxhcmdlIGVub3VnaCwgdGhhdCBpcywgc3RybGVuKGRzdCkgKyBzdHJubGVuKHNy
Yywgc3opICsgMS4NCj4gDQo+ICDCoMKgwqDCoMKgwqDCoMKgIEFuIGltcGxlbWVudGF0aW9u
IG9mIHRoaXMgZnVuY3Rpb24gbWlnaHQgYmU6DQo+IA0KPiAgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGNoYXIgKg0KPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cm5jYXQoY2hh
ciAqcmVzdHJpY3QgZHN0LCBjb25zdCBjaGFyICpyZXN0cmljdCBzcmMsIHNpemVfdCBzeikN
Cj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB7DQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBpbnTCoMKgIGxlbjsNCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGNoYXLCoCAqZW5kOw0KPiANCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGxlbiA9IHN0cm5sZW4oc3JjLCBzeik7DQo+ICDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBlbmQgPSBkc3QgKyBzdHJsZW4oZHN0KTsNCj4gIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVuZCA9IG1lbXBjcHkoZW5kLCBzcmMsIGxlbik7
DQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqZW5kID0gJ1wwJzsNCj4g
DQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gZHN0Ow0KPiAg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0NCj4gDQo+ICDCoCBSRVRVUk4gVkFMVUUNCj4g
IMKgwqDCoMKgwqDCoMKgwqAgc3RybmNhdCgpIHJldHVybnMgZGVzdC4NCj4gDQo+ICDCoCBB
VFRSSUJVVEVTDQo+ICDCoMKgwqDCoMKgwqDCoMKgIFsuLi5dDQo+IA0KPiAgwqAgU1RBTkRB
UkRTDQo+ICDCoMKgwqDCoMKgwqDCoMKgIFBPU0lYLjHigJAyMDAxLCBQT1NJWC4x4oCQMjAw
OCwgQzg5LCBDOTksIFNWcjQsIDQuM0JTRC4NCj4gDQo+ICDCoCBDQVZFQVRTDQo+ICDCoMKg
wqDCoMKgwqDCoMKgIFRoZcKgIG5hbWUgb2YgdGhpcyBmdW5jdGlvbiBpcyBjb25mdXNpbmcu
wqAgVGhpcyBmdW5jdGlvbiBoYXMgbm8gcmXigJANCj4gIMKgwqDCoMKgwqDCoMKgwqAgbGF0
aW9uIHdpdGggc3RybmNweSgzKS4NCj4gDQo+ICDCoMKgwqDCoMKgwqDCoMKgIElmIHRoZSBk
ZXN0aW5hdGlvbiBidWZmZXIgaXMgbm90IGxhcmdlIGVub3VnaCwgdGhlIGJlaGF2aW9yIGlz
IHVu4oCQDQo+ICDCoMKgwqDCoMKgwqDCoMKgIGRlZmluZWQuwqAgU2VlIF9GT1JUSUZZX1NP
VVJDRSBpbiBmZWF0dXJlX3Rlc3RfbWFjcm9zKDcpLg0KPiANCj4gIMKgIEJVR1MNCj4gIMKg
wqDCoMKgwqDCoMKgwqAgVGhpcyBmdW5jdGlvbsKgIGNhbsKgIGJlwqAgdmVyecKgIGluZWZm
aWNpZW50LsKgwqAgUmVhZMKgIGFib3V0wqAgU2hsZW1pZWwNCj4gIMKgwqDCoMKgwqDCoMKg
wqAgdGhlwqDCoMKgwqDCoMKgIHBhaW50ZXLCoMKgwqDCoMKgIOKfqGh0dHBzOi8vd3d3Lmpv
ZWxvbnNvZnR3YXJlLmNvbS8yMDAxLzEyLzExLw0KPiAgwqDCoMKgwqDCoMKgwqDCoCBiYWNr
LXRvLWJhc2ljcy/in6kuDQo+IA0KPiAgwqAgRVhBTVBMRVMNCj4gIMKgwqDCoMKgwqDCoMKg
wqAgI2luY2x1ZGUgPHN0ZGlvLmg+DQo+ICDCoMKgwqDCoMKgwqDCoMKgICNpbmNsdWRlIDxz
dGRsaWIuaD4NCj4gIMKgwqDCoMKgwqDCoMKgwqAgI2luY2x1ZGUgPHN0cmluZy5oPg0KPiAN
Cj4gIMKgwqDCoMKgwqDCoMKgwqAgaW50DQo+ICDCoMKgwqDCoMKgwqDCoMKgIG1haW4odm9p
ZCkNCj4gIMKgwqDCoMKgwqDCoMKgwqAgew0KPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGNoYXLCoMKgwqAgYnVmW0JVRlNJWl07DQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
c2l6ZV90wqAgbGVuOw0KPiANCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBidWZbMF0g
PSAnXDAnO8KgIC8vIFRoZXJl4oCZcyBubyDigJljcHnigJkgZnVuY3Rpb24gdG8gdGhpcyDi
gJljYXTigJkuDQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RybmNhdChidWYsICJI
ZWxsbyAiLCA2KTsNCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJuY2F0KGJ1Ziwg
IndvcmxkIiwgNDIpO8KgIC8vIFBhZGRpbmcgbnVsbCBieXRlcyBpZ25vcmVkLg0KPiAgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cm5jYXQoYnVmLCAiISIsIDEpOw0KPiAgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGxlbiA9IHN0cmxlbihidWYpOw0KPiAgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHByaW50ZigiW2xlbiA9ICV6dV06IDwlcz5cbiIsIGxlbiwgYnVmKTsN
Cj4gDQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZXhpdChFWElUX1NVQ0NFU1MpOw0K
PiAgwqDCoMKgwqDCoMKgwqDCoCB9DQo+IA0KPiAgwqAgU0VFIEFMU08NCj4gIMKgwqDCoMKg
wqDCoMKgwqAgc3RyaW5nKDMpLCBzdHJpbmdfY29weSgzKQ0KPiANCj4gIMKgIExpbnV4IG1h
buKAkHBhZ2VzICh1bnJlbGVhc2VkKcKgwqDCoMKgwqAgKGRhdGUpwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RybmNhdCgzKQ0KPiANCj4gDQo+IEFu
ZCB3aGVuIHlvdSBjb21waWxlIHRoYXQsIHlvdSBnZXQ6DQo+IA0KPiAkIGNjIC1XYWxsIC1X
ZXh0cmEgLi9zdHJuY2F0LmMNCj4gLi9zdHJuY2F0LmM6IEluIGZ1bmN0aW9uIOKAmG1haW7i
gJk6DQo+IC4vc3RybmNhdC5jOjEyOjEyOiB3YXJuaW5nOiDigJhzdHJuY2F04oCZIHNwZWNp
ZmllZCBib3VuZCA2IGVxdWFscyBzb3VyY2UgbGVuZ3RoIA0KPiBbLVdzdHJpbmdvcC1vdmVy
Zmxvdz1dDQo+ICDCoMKgIDEyIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cm5jYXQoYnVm
LCAiSGVsbG8gIiwgNik7DQo+ICDCoMKgwqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4NCj4gLi9zdHJuY2F0LmM6MTQ6MTI6IHdhcm5p
bmc6IOKAmHN0cm5jYXTigJkgc3BlY2lmaWVkIGJvdW5kIDEgZXF1YWxzIHNvdXJjZSBsZW5n
dGggDQo+IFstV3N0cmluZ29wLW92ZXJmbG93PV0NCj4gIMKgwqAgMTQgfMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgc3RybmNhdChidWYsICIhIiwgMSk7DQo+ICDCoMKgwqDCoMKgIHzCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIF5+fn5+fn5+fn5+fn5+fn5+fn5+DQo+IA0KPiANCj4gU28s
IHdoYXQ/wqAgV2hlcmUncyB0aGUgcHJvYmxlbT/CoCBUaGlzIGZ1bmN0aW9uIGRvZXMgZXhh
Y3RseSB0aGF0OiAidGFrZSBhbiANCj4gdW50ZXJtaW5hdGVkIGNoYXJhY3RlciBzZXF1ZW5j
ZSBhbmQgY2F0ZW5hdGUgaXQgdG8gYW4gZXhpc3Rpbmcgc3RyaW5nIi7CoCBDbGFuZyANCj4g
c2VlbXMgdG8gYmUgZmluZSB3aXRoIHRoZSBjb2RlLg0KDQpNYXliZSBpdCdzIHNheWluZyB0
aGF0IEkgc2hvdWxkIGJlIHVzaW5nIHN0cm5jYXQoYnVmLCAiISIpOyBiZWNhdXNlIHRoZSBs
ZW5ndGggDQppcyB1c2VsZXNzPw0KDQo+IA0KPiBDaGVlcnMsDQo+IA0KPiBBbGV4DQo+IA0K
PiANCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------GfAlGyrCU10FJgoD2yLKQATE--

--------------IstlHADmPEYgfIWMKodsgb3U
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOaU18ACgkQnowa+77/
2zL6mg/+NqgtFUIaVWrwaWbUZFqFfMwRmYguVnTy6bQPT0Hez3EJlbr6kgKI87bB
WKfSbYtW2xvJEUIF7bv+0g5ChyXgTQMgkUx4s9xj5pjXaXFApwVv38xqSXsLMF/v
6fVcIou8OXS6KoLKhiFq5SayQlnLKi9MFRgTOMQRYyBWQ9oprfXbI6H0kKoN1yjc
A/0Ij5IZDrsm8KL3DFKrwfALn2gjVqFIgejaWab4MxuHGYfd2NUsYD1K4MwYOMsB
sgoNJ/aJwn5jXZlsavSJxA+vvkE3QQwxSC11llegv9Mfsh3gIg3lAdQp5YnQsEZf
gvD5HkGTEFnaPwISAnD1mXOZb3/VynPO078xF6ePr3UID9UdDslIs/oIuwvqfVGX
DyVybWdxWBHUYpUOIqCLlhQB6ar+jN82Es68m72r1W97E6HGWOWgPXHv/RJcftyH
DTDvxkTRMMlu8PXst9wETO2k6JoiAQmhFEknJ9oJo1kQE8isfGtEEkdL1beLb9oU
zK277Ie5JcJws91bE5JTxbMx+bThB/VxUZ5QEaU5ZgutePOTA8hYlPboXxpRMwKd
Kdds050mpd6txXnk0E8w/w3596cvn3Pj5VJqH6MBymw2KdmKPLjWVrZIE1IXpGuW
QrHIZj/u4PJ0ILsfR/hLEKLaDsK8elz9uB3bq0WJaklI2wbN8qY=
=1JIQ
-----END PGP SIGNATURE-----

--------------IstlHADmPEYgfIWMKodsgb3U--
