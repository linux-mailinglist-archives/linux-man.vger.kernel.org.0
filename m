Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0914664D7C
	for <lists+linux-man@lfdr.de>; Tue, 10 Jan 2023 21:33:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233118AbjAJUci (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Jan 2023 15:32:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235132AbjAJUcQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Jan 2023 15:32:16 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79DD060CD2
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 12:29:55 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id bn26so13046363wrb.0
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 12:29:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dxJqAn/bHbktr8JD1mFDrUkt5I8IFHgkPyASuOI0VKk=;
        b=olWeQsnq40k95DQhvGeWOZGKLFXkaE0SBn0JLfJr0pFAxWeSKsl+JOhEsFuIevJYbu
         iXiT2cQBRIebwm7n7/g0g7JNUuw8QNFgw7PyvINKopO75EWmKvmKVNN3cF3FPHHvULlW
         bR7imwdpGRAgdrFun9Hy0GoEQTHQwl+f5xBYO/lmkjC9GqFmLnCXOmQQY2b2ruI0GEYd
         LHjipVs3nGzjwXnyYNGmUQPakLHXqiuu+hoQsfztEBxlyHJCdDAXwgH6W7pTjEYWJEYY
         LRTJYHB0k3ZSDtLtEsZbviQRFPZHeI53fpqegNUzm6iAZFb6khjS7aE21RzM4V/KzWqi
         LXVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dxJqAn/bHbktr8JD1mFDrUkt5I8IFHgkPyASuOI0VKk=;
        b=XN50zf2mgFYu5nmv1DmkMbcGwNLp6CV1NFlKQpKaxMt/wQUOswGHH8N7UCWFFLd7lE
         ulLC7vxLxsWAQ3cC/1zamZCQwUh4frbT1W3RANLYJrJbMgmsw8sPiLqpcnYt3gJXvCFt
         1HhkfKDPrMzS9SsIKSCzBcy5KasX3ebXk3v1Q8brkf6yDUXhCE4xsOR5H5BA47DGgcu9
         MFm1I1yGY7lZXRUjE4oAem2f4MzzlNJcqSMXhbPYf5GSuh37HToBhSVUWF2bH7elicZM
         rN+oarcmwRelyxH4VgXPlr2P7y3YuOVbgsfjWA3fVtjDAnVLNWOYrJ6m2rwxi1MpGI8i
         wg/A==
X-Gm-Message-State: AFqh2kprG16+hjIO+qgt0aid73CFyYyK43dpmVAfZEZo6OJE+hzlS9ua
        0Ae+shAALsW8b8qdIkS1ow0=
X-Google-Smtp-Source: AMrXdXvLL1mzHOIsCyzbZe/WsxzXNWsfqpYe6MFqtNR1peVYTeNRqXIUWyah0vWQM/sKaA/CRjpsvQ==
X-Received: by 2002:adf:db8d:0:b0:29f:4e42:33c3 with SMTP id u13-20020adfdb8d000000b0029f4e4233c3mr18126123wri.56.1673382593845;
        Tue, 10 Jan 2023 12:29:53 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k9-20020adfd229000000b002bdbef07f7csm1099316wrh.50.2023.01.10.12.29.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 12:29:53 -0800 (PST)
Message-ID: <b9ab937e-9aa4-59e3-f176-2737f41c6451@gmail.com>
Date:   Tue, 10 Jan 2023 21:29:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: man page width limit and example indentation (was: rseq(2) man
 page)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
        linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        groff@gnu.org
References: <095c479b-baed-9d11-08a1-e698f59763d9@efficios.com>
 <425ddf00-24a1-bf02-29f1-937ba1545020@gmail.com>
 <71b43f20-5d6d-f3f8-b3cd-786dfbc8d34d@gmail.com>
 <c8cb6136-6924-4fae-f4bb-981dec2e1952@efficios.com>
 <71e6728d-c2a8-e646-5c6c-2de8dfa982cc@gmail.com>
 <20230110190311.fk3outm4x2ojl4dm@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230110190311.fk3outm4x2ojl4dm@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Bh0T1jEGk81CY9fvYp9ekeOv"
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
--------------Bh0T1jEGk81CY9fvYp9ekeOv
Content-Type: multipart/mixed; boundary="------------tXTuLytDgTERx0XSkRI5QZR6";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>, groff@gnu.org
Message-ID: <b9ab937e-9aa4-59e3-f176-2737f41c6451@gmail.com>
Subject: Re: man page width limit and example indentation (was: rseq(2) man
 page)
References: <095c479b-baed-9d11-08a1-e698f59763d9@efficios.com>
 <425ddf00-24a1-bf02-29f1-937ba1545020@gmail.com>
 <71b43f20-5d6d-f3f8-b3cd-786dfbc8d34d@gmail.com>
 <c8cb6136-6924-4fae-f4bb-981dec2e1952@efficios.com>
 <71e6728d-c2a8-e646-5c6c-2de8dfa982cc@gmail.com>
 <20230110190311.fk3outm4x2ojl4dm@illithid>
In-Reply-To: <20230110190311.fk3outm4x2ojl4dm@illithid>

--------------tXTuLytDgTERx0XSkRI5QZR6
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS8xMC8yMyAyMDowMywgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNCj4gW2Zvcm1hdHRpbmcgaXNzdWVzOyBDQyBsaXN0IHRyaW1tZWQsIGFkZGVkIGdy
b2ZmQF0NCj4gDQo+IEF0IDIwMjMtMDEtMDZUMjM6NTc6MzUrMDEwMCwgQWxlamFuZHJvIENv
bG9tYXIgd3JvdGU6DQo+PiBPbiAxLzYvMjMgMjE6NTcsIE1hdGhpZXUgRGVzbm95ZXJzIHdy
b3RlOg0KPj4gVGhlIGxpbmUgYWJvdmUgZ29lcyBiZXlvbmQgY29sdW1uIDgwIGluIGZvcm1h
dHRlZCBvdXRwdXQuICBUaGF0J3MgYQ0KPj4gaGFyZCBsaW1pdCBmb3IgbWFudWFsIHBhZ2Vz
Lg0KPiANCj4gVGhlIGhhcmQgbGltaXQgc2hvdWxkIGJlIHRob3VnaHQgb2YgYXMgc29tZXdo
YXQgbG93ZXItLWFzIGxvdyBhcyA3Ni0taW4NCj4gcGFnZXMgdGhhdCB1c2UgdGJsKDEpLiAg
VGhpcyBpcyBkdWUgdG8gYSBncm9mZiBkZXNpZ24gaXNzdWUgdGhhdCBnb2VzDQo+IGJhY2sg
MzAgeWVhcnMuWzFdICBJIHdpbGwgdHJ5IHRvIHJlc29sdmUgaXQgZm9yIGdyb2ZmIDEuMjQg
YnV0IGl0IG1pZ2h0DQo+IGJlIHRoZSBiaWdnZXN0IGNoYWxsZW5nZSBJJ3ZlIHlldCB1bmRl
cnRha2VuIHdpdGggdGhlIGNvZGViYXNlLiAgSXQgd2lsbA0KPiByZXF1aXJlIGEgcmVkZXNp
Z24gb2YgaG93IHRibCgxKSBnZXRzIGluZm9ybWF0aW9uIHRocm91Z2ggdG8gdGhlDQo+IHRl
cm1pbmFsIG91dHB1dCBkcml2ZXIsIGdyb3R0eSgxKS4NCj4gDQo+IChNeSBmb3JtZXIgYWR2
aWNlIHdhcyA3OCBjb2x1bW5zOyBJIGFtIHJldmlzaW5nIHRoYXQgYWR2aWNlIGluIGEgbW9y
ZQ0KPiBjb25zZXJ2YXRpdmUgZGlyZWN0aW9uIGhhdmluZyBkdWcgbW9yZSBkZWVwbHkgaW50
byB0YmwoMSkgYmVoYXZpb3IuKQ0KDQpUaGUgdGVybWluYWwgaXMgODAgY29scywgc28gSSBl
eHBlY3QgdGhhdCBzZXR0aW5nIGEgaGFyZCBsaW1pdCBvZiA4MCB0byB0aGUgDQpvdXRwdXQg
c2hvdWxkIGJlIGZpbiwgcmlnaHQ/DQoNCg0KdGJsIG1hbjIvcGVyZl9ldmVudF9vcGVuLjIg
XA0KfCBlcW4gLVR1dGY4ICBcDQp8IHRyb2ZmIC1tYW4gLXQgLU0gLi9ldGMvZ3JvZmYvdG1h
YyAtbSBjaGVja3N0eWxlIC1yQ0hFQ0tTVFlMRT0zIC13dyAtVHV0ZjggDQotckxMPTc4biAg
XA0KfCBncm90dHkgLWMgIFwNCnwgY29sIC1iIC1wIC14ICBcDQp8ICghIGdyZXAgLW4gJy5c
ezgwXH0uJyB8IHNlZCAncyxeLG1hbjIvcGVyZl9ldmVudF9vcGVuLjI6LCcgPiYyKQ0KDQoN
Ck9yIGRvIHlvdSB0aGluayB0aGF0IEkgc2hvdWxkIGNoYW5nZSB0aGF0IHJ1bGU/ICBJbiB0
aGUgZW5kLCB0aGF0IGdyZXAgb25seSANCnRlc3RzIHdoYXQgdXNlcnMgd2lsbCBzZWUuICBJ
dCBjYW4ndCBtZWFzdXJlIGFueXRoaW5nIGVsc2UuDQoNCklmIHlvdSB0aGluayBJIGNhbiBh
ZGQgYW55IG90aGVyIHRlc3QsIHBsZWFzZSBzdWdnZXN0IGl0LCBiZWNhdXNlIEknbSBub3Qg
c3VyZSBJIA0KdW5kZXJzdGFuZCBpdC4NCg0KQXMgZm9yIHlvdXIgZXhhbXBsZSwgSSBwdXQg
aXQgaW4gYW4gYWN0dWFsIG1hbiBwYWdlIChhZGRlZCBUSCBhbmQgU0gpLCBhbmQgDQpyZW1v
dmVkIGxsLCBhbmQgaXQgc3RpbGwgc2hvd2VkIHdlaXJkIG5vIG1hdHRlciB3aGF0IHRoZSB0
ZXJtaW5hbCB3aWR0aCB3YXMsIHNvIA0KSSBkb24ndCByZWFsbHkgdW5kZXJzdGFuZCBpdC4g
IEhvd2V2ZXIsIGl0IHNob3dzIGJhZGx5LCBzbyBJIGhvcGUgd2hhdGV2ZXIgdGhlIA0KaXNz
dWUgaXMsIHlvdSBmaXggaXQgZm9yIDEuMjQgOikNCg0KWy4uLl0NCg0KPiBQcmFjdGljYWwg
QWR2aWNlIGZvciBNYW4gUGFnZSBBdXRob3JzDQo+ID09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT0NCj4gDQo+IEEuICBUaGUgODAtY29sdW1uIGxpbWl0IG9uIG91dHB1
dCBsaW5lIGxlbmd0aCBmb3IgdGVybWluYWxzIGlzICJzYWZlIiBpZg0KPiAgICAgIHRibCgx
KSBpcyBub3QgdXNlZC4NCg0KSWYgaXQgaXMgdXNlZCwgaXQgaXMgYWxzbyB0aGUgb25seSBs
aW1pdCB0aGF0IG1ha2VzIHNlbnNlLCBpc24ndCBpdD8gIFBsZWFzZSANCnNob3cgc29tZSBh
Y3R1YWwgbWFudWFsIHBhZ2Ugd2l0aCB3aGljaCBJIGNhbiByZXByb2R1Y2UgYSBidWcgd2hl
biB0aGUgdGVybWluYWwgDQppc24ndCB3aWRlIGVub3VnaC4NCg0KWy4uLl0NCg0KPj4gRm9y
IGNvZGUgZXhhbXBsZXMgd2UgdXNlIC5pbiArNG4gcmF0aGVyIHRoYW4gLlJTLiAgSSBkb24n
dCByZW1lbWJlcg0KPj4gdGhlIGV4YWN0IHJlYXNvbiwgYnV0IGl0IGhhZCBzb21lIGdsaXRj
aGVzIGluIHNvbWUgY2FzZXMuDQo+IA0KPiBUaGVyZSB3ZXJlIG5vIGdsaXRjaGVzIHRoYXQg
SSByZWNhbGwsIGJ1dCBNaWNoYWVsIHdhbnRlZCB0aGUgbWFuKDcpDQo+IHNvdXJjZSB0byBi
ZSBpbiBhIGZvcm0gd2hlcmUgZXhhbXBsZXMgY291bGQgYmUgbW92ZWQgZnJlZWx5IGJldHdl
ZW4NCj4gdmFyaW91cyBjb250ZXh0cyB3aXRob3V0IG5lZWRpbmcgYW55IGludGVybmFsIGFs
dGVyYXRpb24uICBUaGUNCj4gZGlzY3Vzc2lvbiB3YXMgaW4gTm92ZW1iZXIgMjAyMC4gIFRo
ZSBmb2xsb3dpbmcgbWVzc2FnZSBhbmQgaGlzIHJlcGx5DQo+IGNhcHR1cmUgdGhlIGJvdW5k
YXJpZXMgb2YgdGhlIHByb2JsZW0uDQo+IA0KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9s
aW51eC1tYW4vMjAyMDExMTMwOTQ3NTUuYmc2cGw3ZzJzNWgydzRtdUBsb2NhbGhvc3QubG9j
YWxkb21haW4vDQoNCkFoaCwgdGhhbmtzLiAgU28geWVzLCB0aGVyZSB3YXMgYSBnbGl0Y2g6
IFJTIGZvcmNlZCBhIGJsYW5rIGxpbmUsIHdoaWNoIG1heSBub3QgDQpiZSBkZXNpcmFibGUg
aW4gYWxsIGNhc2VzLg0KDQo+IA0KPiBUaGVyZSBpcyBhIGxpbWl0IHRvIE1pY2hhZWwncyBz
b2x1dGlvbiwgYnV0IGlmIHRoZSBMaW51eCBtYW4gcGFnZXMgZG9uJ3QNCj4gZ28gYm9ua2Vy
cyB3aXRoIGRlZXBseSBuZXN0ZWQgcmVnaW9ucywgaXQncyB3b3JrYWJsZS4gIChJZiB0aGV5
IGRvLCB0aGVuDQo+IG1pZ3JhdGluZyBleGFtcGxlcyBtYXkgbmVlZCB0byBiZSByZWZvcm1h
dHRlZCBkdWUgdG8gY2hhbmdlcyBpbiB0aGUNCj4gYXZhaWxhYmxlIGxpbmUgbGVuZ3RoOyB0
aGUgbW9yZSB5b3UgaW5kZW50LCB0aGUgbGVzcyB0aGVyZSBpcy4pDQo+IA0KPiBJdCB3b3Vs
ZCBwbGVhc2UgbWUgdG8gY29tZSB1cCB3aXRoIGEgd2F5LCBwb3NzaWJseSBhIGdyb2ZmIG1h
big3KQ0KPiBleHRlbnNpb24gKHNtYWxsZXIgdGhhbiBtb3N0LCBsaWtlIHJlY29nbml0aW9u
IG9mIGEgc2Vjb25kIGFyZ3VtZW50IHRvDQo+IHRoZSBgUlNgIG1hY3JvKSwgdGhhdCB3b3Vs
ZCBlbmFibGUgInB1cmVyIiBtYW4oNykgaW5wdXQgd2l0aG91dCByZWNvdXJzZQ0KPiB0byB0
cm9mZiByZXF1ZXN0cy4NCj4gDQo+IC4uLmJ1dCBpdCBtaWdodCBub3QgYmUgd29ydGggaXQu
ICBJZiB5b3UgcmVsb2NhdGUgYW4gZXhhbXBsZSBmcm9tIGENCj4gaGVhdmlseS1pbmRlbnRl
ZCByZWdpb24gdG8gYSBsZXNzLWluZGVudGVkIG9uZSwgeW91IF9nYWluXyBzb21lIGxpbmUN
Cj4gbGVuZ3RoLCBhbmQgdGhpcyBpcyBub3QgYW4gZXJyb3IgY29uZGl0aW9uLiAgQWJicmV2
aWF0aW9ucyBvcg0KPiBjb21wcm9taXNlcyB5b3UgbWFkZSBpbiBhbiBleGFtcGxlJ3MgZm9y
bWF0dGluZyBtaWdodCBubyBsb25nZXIgYmUNCj4gbmVjZXNzYXJ5LCBhbmQgb25seSBhbiBl
bmdhZ2VkIGh1bWFuIGJyYWluIHdpbGwgZGV0ZWN0IHRoZSBmYWN0IHRoYXQgdGhlDQo+IGV4
YW1wbGUgY2FuIGJlIHJlY2FzdCB0byBsZXZlcmFnZSB0aGUgYWRkZWQgbGluZSBjYXBhY2l0
eS4NCj4gDQo+IEkgZG9uJ3QgdGhpbmsgQ2hhdEdQVCBpcyB0byB1cCB0aGF0IHNvcnQgb2Yg
dGhpbmcuICBZZXQuDQoNCkZ1biB0aGluZzogTXkgZGFkIHRhbGtlZCB0byBtZSBhYm91dCBD
aGF0R1BUIGEgY291cGxlIG9mIHdlZWtzIGFnbyAoSSBoYWQgbmV2ZXIgDQpoZWFyZCBvZiBp
dCkuICBXZSB0cmllZCBpdCB3aXRoIHNvbWUgY29kZTsgSSBzaG93ZWQgYSBmdW5jdGlvbiBJ
IGhhZCB3cml0dGVuLCANCmFuZCBhc2tlZCBpdCB0byByZXZpZXcgaXQuICBDaGF0R1BUIHBy
b3Bvc2VkIGFuIGFsdGVybmF0aXZlIGltcGxlbWVudGF0aW9uLCBidXQgDQppdCBpbnRyb2R1
Y2VkIHR3byBidWdzLiAgOlANCg0KPiANCj4gUmVnYXJkcywNCj4gQnJhbmRlbg0KDQpDaGVl
cnMsDQoNCkFsZXgNCg0KPiANCj4gWzFdIGh0dHBzOi8vc2F2YW5uYWguZ251Lm9yZy9idWdz
L2luZGV4LnBocD82MjQ3MQ0KPiBbMl0gaHR0cHM6Ly9zYXZhbm5haC5nbnUub3JnL2J1Z3Mv
aW5kZXgucGhwPzYxNTk3DQo+IFszXSBodHRwczovL3NhdmFubmFoLmdudS5vcmcvYnVncy9p
bmRleC5waHA/NjM0NDkNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5l
cy8+DQo=

--------------tXTuLytDgTERx0XSkRI5QZR6--

--------------Bh0T1jEGk81CY9fvYp9ekeOv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO9yrMACgkQnowa+77/
2zLwPw/+JG8HMLZprzGtPg5zoRAMzCNR5bYrBW8GIuE6RFA/hZ3O3ViuWX1vhx9i
4Nvz9MYVB3DsVVmLE4c61yby2BGg7GkFheEVdFvn79zX1ET1w6CbgxQupsUqzI3g
eqaQLtjN/0Af1iL61qIwsue6iy5RRw5ohA/igYpTTwq+ITqPnHgUMwaWdEGZP35h
rQGYs3I0qL/ib+0h20/DJr45OwFHteHqJ0qZu4W1V2xNKQHodlcKKmbgjfHhmLPQ
bD4FYF5NQi0ozt9JhJUxjTaEabwysxrACLnVF9oId5jNrrtxy+rDJGMMPnJQA3+A
fHPcMhiI0XXpb+/T46/5G1Q6tBbo55eAmUW5sk/pWsbi1mSyeZ9EfJaa3t7LqaJe
i4GQfKY6wB/v++gI/uOs2nbxhCYsWMGZp1GGQ64upfgZIKfR0nLXwSednsGfrf3V
uTT1d3BMxmwmAp0Ksln2kbal6MV46h/LenTaLJGO/klgKZtLCDPU4ortcldqAqQ/
c91YaYEhiXhDy6cq3eV+liso4ON21QGrNH3tYEj3lVU/A5vQXwW9INwwagswlzYp
6Evlw0p+A8Oarq5gXpLxZt+FfQJX/52e6eUueWdWKrw0zS4xwdbI/rfjFRUB6vVq
UwYNaeMfA0T13S/7bHdGoSrr8uVZb/YjpRodyiWPTbwR15JJTzs=
=fZZB
-----END PGP SIGNATURE-----

--------------Bh0T1jEGk81CY9fvYp9ekeOv--
