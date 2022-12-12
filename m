Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D800649E1A
	for <lists+linux-man@lfdr.de>; Mon, 12 Dec 2022 12:43:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230079AbiLLLnN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Dec 2022 06:43:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231766AbiLLLmK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Dec 2022 06:42:10 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F0E511C0E
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 03:39:38 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id c65-20020a1c3544000000b003cfffd00fc0so4889715wma.1
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 03:39:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0lv5dPLe3M9xTnB3xsfC94HElhA7fv2TNY0JTPtwcCs=;
        b=Uds7WrerUB7/kLDsTn3qlmu55UF7Sd2x7Y7kUw//U+v+ZX9QhBUu2nQdnFTdO6QvXg
         5kgO/5+tIfcp6YIzDP/PspLzukfy3/qhXx3Hrm5NpEPgIrjcthjwcZUCdikYbIvgNUW2
         2uJG8qNCglt2QfIhIYmpsfeE2I03g7t6TA265RZ7mvq6OUtMMRr2hql0aXdcfV0NDRmy
         lguKo0TY0C1gapKeyxjoVSg7CsynkaZB29bkc32kKpCWTZ2t61WZ8rfcNroKzMZHWnth
         ILt4qqQfE/H44+qK0OkCVEJYiYg9Ri55F06Z2xLWOfV7kToHLLB/r2zpq5i9L7O7BRNV
         GJrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0lv5dPLe3M9xTnB3xsfC94HElhA7fv2TNY0JTPtwcCs=;
        b=F5gcMUZq1YPRgMgtE5A/CyUgIvzGXi2vDGKYe+O5Swc7vJAjU8dwnyT2T2pX5Knpwi
         bsAvNCxE9a6qqElKoNodqanhoYilbIAfVcGgF367sMLk8DRu0IWxCKGArnUoFd0celEB
         x3w0UZjQKJMs5f+AwAz/xazg8UCNcT0JhyGWbCol1+lFviShu9y2Chi5XRe9/YJDidBp
         ffOVCqrcruiyyCHkTcJfisB07OvaTHG8npnXgKEkwUnLcU5uxMixNZmvKUA9xs9Frjzg
         KTS1/oSMWPjfaM+QleftTv/2B/NnfvCKmrvGqNmas8ybN+KSlkS91WopUttMQjA0MP+G
         2Eww==
X-Gm-Message-State: ANoB5pl4zhKbjhgkXBVLCWBmj97vPl1NDnCYKW5EJBdXeQP5QGaZ2iEK
        NLo3jsJLzP99eSf813RX1h0=
X-Google-Smtp-Source: AA0mqf7S7nwrVze41PAm94MofZfJElbuw4kL6H0lnssySYFoIx/S0BnIp8HD/owlP4p5eq8ZQPvVTA==
X-Received: by 2002:a05:600c:4e52:b0:3d1:fcac:3c95 with SMTP id e18-20020a05600c4e5200b003d1fcac3c95mr11599601wmq.34.1670845177025;
        Mon, 12 Dec 2022 03:39:37 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p28-20020a1c545c000000b003a84375d0d1sm8983738wmi.44.2022.12.12.03.39.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Dec 2022 03:39:36 -0800 (PST)
Message-ID: <da61f13e-41f1-bb73-767c-7d6d099288e3@gmail.com>
Date:   Mon, 12 Dec 2022 12:39:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Ping^1: Chapters of the manual (was: Bug#1018737:
 /usr/bin/rst2man: rst2man: .TH 5th field shouldn't be empty)
Content-Language: en-US
To:     Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Cc:     Michael Haardt <michael@moria.de>,
        Colin Watson <cjwatson@debian.org>,
        Ingo Schwarze <schwarze@usta.de>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff@gnu.org,
        Andries Brouwer <Andries.Brouwer@cwi.nl>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        "Andries E. Brouwer" <aeb@cwi.nl>,
        Ralph Corderoy <ralph@inputplus.co.uk>
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <a7b8c6b3-a8e8-6ab7-6cf4-118446849a9c@gmail.com>
 <dca0e251-7481-7f1e-4077-0ddee070a357@gmail.com>
 <20220906204245.hzhq2s7yha6zzgrh@illithid>
 <30e80fe0-f0ce-d6cd-ee40-28692e5a5f82@gmail.com>
 <5c1e8620-e4ff-c79a-1d4e-11f797276726@gmail.com>
 <20221116234049.GA1229865@if>
 <f306a83a-306d-e3d0-5d25-bf07da3da59f@gmail.com>
 <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com>
 <b13137bb-8eb9-dc69-da3b-191eda8e5642@gmail.com> <E1p4Rdx-0002PO-Kl@moria.de>
 <59fb70b0-f4b7-d257-117e-767135fa39c3@gmail.com>
 <CAKH6PiUtvmbua0F_qCdR92fJfpiabMPg=6Lc1fguLUYE9CC0xQ@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAKH6PiUtvmbua0F_qCdR92fJfpiabMPg=6Lc1fguLUYE9CC0xQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------GbkIGA0E6fGfHgJCPDriK5er"
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
--------------GbkIGA0E6fGfHgJCPDriK5er
Content-Type: multipart/mixed; boundary="------------wsNo3yNjVZA6tzShhKzwRimX";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Cc: Michael Haardt <michael@moria.de>, Colin Watson <cjwatson@debian.org>,
 Ingo Schwarze <schwarze@usta.de>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man <linux-man@vger.kernel.org>, groff@gnu.org,
 Andries Brouwer <Andries.Brouwer@cwi.nl>,
 Michael Kerrisk <mtk.manpages@gmail.com>, "Andries E. Brouwer" <aeb@cwi.nl>,
 Ralph Corderoy <ralph@inputplus.co.uk>
Message-ID: <da61f13e-41f1-bb73-767c-7d6d099288e3@gmail.com>
Subject: Re: Ping^1: Chapters of the manual (was: Bug#1018737:
 /usr/bin/rst2man: rst2man: .TH 5th field shouldn't be empty)
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <a7b8c6b3-a8e8-6ab7-6cf4-118446849a9c@gmail.com>
 <dca0e251-7481-7f1e-4077-0ddee070a357@gmail.com>
 <20220906204245.hzhq2s7yha6zzgrh@illithid>
 <30e80fe0-f0ce-d6cd-ee40-28692e5a5f82@gmail.com>
 <5c1e8620-e4ff-c79a-1d4e-11f797276726@gmail.com>
 <20221116234049.GA1229865@if>
 <f306a83a-306d-e3d0-5d25-bf07da3da59f@gmail.com>
 <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com>
 <b13137bb-8eb9-dc69-da3b-191eda8e5642@gmail.com> <E1p4Rdx-0002PO-Kl@moria.de>
 <59fb70b0-f4b7-d257-117e-767135fa39c3@gmail.com>
 <CAKH6PiUtvmbua0F_qCdR92fJfpiabMPg=6Lc1fguLUYE9CC0xQ@mail.gmail.com>
In-Reply-To: <CAKH6PiUtvmbua0F_qCdR92fJfpiabMPg=6Lc1fguLUYE9CC0xQ@mail.gmail.com>

--------------wsNo3yNjVZA6tzShhKzwRimX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRG91ZywNCg0KT24gMTIvMTIvMjIgMDE6MzQsIERvdWdsYXMgTWNJbHJveSB3cm90ZToN
Cj4gQSBuaWNlIHByb3BlcnR5IG9mICJzZWN0aW9uIiBpcyB0aGF0IGl0J3MgcmVjdXJzaXZl
LS1hcHBsaWVzIHRvIGFueQ0KPiBsZXZlbCBvZiBhIGhpZXJhcmNoeS0tc28geW91IGRvbid0
IGhhdmUgdG8gc3RydWdnbGUgdG8ga2VlcA0KPiBsZXZlbC1zcGVjaWZpYyB0ZXJtaW5vbG9n
eSBzdHJhaWdodC4NCj4gDQo+IERvdWcNCj4gDQoNCkhtbSwgc2luY2UgdGhlIGNvbmNlcm5z
IGV4cHJlc3NlZCBieSBSYWxwaCBzZWVtIHRvIGJlIGF0IGxlYXN0IGFzIGl0Y2h5IGFzIG1p
bmUsIA0KYW5kIHRoZSBzdGF0dXMgcXVvIHRvZGF5IGlzIHRoYXQgd2UgaGF2ZSBzZWN0aW9u
cywgaXQgc2VlbXMgcmVhc29uYWJsZSB0byBrZWVwIA0KaXQgbGlrZSB0aGF0LiAgRml4aW5n
IG15IGl0Y2hlcyB3b3VsZCBjcmVhdGUgaXRjaGVzIHdpdGggbWFuKDEpJ3MgLXMsIGFuZCBJ
IA0KZG9uJ3QgbGlrZSB0aGF0Lg0KDQpBc3N1bWluZyB3ZSdsbCBoYXZlIHRvIGxpdmUgd2l0
aCB0aGF0LCBtYXliZSB5b3VyIGV4cGxhbmF0aW9uIHNlcnZlcyBhcyBhIA0KY29uc29sYXRp
b24uICA6KQ0KDQpTbywgSSBkaXNtaXNzIG15IHByb21wdCB0byByZWZvcm0gdGhlIG9sZCBu
b24tcmVjdXJzaXZlIHRlcm1pbm9sb2d5Lg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8
aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------wsNo3yNjVZA6tzShhKzwRimX--

--------------GbkIGA0E6fGfHgJCPDriK5er
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOXEvcACgkQnowa+77/
2zJwDQ/7BFfJUbL4uH3L9Siem2BULjkfYzlFkKbqv+zFR68WzbQbMRGuV1VyfTIU
aYintpEgCxHNC9/1aKDrJbxODmucMr6Ggn4FsTaPWBFVrZBuwdNyD4oI9kDtVOSk
lPIJYRZgzRW3G91oPNTqeOpUvQWWBdUSqa/x2DkOp6rRHLY7hdL4KW3UAutdBR1v
dGEeKWnPzi3DijnKFaTU6X4e9DOd7esilznjPENBaSEq9/2w/fXfmVh16BpDka18
/0bg80LPlrvAj9QpS6/11pdj/NMB7PsJEZVSYh9QwIN1aUGs/f2n4E7dTdQ2TECP
7M8wMUuQxGP7o0QOUP0/E4OrHH/YwTTYj1lNBVK868WGMn1l1qJGp2h3jT7Jr6mg
3CyajcasPoIwQOqaWREsM6y05F82l7d7e+rXhSfQS/OIQLVV1tWN3mjQPmxGpzRg
+k/SkyhwkoCuOKQGD82NWZ3g/3KgpSc2e06dEcjW63uf4nUcFFXGav0FNH+xQXMA
HKCS5pgBWRInKTSE4TcYOKZvw3/NKGVmKzangE8Ov4HS3qiDsaOd9JH+IJHOJfO0
iqtDYGZbMWZ1PPaK9Jha+PdCOwONQ1mm1jTrE/gfcCisZBZv1/vrVJcLmLVhG32Z
FAeiKasppp8nFq7lJr4RXjccqsZKukKmwYWse4aRgUAn6lGzzVk=
=XEmJ
-----END PGP SIGNATURE-----

--------------GbkIGA0E6fGfHgJCPDriK5er--
