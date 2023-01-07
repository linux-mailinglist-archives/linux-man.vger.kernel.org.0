Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F93C660EF1
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 13:57:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229640AbjAGM5u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 07:57:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230147AbjAGM5r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 07:57:47 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F05737671
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 04:57:45 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id w13so2321069wrk.9
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 04:57:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fp9SKgFng25geT7b0WzWgA5YV79GRAT2VFmJvSca0TQ=;
        b=OZO8asqqYJZ/10TK6HArr7MHmJcKwbvj7a43jxNulmjP9IHPuIX0xPDEi3ANzyEy36
         0817+RnMF6+MAvGxDpEqhUG4/SqLvA7rAvMU1tFHcsz4LTFMVF6ku4j7ngIsk+3Bo3O8
         ASKzsIiKkie7sadPA0QhijJGvnre9db7F5PfHgIvPNdZqdn8va40YpmnX3WZyPTfF4w4
         +eXUd80HQe1mPto4uo0q8z6n3ulHFgCZxG5u1lNvkqkyYzlElfGPbxlvJmzve9LPX73E
         Wc8TZV9L0+vSKlNK879vRZWf+UEtSJKGDJseuudjuZR4TIJHOXYmcDQJjU+/FFnhkdYM
         /AlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Fp9SKgFng25geT7b0WzWgA5YV79GRAT2VFmJvSca0TQ=;
        b=DSkmRldmlDXZRMHNtB25V8eRsQFIGtLu7C6FFydw0g202LnfeSiiyYt5GKUMNj4bC1
         it6Ox81UEaz6uEfrZXweqbaue1RJdZ6q7MuKJ0yRP5oLjeXjUnlFCe6V1NIdl0ChHmgy
         4BT1RiVFWoYwgVX3dMQMCyxwL2sroHTApobrTcfk3ffkIuBtgSUKO81T5sE0j1tEwHg2
         IRC41Xb6ejmK6ic7g0tjkNrihbJX0PkCjRROhTcgxeOAB/zkViku2gIgfJ++QazmMeSZ
         1bTDqo6hokr6OmrQVEe3ZypqBDdyDGiTXcN97ql2rNt71yWIk6YDn4VRrdFTmpRqso/v
         HBpw==
X-Gm-Message-State: AFqh2krqeRjdh+4sEiHgvCOuuiCtjkBwj7OuBv3s/YaH/Sc+yffv059F
        K2ZJYcsGn/wLZTyE7DNcYDk=
X-Google-Smtp-Source: AMrXdXutD/Xuf/2fXqZJvBPBT9/Cwbs7w4g7Kvf2X9lI1qOxCMrOvMkO+RLw/Mnc6AQdlcfzSZmxQQ==
X-Received: by 2002:a5d:430f:0:b0:244:48b3:d12b with SMTP id h15-20020a5d430f000000b0024448b3d12bmr34869919wrq.45.1673096264414;
        Sat, 07 Jan 2023 04:57:44 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z8-20020a5d6548000000b0028df2d57204sm4401956wrv.81.2023.01.07.04.57.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jan 2023 04:57:43 -0800 (PST)
Message-ID: <7516714b-7f8e-b6b1-b44a-f114b78ac973@gmail.com>
Date:   Sat, 7 Jan 2023 13:57:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 08/10] intro.3: wfix
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230107095518.3ix6hfbgig43tmkw@illithid>
 <814d00de-7ed7-0a7f-3b96-714c35591019@gmail.com>
In-Reply-To: <814d00de-7ed7-0a7f-3b96-714c35591019@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Errzu5ly2K3KMo8j03JsMtQm"
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
--------------Errzu5ly2K3KMo8j03JsMtQm
Content-Type: multipart/mixed; boundary="------------3MomVxSooIA21urAPJmASaTB";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <7516714b-7f8e-b6b1-b44a-f114b78ac973@gmail.com>
Subject: Re: [PATCH v4 08/10] intro.3: wfix
References: <20230107095518.3ix6hfbgig43tmkw@illithid>
 <814d00de-7ed7-0a7f-3b96-714c35591019@gmail.com>
In-Reply-To: <814d00de-7ed7-0a7f-3b96-714c35591019@gmail.com>

--------------3MomVxSooIA21urAPJmASaTB
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvNy8yMyAxMzo0NSwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+IEhpIEJy
YW5kZW4sDQo+IA0KPiBPbiAxLzcvMjMgMTA6NTUsIEcuIEJyYW5kZW4gUm9iaW5zb24gd3Jv
dGU6DQo+PiAqIFRpZ2h0ZW4gY3Jvc3MgcmVmZXJlbmNlLsKgIEl0IHdhc3RlcyB3b3JkcyB0
byB0ZWxsIHBlb3BsZSB0byBsb29rDQo+PiDCoMKgIGVsc2V3aGVyZSAiZm9yIGZ1cnRoZXIg
aW5mb3JtYXRpb24iLsKgIFdoeSBlbHNlIHdvdWxkIHRoZXkgbG9vayB0aGVyZT8NCj4+ICog
VXNlIHBhc3NpdmUgdm9pY2UgbGVzcy4NCj4+ICogUmVsb2NhdGUgc2VudGVuY2UgZm9yIG1v
cmUgY29oZXJlbnQgZGlzY3Vzc2lvbi4NCj4+ICogU2F5ICJhcHBsaWNhdGlvbiBfcHJvZ3Jh
bW1pbmdfIGludGVyZmFjZSIuDQo+IA0KPiBJIG5vdGljZWQgdGhhdCB3aGVuIHlvdSBzZW50
IGl0LCBidXQgdGhvdWdodCB0aGF0IG1heWJlIGl0IHdhcyBqdXN0IGFub3RoZXIgd2F5IA0K
PiBvZiBzYXlpbmcgaXQuwqAgRHVja2R1Y2tnbyBzZWVtZWQgdG8gaGF2ZSBzZXZlcmFsIGlu
c3RhbmNlcyBvZiB0aGF0IGFsdGVybmF0aXZlIA0KPiBleHBhbnNpb24gb2YgQVBJLCBzbyBJ
IGFjY2VwdGVkIGl0LsKgIEknbSBjdXJpb3VzIGFib3V0ICJhcHBsaWNhdGlvbiBwcm9ncmFt
IA0KPiBpbnRlcmFjZSIsIHNpbmNlIEkgaGFkbid0IGhlYXJkIGFib3V0IGl0IGJlZm9yZSB5
b3VyIHBhdGNoOyBpcyBpdCBhIG5vcm1hbCANCj4gZXhwYW5zaW9uIG9mIEFQST8NCj4gDQo+
Pg0KPj4gU2lnbmVkLW9mZi1ieTogRy4gQnJhbmRlbiBSb2JpbnNvbiA8Zy5icmFuZGVuLnJv
Ymluc29uQGdtYWlsLmNvbT4NCj4gDQo+IFBhdGNoIGFwcGxpZWQuDQoNCkhtbSwgYWZ0ZXIg
cmVjb25zaWRlcmF0aW9uLCBJJ3ZlIGRyb3BwZWQgdGhlIHBhdGNoLiAgSSdtIG5vdCBzdXJl
IGFib3V0IGl0Lg0KDQo+IA0KPiBDaGVlcnMsDQo+IA0KPiBBbGV4DQo+IA0KPj4gLS0tDQo+
PiDCoCBtYW4zL2ludHJvLjMgfCAyMyArKysrKysrKysrKystLS0tLS0tLS0tLQ0KPj4gwqAg
MSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQ0KPj4N
Cj4+IGRpZmYgLS1naXQgYS9tYW4zL2ludHJvLjMgYi9tYW4zL2ludHJvLjMNCj4+IGluZGV4
IGQ2ZDkxZjZiZC4uYmJhZWY1MjVlIDEwMDY0NA0KPj4gLS0tIGEvbWFuMy9pbnRyby4zDQo+
PiArKysgYi9tYW4zL2ludHJvLjMNCj4+IEBAIC00Miw5ICs0Miw4IEBAIG11c3QgYmUgZGVm
aW5lZCBiZWZvcmUgaW5jbHVkaW5nDQo+PiDCoCAuSSBhbnkNCj4+IMKgIGhlYWRlciBmaWxl
cy4pDQo+PiDCoCBJbiBzdWNoIGNhc2VzLA0KPj4gLXRoZSByZXF1aXJlZCBtYWNybyBpcyBk
ZXNjcmliZWQgaW4gdGhlIG1hbiBwYWdlLg0KPj4gLUZvciBmdXJ0aGVyIGluZm9ybWF0aW9u
IG9uIGZlYXR1cmUgdGVzdCBtYWNyb3MsDQo+PiAtc2VlDQo+PiArdGhlIHJlbGV2YW50IGZ1
bmN0aW9uJ3MgbWFuIHBhZ2UgZGVzY3JpYmVzIHRoZSByZXF1aXJlZCBtYWNyby4NCj4+ICtT
ZWUNCj4+IMKgIC5CUiBmZWF0dXJlX3Rlc3RfbWFjcm9zICg3KS4NCj4+IMKgIC5cIg0KPj4g
wqAgLlwiIFRoZXJlDQo+PiBAQCAtNzcsOSArNzYsMTYgQEAgc2VlDQo+PiDCoCAuXCIgVmFy
aW91cyBzcGVjaWFsIGxpYnJhcmllcy7CoCBUaGUgbWFudWFsIHBhZ2VzIGRvY3VtZW50aW5n
IHRoZWlyIGZ1bmN0aW9ucw0KPj4gwqAgLlwiIHNwZWNpZnkgdGhlIGxpYnJhcnkgbmFtZXMu
DQo+PiDCoCAuU1MgU3Vic2VjdGlvbnMNCj4+IC1TZWN0aW9uIDMgb2YgdGhpcyBtYW51YWwg
aXMgb3JnYW5pemVkIGludG8gc3Vic2VjdGlvbnMNCj4+ICtUaGUgTGludXgNCj4+ICsuSSBt
YW4tcGFnZXMNCj4+ICtvcmdhbml6ZSBzZWN0aW9uIDMgaW50byBzdWJzZWN0aW9ucw0KPj4g
wqAgdGhhdCByZWZsZWN0IHRoZSBjb21wbGV4IHN0cnVjdHVyZSBvZiB0aGUgc3RhbmRhcmQg
QyBsaWJyYXJ5DQo+PiAtYW5kIGl0cyBtYW55IGltcGxlbWVudGF0aW9uczoNCj4+ICthbmQg
aXRzIG1hbnkgaW1wbGVtZW50YXRpb25zLg0KPj4gKy5JUiBsaWJjICdzDQo+PiArZGlmZmlj
dWx0IGhpc3RvcnkgZnJlcXVlbnRseSBtYWtlcyBpdCBhIHBvb3IgZXhhbXBsZSB0byBmb2xs
b3cNCj4+ICtpbiBkZXNpZ24sDQo+PiAraW1wbGVtZW50YXRpb24sDQo+PiArYW5kIHByZXNl
bnRhdGlvbi4NCj4+IMKgIC5JUCBcKGJ1IDMNCj4+IMKgIDNjb25zdA0KPj4gwqAgLklQIFwo
YnUNCj4+IEBAIC04NywxMSArOTMsNiBAQCBhbmQgaXRzIG1hbnkgaW1wbGVtZW50YXRpb25z
Og0KPj4gwqAgLklQIFwoYnUNCj4+IMKgIDN0eXBlDQo+PiDCoCAuUFANCj4+IC1UaGlzIGRp
ZmZpY3VsdCBoaXN0b3J5IGZyZXF1ZW50bHkgbWFrZXMgaXQgYSBwb29yIGV4YW1wbGUgdG8g
Zm9sbG93DQo+PiAtaW4gZGVzaWduLA0KPj4gLWltcGxlbWVudGF0aW9uLA0KPj4gLWFuZCBw
cmVzZW50YXRpb24uDQo+PiAtLlBQDQo+PiDCoCBJZGVhbGx5LA0KPj4gwqAgYSBsaWJyYXJ5
IGZvciB0aGUgQyBsYW5ndWFnZQ0KPj4gwqAgaXMgZGVzaWduZWQgc3VjaCB0aGF0IGVhY2gg
aGVhZGVyIGZpbGUNCj4+IEBAIC0xMDEsNyArMTAyLDcgQEAgYW5kIGV4cG9zZXMgb25seSBk
YXRhIHR5cGVzIGFuZCBjb25zdGFudHMgdGhhdA0KPj4gwqAgYXJlIHJlcXVpcmVkIGZvciB1
c2Ugb2YgdGhvc2UgZnVuY3Rpb25zLg0KPj4gwqAgVG9nZXRoZXIsDQo+PiDCoCB0aGVzZSBh
cmUgdGVybWVkIGFuIEFQSSBvcg0KPj4gLS5JUiAiYXBwbGljYXRpb24gcHJvZ3JhbSBpbnRl
cmZhY2UiIC4NCj4+ICsuSVIgImFwcGxpY2F0aW9uIHByb2dyYW1taW5nIGludGVyZmFjZSIg
Lg0KPj4gwqAgVHlwZXMgYW5kIGNvbnN0YW50cyB0byBiZSBzaGFyZWQgYW1vbmcgbXVsdGlw
bGUgQVBJcw0KPj4gwqAgc2hvdWxkIGJlIHBsYWNlZCBpbiBoZWFkZXIgZmlsZXMgdGhhdCBk
ZWNsYXJlIG5vIGZ1bmN0aW9ucy4NCj4+IMKgIFRoaXMgb3JnYW5pemF0aW9uIHBlcm1pdHMg
YSBDIGxpYnJhcnkgbW9kdWxlDQo+IA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1j
b2xvbWFyLmVzLz4NCg==

--------------3MomVxSooIA21urAPJmASaTB--

--------------Errzu5ly2K3KMo8j03JsMtQm
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO5bEAACgkQnowa+77/
2zKLxA/+JOVvXf0gsSjTRkeI/ioUJ629SJDTqrmYMb/cTJ/KDsgiqEfavT+X18z4
ZW0l0uS8YYnQewlgmMzFpY3S4nGt9qyN/i/U/kAaCz1uQofTyj7ZquHuLQSltCWD
EKPHJEltNasa969PyjQ1AdU50jpVz2tIVRPeJh4it87ZTPDTPVgqBlaO30aCdZqi
SGd3sHoV0K89mhzmdKQvbcCoQqph6e/xHnT9MGema74kxFsybV/fLeIESmaeQXcJ
Ntb9N9XjJijHeDyfKKaXqPQOGFQ9qU3Nd203UM8Yh/tHxQaVW53AxWouayfwO9PW
GuwExMMMTQnQiIr2tt+QfzTUJS7ynC6O76t0jRtyErPMx8sfyjkD0abcaLBld+qP
FbAB/NBiCJ0T51aBjiyAztvxEbL9TBsK9CMCVd4PprOaqa45u2sLUBxNkDOyM6ry
YF5HCip0gK//KeXvZinvhFxmZijN5SgttXGRkj/spmWreJzXvi2lY9kXWVCcikN8
P+Wg5+gqAJxcuKrCZV4AnkYz3Gf7h49grwcaONsIgZ0CH9PQou+ChN/MffZyunsG
Iw7EWPJkJxx4XvGCkQj1/1+I/Uy1ZS7P/ruKCH+pmomFAZpAWoyInLmzgZEaJwgt
6AnXrEuByCPbZdeIPFusdOB83Wzyvuzedbwop2Hww3OJ8oKv5uo=
=aCsz
-----END PGP SIGNATURE-----

--------------Errzu5ly2K3KMo8j03JsMtQm--
