Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DCE158AFEF
	for <lists+linux-man@lfdr.de>; Fri,  5 Aug 2022 20:36:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241447AbiHESg0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Aug 2022 14:36:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241502AbiHESgU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Aug 2022 14:36:20 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A51714E636
        for <linux-man@vger.kernel.org>; Fri,  5 Aug 2022 11:36:12 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id q30so4104766wra.11
        for <linux-man@vger.kernel.org>; Fri, 05 Aug 2022 11:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=X3D776uT5XeMEPabRL6zbvNh2zjsgFNkKZXsHjUDKMk=;
        b=a4gBHfYw3l3myEsW6lRg/3ix/zSqQKWGhUMJnxqWtnVGgG6fp0LNNbKAhTSgKXShUQ
         ZjvZd2QnQ6pN3VFEzY+ch7nUiNo1nAakdGfk4SgW368P7gcJdDv8TkyXzg3i1BoITi1E
         g1Uku4IfbC+XQ2Z0UDwaq+nSLe59e3BGB+gPq/nXvtr7fz+ibIVXsywVpixZ9ZrtBWSh
         SItyDb8gnBOaQl7QH3V0EPDyCD8wjO5T01nkgh9iD8Irsd0pyKyQw9eMO10Wej1PRMfu
         WkZFMMlJhOwuazQ2mICdlVKwrXvQphsujeTeVr8zVJQAoT17hIYzyj2co7BctJJsT0r2
         oW+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=X3D776uT5XeMEPabRL6zbvNh2zjsgFNkKZXsHjUDKMk=;
        b=R5QRjRJQurMQ4EMxvStebkbU3hcbJN0/jy++JljmhJOOloT57G2+NbeHs090xSBPC+
         FIWkYKjuqlVXo3UT19FXkN0XLBwL0akg9/+6NMxBKeRsOXsa8k7xENsbWegNLGhOb1Qq
         x4vrwXLcpYa+v5uP2PkVEUMlwX7jrqXKef/Vf/GMwP6y1ShqKrXw8rKgHUrO+QFpi2c4
         hE0qHs1fjJivAuBHc9PrWRhZCs+nylDJwFQ15FgpO7BbvqwOHnRcVizxj05sEsqyieNO
         lrlEH2j4Yyz5qr6ENUzG83Jdk/ywHSUyeLv1DzvO5IeJzXWYDR/l81atdamPChwOG2hh
         joZg==
X-Gm-Message-State: ACgBeo1MoLBY5SuQAaTQ0C3B3WmOH8WaEe5fF+OCqQ5LGvrEuLwnzLFS
        3EmrPHIr9vwkC2Z5cXT+7YM=
X-Google-Smtp-Source: AA6agR7y9DltYlEKo+WxnWvMKdXtIHxoJDxBZmzModGXv2r7q7cpKc+Qmj8UqaDfJH9HpblmD9xG8g==
X-Received: by 2002:a05:6000:4e:b0:21f:15fd:2d16 with SMTP id k14-20020a056000004e00b0021f15fd2d16mr5034692wrx.563.1659724571154;
        Fri, 05 Aug 2022 11:36:11 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o6-20020a05600c4fc600b003a32490c95dsm10618073wmq.35.2022.08.05.11.36.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Aug 2022 11:36:10 -0700 (PDT)
Message-ID: <73ed2877-3135-8463-4c9e-1dcc9f099d7f@gmail.com>
Date:   Fri, 5 Aug 2022 20:36:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Subject: Re: [patch v3] random.4: Update description about O_NONBLOCK flag
To:     GUO Zihua <guozihua@huawei.com>
Cc:     mtk.manpages@gmail.com, Jason@zx2c4.com, ebiggers@kernel.org,
        petr.vorel@gmail.com, fweimer@redhat.com, linux-man@vger.kernel.org
References: <20220803074555.64090-1-guozihua@huawei.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220803074555.64090-1-guozihua@huawei.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------pdZvZw0Q0Ea0r8Po32rPIuel"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------pdZvZw0Q0Ea0r8Po32rPIuel
Content-Type: multipart/mixed; boundary="------------ows9TW6bOtfut2R0VmTfqp0M";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: GUO Zihua <guozihua@huawei.com>
Cc: mtk.manpages@gmail.com, Jason@zx2c4.com, ebiggers@kernel.org,
 petr.vorel@gmail.com, fweimer@redhat.com, linux-man@vger.kernel.org
Message-ID: <73ed2877-3135-8463-4c9e-1dcc9f099d7f@gmail.com>
Subject: Re: [patch v3] random.4: Update description about O_NONBLOCK flag
References: <20220803074555.64090-1-guozihua@huawei.com>
In-Reply-To: <20220803074555.64090-1-guozihua@huawei.com>

--------------ows9TW6bOtfut2R0VmTfqp0M
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDgvMy8yMiAwOTo0NSwgR1VPIFppaHVhIHdyb3RlOg0KPiBUaGUgT19OT05C
TE9DSyBmbGFnIGhhcyBiZWVuIGlnbm9yZWQgc2luY2UgTGludXggNS42IGFuZCB0aGlzIHBh
dGNoDQo+IHN0YXRlcyB0aGlzIGNoYW5nZSBpbiBtYW4gcGFnZS4NCj4gDQo+IFRoZSBjb21t
aXQgdGhhdCBpbnRyb2R1Y2UgdGhpcyBjaGFuZ2UgaW4gdGhlIExpbnV4IGtlcm5lbCBpcw0K
PiAzMGMwOGVmZWM4ODggKCJyYW5kb206IG1ha2UgL2Rldi9yYW5kb20gYmUgYWxtb3N0IGxp
a2UgL2Rldi91cmFuZG9tIikNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEdVTyBaaWh1YSA8Z3Vv
emlodWFAaHVhd2VpLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IFBldHIgVm9yZWwgPHB2b3JlbEBz
dXNlLmN6Pg0KDQpQYXRjaCBhcHBsaWVkLg0KDQpUaGFua3MsDQoNCkFsZXgNCg0KPiAtLS0N
Cj4gDQo+IHYzOg0KPiAtUmVwbGFjZWQgInJlbW92ZWQiIHdpdGggImlnbm9yZWQiIGFzIHN1
Z2dlc3RlZCBieSBGbG9yaWFuLiBBZGRlZA0KPiBSZXZpZXdlZC1ieSBieSBQZXRyDQo+IA0K
PiB2MjoNCj4gLUZpeCBmb3JtYXRpbmcgaXNzdWUuDQo+IC0tLQ0KPiAgIG1hbjQvcmFuZG9t
LjQgfCA3ICsrKysrKy0NCj4gICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuNC9yYW5kb20uNCBiL21hbjQv
cmFuZG9tLjQNCj4gaW5kZXggYmVhODYwZTdmMGQ3Li4zMjI3YTQ4M2Q0YTkgMTAwNjQ0DQo+
IC0tLSBhL21hbjQvcmFuZG9tLjQNCj4gKysrIGIvbWFuNC9yYW5kb20uNA0KPiBAQCAtNjgs
NyArNjgsMTIgQEAgaGlnaCBxdWFsaXR5IHJhbmRvbW5lc3MsIGFuZCBjYW4gYWZmb3JkIGlu
ZGV0ZXJtaW5hdGUgZGVsYXlzLg0KPiAgIC5QUA0KPiAgIFdoZW4gdGhlIGVudHJvcHkgcG9v
bCBpcyBlbXB0eSwgcmVhZHMgZnJvbSBcZkkvZGV2L3JhbmRvbVxmUCB3aWxsIGJsb2NrDQo+
ICAgdW50aWwgYWRkaXRpb25hbCBlbnZpcm9ubWVudGFsIG5vaXNlIGlzIGdhdGhlcmVkLg0K
PiAtSWYNCj4gK1NpbmNlIExpbnV4IDUuNiwgdGhlDQo+ICsuQiBPX05PTkJMT0NLDQo+ICtm
bGFnIGlzIGlnbm9yZWQgYXMNCj4gKy5JIC9kZXYvcmFuZG9tDQo+ICt3aWxsIG5vIGxvbmdl
ciBibG9jayBleGNlcHQgZHVyaW5nIGVhcmx5IGJvb3QgcHJvY2Vzcy4NCj4gK0luIGVhcmls
ZXIgdmVyc2lvbnMsIGlmDQo+ICAgLkJSIG9wZW4gKDIpDQo+ICAgaXMgY2FsbGVkIGZvcg0K
PiAgIC5JIC9kZXYvcmFuZG9tDQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8v
d3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------ows9TW6bOtfut2R0VmTfqp0M--

--------------pdZvZw0Q0Ea0r8Po32rPIuel
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLtYxIACgkQnowa+77/
2zJaPQ/9GDpq0Ax3Z9SRq442/dVQDm/iRjhi5PnBPZEyGPvy7KRxG+vIrvpz0iOI
WHQVTIPB1J4V00e2OZ9ssRBpHt8KsgCrkfh02jnilixipNBU555BECdsf6dfa3A2
ezZbgLWZ2IK7K3PG30EvS8qXcyhCkIDRLG6yef1mQqCwOiAjr0J5XNr1g42PX804
U+onrrALpRD5ZzWKxTz9LLvgLwy2rQXdZudvagYDuzU3g4Vcyl5e8eMnM7gxwpdm
HI/mJOurezgSePefQdx1dhn1lJPHjDhiy9bM9RC4b1F0yTQnshcUqsrcG4YMMaXf
m14BnS0YMGm8CfbWTpYt+SK0ALxKilBZwf42nrdq5ZUOCbywA2R0zRvg5pqoF23n
PwQ4GmO3e4M5WOOktXl2vbraiv7sXnrFHttOVI3Cf1bCHFEdB65t3rs0xXKD1bGq
wfe8XKtuTG/SVivm8SDktByR273DLmDM+D0sog5+sAj06jF9jQLgQgdvmo+pb7db
/b8nbETOl/99PJn9wyu8Jx4MnGV/Ucmrvav6WRilWYd/+5a20BG/LjVhF+6MA8D2
PT4cgy4tAswooQMZZUvO4zP3qIde+FVGz8tMLz+Tu7Wc6fUW42M5vlw/78qhvgzw
MKBVK9nWLIN2dQHvt5jDn252Fo7mncDc76Fq27IRl8IMPy4seWY=
=Ll7N
-----END PGP SIGNATURE-----

--------------pdZvZw0Q0Ea0r8Po32rPIuel--
