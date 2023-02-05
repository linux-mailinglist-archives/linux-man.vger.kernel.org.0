Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B8D668B09D
	for <lists+linux-man@lfdr.de>; Sun,  5 Feb 2023 16:39:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229761AbjBEPjz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 10:39:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjBEPjy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 10:39:54 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3D152D4D
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 07:39:52 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id az4-20020a05600c600400b003dff767a1f1so1814523wmb.2
        for <linux-man@vger.kernel.org>; Sun, 05 Feb 2023 07:39:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pygu03r+zPmtB0bFX387whziwZ2/CI3MfHiBpAIzep8=;
        b=h8uBppBcBlNBy+luaV/jXTAhlMZc0ngDjFM6KmX5MV36BwEJMMs5IXqAJt6bUjFcOM
         E32z4Nw7xuQpPaZQdHqpNMMG5eRbuKqXNJ4KmNulo2va3CwW84yGpjs77DBWD+FOi2qa
         PHQM3yEaVV/EWl/Dcx8CR4QfZlNVXLgCqiwQdiCt007F9yFP4B9C6vPXpgobQuDa3V15
         VnUFp3UyODDeIOrHnzEEO4m8FmI4zoyrLXL7TAgrMbUkwBo89loYsIkzx7fH3LCBY+6t
         ZIZOqfYeyOosmIVsrgeBpTatBzsfFilSRSpTOvdVRswsameW2+JTEAkZoxkQkCQVsNuT
         F5Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pygu03r+zPmtB0bFX387whziwZ2/CI3MfHiBpAIzep8=;
        b=wL2vjEiLRxfOdUCdDNSkz6Iz+4nPZ/MJ+fVDELLkXtVRLNiI9BLgv5vxmWmDN/W+kv
         V4eqTVtAoASyZ9VojcuZ6msN744EBjGDkrfCDqHXW5pna/1SSuLeFTaPgwzImdHh9BPt
         i9agOZEr8fbkVeUngARBkDK4ECzJjYJjJqWq6j13mTTWbDFrJ7Va2EuEdlQeOxItGTC6
         HN4HJnCbKYxjscqSyHsUePTGp6DYJSSzymLmsSbGV5coRMbrbb5Ra9Cls47sP3JytfdZ
         Jmtz3z36MuQTQ8JewXPvVG8U5eBJu9l1mRh57ZvxDekmTrTqY/mBeumpPnIX15qI4XKq
         XVFQ==
X-Gm-Message-State: AO0yUKVkIgUGhrkXPobsuQJvYdB9d4CCPd8rBwOIiQ4Fk+UJQBghsQna
        +9pojbqJfPfoUPVmAkkP7aZORrOHexU=
X-Google-Smtp-Source: AK7set/bM5VBAVKV4gTdHxikRTjfP5V8CZwzqVK6fHhjSrLcmyERY55Pi0wS0Yt7W0yALWgFXHPutw==
X-Received: by 2002:a7b:ce99:0:b0:3dc:5950:b358 with SMTP id q25-20020a7bce99000000b003dc5950b358mr17973111wmj.14.1675611591093;
        Sun, 05 Feb 2023 07:39:51 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id u2-20020a7bc042000000b003dd8feea827sm13265082wmc.4.2023.02.05.07.39.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Feb 2023 07:39:50 -0800 (PST)
Message-ID: <d405a259-1c15-eded-5cda-7852c223b43a@gmail.com>
Date:   Sun, 5 Feb 2023 16:39:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 1/3] timespec.3type: tv_nsec is impl-def-type, glibc
 llong not a bug
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
References: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
 <cfda064c-b3f0-d541-bbee-e3a72c0b3cf3@gmail.com>
 <20230130070838.5mgjdbrfhtlww5t7@jwilk.net>
 <34f497d7-7aba-84b6-c9b8-1d8bbcf183e5@gmail.com>
 <20230130183835.majak2kl4acc7djn@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230130183835.majak2kl4acc7djn@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0BGvD53d0D9SbO8YK2DejrwO"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0BGvD53d0D9SbO8YK2DejrwO
Content-Type: multipart/mixed; boundary="------------v4Q7eHq01OftLix2vdJgzGCq";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Message-ID: <d405a259-1c15-eded-5cda-7852c223b43a@gmail.com>
Subject: Re: [PATCH v3 1/3] timespec.3type: tv_nsec is impl-def-type, glibc
 llong not a bug
References: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
 <cfda064c-b3f0-d541-bbee-e3a72c0b3cf3@gmail.com>
 <20230130070838.5mgjdbrfhtlww5t7@jwilk.net>
 <34f497d7-7aba-84b6-c9b8-1d8bbcf183e5@gmail.com>
 <20230130183835.majak2kl4acc7djn@tarta.nabijaczleweli.xyz>
In-Reply-To: <20230130183835.majak2kl4acc7djn@tarta.nabijaczleweli.xyz>

--------------v4Q7eHq01OftLix2vdJgzGCq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDEvMzAvMjMgMTk6MzgsINC90LDQsSB3cm90ZToNCj4gSGkhDQo+IA0KPiBP
biBNb24sIEphbiAzMCwgMjAyMyBhdCAwMjoxNTo1MFBNICswMTAwLCBBbGVqYW5kcm8gQ29s
b21hciB3cm90ZToNCj4+PiBQbGVhc2UgbWFrZSBpdA0KPj4+DQo+Pj4gICDCoCAvKiBzZWUg
YmVsb3cgKi8gdHZfbnNlYw0KPj4+DQo+Pj4gb3IgbWF5YmUNCj4+Pg0KPj4+ICAgwqAgbG9u
ZyAvKiBidXQgc2VlIGJlbG93ICovIHR2X25zZWMNCj4+Pg0KPj4+IChnaXZlbiB0aGF0IEMy
MyBpcyBub3QgYSB0aGluZyB5ZXQpLg0KPj4gVGhlIHJlYXNvbiB3aHkgSSBzZXJpb3VzbHkg
Y29uc2lkZXJlZCAvKuKGkyovIGlzIHRoYXQgaXQgaXMgYSBiaXQgc2hvY2tpbmcgdG8NCj4+
IHRoZSByZWFkZXIsIHdoaWNoIHdpbGwgcHJvbXB0IGl0IHRvIHJlYWQgdGhlIHJlc3Qgb2Yg
dGhlIHBhZ2UgdG8gc2VlIHdoYXQNCj4+IHRoZSBoZWxsIHRoYXQgaXMuDQo+Pg0KPj4gSSdt
IHdvcnJpZWQgdGhhdCBpZiB3ZSBtYWtlIGl0IGBsb25nYCBwbHVzIGEgY29tbWVudCB0byBz
ZWUgYmVsb3csIG1hbnkgd2lsbA0KPj4gaWdub3JlIGl0Lg0KPj4NCj4+IC8qIHNlZSBiZWxv
dyAqLyB3aXRoIG5vIG1lbnRpb25zIHRvIGBsb25nYCBtaWdodCBiZSBhIHJlYXNvbmFibGUN
Cj4+IGFsdGVybmF0aXZlLiBNYXliZSBJJ2QgdXNlIC8qIC4uLiAqLw0KPj4NCj4+IFdoYXQg
ZG8geSdhbGwgdGhpbmsgYWJvdXQgaXQ/DQo+IFllYWgsIGVsbGlwc2lzIGluc3RlYWQgb2Yg
dGhlIGFycm93IGlzIGVkaXRvcmlhbCBJTU8sDQo+IGFuZCBJIGFncmVlIHdpdGggdGhlIGNv
bnNlcXVlbmNlcyBvZiBtYWtpbmcgaXQgdHlwZSAvKiBjb21tZW50ICovOw0KPiBJIGRpZG4n
dCB3YW50IHRvIGdvIGZ1bGwgc2VlIGJlbG93IG9uIGl0IGJlY2F1c2UgdGhlcmUncyB0aHJl
ZSBzZW50ZW5jZXMNCj4gb24gdGhlIHBhZ2UsIGFuZCBpdCdkIGluZmxhdGUgdGhlIHR5cGUg
d2lkdGggaW4gdGhlIFNZTk9QU0lTIGNvbnNpZGVyYWJseS4NCj4gDQo+IFdlIGFscmVhZHkg
dXNlIC8qIC4uLiAqLyBmb3IgImNvbmNyZXRlIHVuc3BlY2lmaWVkIHR5cGUiIGVsc2V3aGVy
ZTsNCj4gdjMgb2YgMS8zIGJlbG93Lg0KPiANCj4gQmVzdCwNCj4gLS0gPjggLS0NCj4gbjMw
OTEgYWNjZXB0cyBuMzA2NiwgbWFraW5nIGl0IHBhcnQgb2YgdGhlIG5leHQgd29ya2luZyBk
cmFmdCBhbmQgQzIzOg0KPiAgICBodHRwczovL3d3dy5vcGVuLXN0ZC5vcmcvanRjMS9zYzIy
L3dnMTQvd3d3L2RvY3MvbjMwOTEuZG9jDQo+IA0KPiBVcGRhdGUgdGltZXNwZWMuM3R5cGUg
YXBwcm9wcmlhdGVseSwgbGFyZ2VseSBtaXJyb3JpbmcgbXkgcGFwZXIuDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBBaGVsZW5pYSBaaWVtaWHFhHNrYSA8bmFiaWphY3psZXdlbGlAbmFiaWph
Y3psZXdlbGkueHl6Pg0KDQpJJ2xsIGFwcGx5IHRoZSBmb2xsb3dpbmcgZGlmZiB0byB5b3Vy
IHBhdGNoLCBpZiB5b3UgYWdyZWU6DQoNCmRpZmYgLS1naXQgYS9tYW4zdHlwZS90aW1lc3Bl
Yy4zdHlwZSBiL21hbjN0eXBlL3RpbWVzcGVjLjN0eXBlDQppbmRleCA5YjllMDgzYmIuLmMz
YzY5Y2ZkMiAxMDA2NDQNCi0tLSBhL21hbjN0eXBlL3RpbWVzcGVjLjN0eXBlDQorKysgYi9t
YW4zdHlwZS90aW1lc3BlYy4zdHlwZQ0KQEAgLTE2LDcgKzE2LDggQEAgLlNIIFNZTk9QU0lT
DQogIC5QUA0KICAuQiBzdHJ1Y3QgdGltZXNwZWMgew0KICAuQlIgIiAgICB0aW1lX3QgICAg
IHR2X3NlYzsiICIgICAvKiBTZWNvbmRzICovIg0KLS5CUiAiICAgIC8qIC4uLiAqLyAgdHZf
bnNlYzsiICIgIC8qIE5hbm9zZWNvbmRzIFsiIDAgIiwgIiA5OTlcKGFxOTk5XChhcTk5OSAi
XSAqLyINCisuUkIgIiAgICAvKiAuLi4gKi8iICIgIHR2X25zZWM7IiBcDQorIiAgLyogTmFu
b3NlY29uZHMgWyIgMCAiLCAiIDk5OVxbYXFdOTk5XFthcV05OTkgIl0gKi8iDQogIC5CIH07
DQogIC5FRQ0KICAuU0ggREVTQ1JJUFRJT04NCg0KDQpUaGUgLyogLi4uICovIHNob3VsZCBu
b3QgYmUgZm9ybWF0dGVkLCBzaW5jZSBpdCdzIG5vdCBhIGxpdGVyYWwgKGlmIHlvdSBmb3Vu
ZCBpdCANCmZvcm1hdHRlZCBhbnl3aGVyZSwgdGhhdCdzIGEgYnVnOyBwbGVhc2UgcmVwb3J0
KS4NClwoYXEgZm9yIGEgc2VwYXJhdG9yIGluIG51bWJlcnMgaHVydHMgKHNvdXJjZSkgcmVh
ZGFiaWxpdHkgd2hlbiB1c2VkIGluIGhleCANCm51bWJlcnMsIHNvIEkgcHJlZmVyIHVzaW5n
IFxbYXFdIGV2ZXJ5d2hlcmUgKEknbGwgZG8gYSBnbG9iYWwgZml4IHNvb24pLg0KDQoNCkNo
ZWVycywNCg0KQWxleA0KDQoNCj4gLS0tDQo+ICAgbWFuM3R5cGUvdGltZXNwZWMuM3R5cGUg
fCA0OSArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAzMyBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9tYW4zdHlwZS90aW1lc3BlYy4zdHlwZSBiL21hbjN0eXBlL3RpbWVz
cGVjLjN0eXBlDQo+IGluZGV4IDdjZDgwY2U4Ni4uOWI5ZTA4M2JiIDEwMDY0NA0KPiAtLS0g
YS9tYW4zdHlwZS90aW1lc3BlYy4zdHlwZQ0KPiArKysgYi9tYW4zdHlwZS90aW1lc3BlYy4z
dHlwZQ0KPiBAQCAtMTUsMTUgKzE1LDI5IEBAIFN0YW5kYXJkIEMgbGlicmFyeQ0KPiAgIC5C
ICNpbmNsdWRlIDx0aW1lLmg+DQo+ICAgLlBQDQo+ICAgLkIgc3RydWN0IHRpbWVzcGVjIHsN
Cj4gLS5CUiAiICAgIHRpbWVfdCAgdHZfc2VjOyIgIiAgIC8qIFNlY29uZHMgKi8iDQo+IC0u
QlIgIiAgICBsb25nICAgIHR2X25zZWM7IiAiICAvKiBOYW5vc2Vjb25kcyBbIiAwICIsICIg
OTk5OTk5OTk5ICJdICovIg0KPiArLkJSICIgICAgdGltZV90ICAgICB0dl9zZWM7IiAiICAg
LyogU2Vjb25kcyAqLyINCj4gKy5CUiAiICAgIC8qIC4uLiAqLyAgdHZfbnNlYzsiICIgIC8q
IE5hbm9zZWNvbmRzIFsiIDAgIiwgIiA5OTlcKGFxOTk5XChhcTk5OSAiXSAqLyINCj4gICAu
QiB9Ow0KPiAgIC5FRQ0KPiAgIC5TSCBERVNDUklQVElPTg0KPiAgIERlc2NyaWJlcyB0aW1l
cyBpbiBzZWNvbmRzIGFuZCBuYW5vc2Vjb25kcy4NCj4gKy5QUA0KPiArLkkgdHZfbnNlYw0K
PiAraXMgb2YgYW4gaW1wbGVtZW50YXRpb24tZGVmaW5lZCBzaWduZWQgdHlwZSBjYXBhYmxl
IG9mIGhvbGRpbmcgdGhlIHNwZWNpZmllZCByYW5nZS4NCj4gK1VuZGVyIGdsaWJjLCB0aGlz
IGlzIHVzdWFsbHkNCj4gKy5JUiBsb25nICwNCj4gK2FuZA0KPiArLkkgbG9uZyBsb25nDQo+
ICtvbiBYMzIuDQo+ICtJdCBjYW4gYmUgc2FmZWx5IGRvd24tY2FzdCB0byBhbnkgY29uY3Jl
dGUgMzItYml0IGludGVnZXIgdHlwZSBmb3IgcHJvY2Vzc2luZy4NCj4gICAuU0ggU1RBTkRB
UkRTDQo+ICAgQzExIGFuZCBsYXRlcjsNCj4gICBQT1NJWC4xLTIwMDEgYW5kIGxhdGVyLg0K
PiArLlNIIFZFUlNJT05TDQo+ICtQcmlvciB0byBDMjMsDQo+ICsuSSB0dl9uc2VjDQo+ICt3
YXMNCj4gKy5JUiBsb25nIC4NCj4gICAuU0ggTk9URVMNCj4gICBUaGUgZm9sbG93aW5nIGhl
YWRlcnMgYWxzbyBwcm92aWRlIHRoaXMgdHlwZToNCj4gICAuSVIgPGFpby5oPiAsDQo+IEBA
IC0zMywzNyArNDcsNiBAQCBUaGUgZm9sbG93aW5nIGhlYWRlcnMgYWxzbyBwcm92aWRlIHRo
aXMgdHlwZToNCj4gICAuSVIgPHN5cy9zZWxlY3QuaD4gLA0KPiAgIGFuZA0KPiAgIC5JUiA8
c3lzL3N0YXQuaD4gLg0KPiAtLlNIIEJVR1MNCj4gLVVuZGVyIGdsaWJjLA0KPiAtLkkgdHZf
bnNlYw0KPiAtaXMgdGhlDQo+IC0uSSBzeXNjYWxsDQo+IC1sb25nLA0KPiAtdGhvdWdoIHRo
aXMgYWZmZWN0cyBvbmx5IGZyaW5nZSBhcmNoaXRlY3R1cmVzIGxpa2UgWDMyLA0KPiAtd2hp
Y2ggaXMgSUxQMzIsIGJ1dCB1c2VzIHRoZSBMUDY0IEFNRDY0IHN5c2NhbGwgQUJJLg0KPiAt
SW4gcmVhbGl0eSwgdGhlIGZpZWxkIGVuZHMgdXAgYmVpbmcgZGVmaW5lZCBhczoNCj4gLS5Q
UA0KPiAtLmluICs0bg0KPiAtLkVYDQo+IC0jaWYgX194ODZfNjRfXyAmJiBfX0lMUDMyX18g
IC8qID09IHgzMiAqLw0KPiAtICAgIGxvbmcgbG9uZyAgdHZfbnNlYzsNCj4gLSNlbHNlDQo+
IC0gICAgbG9uZyAgICAgICB0dl9uc2VjOw0KPiAtI2VuZGlmDQo+IC0uRUUNCj4gLS5pbg0K
PiAtLlBQDQo+IC1UaGlzIGlzIGEgbG9uZy1zdGFuZGluZyBhbmQgbG9uZy1lbnNocmluZWQg
Z2xpYmMgYnVnDQo+IC0uVVIgaHR0cHM6Ly9zb3VyY2V3YXJlLm9yZy9idWd6aWxsYS9zaG93
X2J1Zy5jZ2k/aWQ9MTY0MzcNCj4gLS5JICMxNjQzNw0KPiAtLlVFICwNCj4gLWFuZCBhbiBp
bmNvbXBhdGlibGUgZXh0ZW5zaW9uIHRvIHRoZSBzdGFuZGFyZHM7DQo+IC1ob3dldmVyLCBh
cyBldmVuIGEgMzItYml0DQo+IC0uSSBsb25nDQo+IC1jYW4gaG9sZCB0aGUgZW50aXJlDQo+
IC0uSSB0dl9uc2VjDQo+IC1yYW5nZSwNCj4gLWl0J3MgYWx3YXlzIHNhZmUgdG8gZm9yY2li
bHkgZG93bi1jYXN0IGl0IHRvIHRoZSBzdGFuZGFyZCB0eXBlLg0KPiAgIC5TSCBTRUUgQUxT
Tw0KPiAgIC5CUiBjbG9ja19nZXR0aW1lICgyKSwNCj4gICAuQlIgY2xvY2tfbmFub3NsZWVw
ICgyKSwNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQpHUEcg
a2V5IGZpbmdlcnByaW50OiBBOTM0ODU5NENFMzEyODNBODI2RkJERDhENTc2MzNENDQxRTI1
QkI1DQo=

--------------v4Q7eHq01OftLix2vdJgzGCq--

--------------0BGvD53d0D9SbO8YK2DejrwO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPfzcUACgkQnowa+77/
2zLhqg/+NDokqGg68b+QPGMvcgiQ1CHBPZ+EfPYcv+Kns8F2C3hDE6WLecRDKIwk
Qz3Q42LJW31nSFrZ0Bu2SzmI3LJ5+m329gWkChFSyySegVXj1V5yAiarz8UlnqQH
rcqvSBDpsmabYd8l7831W/PIvvhME8TSwHw62XwuaXRlyeegeJR3mwT4LOpUB15D
REWDlNuBK4FGfjaiIk7dE4Tu/pIn38f7jrzygEdYlbQONaqX2kiJEc1N+YbE/toE
Xx8PaTaJFtRkxiBiYw+++STshbrlgpt8oBL7oGP8zH3uPSNWeHyPspZ8bgq2rL2G
UiWfzx/mzb349WrtLNkJ1OlCZ2ia8G+sOkkjTnNHIE6eP8iP2ptqJfZvckjyo23A
BjQwa24V71p8zlrczMl4MMuxHJxX+W/Fr0oXJCXevdn8z+zJVbqtV23Cs4Sn3qTQ
GOsvvQNKUSXdiSe+8wNj+d+dsJT5BiV+hSMP61gsOFFjPlp+V5NzRzY0XW/kfpoE
fUz1ZiU1a8luHwOTVV7T/VZ5OGISuO0acaO/dwemwYZrCSs7E7v0sHvYDi0kuD+k
rWi+3X1s0RvYcpHO8GwpVaRFUB5gS0Yzd/TWwvcj1N6qlNzmM25/5Dd8P2TJ3hwO
0kxPesYn1n79zrsOCTCTm26ybAG7rq8X2KxlRgD/8iKwsujiuFo=
=O6YN
-----END PGP SIGNATURE-----

--------------0BGvD53d0D9SbO8YK2DejrwO--
