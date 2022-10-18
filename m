Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF95960294E
	for <lists+linux-man@lfdr.de>; Tue, 18 Oct 2022 12:27:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229751AbiJRK1z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 06:27:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229556AbiJRK1x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 06:27:53 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BCE34D4D1
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 03:27:50 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id r13so22703961wrj.11
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 03:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WZd41MNs+Bc4sQMnCB1G8q9AWb2KEJ2JH7CpD5KlzRM=;
        b=BFGlPnkvHLLpkfMD92huqrpcGbrB6uCZR3BZAsLVvM+ymtuefErtev7JR6jO5R7pBy
         XT5fM7V778s2e8AxjWqh+AnAAxU2ddH3O11OqtgAC8xbv4ebSt/rN+0akTvI1EymPE1p
         793RuCWrHj5B1yMdqUVt/kgFvBghS180b/UOI55fKvAbAFi4OYktNatCOvAe8Z+fSpw9
         M+GEaTW+Ly6fxiWLvNk8MEZ0Elx/8cpvMv75l2v7drYd68H4/noYqovPQMl1Gik9Y0uL
         qDGjMgd0DCubSXhVW+dTulSpHpYxqQ8M4PNiNUIUhf8aNkp6F9kw+cgmirp2WAdalaqF
         jfQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WZd41MNs+Bc4sQMnCB1G8q9AWb2KEJ2JH7CpD5KlzRM=;
        b=W0ZNmbd5ppPnYg4tiLvnAIhHpdJWUbikyJ+dMG7QW078a0TU5GK+oEtPBv3V1keC0n
         uqGZPiH2yfBk8/koMCCKYC0oNM/Qi8owVP00knwKt4cMBQlFKaeVSSykXFqICJot1thl
         MiSkzcD3TdbJXRcPeAVhadthqtL9fqQJ+wkire1180PS/jnwE+L0hdFCwQ+KMVcyn8JB
         RumjFwqkMd7nQMKASQGDuRsGbPxd6WzYBR2rFuNPVHugk8DrR/l1g28rL2G1VpChNK6L
         LGRHYon57jl7p1oqHjRoA9u0gk7ntAo3va4PHhXs0K2RZgfIg6rdvdAN/Oy8clWIuzdA
         Ob0Q==
X-Gm-Message-State: ACrzQf0qOT5x7NInetSdAhvCQ2trLsXTzNhWLGP8/BpQf7oHR1o/qT/8
        m31y/XsokUKFIK2xMZJwHwbsphjfhdA=
X-Google-Smtp-Source: AMsMyM58SF3aBH4ShFtvxg7t76HW1M0asjnIXKPYLCU0W1Fr2qjw7CpogIS1we1UPBFoUFog4A/8Ig==
X-Received: by 2002:a5d:5552:0:b0:22e:6941:81f8 with SMTP id g18-20020a5d5552000000b0022e694181f8mr1337845wrw.521.1666088868866;
        Tue, 18 Oct 2022 03:27:48 -0700 (PDT)
Received: from [192.168.43.80] ([46.6.220.148])
        by smtp.gmail.com with ESMTPSA id bv16-20020a0560001f1000b0022e6f0d0d7csm12651016wrb.18.2022.10.18.03.27.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 03:27:48 -0700 (PDT)
Message-ID: <a595e41f-d6bf-d875-3181-1261c430f91f@gmail.com>
Date:   Tue, 18 Oct 2022 12:27:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [patch wfix] system_data_types.7: fix typo in regmatch_t
 description
Content-Language: en-US
To:     Michael Tokarev <mjt@tls.msk.ru>, linux-man@vger.kernel.org
References: <1666081485.302285.1244610.nullmailer@msgid.tls.msk.ru>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <1666081485.302285.1244610.nullmailer@msgid.tls.msk.ru>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------z0r7GW2lWniOW08anhFdGw2O"
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
--------------z0r7GW2lWniOW08anhFdGw2O
Content-Type: multipart/mixed; boundary="------------cIJkffsJui4xK9xfKPI2dzcM";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Michael Tokarev <mjt@tls.msk.ru>, linux-man@vger.kernel.org
Message-ID: <a595e41f-d6bf-d875-3181-1261c430f91f@gmail.com>
Subject: Re: [patch wfix] system_data_types.7: fix typo in regmatch_t
 description
References: <1666081485.302285.1244610.nullmailer@msgid.tls.msk.ru>
In-Reply-To: <1666081485.302285.1244610.nullmailer@msgid.tls.msk.ru>

--------------cIJkffsJui4xK9xfKPI2dzcM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWljaGFlbCwNCg0KT24gMTAvMTgvMjIgMTA6MjQsIE1pY2hhZWwgVG9rYXJldiB3cm90
ZToNCj4gVGhlIGRlc2NyaXB0aW9uIG9mIHJtX2VvIGluIHJlZ21hdGNoX3Qgc3RydWN0dXJl
IGhhcyBhIHR5cG8NCj4gd2hpY2ggbWFrZXMgaXQgZGlmZmljdWx0IHRvIHVuZGVyc3RhbmQu
IEZpeCB0aGlzLg0KPiANCj4gUmVwb3J0ZWQtQnk6IE5pY29sw6FzIEEuIE9ydGVnYSBGcm95
c2EgPG5pY29sYXNAb3J0ZWdhcy5vcmc+DQo+IFNpZ25lZC1vZmYtQnk6IE1pY2hhZWwgVG9r
YXJldiA8bWp0QHRscy5tc2sucnU+DQoNClBhdGNoIGFwcGxpZWQuDQoNCkJUVywgSSBndWVz
cyB5b3UgYXBwbGllZCBpdCBvbiB0b3Agb2YgdGhlIDUuMTMgcmVsZWFzZSwgYmVjYXVzZSB0
aGUgSEVBRCANCmluIHRoZSBnaXQgcmVwb3NpdG9yeSAoYW5kIHRoZSByZWNlbnQgNi4wMCBy
ZWxlYXNlIHRvbykgYXJlIHF1aXRlIA0KZGlmZmVyZW50IGZyb20gdGhhdC4gIE5vdyB0aGF0
IHRleHQgaXMgaW4gPG1hbjN0eXBlL3JlZ2V4X3QuM3R5cGU+Lg0KDQpUaGFua3MsDQoNCkFs
ZXgNCg0KPiANCj4gLS0tIGEvbWFuNy9zeXN0ZW1fZGF0YV90eXBlcy43DQo+ICsrKyBiL21h
bjcvc3lzdGVtX2RhdGFfdHlwZXMuNw0KPiBAQCAtMTAxOCw3ICsxMDE4LDcgQEANCj4gICB0
eXBlZGVmIHN0cnVjdCB7DQo+ICAgICAgIHJlZ29mZl90ICAgIHJtX3NvOyAvKiBCeXRlIG9m
ZnNldCBmcm9tIHN0YXJ0IG9mIHN0cmluZw0KPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgdG8gc3RhcnQgb2Ygc3Vic3RyaW5nICovDQo+IC0gICAgcmVnb2ZmX3QgICAgcm1fZW87
IC8qIEJ5dGUgb2Zmc2V0IGZyb20gc3RhcnQgb2Ygc3RyaW5nIG9mDQo+ICsgICAgcmVnb2Zm
X3QgICAgcm1fZW87IC8qIEJ5dGUgb2Zmc2V0IGZyb20gc3RhcnQgb2Ygc3RyaW5nIHRvDQo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0aGUgZmlyc3QgY2hhcmFjdGVyIGFmdGVy
IHRoZSBlbmQgb2YNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN1YnN0cmluZyAq
Lw0KPiAgIH0gcmVnbWF0Y2hfdDsNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29s
b21hci5lcy8+DQoNCg==

--------------cIJkffsJui4xK9xfKPI2dzcM--

--------------z0r7GW2lWniOW08anhFdGw2O
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNOf5sACgkQnowa+77/
2zKt1A//UdgbGTMx636ekIiVBDQgFKSj3nMPlHXmomtvSjSP9EkGqrGgMYeplk/4
0RDx08eE1cONhQwOc4WLTvWplmmpc+YtAuF90cZm2szACRWGVogwa/NxsjcmvLj6
hWlF41ZhjgCXka/RX36UAl18q8SUfFZwx9lSFhufu0ATCeBtiBNEgOvr3Ze24D/f
IrPwk5uumNoZ0d7nBM/2EfB2A3nSoSu/6WglB+xeyuOT46tNOuG8ExAmhmNDZDGF
VwWPhxNam29lj6XrReBOAxGfT+B+udzhgGZIjk1HbOyFDhDKw3BOIJBH9mJxNB2F
kKfRvMV/plyrAyemIV09u88p2EmqAZG5NgTCq5MpWf1AqfZIfWDM9OZ6NTid/aoR
GK+YFpFn+GzLZQenot1Q34fhmx5DvNg8GFy5RsYSoOCU12jRCHubB2xbC1ZUdQg9
xHIuJuVfZwYTiHkiFKlW1kZCWW9e2wq9AuGaHgiRZbPN/a0Xr2SuTgf10mQvVtrb
5G3GKBIurxG+xHq8XPeMXCKO4AcspAPTXtsfls+aWhUGBieErOeReBz/Fvqe4NzQ
eYXbF52eivJMcOTygjU/Pk55rukjAM5PLzOjqZ7+9oWk8RswgsSCoVFr9sUE4dWz
dUUNzVPOj4E4BfInMdq4y8DMmY1JbgIsvh54vD/qhgua1OvDKXc=
=eAgn
-----END PGP SIGNATURE-----

--------------z0r7GW2lWniOW08anhFdGw2O--
