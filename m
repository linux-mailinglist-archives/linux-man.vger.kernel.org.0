Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0949F622F29
	for <lists+linux-man@lfdr.de>; Wed,  9 Nov 2022 16:40:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229564AbiKIPkN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Nov 2022 10:40:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229640AbiKIPkM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Nov 2022 10:40:12 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EBB510B69
        for <linux-man@vger.kernel.org>; Wed,  9 Nov 2022 07:40:11 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id bk15so26284354wrb.13
        for <linux-man@vger.kernel.org>; Wed, 09 Nov 2022 07:40:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+YnMXtcV8x5zMrzdp1d/8Cg2rOjYWSZqEKHQDZs7GeE=;
        b=IQD8vVzotzEoUe2O0FyknwNmJbMciwROZEZpRkCi5H/eVPpG6X0qgahzSwio95nrUh
         9mVyHZ4NWXWP922pW53V+YKJPHm70thmo3CNzOiMgyOsvy7OKR8+ovba/NBQLaoqIGC0
         /EO9Yzi8CGf/6kp/NXEQDNn0K3N58l8feaVi+jd6DLM003IGKNbU3w9eIfQ4NHuTUH22
         GCv6/1a/MB+Xm3leUc/VvJrusNCxyweh9rk6Tc8sAC6ezZXtm2Gq5YayJ8utP4TnIluI
         JWeZe8eX8mbDQlpzIkgk48c+yGPOSMHxokcv1nEPUDvKbj3tzAhdB/LfjNrv8DjCFmN/
         TXbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+YnMXtcV8x5zMrzdp1d/8Cg2rOjYWSZqEKHQDZs7GeE=;
        b=hHYZdbwDkhpN9W85mLgb/ooYCsRGVBc5MelhNGmonXT2FROyJey4YJ8jtCKlB3YoRu
         8Iawj1/44YV4x1dAqUxRGeDL6jvU3mLmTA14zUvZPOvV0vjZWhxlJ88dweI6aKRq0S3e
         wpLKWQNDRlhyrcLO8sbFoOOcfpjLjiB3sGLUCpZTSSFtJvGsl8hTfursaepZXn2xe6oz
         h8UcX8KohX01AjpMTci6bIPlbQhEcgFAteuEMPgYDOXUAlE/aaiDA8A4yde6zpxx5qya
         ygTUqh37yLs2VOmJLENCSN6F9LoVwg6yTW3Bs0+5n0RL428+11w3/ZWxnhdg7T6v6d2C
         o5CQ==
X-Gm-Message-State: ACrzQf3OpkNoj6Kl9bXUJRKyF960S79A5OF3Gr3e/Rp2Etia192yBeBE
        M8Baj+e/miXmJ2g9BzNJr+g=
X-Google-Smtp-Source: AMsMyM6VquEiP0GikMGQ9fMA9rD7+o4mXbmkp3kf7kDVXyYQNd7P6/IVpwjWIPckLbsGio1RJbdSWw==
X-Received: by 2002:adf:f609:0:b0:236:680b:8c65 with SMTP id t9-20020adff609000000b00236680b8c65mr40892481wrp.615.1668008409827;
        Wed, 09 Nov 2022 07:40:09 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i3-20020a05600011c300b0022cdeba3f83sm13173916wrx.84.2022.11.09.07.40.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 07:40:09 -0800 (PST)
Message-ID: <35e5f115-060d-9101-503f-b008f3316b01@gmail.com>
Date:   Wed, 9 Nov 2022 16:40:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] INSTALL, Makefile, cmd.mk, lint-man.mk: Lint about '\" t'
 comment for tbl(1)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Mike Frysinger <vapier@gentoo.org>,
        Mike Frysinger <vapier@chromium.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
References: <20221109151812.58365-1-alx@kernel.org>
In-Reply-To: <20221109151812.58365-1-alx@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1EKZdySmeZXoy0LWpPtKjPXD"
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
--------------1EKZdySmeZXoy0LWpPtKjPXD
Content-Type: multipart/mixed; boundary="------------UM3DTxRABvdmx8x0ov0rxbCQ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Mike Frysinger <vapier@gentoo.org>,
 Mike Frysinger <vapier@chromium.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>, Stefan Puiu <stefan.puiu@gmail.com>
Message-ID: <35e5f115-060d-9101-503f-b008f3316b01@gmail.com>
Subject: Re: [PATCH] INSTALL, Makefile, cmd.mk, lint-man.mk: Lint about '\" t'
 comment for tbl(1)
References: <20221109151812.58365-1-alx@kernel.org>
In-Reply-To: <20221109151812.58365-1-alx@kernel.org>

--------------UM3DTxRABvdmx8x0ov0rxbCQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIhDQoNCk9uIDExLzkvMjIgMTY6MTgsIEFsZWphbmRybyBDb2xvbWFyIHdyb3Rl
Og0KPiBUaGlzIGlzIHRvIG1ha2Ugc3VyZSB0aGF0IHdlIGhhdmUgY29ycmVjdCBcIiB0IGNv
bW1lbnRzIGluIHRoZSBwYWdlcywNCj4gd2hpY2ggYXJlIG5lY2Vzc2FyeSBmb3IgdGhlIERl
YmlhbiBwYWNrYWdlIGNoZWNrZXI6DQo+IA0KPiBPbiA4LzE5LzIyIDIyOjIxLCBKYWt1YiBX
aWxrIHdyb3RlOg0KPj4gKiBNaWNoYWVsIEtlcnJpc2sgPG10ay5tYW5wYWdlc0BnbWFpbC5j
b20+LCAyMDIwLTA3LTI0IDEyOjEzOg0KPj4+IEZvciAxNSB5ZWFycyBvciBhdCBsZWFzdCwg
SSd2ZSBub3QgcGFpZCBhbnkgYXR0ZW50aW9uIHRvIGFkZGluZyB0aGUNCj4+PiAndCcgY29t
bWVudHMgd2hlbiBJIGFkZGVkIHRhYmxlcyB0byBwYWdlcywgYW5kIEkgZG8gcmVjYWxsIGFu
eW9uZQ0KPj4+IHJlcG9ydGluZyBpbGwgZWZmZWN0cy4gIFNvLCBJJ20gaW5jbGluZWQgdG8g
YXBwbHkgTWlrZSdzIHBhdGNoLCBidXQNCj4+PiB3aWxsIGhvbGQgb2ZmIGEgbW9tZW50LCBp
biBjYXNlIHRoZXJlJ3Mgb3RoZXIgZmVlZGJhY2suDQo+Pg0KPj4gSSdtIGEgYml0IGxhdGUs
IGJ1dC4uLg0KPj4NCj4+IExpbnRpYW4sIHRoZSBEZWJpYW4gcGFja2FnZSBjaGVja2VyLCBz
ZXRzIHRoZSBNQU5ST0ZGU0VRIGVudmlyb25tZW50DQo+PiB2YXJpYWJsZSB0byBlbXB0eSBz
dHJpbmcgYXMgYSBzcGVlZCBvcHRpbWl6YXRpb24uICBUaGlzIHR1cm5zIG9mZg0KPj4gbG9h
ZGluZyBwcmVwcm9jZXNzb3JzIHRoYXQgd2VyZW4ndCBleHBsaWNpdGx5IGRlY2xhcmVkIGlu
IHRoZSBzb3VyY2UuDQo+PiBUaGUgbGFjayBvZiAnXCIgY29tbWVudHMgY2FuIGNhdXNlIGZh
bHNlIHBvc2l0aXZlcyAoYW5kIG1heWJlIGFsc28NCj4+IGZhbHNlIG5lZ2F0aXZlcz8pIGlu
IExpbnRpYW4uDQo+Pg0KPj4gVGhlIHVzZSBvZiAkTUFOUk9GRlNFUSBmb3IgTGludGlhbiB3
YXMgcHJvcG9zZWQgaGVyZToNCj4+IGh0dHBzOi8vYnVncy5kZWJpYW4ub3JnLzY3Nzg3NA0K
Pj4NCj4+IEJld2FyZSB0aGF0IHRoZSBtYW4oMSkgbWFuIHBhZ2UgZG9lcyBub3QgY29ycmVj
dGx5IGV4cGxhaW4gd2hhdA0KPj4gJE1BTlJPRkZTRVEgZG9lczogPGh0dHBzOi8vYnVncy5k
ZWJpYW4ub3JnLzk3MTAwOT4NCj4gDQo+IEFsc28gdXBkYXRlIHRoZSBkZXBlbmRlbmNpZXMg
bGlzdCwgc2luY2Ugbm93IHdlIGFsc28gbmVlZCBoZWFkKDEpIGFuZA0KPiB0YWlsKDEpIGZv
ciBsaW50aW5nIG1hbig3KSBzb3VyY2UuDQo+IA0KPiBMaW5rOiA8aHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGludXgtbWFuLzA3YTdkNGU3LTc5YTYtYjJjMy02ODkyLTFlMzlhMDY3OWYy
N0BnbWFpbC5jb20vVC8jbWNmMzZjOGEzODdmZDVmZjRmODAwZGMyMjBlM2RiZGQyMjliNTU2
YmQ+DQo+IENjOiBNaWtlIEZyeXNpbmdlciA8dmFwaWVyQGdlbnRvby5vcmc+DQo+IENjOiBN
aWtlIEZyeXNpbmdlciA8dmFwaWVyQGNocm9taXVtLm9yZz4NCj4gQ2M6ICJHLiBCcmFuZGVu
IFJvYmluc29uIiA8Zy5icmFuZGVuLnJvYmluc29uQGdtYWlsLmNvbT4NCj4gQ2M6IE1pY2hh
ZWwgS2VycmlzayA8bXRrLm1hbnBhZ2VzQGdtYWlsLmNvbT4NCj4gQ2M6IFN0ZWZhbiBQdWl1
IDxzdGVmYW4ucHVpdUBnbWFpbC5jb20+DQo+IFJlcG9ydGVkLWJ5OiBKYWt1YiBXaWxrIDxq
d2lsa0Bqd2lsay5uZXQ+DQo+IENvLWRldmVsb3BlZC1ieTogSmFrdWIgV2lsayA8andpbGtA
andpbGsubmV0Pg0KPiBTaWduZWQtb2ZmLWJ5OiBBbGVqYW5kcm8gQ29sb21hciA8YWx4QGtl
cm5lbC5vcmc+DQo+IC0tLQ0KDQpJIGFsc28gdXNlZCB5b3VyIHNjcmlwdCB0byBhZGQgdGhl
IGNvbW1lbnQgdG8gdGhlIHBhZ2VzLCBhbmQgdXNlZCB0aGlzIGxpbnRlciB0byANCm1ha2Ug
c3VyZSB0aGF0IGl0IHdvcmtzIGZpbmUsIHNvIEkgYWRkZWQgdGhlIGZvbGxvd2luZyBjb21t
aXQ6DQoNCmNvbW1pdCA2MjlhNDAyZmU0ZWVlNDhmMzFjNjU4YjJhN2JhNmRlMjg5OTBlNzgw
IChIRUFEIC0+IHRibCkNCkF1dGhvcjogQWxlamFuZHJvIENvbG9tYXIgPGFseEBrZXJuZWwu
b3JnPg0KRGF0ZTogICBXZWQgTm92IDkgMTY6MzY6MzYgMjAyMiArMDEwMA0KDQogICAgIE1h
bnkgcGFnZXM6IEFkZCAnXCIgdCcgY29tbWVudCB3aGVyZSBuZWNlc3NhcnkNCg0KICAgICBT
Y3JpcHRlZCBjaGFuZ2U6DQoNCiAgICAgJCBncmVwIC1sIC14ICdeWy5dVFMkJyBtYW4qLyog
fCBzb3J0IC11IHwgeGFyZ3Mgc2VkIC1pIC1lICIxaSdcXFxcXCIgdCINCg0KICAgICBUZXN0
ZWQtYnk6IEFsZWphbmRybyBDb2xvbWFyIDxhbHhAa2VybmVsLm9yZz4NCiAgICAgU2lnbmVk
LW9mZi1ieTogQWxlamFuZHJvIENvbG9tYXIgPGFseEBrZXJuZWwub3JnPg0KDQoNClRoZSBk
aWZmIGlzIGh1Z2UsIHNvIEkgd29uJ3Qgc2VuZCBpdCwgYnV0IHlvdSBjYW4gZXhwZWN0IHdo
YXQgaXQgaXMgYnkganVzdCANCnJ1bm5pbmcgeW91ciBvd24gc2NyaXB0IDopDQoNCldvdWxk
IHlvdSBtaW5kIGFsc28gc2lnbmluZyB0aGF0IHBhdGNoPw0KDQpDaGVlcnMsDQoNCkFsZXgN
Cg0KPiANCj4gSGkgSmFrdWIsDQo+IA0KPiBTaW5jZSB5b3UgY29udHJpYnV0ZWQgdGhlIGlu
aXRpYWwgcm91Z2ggc2NyaXB0cyB1c2VkIGluIHRoaXMgcGF0Y2gsIGl0J3MNCj4gZmFpciB0
byBzYXkgdGhhdCB5b3UgY28tZGV2ZWxvcGVkIGl0LiAgV291bGQgeW91IG1pbmQgc2lnbmlu
ZyBvZmYgdGhlDQo+IHBhdGNoPw0KPiANCj4gQ2hlZXJzLA0KPiANCj4gQWxleA0KPiANCj4g
DQo+ICAgSU5TVEFMTCAgICAgICAgIHwgIDIgKysNCj4gICBNYWtlZmlsZSAgICAgICAgfCAg
MSArDQo+ICAgbGliL2NtZC5tayAgICAgIHwgIDIgKysNCj4gICBsaWIvbGludC1tYW4ubWsg
fCAyMiArKysrKysrKysrKysrKysrKysrKystDQo+ICAgNCBmaWxlcyBjaGFuZ2VkLCAyNiBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvSU5TVEFM
TCBiL0lOU1RBTEwNCj4gaW5kZXggYmNhYWRmNzYzLi5hYjUxM2Y4YzQgMTAwNjQ0DQo+IC0t
LSBhL0lOU1RBTEwNCj4gKysrIGIvSU5TVEFMTA0KPiBAQCAtOTMsNyArOTMsOSBAQCBEZXNj
cmlwdGlvbg0KPiAgICAgICAgICAgICAtICBGb3IgbGludGluZyBtYW4oNykgc291cmNlOg0K
PiAgICAgICAgICAgICAgICAtICBlcW4oMSkNCj4gICAgICAgICAgICAgICAgLSAgZ3JvdHR5
KDEpDQo+ICsgICAgICAgICAgICAgLSAgaGVhZCgxKQ0KPiAgICAgICAgICAgICAgICAtICBt
a2RpcigxKQ0KPiArICAgICAgICAgICAgIC0gIHRhaWwoMSkNCj4gICAgICAgICAgICAgICAg
LSAgdGJsKDEpDQo+ICAgICAgICAgICAgICAgIC0gIHRyb2ZmKDEpID49IDEuMjMuMCAtIEdO
VSB0cm9mZiBpcyByZXF1aXJlZC4NCj4gICANCj4gZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIv
TWFrZWZpbGUNCj4gaW5kZXggZTdiZTFlMjkxLi42NmYwMmRlYTggMTAwNjQ0DQo+IC0tLSBh
L01ha2VmaWxlDQo+ICsrKyBiL01ha2VmaWxlDQo+IEBAIC03MSw2ICs3MSw3IEBAIGhlbHA6
DQo+ICAgCSQoaW5mbwlsaW50LW1hbgkJV3JhcHBlciBmb3IgbGludC1tYW4tKiB0YXJnZXRz
KQ0KPiAgIAkkKGluZm8JbGludC1tYW4tZ3JvZmYJCUxpbnQgbWFuIHBhZ2VzIHdpdGggZ3Jv
ZmYoMSkpDQo+ICAgCSQoaW5mbwlsaW50LW1hbi1tYW5kb2MJCUxpbnQgbWFuIHBhZ2VzIHdp
dGggbWFuZG9jKDEpKQ0KPiArCSQoaW5mbwlsaW50LW1hbi10YmwJCUxpbnQgbWFuIHBhZ2Vz
IGFib3V0ICdcIiB0JyBjb21tZW50IGZvciB0YmwoMSkpDQo+ICAgCSQoaW5mbwkpDQo+ICAg
CSQoaW5mbwlbdW5daW5zdGFsbAkJQWxpYXMgZm9yICJbdW5daW5zdGFsbC1tYW4iKQ0KPiAg
IAkkKGluZm8JW3VuXWluc3RhbGwtbWFuCQlXcmFwcGVyIGZvciBbdW5daW5zdGFsbC1tYW4q
IHRhcmdldHMpDQo+IGRpZmYgLS1naXQgYS9saWIvY21kLm1rIGIvbGliL2NtZC5taw0KPiBp
bmRleCBjOWMyMmQwYWUuLjdkNmQ5YWJkOSAxMDA2NDQNCj4gLS0tIGEvbGliL2NtZC5taw0K
PiArKysgYi9saWIvY21kLm1rDQo+IEBAIC0xNCwxMiArMTQsMTQgQEAgRklORCAgICAgICA6
PSBmaW5kDQo+ICAgR0lUICAgICAgICA6PSBnaXQNCj4gICBHUkVQICAgICAgIDo9IGdyZXAN
Cj4gICBHWklQICAgICAgIDo9IGd6aXANCj4gK0hFQUQgICAgICAgOj0gaGVhZA0KPiAgIElO
U1RBTEwgICAgOj0gaW5zdGFsbA0KPiAgIExPQ0FMRSAgICAgOj0gbG9jYWxlDQo+ICAgUEtH
LUNPTkZJRyA6PSBwa2ctY29uZmlnDQo+ICAgU0VEICAgICAgICA6PSBzZWQNCj4gICBTT1JU
ICAgICAgIDo9IHNvcnQNCj4gICBUQUMgICAgICAgIDo9IHRhYw0KPiArVEFJTCAgICAgICA6
PSB0YWlsDQo+ICAgVEFSICAgICAgICA6PSB0YXINCj4gICBYQVJHUyAgICAgIDo9IHhhcmdz
DQo+ICAgWFogICAgICAgICA6PSB4eg0KPiBkaWZmIC0tZ2l0IGEvbGliL2xpbnQtbWFuLm1r
IGIvbGliL2xpbnQtbWFuLm1rDQo+IGluZGV4IDE4YjcxNDQ2Yi4uYzg2ZjNhZGRkIDEwMDY0
NA0KPiAtLS0gYS9saWIvbGludC1tYW4ubWsNCj4gKysrIGIvbGliL2xpbnQtbWFuLm1rDQo+
IEBAIC02Niw5ICs2NiwxMCBAQCBNQU5ET0MgICAgICAgICAgICAgIDo9IG1hbmRvYw0KPiAg
IA0KPiAgIF9MSU5UX21hbl9ncm9mZiA6PSQocGF0c3Vic3QgJChNQU5ESVIpLyUsJChfTElO
VERJUikvJS5saW50LW1hbi5ncm9mZi50b3VjaCwkKExJTlRNQU4pKQ0KPiAgIF9MSU5UX21h
bl9tYW5kb2M6PSQocGF0c3Vic3QgJChNQU5ESVIpLyUsJChfTElOVERJUikvJS5saW50LW1h
bi5tYW5kb2MudG91Y2gsJChMSU5UTUFOKSkNCj4gK19MSU5UX21hbl90YmwgICA6PSQocGF0
c3Vic3QgJChNQU5ESVIpLyUsJChfTElOVERJUikvJS5saW50LW1hbi50YmwudG91Y2gsJChM
SU5UTUFOKSkNCj4gICANCj4gICANCj4gLWxpbnRlcnNfbWFuIDo9IGdyb2ZmIG1hbmRvYw0K
PiArbGludGVyc19tYW4gOj0gZ3JvZmYgbWFuZG9jIHRibA0KPiAgIGxpbnRfbWFuICAgIDo9
ICQoZm9yZWFjaCB4LCQobGludGVyc19tYW4pLGxpbnQtbWFuLSQoeCkpDQo+ICAgDQo+ICAg
DQo+IEBAIC04Nyw2ICs4OCwyNSBAQCAkKF9MSU5UX21hbl9tYW5kb2MpOiAkKF9MSU5URElS
KS8lLmxpbnQtbWFuLm1hbmRvYy50b3VjaDogJChNQU5ESVIpLyUgfCAkJChARCkvLg0KPiAg
IAkkKE1BTkRPQykgJChNQU5ET0NGTEFHUykgJDwNCj4gICAJdG91Y2ggJEANCj4gICANCj4g
KyQoX0xJTlRfbWFuX3RibCk6ICQoX0xJTlRESVIpLyUubGludC1tYW4udGJsLnRvdWNoOiAk
KE1BTkRJUikvJSB8ICQkKEBEKS8uDQo+ICsJJChpbmZvIExJTlQgKHRibCkJJEApDQo+ICsJ
aWYgJChHUkVQKSAnXlwuVFMkJCcgPCQ8ID4vZGV2L251bGwgJiYgISAkKEhFQUQpIC1uMSA8
JDwgfCAkKEdSRVApICdcXCIgdCQkJyA+L2Rldi9udWxsOyB0aGVuIFwNCj4gKwkJMj4mMSAk
KEVDSE8pICIkPDogMTogbWlzc2luZyAnXFxcIiB0JyBjb21tZW50OiI7IFwNCj4gKwkJMj4m
MSAkKEhFQUQpIC1uMSA8JDw7IFwNCj4gKwkJZXhpdCAxOyBcDQo+ICsJZmk7DQo+ICsJaWYg
JChIRUFEKSAtbjEgPCQ8IHwgJChHUkVQKSAnXFwiIHQkJCcgPi9kZXYvbnVsbCAmJiAhICQo
R1JFUCkgJ15cLlRTJCQnIDwkPCA+L2Rldi9udWxsOyB0aGVuIFwNCj4gKwkJMj4mMSAkKEVD
SE8pICIkPDogMTogc3B1cmlvdXMgJ1xcXCIgdCcgY29tbWVudDoiOyBcDQo+ICsJCTI+JjEg
JChIRUFEKSAtbjEgPCQ8OyBcDQo+ICsJCWV4aXQgMTsgXA0KPiArCWZpOw0KPiArCWlmICQo
VEFJTCkgLW4rMiA8JDwgfCAkKEdSRVApICdcXCIgdCQkJyA+L2Rldi9udWxsIDsgdGhlbiBc
DQo+ICsJCTI+JjEgJChFQ0hPKSAiJDw6IHNwdXJpb3VzICdcXFwiIHQnIG5vdCBpbiBmaXJz
dCBsaW5lOiI7IFwNCj4gKwkJMj4mMSAkKEdSRVApIC1uICdcXCIgdCQkJyAkPCAvZGV2L251
bGw7IFwNCj4gKwkJZXhpdCAxOyBcDQo+ICsJZmk7DQo+ICsJdG91Y2ggJEANCj4gKw0KPiAg
IA0KPiAgIC5QSE9OWTogJChsaW50X21hbikNCj4gICAkKGxpbnRfbWFuKTogbGludC1tYW4t
JTogJCQoX0xJTlRfbWFuXyUpDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9t
YXIuZXMvPg0K

--------------UM3DTxRABvdmx8x0ov0rxbCQ--

--------------1EKZdySmeZXoy0LWpPtKjPXD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNrydAACgkQnowa+77/
2zLaVw//QgeKhRoEl6qrWnuojx+v2pnNkzIUsu36/Jw5tM1e+wxkjS1YlMozgGI6
1rsV7+ngfirA98asXT+ROIKWarHduVuk5vrEzsofFqQbOatMZxFPqZPIZSueTMLX
BI1EP7NI/hNPHLpIJIauFbfI2lcRXy5Cw7DttrK59P1BmwPbIhAQEsdq7K3WDnxP
TcBLPWrS9DulDKMPY+3hF19ES5mDP9iq/n5KVtKz2yPGR2S+EHQm+LFJDQzCRHeo
BMtp1smwwYkBPkIko7Onnbel80d0+yTWOUcsb1oOtCXd5JG2TCDN2SVCEhB96MrV
2uiODe+hhoxy+q57Yg0h97iQjnmvvm5maCpbZifIb7qf138Q86SNh8iMDd2+yyCi
daDuUctXJIZzzWtItjscsDKl6POaeYi+ppz+bCXr/I1wfOCsxpJI7W7GrvTg2he2
wD86Uowmb9rGSNAj1dPjOdJIj5xHcASXEbUnNFQqKcbh/oeGmv7+n4MAnih8nzp0
nHclY8kBCzvKDogFxA+l3F4goEW06ZoraDdtypYFwuFRwzQp+8h4BkyB7Qfy93T8
hmsU6nP6on+kZm+Me6P73AzbLHrPmHwdrGCtVTCKZ1PEC4NfWBauWW+6v8OQ0iRr
eRWwhXG6Wnzvj0wHYPcgMjHn9HHLFQqFNZu3mgztY3+UrDYRl+4=
=GaOP
-----END PGP SIGNATURE-----

--------------1EKZdySmeZXoy0LWpPtKjPXD--
