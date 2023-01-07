Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D818660ECD
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 13:33:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231137AbjAGMdm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 07:33:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229656AbjAGMdl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 07:33:41 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C5CF625E5
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 04:33:40 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id fm16-20020a05600c0c1000b003d96fb976efso5334289wmb.3
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 04:33:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WPIY4nR6fm4ssBw6Yk/EeOvulmw8y8Off6vSOjf5lHM=;
        b=hsVBFUBCWjyETJKCeJDtXlHXu7iIOIdVmGiZuO04w0mLJ/Z4/TnjFf0ct90ww8p/O7
         s/8WyjSJU/c4HI0zViUknuD/YZi/73mTW4MsmLwoSdDeyPFPJ6AMoBeB2iSZSBM8psqB
         o7Cr0FKisx5EVXw5f5MJP58M0ltpsc44rSSt01mmfDgAHas1Giu5Lrc6eDJ0IdcdKKUP
         PDu3X/VVaai9IaqfHe73aZqthastFzbad9p30yCPx6D3wKI7to5Vq9gHr0h3eTo/KGIU
         ZMwkqv8KIw8bJG+7v2fpLNDzPCmuu8Up3b2WCAcv993BCLfHaxhM0qT8BnD44WmYGzqf
         ti/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WPIY4nR6fm4ssBw6Yk/EeOvulmw8y8Off6vSOjf5lHM=;
        b=4Oxydl0w42s3Bjf67+owCVuPgEd0Y6Z/P5Fjca6JfHoHiB1HSJShpkELfdg1xBcIHR
         rjnlmkKK9dQwQZ3fvmeul2eNGtneX3VlkXbwdKa4wUfFRUgP5MaDWoENqCnU5vq3gK/y
         xjbNiCYzPHr/Bx++v1eI9AsLhMZHFfRBI4tJpt79tSLjgeXku26GXOVQ9yY7u9ZC7HES
         f5Q+yvFpr5P8edLlneiCSR7QT0WN1CaTAdcpne34IvtnrVS33Moqr069d/YZKOL8v96X
         r76/AYwb0JFhQyyi/pnwyM/MUMsxAqnuYEKxY7ET2GIzLBqHy7kKdMVTtDiZO5CX5+0U
         cndw==
X-Gm-Message-State: AFqh2kpnZwqDTgflS74gZVFyzvNaEGW9bgrbXhBls8bMGPgCJhtAdAhj
        V7DZJQuu7W5caa7BdClceu1eM149UkU=
X-Google-Smtp-Source: AMrXdXsPadF8czLYMtWWxKp4ZqeZw4cmseQtQcwOzIpdceIJAgjaXq/VhEn32EqfSZUUXVme77RJWg==
X-Received: by 2002:a05:600c:154b:b0:3cf:674a:aefe with SMTP id f11-20020a05600c154b00b003cf674aaefemr41938892wmg.22.1673094818781;
        Sat, 07 Jan 2023 04:33:38 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x7-20020a05600c188700b003c701c12a17sm9192850wmp.12.2023.01.07.04.33.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jan 2023 04:33:38 -0800 (PST)
Message-ID: <1eddce9c-18be-e690-dbe1-e7da8c058ddb@gmail.com>
Date:   Sat, 7 Jan 2023 13:33:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 06/10] intro.3: srcfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230107095500.t5peub3cayf2e4x6@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230107095500.t5peub3cayf2e4x6@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wHx9QuM9qiBfVNORcn1eVoBV"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------wHx9QuM9qiBfVNORcn1eVoBV
Content-Type: multipart/mixed; boundary="------------GFCU9saYA9UoBSZTc8X7R80J";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <1eddce9c-18be-e690-dbe1-e7da8c058ddb@gmail.com>
Subject: Re: [PATCH v4 06/10] intro.3: srcfix
References: <20230107095500.t5peub3cayf2e4x6@illithid>
In-Reply-To: <20230107095500.t5peub3cayf2e4x6@illithid>

--------------GFCU9saYA9UoBSZTc8X7R80J
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvNy8yMyAxMDo1NSwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3cm90ZToNCj4gKiBC
cmVhayBpbnB1dCBsaW5lcyBhdCBwaHJhc2UgYm91bmRhcmllcyBtb3JlIG9mdGVuLg0KPiAq
IEJyZWFrIGlucHV0IGxpbmVzIGFmdGVyIGNvbW1hcy4NCj4gKiBTZXQgbXVsdGktd29yZCBw
YXJlbnRoZXRpY2FscyBvbiB0aGVpciBvd24gaW5wdXQgbGluZXMuDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBHLiBCcmFuZGVuIFJvYmluc29uIDxnLmJyYW5kZW4ucm9iaW5zb25AZ21haWwu
Y29tPg0KDQpQYXRjaCBhcHBsaWVkLg0KDQpUaGFua3MsDQoNCkFsZXgNCg0KPiAtLS0NCj4g
ICBtYW4zL2ludHJvLjMgfCA0MiArKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0t
LS0tLS0tLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwgMTUgZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuMy9pbnRyby4zIGIvbWFuMy9pbnRy
by4zDQo+IGluZGV4IGU4NWMwNjc3YS4uMTc1OGNjYWY4IDEwMDY0NA0KPiAtLS0gYS9tYW4z
L2ludHJvLjMNCj4gKysrIGIvbWFuMy9pbnRyby4zDQo+IEBAIC03LDIwICs3LDIzIEBADQo+
ICAgLlNIIE5BTUUNCj4gICBpbnRybyBcLSBpbnRyb2R1Y3Rpb24gdG8gbGlicmFyeSBmdW5j
dGlvbnMNCj4gICAuU0ggREVTQ1JJUFRJT04NCj4gLVNlY3Rpb24gMyBvZiB0aGUgbWFudWFs
IGRlc2NyaWJlcyBhbGwgbGlicmFyeSBmdW5jdGlvbnMgZXhjbHVkaW5nIHRoZSBsaWJyYXJ5
DQo+IC1mdW5jdGlvbnMgKHN5c3RlbSBjYWxsIHdyYXBwZXJzKSBkZXNjcmliZWQgaW4gU2Vj
dGlvbiAyLA0KPiArU2VjdGlvbiAzIG9mIHRoZSBtYW51YWwgZGVzY3JpYmVzIGFsbCBsaWJy
YXJ5IGZ1bmN0aW9ucw0KPiArZXhjbHVkaW5nIHRoZSBsaWJyYXJ5IGZ1bmN0aW9ucw0KPiAr
KHN5c3RlbSBjYWxsIHdyYXBwZXJzKQ0KPiArZGVzY3JpYmVkIGluIFNlY3Rpb24gMiwNCj4g
ICB3aGljaCBpbXBsZW1lbnQgc3lzdGVtIGNhbGxzLg0KPiAgIC5QUA0KPiAgIE1hbnkgb2Yg
dGhlIGZ1bmN0aW9ucyBkZXNjcmliZWQgaW4gdGhlIHNlY3Rpb24gYXJlIHBhcnQgb2YgdGhl
DQo+ICAgU3RhbmRhcmQgQyBMaWJyYXJ5DQo+ICAgLlJJICggbGliYyApLg0KPiAtU29tZSBm
dW5jdGlvbnMgYXJlIHBhcnQgb2Ygb3RoZXIgbGlicmFyaWVzIChlLmcuLA0KPiArU29tZSBm
dW5jdGlvbnMgYXJlIHBhcnQgb2Ygb3RoZXIgbGlicmFyaWVzDQo+ICsoZS5nLiwNCj4gICB0
aGUgbWF0aCBsaWJyYXJ5LA0KPiAgIC5JUiBsaWJtICwNCj4gICBvciB0aGUgcmVhbC10aW1l
IGxpYnJhcnksDQo+ICAgLklSIGxpYnJ0ICkNCj4gLWluIHdoaWNoIGNhc2UgdGhlIG1hbnVh
bCBwYWdlIHdpbGwgaW5kaWNhdGUgdGhlIGxpbmtlcg0KPiAtb3B0aW9uIG5lZWRlZCB0byBs
aW5rIGFnYWluc3QgdGhlIHJlcXVpcmVkIGxpYnJhcnkNCj4gK2luIHdoaWNoIGNhc2UgdGhl
IG1hbnVhbCBwYWdlIHdpbGwgaW5kaWNhdGUNCj4gK3RoZSBsaW5rZXIgb3B0aW9uIG5lZWRl
ZCB0byBsaW5rIGFnYWluc3QgdGhlIHJlcXVpcmVkIGxpYnJhcnkNCj4gICAoZS5nLiwNCj4g
ICAuSSBcLWxtDQo+ICAgYW5kDQo+IEBAIC0zMiwxOSArMzUsMjQgQEAgSW4gc29tZSBjYXNl
cywNCj4gICB0aGUgcHJvZ3JhbW1lciBtdXN0IGRlZmluZSBhIGZlYXR1cmUgdGVzdCBtYWNy
byBpbiBvcmRlciB0byBvYnRhaW4NCj4gICB0aGUgZGVjbGFyYXRpb24gb2YgYSBmdW5jdGlv
biBmcm9tIHRoZSBoZWFkZXIgZmlsZSBzcGVjaWZpZWQNCj4gICBpbiB0aGUgbWFuIHBhZ2Ug
U1lOT1BTSVMgc2VjdGlvbi4NCj4gLShXaGVyZSByZXF1aXJlZCwgdGhlc2UgZmVhdHVyZSB0
ZXN0IG1hY3JvcyBtdXN0IGJlIGRlZmluZWQgYmVmb3JlIGluY2x1ZGluZw0KPiArKFdoZXJl
IHJlcXVpcmVkLA0KPiArdGhlc2UgZmVhdHVyZSB0ZXN0IG1hY3JvcyBtdXN0IGJlIGRlZmlu
ZWQgYmVmb3JlIGluY2x1ZGluZw0KPiAgIC5JIGFueQ0KPiAgIGhlYWRlciBmaWxlcy4pDQo+
IC1JbiBzdWNoIGNhc2VzLCB0aGUgcmVxdWlyZWQgbWFjcm8gaXMgZGVzY3JpYmVkIGluIHRo
ZSBtYW4gcGFnZS4NCj4gLUZvciBmdXJ0aGVyIGluZm9ybWF0aW9uIG9uIGZlYXR1cmUgdGVz
dCBtYWNyb3MsIHNlZQ0KPiArSW4gc3VjaCBjYXNlcywNCj4gK3RoZSByZXF1aXJlZCBtYWNy
byBpcyBkZXNjcmliZWQgaW4gdGhlIG1hbiBwYWdlLg0KPiArRm9yIGZ1cnRoZXIgaW5mb3Jt
YXRpb24gb24gZmVhdHVyZSB0ZXN0IG1hY3JvcywNCj4gK3NlZQ0KPiAgIC5CUiBmZWF0dXJl
X3Rlc3RfbWFjcm9zICg3KS4NCj4gICAuXCINCj4gICAuXCIgVGhlcmUNCj4gICAuXCIgYXJl
IHZhcmlvdXMgZnVuY3Rpb24gZ3JvdXBzIHdoaWNoIGNhbiBiZSBpZGVudGlmaWVkIGJ5IGEg
bGV0dGVyIHdoaWNoDQo+ICAgLlwiIGlzIGFwcGVuZGVkIHRvIHRoZSBjaGFwdGVyIG51bWJl
cjoNCj4gICAuXCIgLklQICgzQykNCj4gLS5cIiBUaGVzZSBmdW5jdGlvbnMsIHRoZSBmdW5j
dGlvbnMgZnJvbSBjaGFwdGVyIDIgYW5kIGZyb20gY2hhcHRlciAzUyBhcmUNCj4gLS5cIiBj
b250YWluZWQgaW4gdGhlIEMgc3RhbmRhcmQgbGlicmFyeSBsaWJjLCB3aGljaCB3aWxsIGJl
IHVzZWQgYnkNCj4gKy5cIiBUaGVzZSBmdW5jdGlvbnMsDQo+ICsuXCIgdGhlIGZ1bmN0aW9u
cyBmcm9tIGNoYXB0ZXIgMiBhbmQgZnJvbSBjaGFwdGVyIDNTIGFyZQ0KPiArLlwiIGNvbnRh
aW5lZCBpbiB0aGUgQyBzdGFuZGFyZCBsaWJyYXJ5IGxpYmMsDQo+ICsuXCIgd2hpY2ggd2ls
bCBiZSB1c2VkIGJ5DQo+ICAgLlwiIC5CUiBjYyAoMSkNCj4gICAuXCIgYnkgZGVmYXVsdC4N
Cj4gICAuXCIgLklQICgzUykNCj4gQEAgLTU1LDkgKzYzLDExIEBAIEZvciBmdXJ0aGVyIGlu
Zm9ybWF0aW9uIG9uIGZlYXR1cmUgdGVzdCBtYWNyb3MsIHNlZQ0KPiAgIC5cIiBUaGVzZSBm
dW5jdGlvbnMgYXJlIGNvbnRhaW5lZCBpbiB0aGUgYXJpdGhtZXRpYyBsaWJyYXJ5IGxpYm0u
ICBUaGV5IGFyZQ0KPiAgIC5cIiB1c2VkIGJ5IHRoZQ0KPiAgIC5cIiAuQlIgZjc3ICgxKQ0K
PiAtLlwiIEZPUlRSQU4gY29tcGlsZXIgYnkgZGVmYXVsdCwgYnV0IG5vdCBieSB0aGUNCj4g
Ky5cIiBGT1JUUkFOIGNvbXBpbGVyIGJ5IGRlZmF1bHQsDQo+ICsuXCIgYnV0IG5vdCBieSB0
aGUNCj4gICAuXCIgLkJSIGNjICgxKQ0KPiAtLlwiIEMgY29tcGlsZXIsIHdoaWNoIG5lZWRz
IHRoZSBvcHRpb24gXGZJXC1sbVxmUC4NCj4gKy5cIiBDIGNvbXBpbGVyLA0KPiArLlwiIHdo
aWNoIG5lZWRzIHRoZSBvcHRpb24gXGZJXC1sbVxmUC4NCj4gICAuXCIgLklQICgzRikNCj4g
ICAuXCIgVGhlc2UgZnVuY3Rpb25zIGFyZSBwYXJ0IG9mIHRoZSBGT1JUUkFOIGxpYnJhcnkg
bGliRjc3LiAgVGhlcmUgYXJlIG5vDQo+ICAgLlwiIHNwZWNpYWwgY29tcGlsZXIgZmxhZ3Mg
bmVlZGVkIHRvIHVzZSB0aGVzZSBmdW5jdGlvbnMuDQo+IEBAIC03Niw3ICs4Niw5IEBAIGFu
ZCBpdHMgbWFueSBpbXBsZW1lbnRhdGlvbnM6DQo+ICAgM3R5cGUNCj4gICAuUFANCj4gICBU
aGlzIGRpZmZpY3VsdCBoaXN0b3J5IGZyZXF1ZW50bHkgbWFrZXMgaXQgYSBwb29yIGV4YW1w
bGUgdG8gZm9sbG93DQo+IC1pbiBkZXNpZ24sIGltcGxlbWVudGF0aW9uLCBhbmQgcHJlc2Vu
dGF0aW9uLg0KPiAraW4gZGVzaWduLA0KPiAraW1wbGVtZW50YXRpb24sDQo+ICthbmQgcHJl
c2VudGF0aW9uLg0KPiAgIC5QUA0KPiAgIElkZWFsbHksDQo+ICAgYSBsaWJyYXJ5IGZvciB0
aGUgQyBsYW5ndWFnZQ0KPiBAQCAtMTAyLDggKzExNCw4IEBAIFNlZQ0KPiAgIC5CUiBzdGFu
ZGFyZHMgKDcpLg0KPiAgIC5TSCBOT1RFUw0KPiAgIC5TUyBBdXRob3JzIGFuZCBjb3B5cmln
aHQgY29uZGl0aW9ucw0KPiAtTG9vayBhdCB0aGUgaGVhZGVyIG9mIHRoZSBtYW51YWwgcGFn
ZSBzb3VyY2UgZm9yIHRoZSBhdXRob3IocykgYW5kIGNvcHlyaWdodA0KPiAtY29uZGl0aW9u
cy4NCj4gK0xvb2sgYXQgdGhlIGhlYWRlciBvZiB0aGUgbWFudWFsIHBhZ2Ugc291cmNlDQo+
ICtmb3IgdGhlIGF1dGhvcihzKSBhbmQgY29weXJpZ2h0IGNvbmRpdGlvbnMuDQo+ICAgTm90
ZSB0aGF0IHRoZXNlIGNhbiBiZSBkaWZmZXJlbnQgZnJvbSBwYWdlIHRvIHBhZ2UhDQo+ICAg
LlNIIFNFRSBBTFNPDQo+ICAgLkJSIGludHJvICgyKSwNCg0KLS0gDQo8aHR0cDovL3d3dy5h
bGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------GFCU9saYA9UoBSZTc8X7R80J--

--------------wHx9QuM9qiBfVNORcn1eVoBV
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO5ZqEACgkQnowa+77/
2zLc0BAAnRmUzdTJHiSD3bIpePOPGX3HnJAaOlfyvnUzuXVH+mTu1ZixAVIqDZ8a
GKM/e+aHnwIYdp0BKgPshvgdMJVwgGyAPBUZ2UsxQaV0FY26cCiw2Y/XJJ+Q5IYO
nEm1Y1fl/Y8Kr11Hq52iaEPztIfm9x7bNOSww8l8BAUzX/mKQ6MF0ShbYxQ83CtC
AfB/UgWx6+232vKMex8hWpxOLOfOnxC9KhkeaPU5OIKmKlgbCrmhFByFnzqhzjtV
H3eodwZ33ltgl3knyNOpBXNm0kUk65KcjGGR9iyo2gYeKBLN2Dg97dfsCzcwMTjH
FaC7XulXVxZdP5DAeWIPDzE4f6cuYCqHXNrk+RH4izohRPCw1GI6AQEmZin14LiP
5TXN3Rq4uqZHSSqyly7c9EMp8sNNGK/NRqlUfG4kfhpoJnv19KnyHPNuwxrRXJSa
asMHjEI7PTq9JmTQcG5gGRvQs7WxHnv0yIMKvxIRy/vsNOdMzfAQUg+puFE82rXL
K0uoB1W2lYqx+5yiYW68dK4GYpN8KmegbggQMSXNYhMYH+shFzHAf6+ujTrOfpSQ
RYQs2xeQReZnKfobO+7zkHfvc+SlaDDsxklqxCNeNPaVxJsLAYmsfO/pVi93b4hm
S/5CoQFro2r8c/Jj4iYQURaSmRqNw1W/fVlxD22B/Bqq2CvdLgM=
=0C5N
-----END PGP SIGNATURE-----

--------------wHx9QuM9qiBfVNORcn1eVoBV--
