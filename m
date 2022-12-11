Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30A5464968F
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 22:55:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229708AbiLKVz0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 16:55:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbiLKVzZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 16:55:25 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0FEAD2F2
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 13:55:23 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id b24-20020a05600c4a9800b003d21efdd61dso2148071wmp.3
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 13:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r9mE5y/2xqey2VWTO6V6JJHBLf9uZsO3viRZkleu1GA=;
        b=JpWvNOEkxegDlKuRlIo+mQKhAtsG0659QlYCEsHX/O0werY+buvHBvQ9HCH10RowZR
         Y8EkNyLRsRJSSrQ8UdYs4e/2zuergUdaf4ms9Rx740Fj4T1aGevAsefZZkdyU+2JHIwY
         phzuw1BKmuN4vjTlysmqQIbI3vW7eng8kBuKQBqQlC6S0Sg6Z+KdFjG0KpbrGG82ilkg
         V7FIyTavH79+a5r6Yk71ei+aORvB9PCG0wlvgxdkouFkDMVhyY+IISrixawx9gU5Vo8s
         tEfWDjHrPRqWT2um1Py3lg8+0pgZnFwPmm8AGXjmDxWxQZxNj2DgciYKww7ATXobu2E2
         dNJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=r9mE5y/2xqey2VWTO6V6JJHBLf9uZsO3viRZkleu1GA=;
        b=rdWciTcU7IIgoPdS/YMNh/ol5gyVbIGJahpDKQsztT7hmQJX+M2QhkbI5nauG5/Rg8
         TzHDxjoaf0g/RmQYvMLyS7w3uptQJvBuXq03ltP8AJKOsiYjCDlCKOfgG6f0kygI3GiK
         40zXzasd6Phq22xfivpoGo9WoTK9Fo/4A7OT1BuDKEdAjtFi4s6lMd8+heOiKOVLD1A/
         WLdbb2HUr/vEFpPjPJn9FYfWWUsOQVSReuX5VBoaNH7Pcz8JXzD6ZIGzu0y5iu9WGak2
         tGQ+7vI+JQfJf1nSugAXtQlUifZkSuQnk6eyeRs2eQ/shQPwG9qlccglocnxb/5+B7uH
         zZew==
X-Gm-Message-State: ANoB5pmeAKBw8z8zaLcmqPTeXBWO15m/z0lN7y+wJrkA6CljANGFB7p1
        49AjocgvioE+/Rvs5WfYxJg=
X-Google-Smtp-Source: AA0mqf46Ai7t5aHDcdVzL/oDbNblN3rVzrNWsDAUXLKEicOuebb+Pxzb5DZKNo9HjKrkgkCNCSFFPg==
X-Received: by 2002:a7b:c358:0:b0:3d1:f882:43eb with SMTP id l24-20020a7bc358000000b003d1f88243ebmr10332821wmj.10.1670795722332;
        Sun, 11 Dec 2022 13:55:22 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o25-20020a05600c511900b003c6f8d30e40sm7403365wms.31.2022.12.11.13.55.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 13:55:21 -0800 (PST)
Message-ID: <f5e276a1-cfb5-4b92-37d2-4630cc55bbc1@gmail.com>
Date:   Sun, 11 Dec 2022 22:55:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH man-pages v3 4/4] madvise.2: add documentation for
 MADV_COLLAPSE
Content-Language: en-US
To:     Zach O'Keefe <zokeefe@google.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-5-zokeefe@google.com>
 <374b1dcd-6a2c-a452-9c1b-9f5945df493b@gmail.com>
 <CAAa6QmQU5T9E1kCxE3MpU6ybp0vR6kftwJiw68+5X14PoD-a5A@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAAa6QmQU5T9E1kCxE3MpU6ybp0vR6kftwJiw68+5X14PoD-a5A@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------zK7sesrMELsoP7p0BDmKAupE"
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
--------------zK7sesrMELsoP7p0BDmKAupE
Content-Type: multipart/mixed; boundary="------------HgSae0hT7GF7wFdIqjmFvjGP";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zach O'Keefe <zokeefe@google.com>
Cc: Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
 linux-man@vger.kernel.org
Message-ID: <f5e276a1-cfb5-4b92-37d2-4630cc55bbc1@gmail.com>
Subject: Re: [PATCH man-pages v3 4/4] madvise.2: add documentation for
 MADV_COLLAPSE
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-5-zokeefe@google.com>
 <374b1dcd-6a2c-a452-9c1b-9f5945df493b@gmail.com>
 <CAAa6QmQU5T9E1kCxE3MpU6ybp0vR6kftwJiw68+5X14PoD-a5A@mail.gmail.com>
In-Reply-To: <CAAa6QmQU5T9E1kCxE3MpU6ybp0vR6kftwJiw68+5X14PoD-a5A@mail.gmail.com>

--------------HgSae0hT7GF7wFdIqjmFvjGP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGV5IFphY2gsDQoNCk9uIDEyLzExLzIyIDIyOjUxLCBaYWNoIE8nS2VlZmUgd3JvdGU6DQo+
IE9uIFN1biwgRGVjIDExLCAyMDIyIGF0IDk6NTkgQU0gQWxlamFuZHJvIENvbG9tYXINCj4g
PGFseC5tYW5wYWdlc0BnbWFpbC5jb20+IHdyb3RlOg0KPj4NCj4+IEhpIFphY2gsDQo+IA0K
PiBIZXkgQWxleCwNCj4gDQo+PiBPbiAxMC8yMi8yMiAwMDozMywgWmFjaCBPS2VlZmUgd3Jv
dGU6DQo+Pj4gRnJvbTogWmFjaCBPJ0tlZWZlIDx6b2tlZWZlQGdvb2dsZS5jb20+DQo+Pj4N
Cj4+PiBMaW51eCA2LjEgaW50cm9kdWNlZCBNQURWX0NPTExBUFNFIGluIHVwc3RyZWFtIGNv
bW1pdCA3ZDhmYWFmMTU1NDUNCj4+PiAoIm1tL21hZHZpc2U6IGludHJvZHVjZSBNQURWX0NP
TExBUFNFIHN5bmMgaHVnZXBhZ2UgY29sbGFwc2UiKSBhbmQNCj4+PiB1cHN0cmVhbSBjb21t
aXQgMzQ0ODgzOTlmYTA4ICgibW0vbWFkdmlzZTogYWRkIGZpbGUgYW5kIHNobWVtIHN1cHBv
cnQgdG8NCj4+PiBNQURWX0NPTExBUFNFIikuICBVcGRhdGUgdGhlIG1hbi1wYWdlcyBmb3Ig
bWFkdmlzZSgyKSBhbmQNCj4+PiBwcm9jZXNzX21hZHZpc2UoMikuDQo+Pj4NCj4+PiBMaW5r
OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tbS8yMDIyMDkyMjIyNDA0Ni4xMTQz
MjA0LTEtem9rZWVmZUBnb29nbGUuY29tLw0KPj4+IExpbms6IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xpbnV4LW1tLzIwMjIwNzA2MjM1OTM2LjIxOTcxOTUtMS16b2tlZWZlQGdvb2ds
ZS5jb20vDQo+Pj4gU2lnbmVkLW9mZi1ieTogWmFjaCBPJ0tlZWZlIDx6b2tlZWZlQGdvb2ds
ZS5jb20+DQo+Pg0KPj4gUGxlYXNlIHNlZSBhIGZldyBjb21tZW50cyBiZWxvdy4NCj4+DQo+
IA0KPiBUaGFua3MgZm9yIHRoZSBtYWlsLiBTbywgdGhpcyBwYXRjaCB3YXMgdGFrZW4gYXMg
Y29tbWl0IGIxMDZjZDViZg0KPiAoIm1hZHZpc2UuMjogYWRkIGRvY3VtZW50YXRpb24gZm9y
IE1BRFZfQ09MTEFQU0UiKS4gU29tZSBvZiB5b3VyDQo+IGNvbW1lbnRzIGJlbG93IHdlcmUN
Cj4gYXBwbGllZCAoSSB0aGluaywgYnkgeW91KSBhcyBmaXhlcyBwcmUtY29tbWl0LiBIb3dl
dmVyLCB0aGVyZSBhcmUgc29tZQ0KPiBuZXcgY29tbWVudHMgKG9yIG9uZXMNCj4gdGhhdCBh
ZGRyZXNzIHRoZSBzYW1lIGxpbmVzLCBidXQgaW4gZGlmZmVyZW50IHdheXMpLiBJcyB0aGlz
IG1haWwgdG8NCj4gbG9nIH4gd2hhdCBjaGFuZ2VzIHdlcmUgZG9uZSwNCj4gb3IgaXMgdGhl
cmUgYW55dGhpbmcgYWN0aW9uYWJsZSBoZXJlIG9uIG15IHNpZGU/DQoNCkFoIG5vLCBpdCdz
IGp1c3QgdGhhdCBJIGhhZCBpdCBtYXJrZWQgYXMgdW5yZWFkIGZvciBzb21lIHJlYXNvbiwg
c28gSSB0aG91Z2h0IEkgDQpoYWQgZm9yZ290dGVuIHRvIHJlc3BvbmQgKGFuZCBJIGZvcmdv
dCB0aGF0IEkgaGFkIGFwcGxpZWQgaXQpLiAgOi0pDQoNClNvLCBubyBhY3Rpb24gcmVxdWly
ZWQuDQoNClJlZ2FyZGluZyBkaWZmZXJlbnQgc3VnZ2VzdGlvbnMsIGhlaCwgaXQgZGVtb25z
dHJhdGVzIHRoYXQgaXQncyBub3QgZXhhY3RseSANCmRldGVybWluaXN0aWMgOlANCg0KQ2hl
ZXJzLA0KDQpBbGV4DQoNClAuUy46IERvIHlvdSBrbm93IGlmIEkgaGF2ZSBhbnl0aGluZyBt
aXNzaW5nIGZyb20geW91IG9yIGFueSBvZiB5b3VyIGNvbGxlZ3Vlcz8NCg0KPiANCj4gQmVz
dCwNCj4gWmFjaA0KPiANCj4gVGhhbmtzIGZvciB0aGlzLg0KPj4gQ2hlZXJzLA0KPj4NCj4+
IEFsZXgNCj4+DQo+Pj4gLS0tDQo+Pj4gICAgbWFuMi9tYWR2aXNlLjIgICAgICAgICB8IDkw
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLQ0KPj4+ICAgIG1h
bjIvcHJvY2Vzc19tYWR2aXNlLjIgfCAxMCArKysrKw0KPj4+ICAgIDIgZmlsZXMgY2hhbmdl
ZCwgOTggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4+Pg0KPj4+IGRpZmYgLS1n
aXQgYS9tYW4yL21hZHZpc2UuMiBiL21hbjIvbWFkdmlzZS4yDQo+Pj4gaW5kZXggZGYzNDEz
Y2M4Li5iMDNmYzczMWQgMTAwNjQ0DQo+Pj4gLS0tIGEvbWFuMi9tYWR2aXNlLjINCj4+PiAr
KysgYi9tYW4yL21hZHZpc2UuMg0KPj4+IEBAIC0zODUsOSArMzg1LDEwIEBAIHNldCAoc2Vl
DQo+Pj4gICAgLkJSIHByY3RsICgyKSApLg0KPj4+ICAgIC5JUA0KPj4+ICAgIFRoZQ0KPj4+
IC0uQiBNQURWX0hVR0VQQUdFDQo+Pj4gKy5CUiBNQURWX0hVR0VQQUdFICwNCj4+PiArLkJS
IE1BRFZfTk9IVUdFUEFHRSAsDQo+Pj4gICAgYW5kDQo+Pj4gLS5CIE1BRFZfTk9IVUdFUEFH
RQ0KPj4+ICsuQiBNQURWX0NPTExBUFNFDQo+Pj4gICAgb3BlcmF0aW9ucyBhcmUgYXZhaWxh
YmxlIG9ubHkgaWYgdGhlIGtlcm5lbCB3YXMgY29uZmlndXJlZCB3aXRoDQo+Pj4gICAgLkIg
Q09ORklHX1RSQU5TUEFSRU5UX0hVR0VQQUdFDQo+Pj4gICAgYW5kIGZpbGUvc2htZW0gbWVt
b3J5IGlzIG9ubHkgc3VwcG9ydGVkIGlmIHRoZSBrZXJuZWwgd2FzIGNvbmZpZ3VyZWQgd2l0
aA0KPj4+IEBAIC00MDAsNiArNDAxLDgxIEBAIGFuZA0KPj4+ICAgIC5JIGxlbmd0aA0KPj4+
ICAgIHdpbGwgbm90IGJlIGJhY2tlZCBieSB0cmFuc3BhcmVudCBodWdlcGFnZXMuDQo+Pj4g
ICAgLlRQDQo+Pj4gKy5CUiBNQURWX0NPTExBUFNFICIgKHNpbmNlIExpbnV4IDYuMSkiDQo+
Pj4gKy5cIiBjb21taXQgN2Q4ZmFhZjE1NTQ1NGY4Nzk4ZWM1NjQwNGZhY2EyOWE4MjY4OWM3
Nw0KPj4+ICsuXCIgY29tbWl0IDM0NDg4Mzk5ZmEwOGZhYWY2NjQ3NDNmYTU0YjI3MWViNmY5
ZTEzMjENCj4+PiArUGVyZm9ybSBhIGJlc3QtZWZmb3J0IHN5bmNocm9ub3VzIGNvbGxhcHNl
IG9mIHRoZSBuYXRpdmUgcGFnZXMgbWFwcGVkIGJ5IHRoZQ0KPj4NCj4+IFBsZWFzZSB1c2Ug
c2VtYW50aWMgbGluZSBicmVha3MuICBJbiB0aGlzIGNhc2UsIEknZCBicmVhayBhZnRlciAi
cGFnZXMiLg0KPj4NCj4+IG1hbi1wYWdlcyg3KToNCj4+ICAgICAgVXNlIHNlbWFudGljIG5l
d2xpbmVzDQo+PiAgICAgICAgICBJbiAgdGhlIHNvdXJjZSBvZiBhIG1hbnVhbCBwYWdlLCBu
ZXcgc2VudGVuY2VzIHNob3VsZCBiZSBzdGFydGVkIG9uIG5ldw0KPj4gICAgICAgICAgbGlu
ZXMsIGxvbmcgc2VudGVuY2VzIHNob3VsZCBiZSBzcGxpdCBpbnRvIGxpbmVzIGF0IGNsYXVz
ZSBicmVha3MgKGNvbeKAkA0KPj4gICAgICAgICAgbWFzLCBzZW1pY29sb25zLCBjb2xvbnMs
IGFuZCBzbyBvbiksIGFuZCBsb25nIGNsYXVzZXMgc2hvdWxkICBiZSAgc3BsaXQNCj4+ICAg
ICAgICAgIGF0ICBwaHJhc2UgIGJvdW5kYXJpZXMuICAgVGhpcyBjb252ZW50aW9uLCBzb21l
dGltZXMga25vd24gYXMgInNlbWFudGljDQo+PiAgICAgICAgICBuZXdsaW5lcyIsIG1ha2Vz
IGl0IGVhc2llciB0byBzZWUgdGhlIGVmZmVjdCBvZiAgcGF0Y2hlcywgIHdoaWNoICBvZnRl
bg0KPj4gICAgICAgICAgb3BlcmF0ZSBhdCB0aGUgbGV2ZWwgb2YgaW5kaXZpZHVhbCBzZW50
ZW5jZXMsIGNsYXVzZXMsIG9yIHBocmFzZXMuDQo+Pg0KPj4+ICttZW1vcnkgcmFuZ2UgaW50
byBUcmFuc3BhcmVudCBIdWdlIFBhZ2VzIChUSFBzKS4NCj4+PiArLkIgTUFEVl9DT0xMQVBT
RQ0KPj4+ICtvcGVyYXRlcyBvbiB0aGUgY3VycmVudCBzdGF0ZSBvZiBtZW1vcnkgb2YgdGhl
IGNhbGxpbmcgcHJvY2VzcyBhbmQgbWFrZXMgbm8NCj4+DQo+PiBIZXJlIEknZCBicmVhayBh
ZnRlciAiYW5kIi4NCj4+DQo+Pj4gK3BlcnNpc3RlbnQgY2hhbmdlcyBvciBndWFyYW50ZWVz
IG9uIGhvdyBwYWdlcyB3aWxsIGJlIG1hcHBlZCwNCj4+PiArY29uc3RydWN0ZWQsDQo+Pj4g
K29yIGZhdWx0ZWQgaW4gdGhlIGZ1dHVyZS4NCj4+PiArLklQDQo+Pj4gKy5CIE1BRFZfQ09M
TEFQU0UNCj4+PiArc3VwcG9ydHMgcHJpdmF0ZSBhbm9ueW1vdXMgcGFnZXMgKHNlZQ0KPj4+
ICsuQlIgbW1hcCAoMikpLA0KPj4+ICtzaG1lbSBwYWdlcywNCj4+PiArYW5kIGZpbGUtYmFj
a2VkIHBhZ2VzLg0KPj4+ICtTZWUNCj4+PiArLkIgTUFEVl9IVUdFUEFHRQ0KPj4+ICtmb3Ig
Z2VuZXJhbCBpbmZvcm1hdGlvbiBvbiBtZW1vcnkgcmVxdWlyZW1lbnRzIGZvciBUSFAuDQo+
Pj4gK0lmIHRoZSByYW5nZSBwcm92aWRlZCBzcGFucyBtdWx0aXBsZSBWTUFzLA0KPj4+ICt0
aGUgc2VtYW50aWNzIG9mIHRoZSBjb2xsYXBzZSBvdmVyIGVhY2ggVk1BIGlzIGluZGVwZW5k
ZW50IGZyb20gdGhlIG90aGVycy4NCj4+PiArSWYgY29sbGFwc2Ugb2YgYSBnaXZlbiBodWdl
IHBhZ2UtYWxpZ25lZC9zaXplZCByZWdpb24gZmFpbHMsDQo+Pj4gK3RoZSBvcGVyYXRpb24g
bWF5IGNvbnRpbnVlIHRvIGF0dGVtcHQgY29sbGFwc2luZyB0aGUgcmVtYWluZGVyIG9mIHRo
ZQ0KPj4NCj4+IEJyZWFrIGFmdGVyICJjb2xsYXBzaW5nIi4NCj4+DQo+Pj4gK3NwZWNpZmll
ZCBtZW1vcnkuDQo+Pj4gKy5CIE1BRFZfQ09MTEFQU0UNCj4+PiArd2lsbCBhdXRvbWF0aWNh
bGx5IGNsYW1wIHRoZSBwcm92aWRlZCByYW5nZSB0byBiZSBodWdlcGFnZS1hbGlnbmVkLg0K
Pj4+ICsuSVANCj4+PiArQWxsIG5vbi1yZXNpZGVudCBwYWdlcyBjb3ZlcmVkIGJ5IHRoZSBy
YW5nZSB3aWxsIGZpcnN0IGJlDQo+Pg0KPj4gQnJlYWsgYWZ0ZXIgInJhbmdlIi4NCj4+DQo+
Pj4gK3N3YXBwZWQvZmF1bHRlZC1pbiwNCj4+PiArYmVmb3JlIGJlaW5nIGNvcGllZCBvbnRv
IGEgZnJlc2hseSBhbGxvY2F0ZWQgaHVnZXBhZ2UuDQo+Pj4gK0lmIHRoZSBuYXRpdmUgcGFn
ZXMgY29tcG9zZSB0aGUgc2FtZSBQVEUtbWFwcGVkIGh1Z2VwYWdlLA0KPj4+ICthbmQgYXJl
IHN1aXRhYmx5IGFsaWduZWQsDQo+Pj4gK2FsbG9jYXRpb24gb2YgYSBuZXcgaHVnZXBhZ2Ug
bWF5IGJlIGVsaWRlZCBhbmQgY29sbGFwc2UgbWF5IGhhcHBlbg0KPj4NCj4+IEJyZWFrIGJl
Zm9yZSBvciBhZnRlciAiYW5kIi4NCj4+DQo+Pj4gK2luLXBsYWNlLg0KPj4+ICtVbm1hcHBl
ZCBwYWdlcyB3aWxsIGhhdmUgdGhlaXIgZGF0YSBkaXJlY3RseSBpbml0aWFsaXplZCB0byAw
IGluIHRoZSBuZXcNCj4+DQo+PiBCcmVhayBhZnRlciAiMCIuDQo+Pg0KPj4+ICtodWdlcGFn
ZS4NCj4+PiArSG93ZXZlciwNCj4+PiArZm9yIGV2ZXJ5IGVsaWdpYmxlIGh1Z2VwYWdlLWFs
aWduZWQvc2l6ZWQgcmVnaW9uIHRvIGJlIGNvbGxhcHNlZCwNCj4+PiArYXQgbGVhc3Qgb25l
IHBhZ2UgbXVzdCBjdXJyZW50bHkgYmUgYmFja2VkIGJ5IHBoeXNpY2FsIG1lbW9yeS4NCj4+
PiArLklQDQo+Pj4gKy5CUiBNQURWX0NPTExBUFNFDQo+Pg0KPj4gcy9CUi9CLw0KPj4NCj4+
PiAraXMgaW5kZXBlbmRlbnQgb2YgYW55IHN5c2ZzDQo+Pj4gKyhzZWUNCj4+PiArLkJSIHN5
c2ZzICg1KSkNCj4+PiArc2V0dGluZyB1bmRlcg0KPj4+ICsuSVIgL3N5cy9rZXJuZWwvbW0v
dHJhbnNwYXJlbnRfaHVnZXBhZ2UgLA0KPj4+ICtib3RoIGluIHRlcm1zIG9mIGRldGVybWlu
aW5nIFRIUCBlbGlnaWJpbGl0eSwNCj4+PiArYW5kIGFsbG9jYXRpb24gc2VtYW50aWNzLg0K
Pj4+ICtTZWUgTGludXgga2VybmVsIHNvdXJjZSBmaWxlDQo+Pj4gKy5JIERvY3VtZW50YXRp
b24vYWRtaW5cLWd1aWRlL21tL3RyYW5zaHVnZS5yc3QNCj4+PiArZm9yIG1vcmUgaW5mb3Jt
YXRpb24uDQo+Pj4gKy5CUiBNQURWX0NPTExBUFNFDQo+Pg0KPj4gcy9CUi9CLw0KPj4NCj4+
PiArYWxzbyBpZ25vcmVzDQo+Pj4gKy5CIGh1Z2U9DQo+Pj4gK3RtcGZzIG1vdW50IHdoZW4g
b3BlcmF0aW5nIG9uIHRtcGZzIGZpbGVzLg0KPj4+ICtBbGxvY2F0aW9uIGZvciB0aGUgbmV3
IGh1Z2VwYWdlIG1heSBlbnRlciBkaXJlY3QgcmVjbGFpbSBhbmQvb3IgY29tcGFjdGlvbiwN
Cj4+PiArcmVnYXJkbGVzcyBvZiBWTUEgZmxhZ3MNCj4+PiArKHRob3VnaA0KPj4+ICsuQlIg
Vk1fTk9IVUdFUEFHRQ0KPj4NCj4+IHMvQlIvQi8NCj4+DQo+Pj4gK2lzIHN0aWxsIHJlc3Bl
Y3RlZCkuDQo+Pj4gKy5JUA0KPj4+ICtXaGVuIHRoZSBzeXN0ZW0gaGFzIG11bHRpcGxlIE5V
TUEgbm9kZXMsDQo+Pj4gK3RoZSBodWdlcGFnZSB3aWxsIGJlIGFsbG9jYXRlZCBmcm9tIHRo
ZSBub2RlIHByb3ZpZGluZyB0aGUgbW9zdCBuYXRpdmUNCj4+DQo+PiBCcmVhayBhZnRlciAi
ZnJvbSIuDQo+Pg0KPj4+ICtwYWdlcy4NCj4+PiArLklQDQo+Pj4gK0lmIGFsbCBodWdlcGFn
ZS1zaXplZC9hbGlnbmVkIHJlZ2lvbnMgY292ZXJlZCBieSB0aGUgcHJvdmlkZWQgcmFuZ2Ug
d2VyZQ0KPj4NCj4+IFByZWZlciBFbmdsaXNoIHJhdGhlciB0aGFuICIvIi4NCj4+DQo+Pj4g
K2VpdGhlciBzdWNjZXNzZnVsbHkgY29sbGFwc2VkLA0KPj4+ICtvciB3ZXJlIGFscmVhZHkg
UE1ELW1hcHBlZCBUSFBzLA0KPj4+ICt0aGlzIG9wZXJhdGlvbiB3aWxsIGJlIGRlZW1lZCBz
dWNjZXNzZnVsLg0KPj4+ICtOb3RlIHRoYXQgdGhpcyBkb2VzbuKAmXQgZ3VhcmFudGVlIGFu
eXRoaW5nIGFib3V0IG90aGVyIHBvc3NpYmxlIG1hcHBpbmdzIG9mDQo+Pg0KPj4gQnJlYWsg
YWZ0ZXIgImFib3V0Ii4NCj4+DQo+Pj4gK3RoZSBtZW1vcnkuDQo+Pj4gK0Fsc28gbm90ZSB0
aGF0IG1hbnkgZmFpbHVyZXMgbWlnaHQgaGF2ZSBvY2N1cnJlZCBzaW5jZSB0aGUgb3BlcmF0
aW9uIG1heQ0KPj4+ICtjb250aW51ZSB0byBjb2xsYXBzZSBpbiB0aGUgZXZlbnQgY29sbGFw
c2Ugb2YgYSBzaW5nbGUgaHVnZXBhZ2Utc2l6ZWQvYWxpZ25lZA0KPj4NCj4+IEFkZCBzb21l
IG9taXR0ZWQgInRoYXQiIG9yIHNvbWV0aGluZyB0aGF0IHdpbGwgaGVscCByZWFkYWJpbGl0
eSB0bw0KPj4gbm9uLW5hdGl2ZS1FbmdsaXNoIHJlYWRlcnMuDQo+Pg0KPj4gQW5kIGJyZWFr
IGF0IGEgYmV0dGVyIHBsYWNlLg0KPj4NCj4+PiArcmVnaW9uIGZhaWxzLg0KPj4+ICsuVFAN
Cj4+PiAgICAuQlIgTUFEVl9ET05URFVNUCAiIChzaW5jZSBMaW51eCAzLjQpIg0KPj4+ICAg
IC5cIiBjb21taXQgOTA5YWY3NjhlODg4NjcwMTZmNDI3MjY0YWUzOWQyN2E1N2I2YThlZA0K
Pj4+ICAgIC5cIiBjb21taXQgYWNjYjYxZmU3YmIwZjVjMmE0MTAyMjM5ZTQ5ODE2NTBmOTA0
ODUxOQ0KPj4+IEBAIC02MTksNiArNjk1LDExIEBAIEEga2VybmVsIHJlc291cmNlIHdhcyB0
ZW1wb3JhcmlseSB1bmF2YWlsYWJsZS4NCj4+PiAgICAuQiBFQkFERg0KPj4+ICAgIFRoZSBt
YXAgZXhpc3RzLCBidXQgdGhlIGFyZWEgbWFwcyBzb21ldGhpbmcgdGhhdCBpc24ndCBhIGZp
bGUuDQo+Pj4gICAgLlRQDQo+Pj4gKy5CIEVCVVNZDQo+Pj4gKyhmb3INCj4+PiArLkJSIE1B
RFZfQ09MTEFQU0UgKQ0KPj4+ICtDb3VsZCBub3QgY2hhcmdlIGh1Z2VwYWdlIHRvIGNncm91
cDogY2dyb3VwIGxpbWl0IGV4Y2VlZGVkLg0KPj4+ICsuVFANCj4+PiAgICAuQiBFRkFVTFQN
Cj4+PiAgICAuSSBhZHZpY2UNCj4+PiAgICBpcw0KPj4+IEBAIC03MTYsNiArNzk3LDExIEBA
IG1heGltdW0gcmVzaWRlbnQgc2V0IHNpemUuDQo+Pj4gICAgTm90IGVub3VnaCBtZW1vcnk6
IHBhZ2luZyBpbiBmYWlsZWQuDQo+Pj4gICAgLlRQDQo+Pj4gICAgLkIgRU5PTUVNDQo+Pj4g
Kyhmb3INCj4+PiArLkJSIE1BRFZfQ09MTEFQU0UgKQ0KPj4+ICtOb3QgZW5vdWdoIG1lbW9y
eTogY291bGQgbm90IGFsbG9jYXRlIGh1Z2VwYWdlLg0KPj4+ICsuVFANCj4+PiArLkIgRU5P
TUVNDQo+Pj4gICAgQWRkcmVzc2VzIGluIHRoZSBzcGVjaWZpZWQgcmFuZ2UgYXJlIG5vdCBj
dXJyZW50bHkNCj4+PiAgICBtYXBwZWQsIG9yIGFyZSBvdXRzaWRlIHRoZSBhZGRyZXNzIHNw
YWNlIG9mIHRoZSBwcm9jZXNzLg0KPj4+ICAgIC5UUA0KPj4+IGRpZmYgLS1naXQgYS9tYW4y
L3Byb2Nlc3NfbWFkdmlzZS4yIGIvbWFuMi9wcm9jZXNzX21hZHZpc2UuMg0KPj4+IGluZGV4
IDQ0ZDNiOTRlOC4uOGIwZGRjY2RkIDEwMDY0NA0KPj4+IC0tLSBhL21hbjIvcHJvY2Vzc19t
YWR2aXNlLjINCj4+PiArKysgYi9tYW4yL3Byb2Nlc3NfbWFkdmlzZS4yDQo+Pj4gQEAgLTcz
LDYgKzczLDEwIEBAIGFyZ3VtZW50IGlzIG9uZSBvZiB0aGUgZm9sbG93aW5nIHZhbHVlczoN
Cj4+PiAgICBTZWUNCj4+PiAgICAuQlIgbWFkdmlzZSAoMikuDQo+Pj4gICAgLlRQDQo+Pj4g
Ky5CIE1BRFZfQ09MTEFQU0UNCj4+PiArU2VlDQo+Pj4gKy5CUiBtYWR2aXNlICgyKS4NCj4+
PiArLlRQDQo+Pj4gICAgLkIgTUFEVl9QQUdFT1VUDQo+Pj4gICAgU2VlDQo+Pj4gICAgLkJS
IG1hZHZpc2UgKDIpLg0KPj4+IEBAIC0xNzMsNiArMTc3LDEyIEBAIFRoZSBjYWxsZXIgZG9l
cyBub3QgaGF2ZSBwZXJtaXNzaW9uIHRvIGFjY2VzcyB0aGUgYWRkcmVzcyBzcGFjZSBvZiB0
aGUgcHJvY2Vzcw0KPj4+ICAgIC5UUA0KPj4+ICAgIC5CIEVTUkNIDQo+Pj4gICAgVGhlIHRh
cmdldCBwcm9jZXNzIGRvZXMgbm90IGV4aXN0IChpLmUuLCBpdCBoYXMgdGVybWluYXRlZCBh
bmQgYmVlbiB3YWl0ZWQgb24pLg0KPj4+ICsuUFANCj4+PiArU2VlDQo+Pj4gKy5CUiBtYWR2
aXNlICgyKQ0KPj4+ICtmb3INCj4+PiArLklSIGFkdmljZSAtc3BlY2lmaWMNCj4+PiArZXJy
b3JzLg0KPj4+ICAgIC5TSCBWRVJTSU9OUw0KPj4+ICAgIFRoaXMgc3lzdGVtIGNhbGwgZmly
c3QgYXBwZWFyZWQgaW4gTGludXggNS4xMC4NCj4+PiAgICAuXCIgY29tbWl0IGVjYjhhYzhi
MWYxNDY5MTVhYTZiOTY0NDliNjZkZDQ4OTg0Y2FhY2MNCj4+DQo+PiAtLQ0KPj4gPGh0dHA6
Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWph
bmRyby1jb2xvbWFyLmVzLz4NCg==

--------------HgSae0hT7GF7wFdIqjmFvjGP--

--------------zK7sesrMELsoP7p0BDmKAupE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOWUcIACgkQnowa+77/
2zJ3FQ//fSX6t7oj9mrqF8XbHNvxC4sPRXjGxwevkSmEaCLffXgRPDtjp41aL2Hk
7RKdOsRzoxKsjiOOlcVVlVPDSf8uKsUVNlMoymKtXOZ9j6NcJnaM1NIjAa0bxO7c
ZLJ9MrP+k9SZwvbwmLjGZjnBegA57m/qseWdBw0nWpEFsVZ2D2Bj8I5KNgMYS8NS
duC/aC8Nl2d2kpURgMLJRJWglDh+olsmvxs1nOWUs1QZid88uXl0OmpBHkpqxTzd
A0FU8GJdsHc1JLTj0B6zBjZp6kvI/9r531brWbjlVBrF0elNA2+jlO/XJxdT8kUU
2lVD9yPFOT7Id5PGBcU5cH1ETuvJ9FA1ZgufAZ8RVrSpOcnC6dTiZeP1tAPXAnjm
jvnAKxDz36ulvdZ1rvEKfBLwEjds5+i2KALJyOXUmRJYplARG+m3YfaxVFR0XiCB
FeB+fL/I7EvxyJKpCCMWbjw/IfhgUemWVAF9CZ7etI+zxFNod0YsMra1cpE1rczq
EbE65mF6CAM6ltek/6J8xFfte21FqeYBAa7PdmFJbLYaMLnMQV4vcShEsslsOAIa
kV+QRZn0Om7/ModzzusRksxAkf91xKarHH0ucxq2z7lCZv3ZKgLYB9wGIxJDSl4R
GuO26Lzb1YpV7JT8XTu2EAEd5M28g5U3giLzD/Kz3lATB8jQ1MI=
=HMxw
-----END PGP SIGNATURE-----

--------------zK7sesrMELsoP7p0BDmKAupE--
