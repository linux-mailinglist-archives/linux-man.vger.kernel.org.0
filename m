Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B45BE6A2515
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 00:31:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229446AbjBXXbn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 18:31:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229551AbjBXXbn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 18:31:43 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 937E96DD9D
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 15:31:41 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id 6so811884wrb.11
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 15:31:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q0gEpxe8/2KCDuc8Tbl6u0F6cYyBp4EkomUNRjryhdQ=;
        b=jwSeWowZCsIxA6dFlhiFjC7lpzsKum3qNLjF8FGffXZD2soA3jHmNJuPd56hymglDq
         0wif7wLz66l3P0HJpzZ4RgV22rllVhOlJ/OsWS3CqxdsUa0uRKppzqZMqGKg0xOv1Its
         ECHAYIAiMMRsvaX45aRg7tlgnVDw/7mdwEgL5ETgrleoY6MfG6aVenYV8c76/CBPQL7C
         byyXzHWWD+8uBwSqA+40peVwjTypE2mw9CDWJcDgEAYitnHzlKViwEFwKX+fo+/jj/IH
         1ELUdnM/WkQBGoTHM13jeYb8cASrgJMtuYWigbsdsBp4GKyCKDe9ffbs8pJwDAvbvadI
         E9vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=q0gEpxe8/2KCDuc8Tbl6u0F6cYyBp4EkomUNRjryhdQ=;
        b=VthdAHu2zCJ7U2Lap9CgM7x3a+I6EmTJlIpR+WzrFAYP6L8F0GLKRRRQ1fLDkuq4aq
         5FLkXur4omHHhkHLq++uXI5rIeG56LQZKGptXABBhRYoi1l4VkcjeW27hrycPQy+5wm/
         UQu8JcQUKseThnDhHwpUhFYLdl2mbtWuQs6meJe/VRfwOPjcNnb1IYmBBh1Mld40WLF1
         g9M6+KFyfonII3cK8r20DqpQVipWCQ1Xd0dA4DZvx1z/P4d3ED6Bss45JFBael78WB1a
         pRnk1eEQT8+0CxHGGiYL6W4yJqGNE1/i937g0TRTns9Rqar4noaFPxcxah10xkMxktER
         CkAg==
X-Gm-Message-State: AO0yUKUqSrjNrmRuSn4VPKdWd0puTdyd2+CgDqBwxcg9+xMCm1nTGrGF
        HYvSyjSRCWcALxBmdNH6DWVIpG8bGyA=
X-Google-Smtp-Source: AK7set/1lis5DwTCG9zmMNnFNB7nZa8u7HEQTXfAIzJmbRTJcbr/V5jveR6cRoOxb066HOhnqASLnQ==
X-Received: by 2002:a05:6000:1e0c:b0:2c5:4659:3e76 with SMTP id bj12-20020a0560001e0c00b002c546593e76mr1027344wrb.18.1677281499921;
        Fri, 24 Feb 2023 15:31:39 -0800 (PST)
Received: from [172.26.3.7] (240.red-88-26-240.staticip.rima-tde.net. [88.26.240.240])
        by smtp.gmail.com with ESMTPSA id z3-20020a5d6543000000b002c7b8a0c423sm185476wrv.0.2023.02.24.15.31.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 15:31:39 -0800 (PST)
Message-ID: <0dd34ee2-c86a-7f73-0d5e-814f2e460476@gmail.com>
Date:   Sat, 25 Feb 2023 00:31:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 3/3] landlock.7: Document Landlock ABI v3 (file
 truncation; kernel 6.2)
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-3-gnoack3000@gmail.com>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230221205023.2739-3-gnoack3000@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Qbn7iilYhDZcMhSZ0v1IIY6d"
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
--------------Qbn7iilYhDZcMhSZ0v1IIY6d
Content-Type: multipart/mixed; boundary="------------83rNuFo0qPctQDKjdHd2DfFI";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
 =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <0dd34ee2-c86a-7f73-0d5e-814f2e460476@gmail.com>
Subject: Re: [PATCH 3/3] landlock.7: Document Landlock ABI v3 (file
 truncation; kernel 6.2)
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-3-gnoack3000@gmail.com>
In-Reply-To: <20230221205023.2739-3-gnoack3000@gmail.com>

--------------83rNuFo0qPctQDKjdHd2DfFI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgR8O8bnRoZXIsDQoNCk9uIDIvMjEvMjMgMjE6NTAsIEfDvG50aGVyIE5vYWNrIHdyb3Rl
Og0KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMjEwMTgxODIyMTYuMzAxNjg0
LTEtZ25vYWNrMzAwMEBnbWFpbC5jb20vDQoNClBsZWFzZSBzZWUgc29tZSBjb21tZW50cyBi
ZWxvdy4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFuNy9sYW5kbG9jay43
IHwgODAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKyst
LQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA3NyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjcvbGFuZGxvY2suNyBiL21hbjcvbGFuZGxvY2su
Nw0KPiBpbmRleCA2MzIxYjU2YWIuLmI1YjM1NjY0MiAxMDA2NDQNCj4gLS0tIGEvbWFuNy9s
YW5kbG9jay43DQo+ICsrKyBiL21hbjcvbGFuZGxvY2suNw0KPiBAQCAtNjMsMTAgKzYzLDM4
IEBAIEEgZmlsZSBjYW4gb25seSByZWNlaXZlIHRoZXNlIGFjY2VzcyByaWdodHM6DQo+ICAg
RXhlY3V0ZSBhIGZpbGUuDQo+ICAgLlRQDQo+ICAgLkIgTEFORExPQ0tfQUNDRVNTX0ZTX1dS
SVRFX0ZJTEUNCj4gLU9wZW4gYSBmaWxlIHdpdGggd3JpdGUgYWNjZXNzLg0KPiArT3BlbiBh
IGZpbGUgd2l0aCB3cml0ZSBhY2Nlc3MuIE5vdGUgdGhhdCB5b3UgbWlnaHQgYWRkaXRpb25h
bGx5IG5lZWQgdGhlDQoNCkFnYWluLA0KcGxlYXNlIHVzZSBzZW1hbnRpYyBuZXdsaW5lcy4N
Cg0KQWxzbywNCnJvZmYoNykgcmVxdWlyZXMgdHdvIHNwYWNlcyBhZnRlciBwZXJpb2QgaW4g
c291cmNlIGNvZGUsDQp0byBkZXRlY3Qgc2VudGVuY2UgZW5kaW5ncy4NCkkgc2F5IHRoaXMg
YXMgYSBjdXJpb3NpdHksDQpzaW5jZSBkdWUgdG8gdGhlIHJlcXVpcmVtZW50IG9mIHNlbWFu
dGljIG5ld2xpbmVzLA0Kd2UgYWx3YXlzIHdyaXRlIGEgbmV3bGluZSBhZnRlciBwZXJpb2Qu
DQoNCj4gKy5CIExBTkRMT0NLX0FDQ0VTU19GU19UUlVOQ0FURQ0KPiArcmlnaHQgaW4gb3Jk
ZXIgdG8gb3ZlcndyaXRlIGZpbGVzIHdpdGgNCj4gKy5CUiBvcGVuICgyKQ0KPiArdXNpbmcN
Cj4gKy5CIE9fVFJVTkMNCj4gK29yDQo+ICsuQlIgY3JlYXQgKDIpLg0KPiAgIC5UUA0KPiAg
IC5CIExBTkRMT0NLX0FDQ0VTU19GU19SRUFEX0ZJTEUNCj4gICBPcGVuIGEgZmlsZSB3aXRo
IHJlYWQgYWNjZXNzLg0KPiArLlRQDQo+ICsuQiBMQU5ETE9DS19BQ0NFU1NfRlNfVFJVTkNB
VEUNCj4gK1RydW5jYXRlIGEgZmlsZSB3aXRoDQo+ICsuQlIgdHJ1bmNhdGUgKDIpLA0KPiAr
LkJSIGZ0cnVuY2F0ZSAoMiksDQo+ICsuQlIgY3JlYXQgKDIpLA0KPiArb3INCj4gKy5CUiBv
cGVuICgyKQ0KPiArd2l0aA0KPiArLkJSIE9fVFJVTkMgLg0KPiArV2hldGhlciBhbiBvcGVu
ZWQgZmlsZSBjYW4gYmUgdHJ1bmNhdGVkIHdpdGgNCj4gKy5CUiBmdHJ1bmNhdGUgKDIpDQo+
ICtpcyBkZXRlcm1pbmVkIGR1cmluZw0KPiArLkJSIG9wZW4gKDIpLA0KPiAraW4gdGhlIHNh
bWUgd2F5IGFzIHJlYWQgYW5kIHdyaXRlIHBlcm1pc3Npb25zIGFyZSBjaGVja2VkIGR1cmlu
Zw0KPiArLkJSIG9wZW4gKDIpDQo+ICt1c2luZw0KPiArLkIgTEFORExPQ0tfQUNDRVNTX0ZT
X1JFQURfRklMRQ0KPiArYW5kDQo+ICsuQlIgTEFORExPQ0tfQUNDRVNTX0ZTX1dSSVRFX0ZJ
TEUgLg0KPiArVGhpcyBhY2Nlc3MgcmlnaHQgaXMgYXZhaWxhYmxlIHNpbmNlIHRoZSB0aGly
ZCB2ZXJzaW9uIG9mIHRoZSBMYW5kbG9jayBBQkkuDQoNCk1heWJlIGl0J3Mgc2ltcGxlciB0
byBzYXkgTGFuZGxvY2sgQUJJIHYzPyAgVGhhdCdzIHVzdWFsIGNvbnZlbnRpb24gaW4gDQpz
b2Z0d2FyZSwgc28gbm90IHVzaW5nIGZvcm1hbCBFbmdsaXNoIGZvciB0aGF0IGlzIG5vdCBh
IGNyaW1lIDopLg0KDQo+ICAgLlBQDQo+ICAgQSBkaXJlY3RvcnkgY2FuIHJlY2VpdmUgYWNj
ZXNzIHJpZ2h0cyByZWxhdGVkIHRvIGZpbGVzIG9yIGRpcmVjdG9yaWVzLg0KPiAgIFRoZSBm
b2xsb3dpbmcgYWNjZXNzIHJpZ2h0IGlzIGFwcGxpZWQgdG8gdGhlIGRpcmVjdG9yeSBpdHNl
bGYsDQo+IEBAIC0yMjgsNiArMjU2LDUwIEBAIFRvIGJlIGFsbG93ZWQgdG8gdXNlDQo+ICAg
YW5kIHJlbGF0ZWQgc3lzY2FsbHMgb24gYSB0YXJnZXQgcHJvY2VzcywNCj4gICBhIHNhbmRi
b3hlZCBwcm9jZXNzIHNob3VsZCBoYXZlIGEgc3Vic2V0IG9mIHRoZSB0YXJnZXQgcHJvY2Vz
cyBydWxlcywNCj4gICB3aGljaCBtZWFucyB0aGUgdHJhY2VlIG11c3QgYmUgaW4gYSBzdWIt
ZG9tYWluIG9mIHRoZSB0cmFjZXIuDQo+ICsuXCINCj4gKy5TUyBUcnVuY2F0aW5nIGZpbGVz
DQo+ICtUaGUgb3BlcmF0aW9ucyBjb3ZlcmVkIGJ5DQo+ICsuQiBMQU5ETE9DS19BQ0NFU1Nf
RlNfV1JJVEVfRklMRQ0KPiArYW5kDQo+ICsuQiBMQU5ETE9DS19BQ0NFU1NfRlNfVFJVTkNB
VEUNCj4gK2JvdGggY2hhbmdlIHRoZSBjb250ZW50cyBvZiBhIGZpbGUgYW5kIHNvbWV0aW1l
cyBvdmVybGFwIGluDQo+ICtub24taW50dWl0aXZlIHdheXMuIEl0IGlzIHJlY29tbWVuZGVk
IHRvIGFsd2F5cyBzcGVjaWZ5IGJvdGggb2YgdGhlc2UNCj4gK3RvZ2V0aGVyLg0KPiArLlBQ
DQo+ICtBIHBhcnRpY3VsYXJseSBzdXJwcmlzaW5nIGV4YW1wbGUgaXMNCj4gKy5CUiBjcmVh
dCAoMikuDQo+ICtUaGUgbmFtZSBzdWdnZXN0cyB0aGF0IHRoaXMgc3lzdGVtIGNhbGwgcmVx
dWlyZXMgdGhlIHJpZ2h0cyB0byBjcmVhdGUNCj4gK2FuZCB3cml0ZSBmaWxlcy4gSG93ZXZl
ciwgaXQgYWxzbyByZXF1aXJlcyB0aGUgdHJ1bmNhdGUgcmlnaHQgaWYgYW4NCj4gK2V4aXN0
aW5nIGZpbGUgdW5kZXIgdGhlIHNhbWUgbmFtZSBpcyBhbHJlYWR5IHByZXNlbnQuDQo+ICsu
UFANCj4gK0l0IHNob3VsZCBhbHNvIGJlIG5vdGVkIHRoYXQgdHJ1bmNhdGluZyBmaWxlcyBk
b2VzIG5vdCByZXF1aXJlIHRoZQ0KPiArLkIgTEFORExPQ0tfQUNDRVNTX0ZTX1dSSVRFX0ZJ
TEUNCj4gK3JpZ2h0LiAgQXBhcnQgZnJvbSB0aGUNCj4gKy5CUiB0cnVuY2F0ZSAoMikNCj4g
K3N5c3RlbSBjYWxsLCB0aGlzIGNhbiBhbHNvIGJlIGRvbmUgdGhyb3VnaA0KPiArLkJSIG9w
ZW4gKDIpDQo+ICt3aXRoIHRoZSBmbGFncw0KPiArLkJSICJPX1JET05MWSB8IE9fVFJVTkMi
IC4NCj4gKy5QUA0KPiArV2hlbiBvcGVuaW5nIGEgZmlsZSwgdGhlIGF2YWlsYWJpbGl0eSBv
ZiB0aGUNCj4gKy5CIExBTkRMT0NLX0FDQ0VTU19GU19UUlVOQ0FURQ0KPiArcmlnaHQgaXMg
YXNzb2NpYXRlZCB3aXRoIHRoZSBuZXdseSBjcmVhdGVkIGZpbGUgZGVzY3JpcHRvciBhbmQg
d2lsbCBiZSB1c2VkIGZvcg0KPiArc3Vic2VxdWVudCB0cnVuY2F0aW9uIGF0dGVtcHRzIHVz
aW5nDQo+ICsuQlIgZnRydW5jYXRlICgyKS4NCj4gK1RoZSBiZWhhdmlvciBpcyBzaW1pbGFy
IHRvIG9wZW5pbmcgYSBmaWxlIGZvciByZWFkaW5nIG9yIHdyaXRpbmcsDQo+ICt3aGVyZSBw
ZXJtaXNzaW9ucyBhcmUgY2hlY2tlZCBkdXJpbmcNCj4gKy5CUiBvcGVuICgyKSwNCj4gK2J1
dCBub3QgZHVyaW5nIHRoZSBzdWJzZXF1ZW50DQo+ICsuQlIgcmVhZCAoMikNCj4gK2FuZA0K
PiArLkJSIHdyaXRlICgyKQ0KPiArY2FsbHMuDQo+ICsuUFANCj4gK0FzIGEgY29uc2VxdWVu
Y2UsIGl0IGlzIHBvc3NpYmxlIHRvIGhhdmUgbXVsdGlwbGUgb3BlbiBmaWxlIGRlc2NyaXB0
b3JzIGZvciB0aGUNCj4gK3NhbWUgZmlsZSwgd2hlcmUgb25lIGdyYW50cyB0aGUgcmlnaHQg
dG8gdHJ1bmNhdGUgdGhlIGZpbGUgYW5kIHRoZSBvdGhlciBkb2VzDQo+ICtub3QuICBJdCBp
cyBhbHNvIHBvc3NpYmxlIHRvIHBhc3Mgc3VjaCBmaWxlIGRlc2NyaXB0b3JzIGJldHdlZW4g
cHJvY2Vzc2VzLA0KPiAra2VlcGluZyB0aGVpciBMYW5kbG9jayBwcm9wZXJ0aWVzLCBldmVu
IHdoZW4gdGhlc2UgcHJvY2Vzc2VzIGRvIG5vdCBoYXZlIGFuDQo+ICtlbmZvcmNlZCBMYW5k
bG9jayBydWxlc2V0Lg0KPiAgIC5TSCBWRVJTSU9OUw0KPiAgIExhbmRsb2NrIHdhcyBpbnRy
b2R1Y2VkIGluIExpbnV4IDUuMTMuDQo+ICAgLlBQDQo+IEBAIC0yNTQsNiArMzI2LDggQEAg
XwlfCV8NCj4gICBcXglcXglMQU5ETE9DS19BQ0NFU1NfRlNfTUFLRV9TWU0NCj4gICBfCV8J
Xw0KPiAgIDIJNS4xOQlMQU5ETE9DS19BQ0NFU1NfRlNfUkVGRVINCj4gK18JXwlfDQo+ICsz
CTYuMglMQU5ETE9DS19BQ0NFU1NfRlNfVFJVTkNBVEUNCj4gICAuVEUNCj4gICAuUFANCj4g
ICBUbyBxdWVyeSB0aGUgcnVubmluZyBrZXJuZWwncyBMYW5kbG9jayBBQkkgbGV2ZWwsIHBy
b2dyYW1zIG1heSBwYXNzDQo+IEBAIC0yOTAsNyArMzY0LDYgQEAgaW4ga2VybmVsIGxvZ3Mu
DQo+ICAgSXQgaXMgY3VycmVudGx5IG5vdCBwb3NzaWJsZSB0byByZXN0cmljdCBzb21lIGZp
bGUtcmVsYXRlZCBhY3Rpb25zDQo+ICAgYWNjZXNzaWJsZSB0aHJvdWdoIHRoZXNlIHN5c3Rl
bSBjYWxsIGZhbWlsaWVzOg0KPiAgIC5CUiBjaGRpciAoMiksDQo+IC0uQlIgdHJ1bmNhdGUg
KDIpLA0KPiAgIC5CUiBzdGF0ICgyKSwNCj4gICAuQlIgZmxvY2sgKDIpLA0KPiAgIC5CUiBj
aG1vZCAoMiksDQo+IEBAIC0zMjgsNyArNDAxLDggQEAgYXR0ci5oYW5kbGVkX2FjY2Vzc19m
cyA9DQo+ICAgICAgICAgICBMQU5ETE9DS19BQ0NFU1NfRlNfTUFLRV9GSUZPIHwNCj4gICAg
ICAgICAgIExBTkRMT0NLX0FDQ0VTU19GU19NQUtFX0JMT0NLIHwNCj4gICAgICAgICAgIExB
TkRMT0NLX0FDQ0VTU19GU19NQUtFX1NZTSB8DQo+IC0gICAgICAgIExBTkRMT0NLX0FDQ0VT
U19GU19SRUZFUjsNCj4gKyAgICAgICAgTEFORExPQ0tfQUNDRVNTX0ZTX1JFRkVSIHw7DQo+
ICsgICAgICAgIExBTkRMT0NLX0FDQ0VTU19GU19UUlVOQ0FURTsNCj4gICANCj4gICBydWxl
c2V0X2ZkID0gbGFuZGxvY2tfY3JlYXRlX3J1bGVzZXQoJmF0dHIsIHNpemVvZihhdHRyKSwg
MCk7DQo+ICAgaWYgKHJ1bGVzZXRfZmQgPT0gLTEpIHsNCg0KLS0gDQo8aHR0cDovL3d3dy5h
bGVqYW5kcm8tY29sb21hci5lcy8+DQpHUEcga2V5IGZpbmdlcnByaW50OiBBOTM0ODU5NENF
MzEyODNBODI2RkJERDhENTc2MzNENDQxRTI1QkI1DQoNCg==

--------------83rNuFo0qPctQDKjdHd2DfFI--

--------------Qbn7iilYhDZcMhSZ0v1IIY6d
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP5SNoACgkQnowa+77/
2zJmQhAAltDs+MzIQcwOTsvE3GhdC6UqcmMSk0yNTorpfIfHwltXJPjlrQrdnRtg
aPTm9axUf0H9l8+0efEbDY/7iRL6deb56blywsCUFBd5pI7ISNRnU0aytk7VxNcj
Glvw3pH7Ohsj0BZjV1+K4aCFbm3bFrxMmmXeGNsbK1XJrZAVTFUwrT3pV/DP2uCK
I/biLU3q7xMqZImArJ2N9numVq6Wq2yY9DqgPguZGHTGIL7jNbvPeEHPpW6qzSS1
Q32Rn10G+uYMvJAiCqnGsaTnT7TN96eGbVGorGoHpiK5A9KAXcBgjoTyUNRdKKwa
AVEm5gTeFBVpwxNIPneBko0rusyKHlkdwTDqxBfqjucfKKiqR4fWPh5IiaGF7yk+
7WLJFHR6zTCrKr5kyh91CnEZmSrEjk69ULBpeU6g9khOxuyffcVvMUEJfVfwL7pr
+anzo7wHlMkzpoGzYI6jkxXVxzG9YtExJ1PGCiXRGrH/YhK/ZGvTXkailzs0GzLK
qEBk8Cr6KNEF6xMC5vLCtlD3ok6KxRkYYUpUlajUGFGmIDE2QXxGD8KC0E+vo1d0
SK3l7dqtY3Mw3djj/AwLdpIFs76m88su7RCoKC2PP4i7SamoUHv4HgGzSRnk296i
bscI5JAB6p35hR7Y/agy+Qitt/fdOzTp13ReXbsXBHebfm7OFX4=
=uQ4S
-----END PGP SIGNATURE-----

--------------Qbn7iilYhDZcMhSZ0v1IIY6d--
