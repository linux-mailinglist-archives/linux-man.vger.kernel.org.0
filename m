Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28E74579D35
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 14:48:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241611AbiGSMsW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 08:48:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241612AbiGSMrd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 08:47:33 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C12CF8C177
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 05:18:39 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id b26so21342574wrc.2
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 05:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=GImARoIGC8yKzjRF9rbq61MRbSxaOS1LuSy4yy5Q/Aw=;
        b=a27aEATldPbWn51zB1pPB/b7fL6n/xGbcfE9ROTtKBcE/Rmj1FcwrlQOwH/C6UhG+o
         PoHiyw0lZC6uxOQAzJxwMmGBsuLM8LjrY50k8gbLeL6Rte0EahBkAWEpAQWJOsFSR+kH
         t9kxSVdHjHV1fSSVtPKobnte8p3T/bpkEdPTFCiDauAG0ZB4tN35IiEkyYCqSb8I3w5+
         Tjq9k6lAbd7jT/BwA0fAR2Qguwk7jo4On6H4gauuzlTT+JRPtVCPLdkKwSKLBiTb9hsE
         c1Asm9e0+YeLF1GoLjQ4E86c6O9jXnv0VGAw8feE24SMt15UCPxU6SyKT2yb/ecR+VMN
         aIsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=GImARoIGC8yKzjRF9rbq61MRbSxaOS1LuSy4yy5Q/Aw=;
        b=e5wnoRASg92wGEMal9e0C25/b2wZmoyTNtbnk7kRuoB1FpqBuj0eTl0bzhtSPiS1E4
         xbhwrLF/+jWheZVz9+N9PL6OwbCSI0h8Vn+ZX5HtwjeJ+YD+Ryj7lxgSPQu/jldmnZFR
         1MeACWyZ53eky/l3sw5QahbyXkt3UyWeoKfEgcrMwN8ITt/pD3yHNdX4PET/qU60UyFe
         yflItB5DSdKitsGYAt+r75S351RRNkXjqm/QHOZQqgkwDp3/4XMpX4cqiCgfz0wVMUfj
         ZJXLJ/qbhHLEB2ef5ZhxN5L8ye2IlnGPBsyT3qqig/t+V+ue1lGIc9vH92MKAl1Dja06
         I/XQ==
X-Gm-Message-State: AJIora8IJ6r2HSPfg0/jWtPS9qaxvvUTp+XBnIBzp9CWSE61YnaKp8qv
        NAZTQOabrPnaj60K6gcPV+GSt/RjR48=
X-Google-Smtp-Source: AGRyM1vlseteBfUCEGGJRMzuP9a+/RmGCkFo6gKfePwaQFCvdATyMewlHecLGN1YtXZftw9Td1Crdw==
X-Received: by 2002:adf:e3c4:0:b0:21d:9c5d:26ac with SMTP id k4-20020adfe3c4000000b0021d9c5d26acmr27089601wrm.719.1658233116988;
        Tue, 19 Jul 2022 05:18:36 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b4-20020a05600c150400b003a03185231bsm17182498wmg.31.2022.07.19.05.18.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 05:18:36 -0700 (PDT)
Message-ID: <306ec759-d0bf-fc23-9d23-4902c404eee6@gmail.com>
Date:   Tue, 19 Jul 2022 14:18:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH 5/5] ctime.3: remove struct tm vestigia
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <36e71b9680341df1a27070b6446c20d562ecc3ba.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <36e71b9680341df1a27070b6446c20d562ecc3ba.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------tO6YsdW1tnMfhMhKpOBkRDZT"
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
--------------tO6YsdW1tnMfhMhKpOBkRDZT
Content-Type: multipart/mixed; boundary="------------P0kpS700piRJvtVb0tYuMCNh";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <306ec759-d0bf-fc23-9d23-4902c404eee6@gmail.com>
Subject: Re: [PATCH 5/5] ctime.3: remove struct tm vestigia
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <36e71b9680341df1a27070b6446c20d562ecc3ba.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <36e71b9680341df1a27070b6446c20d562ecc3ba.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>

--------------P0kpS700piRJvtVb0tYuMCNh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNy8xOS8yMiAwMzo1OCwg0L3QsNCxIHdyb3RlOg0KPiBTaWduZWQtb2ZmLWJ5OiBBaGVs
ZW5pYSBaaWVtaWHFhHNrYSA8bmFiaWphY3psZXdlbGlAbmFiaWphY3psZXdlbGkueHl6Pg0K
PiAtLS0NCj4gRnVubmlseSBlbm91Z2gsIEkgbm90aWNlZCB0aGlzIG9ubHkgd2hlbiB3cml0
aW5nIHRoZSBjb21taXQgbWVzc2FnZSBmb3INCj4gdGhlIHByZXZpb3VzIHBhdGNoIGFuZCBh
dHRlbXB0aW5nIHRvIGFzY2VydGFpbiBob3cgbXVjaCBJIHNob3VsZA0KPiBjb21wbGFpbiBh
Ym91dCB3aGF0J3MgaW4gbWFuLXBhZ2VzIDUuMTAgKHdoaWNoIGhhcyBqdXN0IHRtX3pvbmUg
KCEpKSwNCj4gc28gdGhhdCBjb21taXQgaXMgZW50aXJlbHkgdW5yZWxhdGVkIHRvIHRoaXMg
b25lLCBhbmQgaXRzIHRleHQgaXMNCj4gZW50aXJlbHkgdW5yZWxhdGVkIHRvIHRoaXMgcGFn
ZSdzDQoNCkFoaCwgSSBzZWUgdGhhdCdzIGhlcmUuDQpNYXliZSByZXdyaXRlIHRoZSBwcmV2
aW91cyBjb21taXQgbWVzc2FnZT8NCkknbGwgaG9sZCBhcHBseWluZyB0aGlzIHBhdGNoLg0K
DQpUaGFua3MsDQoNCkFsZXgNCg0KPiANCj4gICBtYW4zL2N0aW1lLjMgfCAxNSAtLS0tLS0t
LS0tLS0tLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMTUgZGVsZXRpb25zKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvbWFuMy9jdGltZS4zIGIvbWFuMy9jdGltZS4zDQo+IGluZGV4IGQyMjhi
ZGMyMS4uNjBlZTQ0MThkIDEwMDY0NA0KPiAtLS0gYS9tYW4zL2N0aW1lLjMNCj4gKysrIGIv
bWFuMy9jdGltZS4zDQo+IEBAIC0zNTYsMjEgKzM1Niw2IEBAIEluIG1hbnkgaW1wbGVtZW50
YXRpb25zLCBpbmNsdWRpbmcgZ2xpYmMsIGEgMCBpbg0KPiAgIC5JIHRtX21kYXkNCj4gICBp
cyBpbnRlcnByZXRlZCBhcyBtZWFuaW5nIHRoZSBsYXN0IGRheSBvZiB0aGUgcHJlY2VkaW5n
IG1vbnRoLg0KPiAgIC5QUA0KPiAtVGhlIGdsaWJjIHZlcnNpb24gb2YgXGZJc3RydWN0IHRt
XGZQIGhhcyBhZGRpdGlvbmFsIGZpZWxkcw0KPiAtLlBQDQo+IC0uaW4gKzRuDQo+IC0uRVgN
Cj4gLWxvbmcgdG1fZ210b2ZmOyAgICAgICAgICAgLyogU2Vjb25kcyBlYXN0IG9mIFVUQyAq
Lw0KPiAtY29uc3QgY2hhciAqdG1fem9uZTsgICAgICAvKiBUaW1lem9uZSBhYmJyZXZpYXRp
b24gKi8NCj4gLS5FRQ0KPiAtLmluDQo+IC0uUFANCj4gLWRlZmluZWQgd2hlbg0KPiAtLkIg
X0JTRF9TT1VSQ0UNCj4gLXdhcyBzZXQgYmVmb3JlIGluY2x1ZGluZw0KPiAtLklSIDx0aW1l
Lmg+IC4NCj4gLVRoaXMgaXMgYSBCU0QgZXh0ZW5zaW9uLCBwcmVzZW50IGluIDQuM0JTRC1S
ZW5vLg0KPiAtLlBQDQo+ICAgQWNjb3JkaW5nIHRvIFBPU0lYLjEtMjAwMSwNCj4gICAuQlIg
bG9jYWx0aW1lICgpDQo+ICAgaXMgcmVxdWlyZWQgdG8gYmVoYXZlIGFzIHRob3VnaA0KDQot
LSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5l
cy8+DQo=

--------------P0kpS700piRJvtVb0tYuMCNh--

--------------tO6YsdW1tnMfhMhKpOBkRDZT
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLWoRsACgkQnowa+77/
2zI1YQ/6AmXrZ5pPbrlyr7AXDQamfb8NebqhBN57Nb1TsO9oUzRW40RaBbRGAgE4
mLsrAQZNTk4GjjrPX1GX4WVfpinWFI9PsgCwgdC9N77Qopz4hcS2kmCBZtCcHc4q
QYxP1LtpixvyPKYZq2Wl/+q7q3LXF6RehIkqxzRmxPpMHsSckGnkTzgYpis+YbB6
TbENzILqE5/DOQCVuI7qYntvHtB6t4Ca4xq0dLt6KNpX3Aov3YPRc3KTweimD5AX
dDjqXEHXt5xLq3ThtjbrsrYy0/GLtWPVavUfuRyg4svAF9PrD/ww8Y3rsDyqsAZe
B9Edr3wcIzdSuexxDdAdE7Aa8WmbgcOOLtUngwe2eCnKLaC2SNghv+HqaNaEAtXf
EFyNRMCKBvU/UXwqmER3O0vS9WcXQWvW4IyLlCkUjaI7Two7kuBTx2fTegVUHVRm
r3iA8CgPYo71IPAY6FYoZg5XsZsa6z4Rw0zbH/aO9PJWLhXKmZED2H1NLTvexaiZ
5wchJ0maBDqQe5TcD9ob8dLCtoh3hF5X0NTUQWik52iBY43xDhTssWSyk4VzEkvh
EBVEdoV9J77P4p9G1UzMbRNvRUxnjU5/SSestdbqAOD4WVyLVpfvXnIOs5AXQQL3
E5Vym6Xw1L7VP8smLFuT6425nMpFVk13NzSe01oDlN5prJ9CXpI=
=SKuc
-----END PGP SIGNATURE-----

--------------tO6YsdW1tnMfhMhKpOBkRDZT--
