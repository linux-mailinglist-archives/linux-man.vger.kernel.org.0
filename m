Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FE8268AFF7
	for <lists+linux-man@lfdr.de>; Sun,  5 Feb 2023 14:32:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229646AbjBENcS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 08:32:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjBENcQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 08:32:16 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7039A1BADD
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 05:32:15 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id k16so6933523wms.2
        for <linux-man@vger.kernel.org>; Sun, 05 Feb 2023 05:32:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VQ66AUsdYq8sXzlk4LS8F7S+Q6JHN6sditw/T8zANGM=;
        b=DTmJ3j1gNxdiwWZ8JQyeSRoGsmLryNMdVyAZTWvm9g1oR9+vkiVqh3lwrRSRTDtCKa
         M/3GAlSrfdOGJyZqGiHDGV4+xYfEngURGRn/nCGVcyvR2ibl8p3smOA8Ujz/XI35hH//
         Af7w9k8WR5/rdl2G1KKHLjNKonsTPQCnjssnTyQXK83uGxNCSzrTRh1JupeT/nBNWOoC
         5DhiETiQQUH9KHzr259y0papFjdIC1aOeJAwwzG1C5W7IuqDrht0EtECsOaEuYzwDnU2
         oi2F6zxlXfZRzE0LU6PASXqcEOcdyfFUTqjjVIAR8UhuE6UNfi3K8xXylbuTvpAjY80t
         4ovw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VQ66AUsdYq8sXzlk4LS8F7S+Q6JHN6sditw/T8zANGM=;
        b=kzM4Ip17K6LqNJZFLZYzGfVD71/8/ZIk67Rm8AIRy/RYeDYWgAQzfRz1tTOwcx4aXw
         oiAaRbqHt4pnuR/OLPTzA4I98l7vCDWsG2E/V0mh5EP1nXVXg/65Y4ot5llmkvqFAOp6
         /U62dOIhDhSHJHwICe6KURtp6EuSi6vd3E/lRb0Mcy+JUq/92/mP6jgAzutGJFZwcEj2
         TC2d5D1n13VINzePrejOwDp0XMA0lbNwQ/6tdMfC5Uzq5GwBa82ziVcRidcDoVWNbBpo
         znrMdF2kFM5TwhY1db2VnbW7B36WhJE5i19Bq8KE6nd/FrpqFm9rnhswIBi6zvYeOqSs
         dQmw==
X-Gm-Message-State: AO0yUKX7rSNMJw3a+EEpyvawih7TZOst1CaiIZ2kiqaBJTvpgPe3qICL
        mFaNQbVRoUop+8oLfKYBr0vzfag++jQ=
X-Google-Smtp-Source: AK7set9ss4JSoDzYaSebpf3JH/qK1Yd5fN6PcA+Lq7uAVk6HD2MmbQnU+cTPGsyJLZj/QruImk2Kgg==
X-Received: by 2002:a1c:4c12:0:b0:3dc:16d4:a99f with SMTP id z18-20020a1c4c12000000b003dc16d4a99fmr15506565wmf.8.1675603933867;
        Sun, 05 Feb 2023 05:32:13 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s22-20020a1cf216000000b003dffe312925sm1282717wmc.15.2023.02.05.05.32.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Feb 2023 05:32:13 -0800 (PST)
Message-ID: <3b05b5ab-98b4-2bd6-eb02-523e964d4c1a@gmail.com>
Date:   Sun, 5 Feb 2023 14:32:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: Using C23 digit separators not locale digit grouping characters
Content-Language: en-US
To:     Linux Man-Pages <linux-man@vger.kernel.org>
References: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
 <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
 <aebef9ae-1bd0-b0e7-b333-7269dbaf50a2@Shaw.ca>
 <5c2be1e7-4c75-dc20-8d2e-a528edea7e32@gmail.com>
 <f93b5307-4f11-eeeb-3a52-1dc1b4ea0ac8@Shaw.ca>
 <8ecb3f01-2035-9408-9605-1e64e6f25b5a@gmail.com>
 <571ee4b8-15cc-470c-88a9-ec6ee09619cb@Shaw.ca>
Cc:     Ingo Schwarze <schwarze@usta.de>, Tom Schwindl <schwindl@posteo.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <571ee4b8-15cc-470c-88a9-ec6ee09619cb@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------EvdEkKmQbDjysJgvS77fjQca"
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
--------------EvdEkKmQbDjysJgvS77fjQca
Content-Type: multipart/mixed; boundary="------------ARKG32XX0GXImbwFqUBmRA2B";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Linux Man-Pages <linux-man@vger.kernel.org>
Cc: Ingo Schwarze <schwarze@usta.de>, Tom Schwindl <schwindl@posteo.de>
Message-ID: <3b05b5ab-98b4-2bd6-eb02-523e964d4c1a@gmail.com>
Subject: Re: Using C23 digit separators not locale digit grouping characters
References: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
 <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
 <aebef9ae-1bd0-b0e7-b333-7269dbaf50a2@Shaw.ca>
 <5c2be1e7-4c75-dc20-8d2e-a528edea7e32@gmail.com>
 <f93b5307-4f11-eeeb-3a52-1dc1b4ea0ac8@Shaw.ca>
 <8ecb3f01-2035-9408-9605-1e64e6f25b5a@gmail.com>
 <571ee4b8-15cc-470c-88a9-ec6ee09619cb@Shaw.ca>
In-Reply-To: <571ee4b8-15cc-470c-88a9-ec6ee09619cb@Shaw.ca>

--------------ARKG32XX0GXImbwFqUBmRA2B
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJpYW4sDQoNCk9uIDIvNC8yMyAwODoxOSwgQnJpYW4gSW5nbGlzIHdyb3RlOg0KWy4u
Ll0NCg0KDQo+Pj4gcmVib290LjIgTElOVVhfUkVCT09UX01BR0lDKiBhZGRpbmcgaGV4IGJp
cnRoIGRhdGVzDQo+PiBMR1RNDQo+Pj4gKGFyZ3VhYmx5IHNob3VsZCByZW1vdmUgdGhlIGRl
Y2ltYWxzLCBvciBhbGwgdmFsdWVzLCBhbmQgY3J5cHRpYyBjb21tZW50IGZyb20gDQo+Pj4g
ZG9jPyksDQo+PiBOb3Qgc3VyZSB3aGF0IHlvdSBtZWFuLg0KPiANCj4gU2VlIGJlbG93IC0g
ZGVjaW1hbCAoYW5kIGFkZGVkIGhleCkgIkJDRCIgdmFsdWVzIG9mIExpbnVzIGFuZCBraWQn
cyBiaXJ0aGRhdGVzIQ0KPiANCg0KWy4uLl0NCg0KPj4+IC10aGUgc3VwcGxpZWQgdmFsdWUg
aXMgY2xhbXBlZCB0byB0aGUgcmFuZ2UgKFwtMzI3NjgwMDAsICszMjc2ODAwMCkuDQo+Pj4g
K3RoZSBzdXBwbGllZCB2YWx1ZSBpcyBjbGFtcGVkIHRvIHRoZSByYW5nZSAoXC0zMS4yNU1p
LCArMzEuMjVNaSkuDQo+PiBJJ2QgcHJlZmVyIGhlcmUgKFwtMzIwMDBLaSwgKzMyMDAwS2kp
LsKgIERlY2ltYWxzIG9uIG11bHRpcGxpZXJzIGluZHVjZSBkb3VidHMgDQo+PiBvbiBob3cg
bXVjaCBwcmVjaXNpb24geW91IGtlcHQ7IHJvdW5kIG51bWJlcnMgbWFrZSBpdCBjbGVhci4N
Cj4gDQo+IERpdGhlcmVkIGFib3V0IHJlcHJlc2VudGluZyAzMmtLaSAtIGFnYWluIG1hZ25p
dHVkZSBzZWVtZWQgbW9yZSBpbXBvcnRhbnQgdG8gDQo+IGRvY3VtZW50LCBidXQgZGlkIG5v
dCBjb25zaWRlciB1c2luZyBkZWNpbWFscyBtaWdodCBpbnRyb2R1Y2UgdW5jZXJ0YWludHkg
YWJvdXQgDQo+IHByZWNpc2lvbiENCg0KQWN0dWFsbHksIEkgc2hvdWxkIGhhdmUgc3VnZ2Vz
dGVkIDMyJzAwMEtpIDpwDQo+IA0KPj4+IC1pcyBvdXRzaWRlIHRoZSByYW5nZSBbMC4uOTk5
LDk5OSw5OTldLg0KPj4+ICtpcyBvdXRzaWRlIHRoZSByYW5nZSBbMC4uOTk5XChhcTk5OVwo
YXE5OTldLg0KPj4gUGxlYXNlIGZpeCBhbHNvIHRoZSBmb3JtYXQgb2YgdGhlIHJhbmdlLCBu
b3cgdGhhdCB5b3UncmUgYXQgaXQgKGluIGEgc2VwYXJhdGUgDQo+PiBjb21taXQsIGlmIHlv
dSBkb24ndCBtaW5kKS7CoCBJIHByZWZlciBtYXRoZW1hdGljYWwgbm90YXRpb24sIHdoZXJl
IHBvc3NpYmxlOiANCj4+IFswLCA5OTknOTk5Jzk5OV0uDQo+Pj4gLWZpZWxkIHdhcyBub3Qg
aW4gdGhlIHJhbmdlIDAgdG8gOTk5OTk5OTk5IG9yDQo+Pj4gK2ZpZWxkIHdhcyBub3QgaW4g
dGhlIHJhbmdlIDAgdG8gOTk5XChhcTk5OVwoYXE5OTkgb3INCj4+IFNhbWUgaGVyZTogWzAs
IDk5OSc5OTknOTk5XQ0KPiANCj4gSWYgd2UgYXJlIGNoYW5naW5nIHRvIGNvbnNpc3RlbnQg
aW50ZXJ2YWwgbm90YXRpb24gaW4gYSBzZXBhcmF0ZSBwYXRjaCwgc2hvdWxkIA0KPiB3ZSBy
ZXBsYWNlIHRoZSBjbG9zZWQgaW5jbHVzaXZlIGxpbWl0IHN0cmluZ3Mgb2YgIlswLCAuLi45
OTldIiBieSBvcGVuIGV4Y2x1c2l2ZSANCj4gbGltaXRzIGUuZy4gIlswLCAxRykiIGV0Yy4g
b3Igd291bGQgc2VtaS1vcGVuIGJlIHRvbyBhbWJpZ3VvdXMsIGFzIGludGVydmFscyANCj4g
c2VlbiBpbiB0aGUgc2FtcGxlIHNvIGZhciBhcmUgZWl0aGVyIG9wZW4gKC4uLikgb3IgY2xv
c2VkIFsuLi5dPw0KPiBJIHByZXN1bWUgZG9jIHJlYWRlcnMgaGF2ZSBsZXNzIGZhbWlsaWFy
aXR5IHdpdGggbWF0aHMgYW5kIGNvbXB1dGVyIGFyaXRobWV0aWMgDQo+IHRoYW4gZW5naW5l
ZXJzIG9yIHRlY2huaWNhbCBkZXZzIG1heSByZXF1aXJlLg0KDQpGb3IgdGhlIGdlbmVyYWwg
Y2FzZSwgSSB0aGluayBpdCdzIG1vcmUgcmVhZGFibGUgdG8gdXNlIGNsb3NlZCBpbnRlcnZh
bHM7IHRoZXkgDQphcmUgbW9yZSBjb21tb25seSB1c2VkIGluIHRoZSBtYW4tcGFnZXMgc28g
ZmFyLCBzbyBJIGd1ZXNzIHBlb3BsZSBhcmUgbW9yZSB1c2VkIA0KdG8gcmVhZGluZyB0aGVt
LiAgSG93ZXZlciwgd2UgbWlnaHQgY29uc2lkZXIgZXhjZXB0aW9ucyBpZiB0aGV5IGFyZSBy
ZWFzb25hYmxlIA0KZm9yIHNvbWUgY2FzZXMuICBSZWdhcmRpbmcgZmFtaWxpYXJpdHkgdG8g
cHJvZ3JhbW1lcnMsIEkgZXhwZWN0IG1vc3Qgb2YgdGhlbSANCndvdWxkIGJlIGZhbWlsaWFy
IHdpdGggc2VtaS1vcGVuIGludGVydmFscywgYW5kIGFzIEluZ28gcmVtaW5kZWQgbWUgcmVj
ZW50bHksIHdlIA0KdXNlIHRoZW0gZXZlcnlkYXkgaW4gQyBpbiB0aGUgZm9ybSBvZiBgZm9y
IChpbnQgaSA9IDA7IGkgPCBuOyBpKyspYCwgc28gSSdtIG5vdCANCmF2ZXJzZSB0byBpdCBq
dXN0IGJ5IHRoYXQuICBCdXQgd2Ugc2VlIGNsb3NlZCBpbnRlcnZhbHMgbW9yZSBvZnRlbiwg
cHJvYmFibHkgDQpiZWNhdXNlIGl0IHJlbW92ZXMgb25lIHN1YnRyYWN0aW9uIGluIHlvdXIg
aGVhZCBhbmQgc28gaXQncyBzaW1wbGVyIHRvIHJlYWQuDQoNCj4gDQo+Pj4gLXNvdXJjZSwg
YSBtYXhpbXVtIG9mIDMzNTU0NDMxIGJ5dGVzIGlzIHJldHVybmVkIGJ5IGEgc2luZ2xlIGNh
bGwgdG8NCj4+PiArc291cmNlLCBhIG1heGltdW0gb2YgMzJNaS0xIGJ5dGVzIGlzIHJldHVy
bmVkIGJ5IGEgc2luZ2xlIGNhbGwgdG8NCj4+IFdoZW4gdGhlIHZhbHVlIGlzIG5vdCBhbiBl
eGFjdCBvbmUsIGFzIGhlcmUgd2hlcmUgaXQncyB0aGUgbXVsdGlwbGllciBtaW51cyANCj4+
IG9uZSwgSSBwcmVmZXIgYSBtb3JlIGNvcnJlY3QgbWF0aGVtYXRpY2FsIG5vdGF0aW9uOiAy
XjI1LTENCj4gDQo+IEkgZG9uJ3QgdGhpbmsgdGhhdCBub3RhdGlvbiBpcyBtZWFuaW5nZnVs
IGRvY3VtZW50YXRpb24gdG8gbW9zdCByZWFkZXJzLg0KPiBUaGUgb3JpZ2luYWwgZGVjaW1h
bCB2YWx1ZSBpcyBlYXNpZXIgdG8gY29tcHJlaGVuZC4NCg0KQWdyZWUsIEkganVzdCBicmFp
bmZhcnRlZC4NCg0KPiBFdmVuIHRoZSBoZXggMHgyMDAwMDAwLTEgd291bGQgYmUgYSBiaXQg
bW9yZSBpbmZvcm1hdGl2ZSAoMHgyME1pLTEpLg0KPiBBbiBvZGQgYmluYXJ5IHBvd2VyIGRv
ZXMgbm90IGJyaW5nIGEgdmFsdWUgcXVpY2tseSB0byBtaW5kLCBhbmQgaGFzIHRvIGJlIA0K
PiBkZWNvZGVkIHRvIDJeNSoyXjIwLTEgdG8gbWFrZSBhbnkgc2Vuc2U6IEkgaGFkIHRvIGV2
YWx1YXRlIGl0IHRvIGJlIHN1cmUhDQo+IFdpdGggbGFyZ2UgdmFsdWVzLCB0aGUgbWFnbml0
dWRlIGlzIG1vcmUgaW1wb3J0YW50IHRvIGdldCBhY3Jvc3MgY2xlYXJseSB3aXRoIA0KPiBi
aW5hcnkgb3IgZGVjaW1hbCBzdWZmaXhlcywgYWx0aG91Z2ggdGhlIHZhbHVlIG11c3QgYmUg
ZXhhY3QuDQoNCkFncmVlZC4gIExldCdzIHRyeSB3aXRoIDMyTWktMS4NCg0KPiANCj4+PiAt
KHRoYXQgaXMsIDB4ZmVlMWRlYWQpIGFuZA0KPj4+ICsodGhhdCBpcywgMHhmZWUxXChhcWRl
YWQpIGFuZA0KPj4+IC0odGhhdCBpcywgNjcyMjc0NzkzKS4NCj4+PiArKHRoYXQgaXMsIDY3
MlwoYXEyNzRcKGFxNzkzIDB4MjgxMlwoYXExOTY5KS4NCj4+PiAtKHRoYXQgaXMsIDg1MDcy
Mjc4KQ0KPj4+ICsodGhhdCBpcywgODVcKGFxMDcyXChhcTI3OCAweDA1MTJcKGFxMTk5NikN
Cj4+PiAtKHRoYXQgaXMsIDM2OTM2NzQ0OCkNCj4+PiArKHRoYXQgaXMsIDM2OVwoYXEzNjdc
KGFxNDQ4IDB4MTYwNFwoYXExOTk4KQ0KPj4+IC0odGhhdCBpcywgNTM3OTkzMjE2KQ0KPj4+
ICsodGhhdCBpcywgNTM3XChhcTk5M1woYXEyMTYgMHgyMDExXChhcTIwMDApDQo+PiBJbiB0
aGVzZSBjYXNlcywgd2hlcmUgeW91IGFkZGVkIHRoZSBoZXggZXF1aXZhbGVudCwgSSB0aGlu
ayBpdCB3b3VsZCBuZWVkIGEgDQo+PiBjb21tYSBhcyBhIHNlcGFyYXRvciwgYW5kIG1heWJl
IHNvbWUgY29ubmVjdG9yPw0KPiANCj4gVGhhdCdzIHRoZSBkZWNpbWFsIGFuZCAiQkNEIiB2
YWx1ZXMgb2YgTGludXMgYW5kIGtpZCdzIGJpcnRoZGF0ZXMgaWYgeW91IGxvb2sgYXQgDQo+
IHRoZSBoZXgsIHRvIHdoaWNoIHRoZSBmb2xsb3dpbmcgIi4uLm1lYW5pbmdmdWwiIGNvbW1l
bnQgcmVmZXJzLg0KPiBTdWdnZXN0IHdlIHNlcGFyYXRlIHdpdGggYSBkYXNoLCBvciBJIHdv
bmRlcmVkIGlmIHdlIHNob3VsZCBqdXN0IGRyb3AgdGhlICJjdXRlIiANCj4gdmFsdWVzIGFu
ZCBjb21tZW50cz8NCg0KSSdkIHJhdGhlciBkcm9wIHRoZSBkZWNpbWFsIHZhbHVlcy4gIFRo
ZXkgYXJlIG1vcmUgbWVhbmluZ2Z1bCBhcyBoZXguDQoNCj4gVGhleSBhcmUgaW4gdGhlIGhl
YWRlciBpZiBhbnlvbmUgb3RoZXIgdGhhbiBMaW51cyBjYXJlcy4NCj4gDQo+Pj4gLXRoaXMg
bGltaXQgd2FzIDB4MjAwMDAwMCAoMzJcIE1CKS4NCj4+PiArdGhpcyBsaW1pdCB3YXMgMHgy
MDBcKGFxMDAwMCAoMzJcIE1pQikuDQo+PiBDb3VsZCB5b3UgcGxlYXNlIHNlcGFyYXRlIHRo
ZSBidWdmaXhlcyBzdWNoIGFzIHRoaXMgb25lIGluIGEgZGlmZmVyZW50IHBhdGNoLCANCj4+
IGlmIHlvdSBkb24ndCBtaW5kP8KgIEkgZG9uJ3QgY2FyZSBhYm91dCB0aGUgb3JkZXIgb2Yg
dGhlbSwgdGhvdWdoLg0KPj4+IC1BRlNfU1VQRVJfTUFHSUPCoMKgwqDCoMKgwqAgMHg1MzQ2
NDE0Zg0KPj4+IC1BTk9OX0lOT0RFX0ZTX01BR0lDwqDCoCAweDA5MDQxOTM0IC8qIEFub255
bW91cyBpbm9kZSBGUyAoZm9yDQo+Pj4gK0FGU19TVVBFUl9NQUdJQ8KgwqDCoMKgwqDCoCAw
eDUzNDZcKGFxNDE0Zg0KPj4+ICtBTk9OX0lOT0RFX0ZTX01BR0lDwqDCoCAweDA5MDRcKGFx
MTkzNCAvKiBBbm9ueW1vdXMgaW5vZGUgRlMgKA0KPj4gSSdtIGdldHRpbmcgYSBiaXQgY29u
ZnVzaW5nIHdoaWxlIHJlYWRpbmcgdGhlIGRpZmYuIFRoZSBcKGFxIHN5bnRheCBpcyANCj4+
IGRlZmluaXRlbHkgYSBiaXQgY29uZnVzaW5nIHdoZW4gbWl4ZWQgd2l0aCBvdGhlciByYW5k
b20gY2hhcmFjdGVycyB0aGF0IHRoZSANCj4+IGJyYWluIGRvZXNuJ3QgcmVjb2duaXplIGFz
IHdvcmRzLiBXZSBjYW4gc29sdmUgdGhpcyBieSB1c2luZyBcW2FxXSBub3RhdGlvbiwgDQo+
PiB3aGljaCBJIGxpa2UgbW9yZSBwZXJzb25hbGx5LiBQbGVhc2UgdXNlIHRoaXMgc3ludGF4
LiBXZSdsbCBhbHNvIG5lZWQgc29tZSANCj4+IGdsb2JhbCBmaXhlcyB0byBjaGFuZ2UgdGhl
IG5vdGF0aW9uIGFsbCBhY3Jvc3MgdGhlIHBhZ2VzLiBJJ20gbm90IGFza2luZyB5b3UNCj4+
IHRvIGRvIHRoaXMgdGhvdWdoLiBJdCdzIHByb2JhYmx5IGEgbG90IG9mIHdvcmsuIEkgY2Fu
IGRvIHRoYXQgYWZ0ZXIgeW91cg0KPj4gcGF0Y2hlcy4NCj4gDQo+IEFncmVlIGhlcmUsIHRo
YXQncyB3aHkgSSB3YW50ZWQgeW91IHRvIGhhdmUgYSBsb29rIGF0IHRoZSBjaGFuZ2VzIGZp
cnN0Lg0KPiANCj4+IE90aGVyIHRoYW4gdGhvc2UgbWlub3IgY29tbWVudHMsIEkgbGlrZSB0
aGUgZGlmZiB2ZXJ5IG11Y2guwqAgUGxlYXNlIGNvbnRpbnVlIDopDQo+IA0KDQpDaGVlcnMs
DQoNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQpH
UEcga2V5IGZpbmdlcnByaW50OiBBOTM0ODU5NENFMzEyODNBODI2RkJERDhENTc2MzNENDQx
RTI1QkI1DQo=

--------------ARKG32XX0GXImbwFqUBmRA2B--

--------------EvdEkKmQbDjysJgvS77fjQca
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPfr9UACgkQnowa+77/
2zKa0Q//dQ/pryhDJBmwZBazO60XSxJlhMBPV7f6ZADy3TMS5kzGtVCh0SjV4QSz
4C/d5lCV+rUWdQvMdbTl0ngrqdj4/DiN8TDjzwCGUFpHpQeCIJietWHjoVAdinHM
ujc3FgFvuyBwehvDQF/m4zIo+ZElXxxXCvvIA0a7HKDjCFHIJkeu8VY6Lc7Jg5Kp
rotJltcJjk7sjSSSfJmeqT+q9HIMoBxCQeoNRW5HOYeHC7nA+QP4redcT58cIGma
DXpbRdshdBXD7Tf9FmdEtuF2XK7exUWW/2korkVy1Ax71dCHvdIkApdbIK3ZpkFK
Bx1CQRcWMxNzx7LQnbcejhpc3Q8eoo34MV4hx+QU6PgJjOlZvJPSFESKhM0yGr9e
YIrqbQQ87mUp0XKFxafzjKvAmLXp5ta8IeWWXyfgHsFqAJGoDVq0ap1kxi16U4lP
AAcV0wHMwoV+928himQMSDQwRkAKb8VpMKWlu5UwZu4s/KnzNE3tQGEgl0BTKvR8
yy0+EtMv6GTdu+XKc6TZPfWdUlse9IjL/8Mx9NqAwnl9iFw/JzNQeutv0YWcneDG
pDM5HdMMMCDJD78oYYbIq/eLIaejfsBrGjpIM33Tpn2TKfJryj2v3+gWCrux5Dfp
SguTnuZ5wuY2lG2dVvso661P3bkFX40ORQ1wdqPv1WPus/P3ynE=
=ExE1
-----END PGP SIGNATURE-----

--------------EvdEkKmQbDjysJgvS77fjQca--
