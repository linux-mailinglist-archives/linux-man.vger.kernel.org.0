Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A68C65FE284
	for <lists+linux-man@lfdr.de>; Thu, 13 Oct 2022 21:13:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229554AbiJMTNN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Oct 2022 15:13:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229768AbiJMTMm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Oct 2022 15:12:42 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84230159D60
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 12:12:41 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id az22-20020a05600c601600b003c6b72797fdso2121961wmb.5
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 12:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sjGWALVLduCyREhEctKNmdkbd9+y7Fko5yepF3m0H4Y=;
        b=Ns7+XJa1tC97dg7lVsYx5QUpb7vjGXfm88eBcyZZGfofc0/g5KWs0K0MEyN+81kCDb
         nClCnaHKi1oDzpouiSLAIn33uCFiDJ5OBzBHHb1edAqdo6bBzobVcqBid59/rSTvtEHO
         3j+rPj4emyyBPRAnktV7rgu49vToyqN7DOs/49tIRGGyY/5sG4yHfDMwgCuCEh4puGQS
         FZpXA8WAq7emuYS+i13taXvW8FKravxHPOuISz0mbabSxsNfyvwFKz+M6ntkv+ddUZu8
         guaTQQNvgjckZp1m+kbhH1L+GGwwG0tiPMl5eDtuXZ7XZOCOHQh0TKxWosULfAqchQ5a
         TAvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sjGWALVLduCyREhEctKNmdkbd9+y7Fko5yepF3m0H4Y=;
        b=YegjTF5rjyzkYADKZR0LBDoF6BcPyiiZQasRMikYNkU1m5PILr0zD5mX5EQyWM8MOw
         UmknIC/FHr5DHJnlnf3BUPPJ8oqe6/IxKPkHOhJ/MkwVsBzv1w/3M8J/rvQSppI3YqIr
         b9MIq9Mx9qZnHzrVnr6U6MIRVDv9iQQhDOPPFnwEapbIsjemALbuE0zsPQRtooCaSeon
         6nliRqpiPerkUs1Xa7mVmIghJKkda9RVNKon0hRF7ZUHt6XAvLdpU8qlmPUkr0z3czVH
         nKkPvevvmd4+6PCqsSAeI1SE2DW8yZEfmTFpOMf7MsmpO458tGWuf0ys6ZTenBUR0IWU
         xa0A==
X-Gm-Message-State: ACrzQf0kP/x/ZNozpKHs3o0kVFlNr1xexE9oX6v2Xob2tNU6EOtiuW2G
        wsoPg8hyFSU9ndrnoZ46vCw=
X-Google-Smtp-Source: AMsMyM4Cjsfjjmm6EaZeXMkUDCjq1jbM5JgN8Qy/tvWmlGIrc+YboRSQ0Tb0OxvoSGavDp/ZLshDtQ==
X-Received: by 2002:a05:600c:4f10:b0:3c6:dcc6:51d7 with SMTP id l16-20020a05600c4f1000b003c6dcc651d7mr919864wmq.91.1665688360032;
        Thu, 13 Oct 2022 12:12:40 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id dn7-20020a05600c654700b003b47ff307e1sm233554wmb.31.2022.10.13.12.12.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Oct 2022 12:12:39 -0700 (PDT)
Message-ID: <3ef9f4d7-80c5-9df7-726b-06882228ca13@gmail.com>
Date:   Thu, 13 Oct 2022 21:12:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH] feature_test_macros.7: document -D_FORTIFY_SOURCE=3
To:     Sam James <sam@gentoo.org>
Cc:     linux-man@vger.kernel.org
References: <20221013183117.477592-1-sam@gentoo.org>
 <43b87bb6-2c18-5df5-fe5b-6d753f97ad85@gmail.com>
 <F6BBDD88-1C5F-494B-B29E-9B301D17CBF1@gentoo.org>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <F6BBDD88-1C5F-494B-B29E-9B301D17CBF1@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------nqEm2upiFYAonLXHmKnBgE1h"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------nqEm2upiFYAonLXHmKnBgE1h
Content-Type: multipart/mixed; boundary="------------dStDWijD0jxk7VJs62Q8v7fF";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sam James <sam@gentoo.org>
Cc: linux-man@vger.kernel.org
Message-ID: <3ef9f4d7-80c5-9df7-726b-06882228ca13@gmail.com>
Subject: Re: [PATCH] feature_test_macros.7: document -D_FORTIFY_SOURCE=3
References: <20221013183117.477592-1-sam@gentoo.org>
 <43b87bb6-2c18-5df5-fe5b-6d753f97ad85@gmail.com>
 <F6BBDD88-1C5F-494B-B29E-9B301D17CBF1@gentoo.org>
In-Reply-To: <F6BBDD88-1C5F-494B-B29E-9B301D17CBF1@gentoo.org>

--------------dStDWijD0jxk7VJs62Q8v7fF
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU2FtLA0KDQpPbiAxMC8xMy8yMiAyMDo1NywgU2FtIEphbWVzIHdyb3RlOg0KPj4gT24g
MTAvMTMvMjIgMjA6MzEsIFNhbSBKYW1lcyB3cm90ZToNCj4+PiBSZWZlcmVuY2U6IGh0dHBz
Oi8vZGV2ZWxvcGVycy5yZWRoYXQuY29tL2Jsb2cvMjAyMS8wNC8xNi9icm9hZGVuaW5nLWNv
bXBpbGVyLWNoZWNrcy1mb3ItYnVmZmVyLW92ZXJmbG93cy1pbi1fZm9ydGlmeV9zb3VyY2UN
Cj4+PiBSZWZlcmVuY2U6IGh0dHBzOi8vZGV2ZWxvcGVycy5yZWRoYXQuY29tL2FydGljbGVz
LzIwMjIvMDkvMTcvZ2Njcy1uZXctZm9ydGlmaWNhdGlvbi1sZXZlbA0KPj4+IFNpZ25lZC1v
ZmYtYnk6IFNhbSBKYW1lcyA8c2FtQGdlbnRvby5vcmc+DQo+Pj4gLS0tDQo+Pj4gICBtYW43
L2ZlYXR1cmVfdGVzdF9tYWNyb3MuNyB8IDExICsrKysrKysrKysrDQo+Pj4gICAxIGZpbGUg
Y2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQ0KPj4+IGRpZmYgLS1naXQgYS9tYW43L2ZlYXR1
cmVfdGVzdF9tYWNyb3MuNyBiL21hbjcvZmVhdHVyZV90ZXN0X21hY3Jvcy43DQo+Pj4gaW5k
ZXggZDMzMDQxMDAxLi5lNjIxODU3NDUgMTAwNjQ0DQo+Pj4gLS0tIGEvbWFuNy9mZWF0dXJl
X3Rlc3RfbWFjcm9zLjcNCj4+PiArKysgYi9tYW43L2ZlYXR1cmVfdGVzdF9tYWNyb3MuNw0K
Pj4+IEBAIC02NDMsOSArNjQzLDIwIEBAIGFuZCByZXN1bHQgaW4gY29tcGlsZXIgd2Fybmlu
Z3M7DQo+Pj4gICBvdGhlciBjaGVja3MgdGFrZSBwbGFjZSBhdCBydW4gdGltZSwNCj4+PiAg
IGFuZCByZXN1bHQgaW4gYSBydW4tdGltZSBlcnJvciBpZiB0aGUgY2hlY2sgZmFpbHMuDQo+
Pj4gICAuSVANCj4+PiArV2l0aA0KPj4+ICsuQiBfRk9SVElGWV9TT1VSQ0UNCj4+PiArc2V0
IHRvIDMsIGFkZGl0aW9uYWwgY2hlY2tpbmcgaXMgYWRkZWQgdG8gY2FwdHVyZSBzb21lIGZ1
bmN0aW9uDQo+Pg0KPj4gV2hhdCBkbyB5b3UgbWVhbiBieSAiY2FwdHVyZSI/DQo+Pg0KPiAN
Cj4gTWF5YmUgImNhcHR1cmUiIGlzIG5vdCB0aGUgYmVzdCB3b3JkLiBNYXliZSBob29rZWQg
LyBpbnRlcmNlcHRlZA0KPiBpcyBiZXR0ZXI/DQoNClllYWggaW50ZXJjZXB0ZWQgbWlnaHQg
YmUgYmV0dGVyLg0KDQo+IA0KPiBGX1M9MyBsZXRzIGNhc2VzIHdoZXJlIHNheSwgbWFsbG9j
IHNpemUgaXMgYmFzZWQgb24gYSB2YXJpYWJsZSwNCj4gc3RpbGwgZ2V0IGRldGVjdGVkIGJl
Y2F1c2UgdGhlIGNvbXBpbGVyIHJlY29nbmlzZXMgc3VjaCBjYXNlcw0KPiBhbmQgYWRkcyBz
Y2FmZm9sZGluZyBpbiB0byBob29rIHRoZSBmdW5jdGlvbnMuDQoNCkFkZGluZyBzb21ldGhp
bmcgbGlrZSB0aGlzIHRvIHRoZSBwYWdlIG1pZ2h0IGJlIGhlbHBmdWwuDQoNCj4gDQo+IChU
aGUgbWFsbG9jIGV4YW1wbGUgYXQNCj4gaHR0cHM6Ly9kZXZlbG9wZXJzLnJlZGhhdC5jb20v
YXJ0aWNsZXMvMjAyMi8wOS8xNy9nY2NzLW5ldy1mb3J0aWZpY2F0aW9uLWxldmVsIzFfX2Ff
bmV3X2J1aWx0aW5fcHJvdmlkZXNfZW5oYW5jZWRfYnVmZmVyX3NpemVfZGV0ZWN0aW9uDQo+
IGlzIHdoYXQgSSdtIHJlZmVycmluZyB0bykuDQo+IA0KPiBUbyBiZSBjbGVhciB0aG91Z2g6
IHRoZSBzZW1hbnRpY3MgYXJlIHNpbWlsYXIgdG8gRk9SVElGWV9TT1VSQ0U9MiwNCj4gaXQn
cyBqdXN0IHRoYXQgRk9SSVRGWV9TT1VSQ0U9MyB1c2VzIGFuIGV4dHJhIGJpdCBvZiBpbmZv
cm1hdGlvbg0KPiAoX19idWlsdGluX2R5bmFtaWNfb2JqZWN0X3NpemUpIHRvIGhvb2sgbW9y
ZSBjYXNlcy4NCg0KTWF5YmUgdGhpcyBpcyBpbnRlcmVzdGluZyAoYWx0aG91Z2ggbWF5YmUg
YSBiaXQgdG9vIG11Y2ggaW50byANCmltcGxlbWVudGF0aW9uIGRldGFpbHMuDQoNCkknZCBs
aWtlIHRvIGtub3csIGZyb20gdGhlIHBvaW50IG9mIHZpZXcgb2YgYSB1c2VyIHdobyBrbm93
cyBsaXR0bGUgDQphYm91dCB0aGUgZGlmZmVyZW50IGZvcnRpZnkgbGV2ZWxzICh0aGF0IGFj
dHVhbGx5IG1hdGNoZXMgbWUgcXVpdGUgd2VsbCANCjopLCB3aGF0IHdvdWxkIGJlIHRoZSBj
b25zdGFudCBkaWZmZXJlbmNlcyAoaS5lLiwgb25lcyB0aGF0IHRoZSBjb21waWxlciANCndp
bGwgcmVzcGVjdCBpbiB0aGUgZnV0dXJlIChpZiB0aGVyZSBhcmUgYW55KS4gIFdoYXQga2lu
ZCBvZiBndWFyYW50ZWVzIA0KdGhlcmUgYXJlIG9yIG5vdC4NCg0KPiANCj4gU28gd2hhdGV2
ZXIgd29yZCB3b3JrcyBmb3IgRk9SVElGWV9TT1VSQ0UgPCAzIHdvcmtzIGZvciAzIHRvby4N
Cj4gDQo+IEknbSBkZWZpbml0ZWx5IGZlZWxpbmcgbGlrZSAiY2FwdHVyZSIgaXMgbm90IHRo
ZSBiZXN0IHdvcmQgYnV0IEknbQ0KPiBzdHJ1Z2dsaW5nIGZvciB0aGUgcmlnaHQgb25lLg0K
DQpJZiB5b3UncmUgbm90IGluc3BpcmVkIG5vdywgSSdtIGZpbmUgYWRkaW5nIHdoYXRldmVy
IHlvdSB3YW50IHRvIGFkZCANCm5vdzsgYW5kIHdlIGNhbiByZXZpc2UgaXQgaW4gdGhlIGZ1
dHVyZS4gIFRoYXQncyBmaW5lLg0KDQo+IA0KPiAtLQ0KPiBBZGRpdGlvbmFsIHF1ZXN0aW9u
OiB0aGVyZSdzIGFjdHVhbGx5IHNvbWUgY29uZnVzaW5nDQo+IGNvbnN0cmFpbnRzIGFib3V0
IHdoZW4gd2UgY2FuIHVzZSBGX1M9My4NCj4gDQo+IEl0IG5lZWRzIEdDQyAxMiBvciBDbGFu
ZyA5IGFzIGEgY29tcGlsZXIsDQo+IGFuZCA+PSBnbGliYy0yLjM0Lg0KPiANCj4gbXVzbCBk
b2VzIG5vdCwgYXQgdGhpcyB0aW1lLCBzdXBwb3J0IGFueQ0KPiBidWlsdC1pbiBmb3J0aWZp
Y2F0aW9uLiBJIGRvbid0IGtub3cgaWYgd2Ugc2hvdWxkDQo+IG1lbnRpb24gdGhhdCBwYXJ0
Lg0KDQpGb3Igc3VyZS4gIEkgd2FzIGNvbnNpZGVyaW5nIG1haWxpbmcgbXVzbCBtYWludGFp
bmVycyB0byBzdWdnZXN0IHRoYXQgd2UgDQpjb3VsZCBvZmZpY2lhbGx5L2NvbnNpc3RlbnRs
eSBkb2N1bWVudCBtdXNsLCBhcyBpdCdzIGJlY29tZSBhbiBpbXBvcnRhbnQgDQpsaWJjIGFs
dGVybmF0aXZlIGluIExpbnV4IGRpc3Ryb3MuDQoNCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0t
IA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------dStDWijD0jxk7VJs62Q8v7fF--

--------------nqEm2upiFYAonLXHmKnBgE1h
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNIYxgACgkQnowa+77/
2zJL9w//ZRYRBrQpQwRB7qp0SXb/kvOGSqpOOKInt++PPGjqor9VSZLJUQErZU3z
23yTtRja47pIm1on2gMTrCFoOeuTXTzsfmvGpDkiitNW7XstP+DUPZYEd2byO8Ku
QvGrmyG9e/V8NuMgQ8XMBMTQTgzht+cLr1gpTVLYgDX1CI73PSYZZ23JkW7LuaGi
lOqq8seQpyYTMANYouBIGwoekozu06cIgd2y3iC0tAEgiHH8ZimdJyA+EfSXTDcy
4IEqFWKxt8z69QaVFp8XkuH0IrhHNqlTuAE5lKGxm0hn2ZKlKtKwXBPV2oxQlgzb
i0W+q7vszRvd6d4j/3pkKJSi/NmwHS5KDKOdr7eyvXJNPw2rlVFX8igmbPusRnkA
muA10QSDCfv6mFo7ZyTpZyevTpB9GLNkN5+MYfyULYI1HUtQBqnaqO5V8b2TthSF
RkgLJQ5MQMmk7r1sxe9t3wBqBSdrymtuyMqxuxTu4hgnRBmvf9IswBqzF06+kRNH
WAl3J94ekHvh0NyNuG53h4PY/B940lX3aFUPhXy/adRk+BZ4nwFJFGCCMptkaCVW
LvFxgDfnvnjbb+cujk9eMgFwTAU9f23Tk9g1iKg9cgi2lYonBPA/HE6qQUP5VGOz
qgSy52mfSLKmJcF+IhKWCsTLWtBtN03EbtyOC4kyykSSbnjaaCg=
=1fYz
-----END PGP SIGNATURE-----

--------------nqEm2upiFYAonLXHmKnBgE1h--
