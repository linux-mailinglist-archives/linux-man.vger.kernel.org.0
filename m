Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AF33655B74
	for <lists+linux-man@lfdr.de>; Sat, 24 Dec 2022 23:57:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229506AbiLXW5O (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Dec 2022 17:57:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229485AbiLXW5N (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Dec 2022 17:57:13 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0985BB873
        for <linux-man@vger.kernel.org>; Sat, 24 Dec 2022 14:57:12 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id o15so5734590wmr.4
        for <linux-man@vger.kernel.org>; Sat, 24 Dec 2022 14:57:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dlhZtSJQmMjmp5xbxq0tlQJ6d6pM3+P061piTy2HtTM=;
        b=E9ff+ZF1HP8LA8/WC1WEL656CdDQ7xKeWHHN817chgbRE5Wm3NvShRMFE3ZKaky0U8
         al111erAzWHvkqvS3S7DA2+ViAr+7+8S10N9Ea78IFBykgi5//xvDSBu54Au9mxkwri9
         teopevCe2zoWgnHjh6RJTwZ6+Wg7PanHAcnl/FTen9E8RxMSbUMFU6TPjw6x8qsqBl/q
         KLWNL2XAh/sl06MDsVhW16b/5Ta7Hxnd440T+0gULpd+3U2elI84fqkegvirYwyv5kcy
         yxpZMCWHdq5kQqBJ1sHU85hpM3flO7BoP4wBl6P9dqC+jizloennopmLOuujC9DmWIWS
         bfWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dlhZtSJQmMjmp5xbxq0tlQJ6d6pM3+P061piTy2HtTM=;
        b=4aOxZCKMRE1p3i+olBY00W0Bd1p3vSlm/lRI4jo5JTY7VSWg1QtCCQ8963eibdwmHO
         RS8InBr9frwi5Dq2fuzNsMYJHHwwG5k3Q3w3j7YCCygPbA+dF9Wgp+GxH0G/7/njv+Pl
         e+rxnXurp0YKapU8Y4+ztLkjpy32Sgo8EFZl1dKljWM5/L5yoOX/tGbC3/oQRYdpqMWQ
         RdRjpQp+sqf4TGZQ/VJ46hr3a0wInCSCC36d73UQp5YnikfWancsdo6uQkPKT9KWGMbv
         4JH5VLNxTXdiMOYLvTnFTn+YnTxba9lCnSX6LfolVdPexRch4zbLlfLDLqDfYqswh/CP
         WZSA==
X-Gm-Message-State: AFqh2krvXWcBj7O3RJ6R60CBpFw+gaZ5Z77cIBhR0WbtbIwG22KJTK/K
        t2RbLfQIJetNM6l3a0eQQuo/lZuusXE=
X-Google-Smtp-Source: AMrXdXs/G+SJHlIB9s0HrYrPUofjV9At8oJmZolLdh2ojhrSi8Q9kCZ0f1ncFfAhlR6/FWDsiZAzFg==
X-Received: by 2002:a05:600c:6020:b0:3d1:f0b4:8827 with SMTP id az32-20020a05600c602000b003d1f0b48827mr10153708wmb.25.1671922630224;
        Sat, 24 Dec 2022 14:57:10 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z10-20020a05600c0a0a00b003d96efd09b7sm7189185wmp.19.2022.12.24.14.57.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Dec 2022 14:57:09 -0800 (PST)
Message-ID: <ff9b3a3e-ffee-5c94-828b-4d2b048070a4@gmail.com>
Date:   Sat, 24 Dec 2022 23:56:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: man-pages book: Using stdin/stdout more?
To:     Deri <deri@chuzzlewit.myzen.co.uk>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <bc608529-e8bf-ba91-8206-986d880a595f@gmail.com>
 <43941d08-2277-28ec-8536-19a2b6e35469@gmail.com> <2140212.Mh6RI2rZIc@pip>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <2140212.Mh6RI2rZIc@pip>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------AYNT4HSMneua8F2UGt3743wy"
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
--------------AYNT4HSMneua8F2UGt3743wy
Content-Type: multipart/mixed; boundary="------------10A3kporCPxLkLfORyB3rzJ0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <ff9b3a3e-ffee-5c94-828b-4d2b048070a4@gmail.com>
Subject: Re: man-pages book: Using stdin/stdout more?
References: <bc608529-e8bf-ba91-8206-986d880a595f@gmail.com>
 <43941d08-2277-28ec-8536-19a2b6e35469@gmail.com> <2140212.Mh6RI2rZIc@pip>
In-Reply-To: <2140212.Mh6RI2rZIc@pip>

--------------10A3kporCPxLkLfORyB3rzJ0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRGVyaSwNCg0KT24gMTIvMjQvMjIgMjM6NDYsIERlcmkgd3JvdGU6DQo+IE9uIFNhdHVy
ZGF5LCAyNCBEZWNlbWJlciAyMDIyIDEwOjM3OjUwIEdNVCBBbGVqYW5kcm8gQ29sb21hciB3
cm90ZToNCj4+PiBIaSBEZXJpIQ0KPj4+DQo+Pj4gSSB1cGxvYWRlZCB0aGUgc2NyaXB0IHRv
IHRoZSByZXBvLg0KPj4+DQo+Pj4gV291bGQgaXQgYmUgcG9zc2libGUgdG8gdXNlIGEgcGlw
ZSBpbnN0ZWFkIG9mIHRoZSBUIGZpbGU/DQo+Pg0KPj4gT3IgZXZlbiBiZXR0ZXIsIGJlY2F1
c2UgaGF2aW5nIHRoZSBpbnRlcm1lZGlhdGUgZmlsZSBpcyBpbnRlcmVzdGluZyBmb3INCj4+
IGRlYnVnZ2luZy4gIEhvdyBhYm91dCBicmVha2luZyB0aGUgcHJvY2VzcyBpbnRvIDIgc2Ny
aXB0cywgYm90aCBvZiB3aGljaA0KPj4gd3JpdGUgdG8gc3Rkb3V0Pw0KPiANCj4gSGkgQWxl
eCwNCj4gDQo+IFRoZSBUIGZpbGUgaXMgZXNzZW50aWFsIChhcyB3ZWxsIGFzIHVzZWZ1bCks
IGJ1dCB5b3UgYXJlIGNvcnJlY3QgdGhlIHByb2dyYW0NCj4gY2FuIGVhc2lseSBiZSBzcGxp
dCBpbnRvIHR3by4gVGhlIGxpbmVzIGJldHdlZW4gNjEgYW5kIDY2IGNvdWxkIGVhc2lseSBi
ZQ0KPiBpbmNsdWRlZCBpbiBhIG1ha2VmaWxlIGFuZCB0aGVpciBvdXRwdXQgc3dpdGNoZWQg
dG8gU1RET1VULg0KPiANCj4gVGhlIHJlYXNvbiB0aGUgVCBmaWxlIGlzIHJlcXVpcmVkIGlz
IGJlY2F1c2Ugb2YgdGhlIGRvdWJsZSBncm9mZiBjYWxsIGluIGxpbmUNCj4gNjQuIEdyb2Zm
IGlzIGEgc2luZ2xlIHBhc3Mgc3lzdGVtIHNvIHdlIG5lZWQgYSB3YXkgdG8gcmVzb2x2ZSB3
aGV0aGVyIGEgLk1SIGlzDQo+IGEgdmFsaWQgbGluayBhbmQgc2hvdWxkIGJlIHNob3duIGFz
IGEgaG90c3BvdCAoYmx1ZSkgb3IgcG9pbnRzIG91dHNpZGUgdGhlDQo+IGJvb2ssIHNvIGNh
bid0IGJlIGEgaG90c3BvdC4gU28gdGhlIGZpcnN0IGNhbGwgdG8gZ3JvZmYgaW5jbHVkZXMg
LXogd2hpY2gNCj4gbWVhbnMgdGhhdCBncm9mZiB3aWxsIG5vdCAicHJvZHVjZSIgYW55IG91
dHB1dCBvbiBTVERPVVQgYnV0IGJlY2F1c2UNCj4gUERGLkVYUE9SVCBpcyBkZWZpbmVkIGEg
bGlzdCBvZiBkZWZpbmVkIGxpbmtzIGlzIG91dHB1dCBieSAudG0gc3RhdGVtZW50cyB0bw0K
PiBTVERFUlIgd2hpY2ggaXMgdGhlbiBzd2l0Y2hlZCB0byBTVERPVVQuIFRoaXMgbGlzdCBv
ZiBkZWZpbmVkIGxpbmtzIGlzIHRoZW4NCj4gcmVhZCBieSB0aGUgc2Vjb25kIGdyb2ZmIGNh
bGwgZm9sbG93ZWQgYnkgdGhlIFQgZmlsZSBhZ2FpbiwgYW5kIHRoaXMgdGltZQ0KPiBncm9m
ZiBoYXMgdGhlIC1aIGZsYWcgc28gaXQgcHJvZHVjZXMgYSBmaWxlIGluIGdyb2ZmX291dCBm
b3JtYXQuIFRoaXMgYWdhaW4NCj4gaGFzIHRvIGJlIHdyaXR0ZW4gdG8gYW4gaW50ZXJtZWRp
YXRlIGZpbGUgKExpbnV4TWFuQm9vay5aKSBzaW5jZSB0aGUgY2FsbCB0bw0KPiBncm9wZGYg
am9pbnMgdHdvIGZpbGVzLCB0aGUgY292ZXIgYW5kIHRoZSBib29rLg0KPiANCj4gSSBob3Bl
IHRoaXMgZXhwbGFpbnMgdGhlIHNoZW5hbmlnYW5zLiBJbiBtYWtlZmlsZSB0ZXJtcywgTGlu
dXhNYW5Cb29rLnBkZiBpcw0KPiBkZXBlbmRlbnQgb24gTE1CZnJvbnQuWiBhbmQgTGludXhN
YW5Cb29rLlouIFdoaWNoIGluIHR1cm4gYXJlIGRlcGVuZGVudCBvbg0KPiBMTUJmcm9udC50
IGFuZCB0aGUgVCBmaWxlIChwbGVhc2UgdGhpbmsgb2YgYSBiZXR0ZXIgbmFtZSAtIExpbnV4
TWFuQm9vay5UDQo+IHNwcmluZ3MgdG8gbWluZCEgSSBjYW4gdXNlIHRoZSBkYXNoZXIgcHJv
Z3JhbSBmb3IgZW1haWxzLCBidXQgY29kaW5nIHJlcXVpcmVzDQo+IGZpbmdlcnMgYW5kIGtl
eXMgd2hpY2ggaXMgbXVjaCwgbXVjaCwgc2xvd2VyIHNvIG15IGNvZGUgc3R5bGUgdGVuZHMg
dG8gdGhlDQo+IG1pbmltYWwhDQoNCk9oLCB0aGVyZSdzIG5vIHByZXNzdXJlIGF0IGFsbC4g
IElmIHlvdSBuZWVkIG11Y2ggbW9yZSB0aW1lIHRvIGhhdmUgc29tZXRoaW5nIA0KbW9yZSBt
b2R1bGFyLCB0YWtlIHlvdXIgdGltZSA6KQ0KDQpNeSB1bmRlcnN0YW5kaW5nIG9mIHBlcmwg
aXMgY2xvc2UgdG8gemVybywgc28gSSBjYW4ndCBoZWxwIGltcGxlbWVudGluZyBpdC4NCg0K
V3JpdGluZyB0byBzdGRvdXQgYW5kIHJlYWRpbmcgZnJvbSBzdGRpbiBhcyBtdWNoIGFzIHBv
c3NpYmxlLCBvciBhdCBsZWFzdCBhc2tpbmcgDQpmb3IgdGhlIGZpbGUgbmFtZXMgYXMgbXVj
aCBhcyBwb3NzaWJsZSB3b3VsZCBhbGxvdyBtZSB0byBjb25zdHJ1Y3Qgc29tZSBNYWtlZmls
ZSANCmNvZGUgd2hlcmUgSSBoYXZlIGZ1bGwgY29udHJvbCBvZiB0aGUgZmlsZXMgYmVpbmcg
cHJvZHVjZWQgKHRocm91Z2ggcmVkaXJlY3Rpb24sIA0Kb3IgYXQgbGVhc3Qgc3BlY2lmaWNh
dGlvbiBvZiB0aGUgZmlsZW5hbWVzKSwgYW5kIHdoZXJlIHRoZXkgYXJlIHByb2R1Y2VkICh0
aGUgDQpjdXJyZW50IG1ha2VmaWxlIGhhcyBhIHN0cm9uZyBkaWZmZXJlbnRpYXRpb24gYmV0
d2VlbiAkc3JjZGlyIGFuZCAkYnVpbGRkaXIpLg0KDQpJZiB5b3UgY2FuIHNwbGl0IHRoZSBz
Y3JpcHQgaW50byAyIG9yIHRocmVlIHNtYWxsZXIgaW5kZXBlbmRlbnQgc3RlcHMsIEkgdGhp
bmsgDQpJJ2xsIGJlIGluIGEgYmV0dGVyIHBvc2l0aW9uIHRvIHVuZGVyc3RhbmQgdGhlbSBh
bmQgcHV0IHRoZW0gaW4gdGhlIE1ha2VmaWxlLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0g
DQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------10A3kporCPxLkLfORyB3rzJ0--

--------------AYNT4HSMneua8F2UGt3743wy
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOng7oACgkQnowa+77/
2zKlJRAAnF/zp1YtWLJJzp1RCRhztKAtujsC5Z2F92phr2SbhjO0hD9b4aW7gc0R
aMltxtZBCnfcNO4E19yF+wrEZuN1w6OaYEsQUgpe8DiqHuxehuPvaJ7qXPeeLO5f
+J6MgPi1tEpCEJqwasM67lkwS92wp89dMT6HCymwt5nnp40AdQKgVKcSzFiw4Zec
+QLL+FBhjKEPR7GAjqJ9SinjTiZmnHPlhzfhH8UgRKBNCNTd4W6YmflyUqLieYlS
PEaQqg5JyU+dNSplfSJn3dD7qt6fZJNwy4RrbwltlqxX/U/XH1xOCboYXx+uPKnC
adF6jco3zrS4JarIdLtf09vxRs7KV32AOiJOtEUXXS1T3c9C0cLPRZKJsENhlOv0
Hxm/BlZYgrGY2UdhfzqhUMLjJA1xtw6hnajEg/ACRW7EEFb2bmJvc2gN0DzK4VhE
RRSZp17XVklRVhllFCGNtsXcuZjGUbgyffqcs7pap+DScd9c0G/h3dsna4aHdtqw
DgQz8rA8s9dhJVHK1bAXjSIRoEYD4/U9FQLoxfur9GeBRINepQYYMBYNlX9n7W/n
2ollmvBEoklBvyTNyIcfCvVwPlIQZ6NKfxeSKGgp4PwwQyoXcrUAmOjPELJEKvax
coUg+gdPet2C+5+D/SB7GhiE+FgxVhNM2oG0U0Lxoa396DriFTA=
=bjgr
-----END PGP SIGNATURE-----

--------------AYNT4HSMneua8F2UGt3743wy--
