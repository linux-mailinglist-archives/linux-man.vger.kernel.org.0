Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 621C754CF28
	for <lists+linux-man@lfdr.de>; Wed, 15 Jun 2022 18:59:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349876AbiFOQ7S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Jun 2022 12:59:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349729AbiFOQ7R (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Jun 2022 12:59:17 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 714E52E084
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 09:59:16 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id p6-20020a05600c1d8600b0039c630b8d96so2337880wms.1
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 09:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=AWNCwoSfSFdBHUNM4BrabQkAk4Wub256rfyWwKtaoZw=;
        b=BY0Z4SRFb+OssSO+PH8NjdMkXa89UEc0cjGy8DLWIYer02ZpO6V12yDFtikm6riOQ1
         ferth0nKs8U1/0rKcYtGxlx8aNlU9/5zoIy/zSXl4bMGMONZXiiCYh60pTcL9ifKx5lY
         lR3fSgwB3MH8/F+F5toyMQmTU0+KjHU5whhT1dKlMvl4tahg+t9b6hqhZGKHsbAODDae
         D8F8YxDXqZivSdGVsEJYdtiLf4YwGSIoBKS05pQzSa0fZ6E8SzqRGoIPXMPzJO/ND+Xt
         4LSl2jkiwnGlWFFG9Rsj8hc9i7ZQJW6e/dUzatF1JHflBxH5FP3dEiDIaVHl/2tdJ8ve
         Sjqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=AWNCwoSfSFdBHUNM4BrabQkAk4Wub256rfyWwKtaoZw=;
        b=Gr4NgmifE0j45LqFpgxSakmvPCJpZAPGRXpPUWZ9tLE25RueaTXBHKh9XVSi+IHbHx
         bbosNfNNUtYm9KktF0DlAplgH5m7dMjUthauGzHMZcb9VghcquO5I4f1EQEPL5cg9r5m
         3aQKDaU4rshwzvQiwK8iE9rhTODc3P10d3YiE/m27VpbiGlAmah5YSlrUx2Keg9e570z
         b0CxHOa9/ct5ZMyzb8yMliZOo8jfENCQJaTs1Cve6KGMsWhheOeblE/ziAWU5lPcCxZQ
         2+N1OHMMNFZI6zBecLySV4/zSn9BhTYkN/pzybKuDe/+1XQY7rKciOnR8YHK8BG8CFUq
         kUBg==
X-Gm-Message-State: AJIora/LymYeYu2bWQXdRfJh+jn8V1VxQ+Nv36vgqHT4OlU7nQyvT00v
        UAOLft25wqJizfKkb8hLA5Odb6rIhvc=
X-Google-Smtp-Source: AGRyM1ut5+zTOsx4NkhqBZyOzcs1fhPmqvL6gOwa63sE/yR0CM+yJ2LSZKhWt9gftOJuW4N0cw7Tug==
X-Received: by 2002:a1c:7418:0:b0:39c:6ead:321c with SMTP id p24-20020a1c7418000000b0039c6ead321cmr364084wmc.171.1655312354953;
        Wed, 15 Jun 2022 09:59:14 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f2-20020adfb602000000b002185c6dc5b1sm17272964wre.108.2022.06.15.09.59.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 09:59:14 -0700 (PDT)
Message-ID: <4942cebd-d1ef-ef0f-077c-627812ebd5be@gmail.com>
Date:   Wed, 15 Jun 2022 18:59:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 2/2] uname.2: deweirdify
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <b0a8b39b-f05f-7809-c8a4-f4f84821770d@gmail.com>
 <96a6e5b49d12963b8c5bfbc93dc5e9fb40226562.1655311141.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <96a6e5b49d12963b8c5bfbc93dc5e9fb40226562.1655311141.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0fmqYQZCuGb09eEXty7jgXmG"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0fmqYQZCuGb09eEXty7jgXmG
Content-Type: multipart/mixed; boundary="------------w4pTqXDhaRzkXzmWuDMXmE0O";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <4942cebd-d1ef-ef0f-077c-627812ebd5be@gmail.com>
Subject: Re: [PATCH v2 2/2] uname.2: deweirdify
References: <b0a8b39b-f05f-7809-c8a4-f4f84821770d@gmail.com>
 <96a6e5b49d12963b8c5bfbc93dc5e9fb40226562.1655311141.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <96a6e5b49d12963b8c5bfbc93dc5e9fb40226562.1655311141.git.nabijaczleweli@nabijaczleweli.xyz>

--------------w4pTqXDhaRzkXzmWuDMXmE0O
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNi8xNS8yMiAxODozOSwg0L3QsNCxIHdyb3RlOg0KPiBUaGUgTk9URVMgd2VyZSBub3Qg
b25seSB3ZWlyZGx5IHJlZHVjdGlvbmlzdCwgYnV0IGFsc28gaGlnaGx5DQo+IG9waW5pb25h
dGVkIGluIHRoZSB3cm9uZyBkaXJlY3Rpb24uDQo+IA0KPiBZZXMsIGl0J3MgYSBzeXNjYWxs
IGluIFN5c0lJSTsgbm90IGluIDQuNEJTRC4NCj4gV2VsbCwgaW4gZ2VuZXJhbCwgaXQgZXhp
c3RzIGluIDQuNEJTRCBmb3Igb2J2aW91cyBjb25mb3JtYWNlIHJlYXNvbnMuDQo+IE5vLCBp
dCBkb2Vzbid0ICJrbm93IiAoYW5kIGlmIGl0IGRvZXMsIHRoYXQncyBub3QgcmVsZXZhbnQp
LA0KPiBoaXN0b3JpY2FsbHkgYW5kIHByYWN0aWNhbGx5IHRoaXMgaXMgdGhlIGJyb2FkIENQ
VS9tYWNoaW5lIHR5cGUNCj4gKGNvbXBhcmUgdW5hbWUgLXAgb24gU3lzVnI0ICg9PiBTdW5P
UyA1ID0+IE5ldEJTRCksDQo+ICAgd2hpY2ggaXMgdGhlIGFjdHVhbCBDUFUgbW9kZWwgKHVz
dWFsbHkpKS4NCj4gRXZlcnl3aGVyZSwgZXguIGRlZi4sIHRoZSBub2RlbmFtZSBpcyB3aGF0
IHRoZSBCU0QgY2FsbHMgdGhlIGhvc3RuYW1lLg0KPiAiTm8gc3RhbmRhcmQiIGFsc28gc3Bl
YWtzIG9mIHNldGhvc3RuYW1lKCksIHNvLg0KPiBIaXN0b3JpY2FsIHByZWNlZGVudCAoaS5l
LiBhbGwgaW1wbGVtZW50YXRpb25zLCBzYXZlICptYXliZSogZm9yIHdlaXJkbw0KPiBYRU5J
WCwgd2hvIGNhcmVzIGFib3V0IHdlaXJkbyBYRU5JWCkgZGVmaW5lcyB0aGUgaG9zdG5hbWUg
dG8gYmUgdW5hbWUgLW4NCj4gKGluZGVlZCwgU1ZyMyB1bmFtZSAtUyBzZXRzIC9ib3RoLyBu
b2RlbmFtZSAvYW5kLyBzeXNuYW1lIQ0KPiAgIHRoYXQncyBub3QgcmVsZXZhbnQgaGVyZTsN
Cj4gICBTdW5PUyBnZXRzIGl0IGZyb20gdGhlIG5ldHdvcmsgKHVubGVzcyBjb25maWd1cmVk
IG1hbnVhbGx5KSkuDQo+IFNvbWVvbmUgY2xlYXJseSBjaXRlZCBTeXNWcjQncyAiSW50ZXJu
ZXQgaG9zdG5hbWVzIiBjb21tZW50IHcvbyBjcmVkaXQ7DQo+IGZpeCB0aGF0Lg0KPiA4LWJ5
dGUgdHJ1bmNhdGlvbiBpcyByZWFsbHkgcXVpdGUgc2Vjb25kYXJ5IGhlcmUgKGluZGVlZCwg
dGhhdCdzIHdoYXQNCj4gICBTeXNWcjQgZG9lcyBmb3IgcHJlLVN5c1ZyNCB1bmFtZSgpIGNh
bGxlcnMgdGhhdCBoYXZlbid0IGJlZW4gcmVidWlsdC4NCj4gICB5b3Ugd2lsbCBuZXZlciBl
bmNvdW50ZXIgaXQpLg0KPiBUaGUgaG9zdG5hbWUgaXMgbm90IG1lYW5pbmdsZXNzLCBvYnZp
b3VzbHk/Pw0KPiBBbHNvIGZpeCBtYWNoaW5lIHRvIHNheSAiaGFyZHdhcmUgdHlwZSIsIGxp
a2UgdGhlIHN0YW5kYXJkOw0KPiAiaGFyZHdhcmUgaWRlbnRpZmllciIgd291bGQgYmUgaG9z
dGlkLiBJIHdyb3RlIHNpeCBzZWV0aGluZyBwYWdlcyBhYm91dA0KPiBob3N0aWQsIGFuZCBt
YWNoaW5lIGlzIC9ub3QvIGhvc3RpZC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFoZWxlbmlh
IFppZW1pYcWEc2thIDxuYWJpamFjemxld2VsaUBuYWJpamFjemxld2VsaS54eXo+DQoNCkJv
dGggcGF0Y2hlcyBhcHBsaWVkLg0KDQpUaGFua3MhDQoNCkFsZXgNCg0KPiAtLS0NCj4gICBt
YW4yL3VuYW1lLjIgfCA0OSArKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDM3
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjIvdW5hbWUuMiBiL21hbjIv
dW5hbWUuMg0KPiBpbmRleCBmYTk5MWVkZmMuLmIwZGE2MjcwYiAxMDA2NDQNCj4gLS0tIGEv
bWFuMi91bmFtZS4yDQo+ICsrKyBiL21hbjIvdW5hbWUuMg0KPiBAQCAtMzQsNyArMzQsNyBA
QCBzdHJ1Y3QgdXRzbmFtZSB7DQo+ICAgICAgIGNoYXIgcmVsZWFzZVtdOyAgICAvKiBPcGVy
YXRpbmcgc3lzdGVtIHJlbGVhc2UNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgIChl
LmcuLCAiMi42LjI4IikgKi8NCj4gICAgICAgY2hhciB2ZXJzaW9uW107ICAgIC8qIE9wZXJh
dGluZyBzeXN0ZW0gdmVyc2lvbiAqLw0KPiAtICAgIGNoYXIgbWFjaGluZVtdOyAgICAvKiBI
YXJkd2FyZSBpZGVudGlmaWVyICovDQo+ICsgICAgY2hhciBtYWNoaW5lW107ICAgIC8qIEhh
cmR3YXJlIHR5cGUgaWRlbnRpZmllciAqLw0KPiAgICNpZmRlZiBfR05VX1NPVVJDRQ0KPiAg
ICAgICBjaGFyIGRvbWFpbm5hbWVbXTsgLyogTklTIG9yIFlQIGRvbWFpbiBuYW1lICovDQo+
ICAgI2VuZGlmDQo+IEBAIC01Nyw0OSArNTcsMjMgQEAgaXMgc2V0IHRvIGluZGljYXRlIHRo
ZSBlcnJvci4NCj4gICAuSSBidWYNCj4gICBpcyBub3QgdmFsaWQuDQo+ICAgLlNIIENPTkZP
Uk1JTkcgVE8NCj4gLVBPU0lYLjEtMjAwMSwgUE9TSVguMS0yMDA4LCBTVnI0Lg0KPiAtVGhl
cmUgaXMgbm8NCj4gLS5CUiB1bmFtZSAoKQ0KPiAtY2FsbCBpbiA0LjNCU0QuDQo+ICtQT1NJ
WC4xLTIwMDEsIFBPU0lYLjEtMjAwOCwgU1ZyNCwgNC40QlNELg0KPiAgIC5QUA0KPiAgIFRo
ZQ0KPiAgIC5JIGRvbWFpbm5hbWUNCj4gICBtZW1iZXIgKHRoZSBOSVMgb3IgWVAgZG9tYWlu
IG5hbWUpIGlzIGEgR05VIGV4dGVuc2lvbi4NCj4gICAuU0ggTk9URVMNCj4gLVRoaXMgaXMg
YSBzeXN0ZW0gY2FsbCwgYW5kIHRoZSBvcGVyYXRpbmcgc3lzdGVtIHByZXN1bWFibHkga25v
d3MNCj4gLWl0cyBuYW1lLCByZWxlYXNlLCBhbmQgdmVyc2lvbi4NCj4gLUl0IGFsc28ga25v
d3Mgd2hhdCBoYXJkd2FyZSBpdCBydW5zIG9uLg0KPiAtU28sIGZvdXIgb2YgdGhlIGZpZWxk
cyBvZiB0aGUgc3RydWN0IGFyZSBtZWFuaW5nZnVsLg0KPiAtT24gdGhlIG90aGVyIGhhbmQs
IHRoZSBmaWVsZA0KPiArVGhlIGtlcm5lbCBoYXMgdGhlIG5hbWUsIHJlbGVhc2UsIHZlcnNp
b24sIGFuZCBzdXBwb3J0ZWQgbWFjaGluZSB0eXBlIGJ1aWx0IGluLg0KPiArQ29udmVyc2Vs
eSwgdGhlDQo+ICAgLkkgbm9kZW5hbWUNCj4gLWlzIG1lYW5pbmdsZXNzOg0KPiAtaXQgZ2l2
ZXMgdGhlIG5hbWUgb2YgdGhlIHByZXNlbnQgbWFjaGluZSBpbiBzb21lIG5ldHdvcmsNCj4g
LXRvIHdoaWNoIGl0J3MgYXR0YWNoZWQsDQo+IC1idXQgdHlwaWNhbGx5IG1hY2hpbmVzIGFy
ZSBpbiBtb3JlIHRoYW4gb25lIG5ldHdvcmsNCj4gLWFuZCBoYXZlIHNldmVyYWwgbmFtZXMg
Ynkgd2hpY2ggdGhleSdyZSByZWFjaGFibGUuDQo+IC1Nb3Jlb3ZlciwgdGhlIGtlcm5lbCBo
YXMgbm8gd2F5IG9mIGtub3dpbmcNCj4gLWFib3V0IHN1Y2ggdGhpbmdzLCBzbyBpdCBoYXMg
dG8gYmUgdG9sZCB3aGF0IHRvIGFuc3dlciBoZXJlLg0KPiAtVGhlIHNhbWUgaG9sZHMgZm9y
IHRoZSBhZGRpdGlvbmFsDQo+ICtmaWVsZCBpcyBjb25maWd1cmVkIGJ5IHRoZSBhZG1pbmlz
dHJhdG9yIHRvIG1hdGNoIHRoZSBuZXR3b3JrDQo+ICsodGhpcyBpcyB3aGF0IHRoZSBCU0Qg
aGlzdG9yaWNhbGx5IGNhbGxzIHRoZSAiaG9zdG5hbWUiLA0KPiArYW5kIGlzIHNldCB2aWEN
Cj4gKy5CUiBzZXRob3N0bmFtZSAoMikpLg0KPiArU2ltaWxhcmx5LCB0aGUNCj4gICAuSSBk
b21haW5uYW1lDQo+IC1maWVsZC4NCj4gLS5QUA0KPiAtVG8gdGhpcyBlbmQsIExpbnV4IHVz
ZXMgdGhlIHN5c3RlbSBjYWxscw0KPiAtLkJSIHNldGhvc3RuYW1lICgyKQ0KPiAtYW5kDQo+
ICtmaWVsZCBpcyBzZXQgdmlhDQo+ICAgLkJSIHNldGRvbWFpbm5hbWUgKDIpLg0KPiAtTm90
ZSB0aGF0IHRoZXJlIGlzIG5vIHN0YW5kYXJkIHRoYXQgc2F5cyB0aGF0IHRoZSBob3N0bmFt
ZSBzZXQgYnkNCj4gLS5CUiBzZXRob3N0bmFtZSAoMikNCj4gLWlzIHRoZSBzYW1lIHN0cmlu
ZyBhcyB0aGUNCj4gLS5JIG5vZGVuYW1lDQo+IC1maWVsZCBvZiB0aGUgc3RydWN0IHJldHVy
bmVkIGJ5DQo+IC0uQlIgdW5hbWUgKCkNCj4gLShpbmRlZWQsIHNvbWUgc3lzdGVtcyBhbGxv
dyBhIDI1Ni1ieXRlIGhvc3RuYW1lIGFuZCBhbiA4LWJ5dGUgbm9kZW5hbWUpLA0KPiAtYnV0
IHRoaXMgaXMgdHJ1ZSBvbiBMaW51eC4NCj4gLVRoZSBzYW1lIGhvbGRzIGZvcg0KPiAtLkJS
IHNldGRvbWFpbm5hbWUgKDIpDQo+IC1hbmQgdGhlDQo+IC0uSSBkb21haW5uYW1lDQo+IC1m
aWVsZC4NCj4gICAuUFANCj4gICBUaGUgbGVuZ3RoIG9mIHRoZSBmaWVsZHMgaW4gdGhlIHN0
cnVjdCB2YXJpZXMuDQo+ICAgU29tZSBvcGVyYXRpbmcgc3lzdGVtcw0KPiBAQCAtMTE0LDcg
Kzg4LDggQEAgb3INCj4gICAuQlIgX1VUU05BTUVfTEVOR1RIIC4NCj4gICBDbGVhcmx5LCBp
dCBpcyBhIGJhZA0KPiAgIGlkZWEgdG8gdXNlIGFueSBvZiB0aGVzZSBjb25zdGFudHM7IGp1
c3QgdXNlIHNpemVvZiguLi4pLg0KPiAtT2Z0ZW4gMjU3IGlzIGNob3NlbiBpbiBvcmRlciB0
byBoYXZlIHJvb20gZm9yIGFuIGludGVybmV0IGhvc3RuYW1lLg0KPiArU1ZyNCB1c2VzIDI1
NywgInRvIHN1cHBvcnQgSW50ZXJuZXQgaG9zdG5hbWVzIg0KPiArXChlbSB0aGlzIGlzIHRo
ZSBsYXJnZXN0IHZhbHVlIGxpa2VseSB0byBiZSBlbmNvdW50ZXJlZCBpbiB0aGUgd2lsZC4N
Cj4gICAuUFANCj4gICBQYXJ0IG9mIHRoZSB1dHNuYW1lIGluZm9ybWF0aW9uIGlzIGFsc28g
YWNjZXNzaWJsZSB2aWENCj4gICAuSVIgL3Byb2Mvc3lzL2tlcm5lbC8geyBvc3R5cGUgLA0K
DQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21h
ci5lcy8+DQo=

--------------w4pTqXDhaRzkXzmWuDMXmE0O--

--------------0fmqYQZCuGb09eEXty7jgXmG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKqD9cACgkQnowa+77/
2zI/cBAAmyxuWVo+ksLnyl1vg6pzbloxAfV0TYFCJT6jIyzWSffEk0hqTylPzFYr
9ID+Z4+WR/iPgd0MkyBnmE+qqQf1kApMBp1ARD9+UpIWO6fSgshc9E2tXjbH4zuo
B+6fmBD8teSAeJtMPpKB6KN5v18vuYAP3iXtXD7Qut5OchD+RaVmdqvkHsl6v8BK
HTfF1XSyRJ3JuL2LQpCDLCoAk+oqN+5hxEYjz9gR+4pfKdSekcsc+UOMPpL4xNZP
TJZAJ2GZ2oncfpkAHwAXCK+btJIXCTm6ZHOA40IDVG0C6AjG3k3asUaYZ6dqtKGC
KGXJaEF0dnc4GoW2qDhvn9WemrjoDhXF+yewxJfjN/S8+HaL9JJxgCh+KQDHIJwU
qvpc/LKcxCqq2VoFxRimucW1f1llA5GEP1IL+JnvW+Vr8JB2pU63KcakJFfvy9Fw
JHiKLjDVPMkZtyR4ptnRXExiAuU3sWRPsGrfJX98/KzMss+Cx2ldi0WrRyydnvEH
zII1ylPFx2rxY9iD4lcZ0pNmXK/GIGDxV8upGSe+9WtaV2R5BB86BotBx0zJNmHE
BTHqbT3ULSCfZl6RDgG9iZ3HmV08mJNfT483WDYfzervwvIinidcpxHiqdU38tYA
uTrUg49uoXxZM14B5R1soH1d+iXXZxusL8dNWWPc5wdHmnnccro=
=vvTQ
-----END PGP SIGNATURE-----

--------------0fmqYQZCuGb09eEXty7jgXmG--
