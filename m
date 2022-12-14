Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAF7D64D29A
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 23:52:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229653AbiLNWwD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 17:52:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229704AbiLNWv4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 17:51:56 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABB582CCB4
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 14:51:55 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id i7-20020a1c3b07000000b003d1e906ca23so46796wma.3
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 14:51:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QLBnBnvCm/z0B5f5Pa0x/lE2wWk1kVvRq9m9joBOq8g=;
        b=VkYnxWa2ruyeXr67vAWK7rxqHROOMPv8SMf8UMKHizRa6+qRf7YXt2A8CI+TAsqlBy
         WrNQaPRk/KyuM3XEsOMQeTK8noMWlzyMAWNWmVqCuF1aty7ob+YVStyKkKPRztUjgljz
         4bYG5XPahHSb7afTrYHfShelqafnUdunr/io/Z0UCN6pc21NB1xpxHHEsN9RMGryBgny
         hAO7UluB8kq9NeuZHnFUKa7zF56Ou2/LKVrTAc1xIPmUi9QzXmgL9y9uAO5Oe/ifpq2E
         VvXuiprpq49oqT6F7Os07rYahYUGEEQaOjs7b7w8+8c/KMWgYdAANFhJ36GZE5iHORD4
         oAGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QLBnBnvCm/z0B5f5Pa0x/lE2wWk1kVvRq9m9joBOq8g=;
        b=3N9bwR6XxdBevJ3/r4qnrH+piudSCpHQA4hp/rTFSnhVhDgGxV0cQjhxi9OBOkw/C6
         KqiqnvAlrRhWuZE0p8q708DqJFmyC3e0qAEb/Nda90D2VfWxOrlcdIjU34Eb38RIWzWd
         K+oRRBWgAwKngh1qabA0g9YDLNOVdjjft/RyCTPENP5eU7BNa19onZK3/pvdkXPbndoL
         qk6qaclOxHUn5DJoE3Q2u5hmH/Uj2TCdbTnq6efQAttBDEZLk2qfYO1zJCuWZdIi4Kvm
         A5nx61OBar0OG2y3pYMfGg1cF3SO2UEjjQ6m4nd13ItDzchutj2WMGNltiTqJAf+Szgg
         6Tmw==
X-Gm-Message-State: ANoB5pltwztcxqf3QdI44BdbACfOSgG8c3CZ3bylYfVy6TWCzpq+QRK4
        tF6gnM1eOk7fQ0tlOsP5338=
X-Google-Smtp-Source: AA0mqf7FT+HV2E3RwaMxpHrGHlYOcisXphhzIsx0leGDQKWt3uOfMkrV3/s4T61ZhwbNRLMzj7Lh9A==
X-Received: by 2002:a1c:f20e:0:b0:3cf:b690:6a9d with SMTP id s14-20020a1cf20e000000b003cfb6906a9dmr20317127wmc.30.1671058313902;
        Wed, 14 Dec 2022 14:51:53 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h16-20020a05600c415000b003c6b874a0dfsm4776467wmm.14.2022.12.14.14.51.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 14:51:53 -0800 (PST)
Message-ID: <33e324b6-d17b-e831-7707-56889ce38788@gmail.com>
Date:   Wed, 14 Dec 2022 23:51:52 +0100
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
 <75defb3e-bbe4-3b26-980c-22d32f177033@gmail.com>
In-Reply-To: <75defb3e-bbe4-3b26-980c-22d32f177033@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------CmTJxYIiSLPVt0doHwG8pG5e"
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
--------------CmTJxYIiSLPVt0doHwG8pG5e
Content-Type: multipart/mixed; boundary="------------n6j54D4hl4HkXpFDEI63BH3Y";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: gcc@gcc.gnu.org
Cc: linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>
Message-ID: <33e324b6-d17b-e831-7707-56889ce38788@gmail.com>
Subject: Re: [-Wstringop-overflow=] strncat(3)
References: <30a77019-ded0-fe3b-d0db-6c77842674db@gmail.com>
 <75defb3e-bbe4-3b26-980c-22d32f177033@gmail.com>
In-Reply-To: <75defb3e-bbe4-3b26-980c-22d32f177033@gmail.com>

--------------n6j54D4hl4HkXpFDEI63BH3Y
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzE0LzIyIDIzOjUxLCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gDQo+
IA0KPiBPbiAxMi8xNC8yMiAyMzo0NSwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBI
aSwNCj4+DQo+PiBJIHdhcyByZXdyaXRpbmcgdGhlIHN0cm5jYXQoMykgbWFudWFsIHBhZ2Us
IGFuZCB3aGVuIEkgdHJpZWQgdG8gY29tcGlsZSB0aGUgDQo+PiBleGFtcGxlIHByb2dyYW0s
IEkgZ290IGEgc3VycHJpc2UgZnJvbSB0aGUgY29tcGlsZXIuDQo+Pg0KPj4gSGVyZSBnb2Vz
IHRoZSBwYWdlOg0KPj4NCj4+DQo+PiDCoMKgIHN0cm5jYXQoMynCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIExpYnJhcnkgRnVuY3Rpb25zIE1hbnVhbMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHN0cm5jYXQoMykNCj4+DQo+PiDCoMKgIE5BTUUNCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoCBzdHJuY2F0wqAgLcKgIGNvbmNhdGVuYXRlwqAgYcKgIG51bGzigJBwYWRkZWTC
oCBjaGFyYWN0ZXIgc2VxdWVuY2UgaW50byBhDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgc3Ry
aW5nDQo+Pg0KPj4gwqDCoCBMSUJSQVJZDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgU3RhbmRh
cmQgQyBsaWJyYXJ5IChsaWJjLCAtbGMpDQo+Pg0KPj4gwqDCoCBTWU5PUFNJUw0KPj4gwqDC
oMKgwqDCoMKgwqDCoMKgICNpbmNsdWRlIDxzdHJpbmcuaD4NCj4+DQo+PiDCoMKgwqDCoMKg
wqDCoMKgwqAgY2hhciAqc3RybmNhdChjaGFyICpyZXN0cmljdCBkc3QsIGNvbnN0IGNoYXIg
c3JjW3Jlc3RyaWN0IC5zel0sDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgc2l6ZV90IHN6KTsNCj4+DQo+PiDCoMKgIERFU0NSSVBUSU9O
DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgVGhpcyBmdW5jdGlvbiBjYXRlbmF0ZXMgdGhlIGlu
cHV0IGNoYXJhY3RlciBzZXF1ZW5jZSBjb250YWluZWTCoCBpbg0KPj4gwqDCoMKgwqDCoMKg
wqDCoMKgIGHCoCBudWxs4oCQcGFkZGVkwqAgZml4ZWTigJB3aWR0aMKgIGJ1ZmZlcizCoCBp
bnRvwqAgYSBzdHJpbmcgYXQgdGhlIGJ1ZmZlcg0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHBv
aW50ZWQgdG8gYnkgZHN0LsKgIFRoZSBwcm9ncmFtbWVyIGlzIHJlc3BvbnNpYmxlIGZvciBh
bGxvY2F0aW5nIGENCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBidWZmZXIgbGFyZ2UgZW5vdWdo
LCB0aGF0IGlzLCBzdHJsZW4oZHN0KSArIHN0cm5sZW4oc3JjLCBzeikgKyAxLg0KPj4NCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCBBbiBpbXBsZW1lbnRhdGlvbiBvZiB0aGlzIGZ1bmN0aW9u
IG1pZ2h0IGJlOg0KPj4NCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNoYXIgKg0K
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RybmNhdChjaGFyICpyZXN0cmljdCBk
c3QsIGNvbnN0IGNoYXIgKnJlc3RyaWN0IHNyYywgc2l6ZV90IHN6KQ0KPj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgew0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBpbnTCoMKgIGxlbjsNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY2hhcsKgICplbmQ7DQo+Pg0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBsZW4gPSBzdHJubGVuKHNyYywgc3opOw0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBlbmQgPSBkc3QgKyBzdHJsZW4oZHN0KTsNCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW5kID0gbWVtcGNweShlbmQsIHNyYywgbGVuKTsN
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKmVuZCA9ICdcMCc7DQo+
Pg0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gZHN0Ow0K
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQ0KPj4NCj4+IMKgwqAgUkVUVVJOIFZB
TFVFDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgc3RybmNhdCgpIHJldHVybnMgZGVzdC4NCj4+
DQo+PiDCoMKgIEFUVFJJQlVURVMNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBbLi4uXQ0KPj4N
Cj4+IMKgwqAgU1RBTkRBUkRTDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgUE9TSVguMeKAkDIw
MDEsIFBPU0lYLjHigJAyMDA4LCBDODksIEM5OSwgU1ZyNCwgNC4zQlNELg0KPj4NCj4+IMKg
wqAgQ0FWRUFUUw0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIFRoZcKgIG5hbWUgb2YgdGhpcyBm
dW5jdGlvbiBpcyBjb25mdXNpbmcuwqAgVGhpcyBmdW5jdGlvbiBoYXMgbm8gcmXigJANCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCBsYXRpb24gd2l0aCBzdHJuY3B5KDMpLg0KPj4NCj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCBJZiB0aGUgZGVzdGluYXRpb24gYnVmZmVyIGlzIG5vdCBsYXJn
ZSBlbm91Z2gsIHRoZSBiZWhhdmlvciBpcyB1buKAkA0KPj4gwqDCoMKgwqDCoMKgwqDCoMKg
IGRlZmluZWQuwqAgU2VlIF9GT1JUSUZZX1NPVVJDRSBpbiBmZWF0dXJlX3Rlc3RfbWFjcm9z
KDcpLg0KPj4NCj4+IMKgwqAgQlVHUw0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIFRoaXMgZnVu
Y3Rpb27CoCBjYW7CoCBiZcKgIHZlcnnCoCBpbmVmZmljaWVudC7CoMKgIFJlYWTCoCBhYm91
dMKgIFNobGVtaWVsDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgdGhlwqDCoMKgwqDCoMKgIHBh
aW50ZXLCoMKgwqDCoMKgIOKfqGh0dHBzOi8vd3d3LmpvZWxvbnNvZnR3YXJlLmNvbS8yMDAx
LzEyLzExLw0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGJhY2stdG8tYmFzaWNzL+KfqS4NCj4+
DQo+PiDCoMKgIEVYQU1QTEVTDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgI2luY2x1ZGUgPHN0
ZGlvLmg+DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgI2luY2x1ZGUgPHN0ZGxpYi5oPg0KPj4g
wqDCoMKgwqDCoMKgwqDCoMKgICNpbmNsdWRlIDxzdHJpbmcuaD4NCj4+DQo+PiDCoMKgwqDC
oMKgwqDCoMKgwqAgaW50DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgbWFpbih2b2lkKQ0KPj4g
wqDCoMKgwqDCoMKgwqDCoMKgIHsNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNo
YXLCoMKgwqAgYnVmW0JVRlNJWl07DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
aXplX3TCoCBsZW47DQo+Pg0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnVmWzBd
ID0gJ1wwJzvCoCAvLyBUaGVyZeKAmXMgbm8g4oCZY3B54oCZIGZ1bmN0aW9uIHRvIHRoaXMg
4oCZY2F04oCZLg0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RybmNhdChidWYs
ICJIZWxsbyAiLCA2KTsNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cm5jYXQo
YnVmLCAid29ybGQiLCA0Mik7wqAgLy8gUGFkZGluZyBudWxsIGJ5dGVzIGlnbm9yZWQuDQo+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJuY2F0KGJ1ZiwgIiEiLCAxKTsNCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxlbiA9IHN0cmxlbihidWYpOw0KPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHJpbnRmKCJbbGVuID0gJXp1XTogPCVzPlxuIiwg
bGVuLCBidWYpOw0KPj4NCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGV4aXQoRVhJ
VF9TVUNDRVNTKTsNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9DQo+Pg0KPj4gwqDCoCBTRUUg
QUxTTw0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHN0cmluZygzKSwgc3RyaW5nX2NvcHkoMykN
Cj4+DQo+PiDCoMKgIExpbnV4IG1hbuKAkHBhZ2VzICh1bnJlbGVhc2VkKcKgwqDCoMKgwqAg
KGRhdGUpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3Ry
bmNhdCgzKQ0KPj4NCj4+DQo+PiBBbmQgd2hlbiB5b3UgY29tcGlsZSB0aGF0LCB5b3UgZ2V0
Og0KPj4NCj4+ICQgY2MgLVdhbGwgLVdleHRyYSAuL3N0cm5jYXQuYw0KPj4gLi9zdHJuY2F0
LmM6IEluIGZ1bmN0aW9uIOKAmG1haW7igJk6DQo+PiAuL3N0cm5jYXQuYzoxMjoxMjogd2Fy
bmluZzog4oCYc3RybmNhdOKAmSBzcGVjaWZpZWQgYm91bmQgNiBlcXVhbHMgc291cmNlIGxl
bmd0aCANCj4+IFstV3N0cmluZ29wLW92ZXJmbG93PV0NCj4+IMKgwqDCoCAxMiB8wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBzdHJuY2F0KGJ1ZiwgIkhlbGxvICIsIDYpOw0KPj4gwqDCoMKg
wqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn4NCj4+IC4vc3RybmNhdC5jOjE0OjEyOiB3YXJuaW5nOiDigJhzdHJuY2F04oCZIHNwZWNp
ZmllZCBib3VuZCAxIGVxdWFscyBzb3VyY2UgbGVuZ3RoIA0KPj4gWy1Xc3RyaW5nb3Atb3Zl
cmZsb3c9XQ0KPj4gwqDCoMKgIDE0IHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cm5jYXQo
YnVmLCAiISIsIDEpOw0KPj4gwqDCoMKgwqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IF5+fn5+fn5+fn5+fn5+fn5+fn5+DQo+Pg0KPj4NCj4+IFNvLCB3aGF0P8KgIFdoZXJlJ3Mg
dGhlIHByb2JsZW0/wqAgVGhpcyBmdW5jdGlvbiBkb2VzIGV4YWN0bHkgdGhhdDogInRha2Ug
YW4gDQo+PiB1bnRlcm1pbmF0ZWQgY2hhcmFjdGVyIHNlcXVlbmNlIGFuZCBjYXRlbmF0ZSBp
dCB0byBhbiBleGlzdGluZyBzdHJpbmciLsKgIENsYW5nIA0KPj4gc2VlbXMgdG8gYmUgZmlu
ZSB3aXRoIHRoZSBjb2RlLg0KPiANCj4gTWF5YmUgaXQncyBzYXlpbmcgdGhhdCBJIHNob3Vs
ZCBiZSB1c2luZyBzdHJuY2F0KGJ1ZiwgIiEiKTsgYmVjYXVzZSB0aGUgbGVuZ3RoIA0KDQpv
b3BzOyAgb2YgY291cnNlLCBJIG1lYW50IHN0cmNhdCgpLg0KDQo+IGlzIHVzZWxlc3M/DQo+
IA0KPj4NCj4+IENoZWVycywNCj4+DQo+PiBBbGV4DQo+Pg0KPj4NCj4gDQoNCi0tIA0KPGh0
dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------n6j54D4hl4HkXpFDEI63BH3Y--

--------------CmTJxYIiSLPVt0doHwG8pG5e
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOaU4gACgkQnowa+77/
2zKi7Q//Z0AEMg27mqMxNUhG4UC82TBdCQGRdSrwx7rKqINcSLVrz7sMbwJDmdMt
t60jHOosZSD9T0rh5t8Dy/D7V87MAVpQAbPSOlc9GK/ME/ZufdydzBVMpN1lI4G0
zEwr4yQ69ePOeOtGfoXMNiy4WcSVFH0zni27vDGaTGl9NCr50Q4sh/+P9htqCCbN
RZ2h8xz9KbJ9K6Hc6fWB8jfV8zo3gIawTqlFJK8pG7rna9uuKmPboz5ZbOJB5geL
cWngxGt/5S3pWz+LVncMLLQ0CR2q49CLUvlylAQOkxRRoOis5P+iHgzna9neqHTu
L9r+8zDViuja14GSWbqoZktHjMaxcdNw/PUODv/2cziLrMZUUAr6T4wJLZZzeaSI
47lErjRmFrPCIPFVOxmycS/BcokkkXmwv3UGYdvrbXllqkJkR0IpIqkFMa1UcGiK
9Ps2Z/Sksj019HfunZuT/YHN6OiRwxVnvy6nJUbDc7IaDQfnXUPxG3GiiToOmfcu
l8Gg0KlYuDvZb0ZtyXwkzxY0dbtcW9hzTVZYY32PrRL5C9LoifrhZwGIVXmn/I/g
XvpnP9W4tKgJ462cF+a3RogTMY/TVdeFqD6+FB6UGDPfNSPyLNn72iZIsaMac3EJ
FOQiKNB3rYNHl2/O3lGTu0Q1F9Wc/tEMw0+MQvXjz1AWmvPgif8=
=z0R+
-----END PGP SIGNATURE-----

--------------CmTJxYIiSLPVt0doHwG8pG5e--
