Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55DED64D4AA
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 01:29:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229536AbiLOA3Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 19:29:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbiLOA3Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 19:29:24 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69E1B2CE28
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 16:29:23 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id m19so12650770wms.5
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 16:29:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bgn3h45OCGGlXNZVKnW88QtWwat7MxzgcKcw0PnzY1g=;
        b=BQicYNYKo5s1OvOWm+Rq7DOWb/H5h/JTsbq/9jQQpXHh++gNtzxt68/Exha40B4xbn
         xu/GJ9dxHgy/wRT2cBAN4GMm28Q9Pgc9eZEFhfcWZC1vn2PdXlZHIzeWR1le0P/sm4Xf
         dJmD3/jA+VVLXWzkGE5kmi56+rMjHc/bkK/NXmDNqNXrNlBCtCxe8ktqDtAEzICTo4zC
         G601T0LV038R7p0nG1+114FwUaFgH1S6EpPo09Tyzy+PzGLGhfXw2vWfhJrOaY77KaXi
         k6sKhxskK9/kEBx09gBB4PlEp6jlJ95Ytcb2UuFjXxj8p0w9kHHw4NH2fuWBsMce05Fm
         s3Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Bgn3h45OCGGlXNZVKnW88QtWwat7MxzgcKcw0PnzY1g=;
        b=eJCkhPtxzl1GuoaE6biSEAtPjdvW+etHvYA1Wcc3qslWL4r4gJM4L0cMZIvFM6/1DY
         SbooOm0fGWx4K+NERakEI7K1/R5q/Td3NYfMBjS6r5c8MUZk+TITvxVub181e0a89ihf
         3gKJ9vmJIuWrmx5thrmSmY2JG4tUVoDauoZ+5l/vnfpbEw4s6KPDkCMpsIa/W/PXiVFr
         MhZ9GPznqWGN42mwl9H1vm1lerp0tDuaYpDdXhDhRTD8iGbAHszS1fUkBiISZbiFoIh/
         0PbpEEpBEgoucbHyypyN4OjQgeTuM9Zhu+RFXEPPwyhRmInmrL3VRvMmGqQmW4lUx9va
         Acsg==
X-Gm-Message-State: ANoB5pkhgaNQAMofbVufLgQuOjnr2KfUwBTi8rxXUhjTH/EfJeCpoR6Z
        jmcKcmtgbA8nzFqO3qgIiJhI//jZ60I=
X-Google-Smtp-Source: AA0mqf720XekixzndRrNCKjCXB4HtNTEh+VhXJm0wo98yTRYMYocwumbFl/bp4APOivXA6STtBbHhw==
X-Received: by 2002:a05:600c:4688:b0:3d0:480b:ac53 with SMTP id p8-20020a05600c468800b003d0480bac53mr20543399wmo.12.1671064161974;
        Wed, 14 Dec 2022 16:29:21 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o3-20020a05600c4fc300b003cfbbd54178sm13077413wmq.2.2022.12.14.16.29.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 16:29:21 -0800 (PST)
Message-ID: <8c9d44bf-d06d-4a2e-d1dc-164cd5dbf65e@gmail.com>
Date:   Thu, 15 Dec 2022 01:29:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v5 5/5] strncat.3: Rewrite to be consistent with
 string_copy.7.
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        Jakub Wilk <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
        Iker Pedrosa <ipedrosa@redhat.com>,
        Andrew Pinski <pinskia@gmail.com>
References: <20221214161719.12862-1-alx@kernel.org>
 <20221215002648.35111-6-alx@kernel.org>
In-Reply-To: <20221215002648.35111-6-alx@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6BRwDBQOaUFJt42zt7QmKXo0"
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
--------------6BRwDBQOaUFJt42zt7QmKXo0
Content-Type: multipart/mixed; boundary="------------acEvB0xvmcRWMq84HQbo5TLx";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Martin Sebor <msebor@redhat.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, Jakub Wilk
 <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
 Iker Pedrosa <ipedrosa@redhat.com>, Andrew Pinski <pinskia@gmail.com>
Message-ID: <8c9d44bf-d06d-4a2e-d1dc-164cd5dbf65e@gmail.com>
Subject: Re: [PATCH v5 5/5] strncat.3: Rewrite to be consistent with
 string_copy.7.
References: <20221214161719.12862-1-alx@kernel.org>
 <20221215002648.35111-6-alx@kernel.org>
In-Reply-To: <20221215002648.35111-6-alx@kernel.org>

--------------acEvB0xvmcRWMq84HQbo5TLx
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

Rm9ybWF0dGVkIHN0cm5jYXQoMyk6DQoNCnN0cm5jYXQoMykgICAgICAgICAgICAgICAgIExp
YnJhcnkgRnVuY3Rpb25zIE1hbnVhbCAgICAgICAgICAgICAgICAgc3RybmNhdCgzKQ0KDQpO
QU1FDQogICAgICAgIHN0cm5jYXQgLSBjb25jYXRlbmF0ZSBhIG51bGzigJBwYWRkZWQgY2hh
cmFjdGVyIHNlcXVlbmNlIGludG8gYSBzdHJpbmcNCg0KTElCUkFSWQ0KICAgICAgICBTdGFu
ZGFyZCBDIGxpYnJhcnkgKGxpYmMsIC1sYykNCg0KU1lOT1BTSVMNCiAgICAgICAgI2luY2x1
ZGUgPHN0cmluZy5oPg0KDQogICAgICAgIGNoYXIgKnN0cm5jYXQoY2hhciAqcmVzdHJpY3Qg
ZHN0LCBjb25zdCBjaGFyIHNyY1tyZXN0cmljdCAuc3pdLA0KICAgICAgICAgICAgICAgICAg
ICAgICBzaXplX3Qgc3opOw0KDQpERVNDUklQVElPTg0KICAgICAgICBUaGlzICBmdW5jdGlv
biAgY2F0ZW5hdGVzICB0aGUgIGlucHV0IGNoYXJhY3RlciBzZXF1ZW5jZSBjb250YWluZWQg
aW4gYQ0KICAgICAgICBudWxs4oCQcGFkZGVkIGZpeGVk4oCQd2lkdGggYnVmZmVyLCBpbnRv
IGEgc3RyaW5nIGF0IHRoZSBidWZmZXIgcG9pbnRlZCAgdG8NCiAgICAgICAgYnkgIGRzdC4g
ICBUaGUgIHByb2dyYW1tZXIgaXMgcmVzcG9uc2libGUgZm9yIGFsbG9jYXRpbmcgYSBidWZm
ZXIgbGFyZ2UNCiAgICAgICAgZW5vdWdoLCB0aGF0IGlzLCBzdHJsZW4oZHN0KSArIHN0cm5s
ZW4oc3JjLCBzeikgKyAxLg0KDQogICAgICAgIEFuIGltcGxlbWVudGF0aW9uIG9mIHRoaXMg
ZnVuY3Rpb24gbWlnaHQgYmU6DQoNCiAgICAgICAgICAgIGNoYXIgKg0KICAgICAgICAgICAg
c3RybmNhdChjaGFyICpyZXN0cmljdCBkc3QsIGNvbnN0IGNoYXIgKnJlc3RyaWN0IHNyYywg
c2l6ZV90IHN6KQ0KICAgICAgICAgICAgew0KICAgICAgICAgICAgICAgIGludCAgIGxlbjsN
CiAgICAgICAgICAgICAgICBjaGFyICAqZW5kOw0KDQogICAgICAgICAgICAgICAgbGVuID0g
c3RybmxlbihzcmMsIHN6KTsNCiAgICAgICAgICAgICAgICBlbmQgPSBkc3QgKyBzdHJsZW4o
ZHN0KTsNCiAgICAgICAgICAgICAgICBlbmQgPSBtZW1wY3B5KGVuZCwgc3JjLCBsZW4pOw0K
ICAgICAgICAgICAgICAgICplbmQgPSAnXDAnOw0KDQogICAgICAgICAgICAgICAgcmV0dXJu
IGRzdDsNCiAgICAgICAgICAgIH0NCg0KUkVUVVJOIFZBTFVFDQogICAgICAgIHN0cm5jYXQo
KSByZXR1cm5zIGRlc3QuDQoNCkFUVFJJQlVURVMNCiAgICAgICAgRm9yIGFuIGV4cGxhbmF0
aW9uIG9mIHRoZSB0ZXJtcyAgdXNlZCAgaW4gIHRoaXMgIHNlY3Rpb24sICBzZWUgIGF0dHJp
YuKAkA0KICAgICAgICB1dGVzKDcpLg0KICAgICAgICDilIzilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilKzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lKzilIDilIDilIDilIDilIDilIDilIDilIDilIDilJANCiAgICAgICAg4pSCSW50ZXJmYWNl
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICDilIIgQXR0cmlidXRlICAgICDi
lIIgVmFsdWUgICDilIINCiAgICAgICAg4pSc4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pS8
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pS84pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSkDQogICAgICAgIOKUgnN0cm5jYXQoKSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAg4pSCIFRocmVhZCBzYWZldHkg4pSCIE1U4oCQ
U2FmZSDilIINCiAgICAgICAg4pSU4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pS04pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pS04pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSYDQoNClNUQU5EQVJEUw0KICAgICAgICBQT1NJWC4x4oCQMjAw
MSwgUE9TSVguMeKAkDIwMDgsIEM4OSwgQzk5LCBTVnI0LCA0LjNCU0QuDQoNCkNBVkVBVFMN
CiAgICAgICAgVGhlICBuYW1lIG9mIHRoaXMgZnVuY3Rpb24gaXMgY29uZnVzaW5nLiAgVGhp
cyBmdW5jdGlvbiBoYXMgbm8gcmVsYXRpb24NCiAgICAgICAgdG8gc3RybmNweSgzKS4NCg0K
ICAgICAgICBJZiB0aGUgZGVzdGluYXRpb24gYnVmZmVyIGlzIG5vdCBsYXJnZSBlbm91Z2gs
IHRoZSAgYmVoYXZpb3IgIGlzICB1bmRl4oCQDQogICAgICAgIGZpbmVkLiAgU2VlIF9GT1JU
SUZZX1NPVVJDRSBpbiBmZWF0dXJlX3Rlc3RfbWFjcm9zKDcpLg0KDQpCVUdTDQogICAgICAg
IFRoaXMgZnVuY3Rpb24gY2FuIGJlIHZlcnkgaW5lZmZpY2llbnQuICBSZWFkIGFib3V0IFNo
bGVtaWVsIHRoZSBwYWludGVyDQogICAgICAgIOKfqGh0dHBzOi8vd3d3LmpvZWxvbnNvZnR3
YXJlLmNvbS8yMDAxLzEyLzExL2JhY2stdG8tYmFzaWNzL+KfqS4NCg0KRVhBTVBMRVMNCiAg
ICAgICAgI2luY2x1ZGUgPHN0ZGlvLmg+DQogICAgICAgICNpbmNsdWRlIDxzdGRsaWIuaD4N
CiAgICAgICAgI2luY2x1ZGUgPHN0cmluZy5oPg0KDQogICAgICAgIGludA0KICAgICAgICBt
YWluKHZvaWQpDQogICAgICAgIHsNCiAgICAgICAgICAgIGNoYXIgICAgYnVmW0JVRlNJWl07
DQogICAgICAgICAgICBzaXplX3QgIGxlbjsNCg0KICAgICAgICAgICAgYnVmWzBdID0gJ1ww
JzsgIC8vIFRoZXJl4oCZcyBubyDigJljcHnigJkgZnVuY3Rpb24gdG8gdGhpcyDigJljYXTi
gJkuDQogICAgICAgICAgICBzdHJuY2F0KGJ1ZiwgIkhlbGxvIFhYWCIsIDYpOw0KICAgICAg
ICAgICAgc3RybmNhdChidWYsICJ3b3JsZCIsIDQyKTsNCiAgICAgICAgICAgIHN0cm5jYXQo
YnVmLCAiISIsIDEpOw0KICAgICAgICAgICAgbGVuID0gc3RybGVuKGJ1Zik7DQoNCiAgICAg
ICAgICAgIHByaW50ZigiW2xlbiA9ICV6dV06ICIsIGxlbik7DQogICAgICAgICAgICBwdXRz
KGJ1Zik7ICAvLyAiSGVsbG8gd29ybGQhIg0KDQogICAgICAgICAgICBleGl0KEVYSVRfU1VD
Q0VTUyk7DQogICAgICAgIH0NCg0KU0VFIEFMU08NCiAgICAgICAgc3RyaW5nKDMpLCBzdHJp
bmdfY29weSgzKQ0KDQpMaW51eCBtYW7igJBwYWdlcyAodW5yZWxlYXNlZCkgICAgICAgIChk
YXRlKSAgICAgICAgICAgICAgICAgICAgICAgICAgc3RybmNhdCgzKQ0KDQotLSANCjxodHRw
Oi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------acEvB0xvmcRWMq84HQbo5TLx--

--------------6BRwDBQOaUFJt42zt7QmKXo0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOaamAACgkQnowa+77/
2zKOJQ/+P7u00bGFILfxmmb5pVhYmr7nOulq/7Hg7pteawVEqLzJDOjkN34XnVSI
o0FBBiF4BjQ021k8HuXD9LGpz/kp/J7YK4x3Ku9IQEwUWyuhVaIUfAH7AklF8XEE
A/qD5q0MVM3wBlgYqdokII9ejmc4lM7/bTUGmObByJ6Q/vfhgPv/Sm04feb+cq6H
JlQNqbMyjXX7TGIbM48brA7sGu1EXj9wdQOo9roLkr5jSvs3ZNS2d5MIfpIthQxV
5U+IEnUpRkHQNQNnb/aVT5agKgM9h7Wlit1nggxmwHduIQyhBb8gt9gbXoPn8PCH
1vYmYW8hDZaUluj2n1/8lXEh3iwt7DbGd/Rg8nvpH6EWq8w5TGUeIoqbF4NmzTzo
2GE/j0wDXFhOa60DuAqu0yPKbpHlcr/pQCgyOkl+nXSMdY4FBlQJlzMoZJ1lV7p0
yxfutIlNwLUNwUT1Vh5VLL7QG9CixySHVzOetVm1o6aUdqv7qG+22TTbJB/0fPEn
IHnQjWpMGVvWJFHXssoSrdrVzrIMjHzhIERT89iOD8/h9iAr7/gq6avFzn/P7eOM
B2p2z0ckrdPWi0EBseXuxjE/Zugmu930NoOEiSg7bUyQnV5X+LAd6eEKIaaN6mVr
88WfDcg3f0z+R3zW7bYSYWhiq8+hjpoqUef3Nv9r0+cXwRTLomk=
=CjiO
-----END PGP SIGNATURE-----

--------------6BRwDBQOaUFJt42zt7QmKXo0--
