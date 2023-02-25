Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC8B56A261D
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 02:10:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229496AbjBYBK1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 20:10:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229491AbjBYBK1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 20:10:27 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DBB52A99D
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 17:10:25 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id fm20-20020a05600c0c1400b003ead37e6588so3470636wmb.5
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 17:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bhKoaAB2C/8JEfB3RzjEKNuUkNFACqhTFZCdmZK5xKU=;
        b=LIsCMpaRQ2bKFSf0f+9iOnr9Dd1CIcAzr6lXl7dxj73Y5r0zW2cUUsWFOK7kQin1Y7
         EHGXHAWHRaN6Fcu09hOFvlJLZyW0mzQQSWJsL3lRVMiGPtFxXdFlw9QMO9ommmxROZB5
         6+QRk48wVnnCg+5uztHBjtnJ7pmGRxttB6ZKkc1B0cGB4mXy9neSPpFyZj3UTvca/kS8
         Wepd48IHNsI2jWdsGMI0N6iQ9wu/JjO7Th/iW0+I0Q0pp/qskUhN2TpAm6Gq5Je576gn
         +dFyHKWPcIDK6JCQmn7zT9hYKTo1RVHNVB3ATCoI6v9LYWUk73JQZ2BpOkEOJ4AxL4j/
         Z1CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bhKoaAB2C/8JEfB3RzjEKNuUkNFACqhTFZCdmZK5xKU=;
        b=SS35TVEJK7D4tQwLx65QmamCJaL1i4Gct+7AGWJLfeFiQCCugEGX3tDa95TZ8nbL0g
         jp00wPHB7sdd8HnPOoYH5mFrupgPYz3oGfRderlEXGbSYfdTlTBaG/Ia3AHoKXjFBG68
         YmJPUM1Uj7faE+ot/Mm8ZN1mQTNmI0z7gkNwH3Dr1eg+52BMmeE1sjflVMoZHNwkBfEn
         SUTRAQVd5ynJxHWDL8qpiAi/qJhw4aWj7kpUJvuq52RUfP/A6QTT2RX+5gAMdg6voFX4
         czTM1H15R7cw0gtCylrQknB2IiFvmXKg4+jQGZo3SXhp0OizDi13vCXWK3n4HchoqOTO
         UcdA==
X-Gm-Message-State: AO0yUKVxICPoY9JW1l8vPfWvg5k+zx0fdnpqHMLSaOUtTTBMLBUcGAva
        w7Koh3XcmDGnvf8sZYdIIQE=
X-Google-Smtp-Source: AK7set9tOBtYho1W/tfmWYXtbWPzzZTdTuWzxRAeWcKE7fdvPgs2WH3lqnFGxO4cea4PsM5ocQ+IxQ==
X-Received: by 2002:a05:600c:1d92:b0:3ea:8ed9:8f03 with SMTP id p18-20020a05600c1d9200b003ea8ed98f03mr5795402wms.24.1677287423975;
        Fri, 24 Feb 2023 17:10:23 -0800 (PST)
Received: from [172.26.3.7] (240.red-88-26-240.staticip.rima-tde.net. [88.26.240.240])
        by smtp.gmail.com with ESMTPSA id e17-20020a05600c219100b003e7f1086660sm4522016wme.15.2023.02.24.17.10.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 17:10:23 -0800 (PST)
Message-ID: <d6b21981-71bc-4906-2adf-79b00df38b73@gmail.com>
Date:   Sat, 25 Feb 2023 02:10:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/3] landlock.7: Document Landlock ABI v2 (file
 reparenting; kernel 5.19)
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, Groff <groff@gnu.org>
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-2-gnoack3000@gmail.com>
 <5495bf9a0580a049bbe5a874c57202ba@mail.infomaniak.com>
 <Y/coag7XQRIRDK0h@galopp>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <Y/coag7XQRIRDK0h@galopp>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------MZQYHwWrrOIHb1nCO6rD6853"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------MZQYHwWrrOIHb1nCO6rD6853
Content-Type: multipart/mixed; boundary="------------W18XVqxkT05dcij20NPUubfJ";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
 =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org,
 Groff <groff@gnu.org>
Message-ID: <d6b21981-71bc-4906-2adf-79b00df38b73@gmail.com>
Subject: Re: [PATCH 2/3] landlock.7: Document Landlock ABI v2 (file
 reparenting; kernel 5.19)
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-2-gnoack3000@gmail.com>
 <5495bf9a0580a049bbe5a874c57202ba@mail.infomaniak.com>
 <Y/coag7XQRIRDK0h@galopp>
In-Reply-To: <Y/coag7XQRIRDK0h@galopp>

--------------W18XVqxkT05dcij20NPUubfJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMi8yMy8yMyAwOTo0OCwgR8O8bnRoZXIgTm9hY2sgd3JvdGU6
DQo+IE9uIFdlZCwgRmViIDIyLCAyMDIzIGF0IDA4OjM2OjM3QU0gKzAxMDAsIE1pY2thw6ts
IFNhbGHDvG4gd3JvdGU6DQo+PiBPbiAyMDIzLTAyLTIxVDIxOjUwOjIyLjAwMCswMTowMCwg
R8O8bnRoZXIgTm9hY2sgd3JvdGU6DQo+Pj4gK1RoZSBhdmFpbGFiaWxpdHkgb2YgaW5kaXZp
ZHVhbCBMYW5kbG9jayBmZWF0dXJlcyBpcyB2ZXJzaW9uZWQgdGhyb3VnaA0KPj4+ICtBQkkg
bGV2ZWxzOg0KPj4+ICsuVFMNCj4+PiArYm94Ow0KPj4+ICtudGJ8IG50YnwgbGJ4DQo+Pj4g
K250fCBudHwgbGJ4Lg0KPj4+ICtBQkkJS2VybmVsCU5ld2x5IGludHJvZHVjZWQgYWNjZXNz
IHJpZ2h0cw0KPj4+ICtfCV8JXw0KPj4+ICsxCTUuMTMJTEFORExPQ0tfQUNDRVNTX0ZTX0VY
RUNVVEUNCj4+PiArXF4JXF4JTEFORExPQ0tfQUNDRVNTX0ZTX1dSSVRFX0ZJTEUNCj4+PiAr
XF4JXF4JTEFORExPQ0tfQUNDRVNTX0ZTX1JFQURfRklMRQ0KPj4+ICtcXglcXglMQU5ETE9D
S19BQ0NFU1NfRlNfUkVBRF9ESVINCj4+PiArXF4JXF4JTEFORExPQ0tfQUNDRVNTX0ZTX1JF
TU9WRV9ESVINCj4+PiArXF4JXF4JTEFORExPQ0tfQUNDRVNTX0ZTX1JFTU9WRV9GSUxFDQo+
Pj4gK1xeCVxeCUxBTkRMT0NLX0FDQ0VTU19GU19NQUtFX0NIQVINCj4+PiArXF4JXF4JTEFO
RExPQ0tfQUNDRVNTX0ZTX01BS0VfRElSDQo+Pj4gK1xeCVxeCUxBTkRMT0NLX0FDQ0VTU19G
U19NQUtFX1JFRw0KPj4+ICtcXglcXglMQU5ETE9DS19BQ0NFU1NfRlNfTUFLRV9TT0NLDQo+
Pj4gK1xeCVxeCUxBTkRMT0NLX0FDQ0VTU19GU19NQUtFX0ZJRk8NCj4+PiArXF4JXF4JTEFO
RExPQ0tfQUNDRVNTX0ZTX01BS0VfQkxPQ0sNCj4+PiArXF4JXF4JTEFORExPQ0tfQUNDRVNT
X0ZTX01BS0VfU1lNDQo+Pj4gK18JXwlfDQo+Pj4gKzIJNS4xOQlMQU5ETE9DS19BQ0NFU1Nf
RlNfUkVGRVINCj4+PiArLlRFDQo+Pj4gKy5QUA0KPj4NCj4+IEEgbGluZSBicmVhayB3b3Vs
ZCBiZSBuaWNlIGhlcmUuDQo+IA0KPiBBZGRlZC4gKFVzZWQgLnNwIDEgZm9yIHRoYXQsIGFz
IGl0IGlzIGFscmVhZHkgdXNlZCBpbiB0aGUNCj4gbW91bnRfbmFtZXNwYWNlcy43LCBpcC43
IGFuZCBvdGhlciBtYW4gcGFnZXMuKQ0KDQpUaGlzIHNvdW5kcyB3ZWlyZCwgYnV0IHRoZXkg
YXJlIHJpZ2h0IHRoYXQgdGhlcmUgc2VlbXMgdG8gYmUgYSBtaXNzaW5nIA0KYmxhbmsgbGlu
ZS4gIENvdWxkIHlvdSBleHBsYWluIHdoeSBpdCdzIGhhcHBlbmluZz8gIEknZCBleHBlY3Qg
dGhlIC5QUCANCnRvIHNlcGFyYXRlIHBhcmFncmFwaHMgd2l0aCBhIGJsYW5rLCByaWdodD8g
IEkgc2VlOg0KDQoNCiAgICAgICAgVGhlICBhdmFpbGFiaWxpdHkgIG9mIGluZGl2aWR1YWwg
TGFuZGxvY2sgZmVhdHVyZXMgaXMgdmVyc2lvbmVkDQogICAgICAgIHRocm91Z2ggQUJJIGxl
dmVsczoNCg0KICAgICAgICDilIzilIDilIDilIDilIDilKzilIDilIDilIDilIDilIDilIDi
lIDilIDilKzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJANCiAgICAg
ICAg4pSCQUJJIOKUgiBLZXJuZWwg4pSCIE5ld2x5IGludHJvZHVjZWQgYWNjZXNzIHJpZ2h0
cyAgICAgICAgICAgICAgICAg4pSCDQogICAgICAgIOKUnOKUgOKUgOKUgOKUgOKUvOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUvOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUpA0KICAgICAgICDilIIgMSAg4pSCICA1LjEzICDilIIgTEFORExPQ0tfQUNDRVNT
X0ZTX0VYRUNVVEUgICAgICAgICAgICAgICAgICAgICDilIINCiAgICAgICAg4pSCICAgIOKU
giAgICAgICAg4pSCIExBTkRMT0NLX0FDQ0VTU19GU19XUklURV9GSUxFICAgICAgICAgICAg
ICAgICAg4pSCDQogICAgICAgIOKUgiAgICDilIIgICAgICAgIOKUgiBMQU5ETE9DS19BQ0NF
U1NfRlNfUkVBRF9GSUxFICAgICAgICAgICAgICAgICAgIOKUgg0KICAgICAgICDilIIgICAg
4pSCICAgICAgICDilIIgTEFORExPQ0tfQUNDRVNTX0ZTX1JFQURfRElSICAgICAgICAgICAg
ICAgICAgICDilIINCiAgICAgICAg4pSCICAgIOKUgiAgICAgICAg4pSCIExBTkRMT0NLX0FD
Q0VTU19GU19SRU1PVkVfRElSICAgICAgICAgICAgICAgICAg4pSCDQogICAgICAgIOKUgiAg
ICDilIIgICAgICAgIOKUgiBMQU5ETE9DS19BQ0NFU1NfRlNfUkVNT1ZFX0ZJTEUgICAgICAg
ICAgICAgICAgIOKUgg0KICAgICAgICDilIIgICAg4pSCICAgICAgICDilIIgTEFORExPQ0tf
QUNDRVNTX0ZTX01BS0VfQ0hBUiAgICAgICAgICAgICAgICAgICDilIINCiAgICAgICAg4pSC
ICAgIOKUgiAgICAgICAg4pSCIExBTkRMT0NLX0FDQ0VTU19GU19NQUtFX0RJUiAgICAgICAg
ICAgICAgICAgICAg4pSCDQogICAgICAgIOKUgiAgICDilIIgICAgICAgIOKUgiBMQU5ETE9D
S19BQ0NFU1NfRlNfTUFLRV9SRUcgICAgICAgICAgICAgICAgICAgIOKUgg0KICAgICAgICDi
lIIgICAg4pSCICAgICAgICDilIIgTEFORExPQ0tfQUNDRVNTX0ZTX01BS0VfU09DSyAgICAg
ICAgICAgICAgICAgICDilIINCiAgICAgICAg4pSCICAgIOKUgiAgICAgICAg4pSCIExBTkRM
T0NLX0FDQ0VTU19GU19NQUtFX0ZJRk8gICAgICAgICAgICAgICAgICAg4pSCDQogICAgICAg
IOKUgiAgICDilIIgICAgICAgIOKUgiBMQU5ETE9DS19BQ0NFU1NfRlNfTUFLRV9CTE9DSyAg
ICAgICAgICAgICAgICAgIOKUgg0KICAgICAgICDilIIgICAg4pSCICAgICAgICDilIIgTEFO
RExPQ0tfQUNDRVNTX0ZTX01BS0VfU1lNICAgICAgICAgICAgICAgICAgICDilIINCiAgICAg
ICAg4pSc4pSA4pSA4pSA4pSA4pS84pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pS84pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSkDQogICAgICAgIOKUgiAyICDilIIg
IDUuMTkgIOKUgiBMQU5ETE9DS19BQ0NFU1NfRlNfUkVGRVIgICAgICAgICAgICAgICAgICAg
ICAgIOKUgg0KICAgICAgICDilJTilIDilIDilIDilIDilLTilIDilIDilIDilIDilIDilIDi
lIDilIDilLTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJgNCiAgICAg
ICAgVG8gcXVlcnkgdGhlIHJ1bm5pbmcga2VybmVsJ3MgTGFuZGxvY2sgQUJJIGxldmVsLCBw
cm9ncmFtcyAgbWF5DQogICAgICAgIHBhc3MgIHRoZSBMQU5ETE9DS19DUkVBVEVfUlVMRVNF
VF9WRVJTSU9OIGZsYWcgdG8gbGFuZGxvY2tfY3Jl4oCQDQogICAgICAgIGF0ZV9ydWxlc2V0
KDIpLg0KDQoNCkNoZWVycywNCg0KQWxleA0KDQo+IA0KPj4+ICtUbyBxdWVyeSB0aGUgcnVu
bmluZyBrZXJuZWwncyBMYW5kbG9jayBBQkkgbGV2ZWwsIHByb2dyYW1zIG1heSBwYXNzDQo+
Pg0KPj4gcy9sZXZlbC92ZXJzaW9uLw0KPiANCj4gVGhhbmtzLCBJJ20gcmVtb3ZpbmcgdGhl
IHdvcmQgImxldmVsIiBoZXJlLg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xv
bWFyLmVzLz4NCkdQRyBrZXkgZmluZ2VycHJpbnQ6IEE5MzQ4NTk0Q0UzMTI4M0E4MjZGQkRE
OEQ1NzYzM0Q0NDFFMjVCQjUNCg0K

--------------W18XVqxkT05dcij20NPUubfJ--

--------------MZQYHwWrrOIHb1nCO6rD6853
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP5X/4ACgkQnowa+77/
2zIYsg/9GmTMy5QqwhJXp0KiGfBFIBTDdnpXD/y6wOGhIAsaYffKdrjqZpP9VtB7
xhgYsuLgfO4WbXxVQM0BUvX1a8NV635E/NBksjI02v9uBvbn/Tg3N3/cGdJmFCO7
SXCEbPZMZi0qhKhGS8Dl6DEWLZs0U+0IWr9LMR4TODue9F6eweAIoHjEgER/wf4V
qrxTt2KRZ7K6gTrqLaLj4kZayRG6kKjR1Ubr6PzxW/OVnreALItqiuPe5HXLsULZ
QR6taILWOD5s881qza+fmAc0EmgVzz/rldWJlB8K0zwbLV8WgKDC1DKqCNcWAKm0
M+k3GKXUMOYb0pEyftgaBCXpjrHfdvpYIMjHzmGc8qrurfdRDIvYYShYrJPl1LuR
yKI7/Ek735T0JwNHBBvrkdslb5a1D+4mpYfoYiIjPdEaKr7ILZv4zQjlOoQR3Udk
1vBRSS0XF8DDvn32zCf+o8jbFlojiwDqY5yNQW9bGK2I5M92W7ev3Eou4Zka4LAs
9fd7DnEqoQmm69egDnM5gPfz1f6CXBGcJSUWEEGOHj4LGHOhZXDe8PhNWmCCEueL
ANERLVPS2W9ixPkVWiDMtP80EJOQurLYLIBMwdR2HGmM+5UrzSc5rwJDWi70PpnE
/AsTCm4Y+Lohu6uGpzGKv3xRZTUWYu4sIjeixWc2iWsB2uP1UgY=
=WbZE
-----END PGP SIGNATURE-----

--------------MZQYHwWrrOIHb1nCO6rD6853--
