Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B76705951C0
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 07:14:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232443AbiHPFON (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Aug 2022 01:14:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231313AbiHPFN4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Aug 2022 01:13:56 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BCDBEA332
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 14:28:24 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id n4so10405878wrp.10
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 14:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc;
        bh=Hvz0Q5H28Kp8ao/I9HhZT8bLYgZ1fueLnwz+B+lUSYQ=;
        b=frFXrpMy7grk8D20xzCQOiB99t0PZs5H6aRsFDTsykbirVBso74XT7PpeuE4/IBLe2
         3mn8s6vXsHJgggPv6RAV7I4aBEovDjb8StWglZIIao0zXbk3l1AVwKrsAVmazeyVCvyD
         +0mYgqhk66E4RThmYxLg0gZtkJgeKekEGl9+n9hTDQmXiEqG7o1KtMXKlM/Wc4OHWgb8
         Weiv511L9fY1RX9pSw/bLBDLek+oZy7/AOhWUdd/hhwIwix3pOmqPKrliY4I1s0YJJDB
         33YmlmAcURaWQOQs7SAQDFbQu3XYNFMA2Zn/JNyZGInz2iZtbz0EfOmZfLALRRFhr6cF
         QOvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc;
        bh=Hvz0Q5H28Kp8ao/I9HhZT8bLYgZ1fueLnwz+B+lUSYQ=;
        b=k5mXNCADuJMWlCgGYXZC3K11sFamRHIeU5SMOMFIAw2PMAR885pGNQuCYnSSJCdYGu
         afavdTGBkWcr1cCgplH4Q1I3+emUpfHouf2lHzLjBDH9mOhmAAJiuurr5iXU7HujWIaN
         ivPVDGZTVoLA/AeL3ckgWzOJi/GOAjFM86fC78S/0IxhMxJRq9I0tJgrl3rLu5PoQ246
         Mx89ozqzbdCugJdf4J7Aifud2u6/Kp1jA10T1peOgQ3c9hIKvxR7nbIDBEaRCyo0Qbd+
         IbVYOsxoB9Z6N7dh9inyVh2CVj9/5vHFLnQGxPaseyejHg8qBEeobqYtzXXteY5j0QyZ
         ljXQ==
X-Gm-Message-State: ACgBeo1OPkC5BQ/HJNaPjeOgrVIyLcU7f9JoP0bCKzSadSQP+qhyB0yT
        udDm8ykWX6O7uWBxuj5rAr6HbCA5+K4=
X-Google-Smtp-Source: AA6agR585dl6ba9bLdKFud1ZWZJhhRkA3Zd8T3KTy76Bjcm8CFuevl7YXQs2nOu45fbG+qP7iPpNKA==
X-Received: by 2002:adf:fe0d:0:b0:220:5df9:e5cf with SMTP id n13-20020adffe0d000000b002205df9e5cfmr9987730wrr.332.1660598902613;
        Mon, 15 Aug 2022 14:28:22 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n5-20020a05600c3b8500b003a302fb9df7sm10855126wms.21.2022.08.15.14.28.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 14:28:22 -0700 (PDT)
Message-ID: <7e411c41-1c78-947e-2b46-029b2a32f383@gmail.com>
Date:   Mon, 15 Aug 2022 23:28:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH] poll.2: tfix
Content-Language: en-US
To:     =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220808150746.2227830-1-stepnem@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220808150746.2227830-1-stepnem@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Ieg8bQHD0KUJ79N8Gwmkb5WB"
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
--------------Ieg8bQHD0KUJ79N8Gwmkb5WB
Content-Type: multipart/mixed; boundary="------------2fSEEcttato2ERUwPPPmvEkm";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>,
 linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <7e411c41-1c78-947e-2b46-029b2a32f383@gmail.com>
Subject: Re: [PATCH] poll.2: tfix
References: <20220808150746.2227830-1-stepnem@gmail.com>
In-Reply-To: <20220808150746.2227830-1-stepnem@gmail.com>

--------------2fSEEcttato2ERUwPPPmvEkm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgxaB0xJtww6FuLA0KDQpPbiA4LzgvMjIgMTc6MDcsIMWgdMSbcMOhbiBOxJttZWMgd3Jv
dGU6DQo+IEZpeGVzOiAwYmRkYTVkMDhlODIgKCJwb2xsLjI6IE5vdGUgdGhhdCBwb2xsKCkg
ZXF1aXZhbGVudCBjb2RlIGZvciBwcG9sbCgpIGlzIG5vdCBxdWl0ZSBlcXVpdmFsZW50IikN
Cj4gU2lnbmVkLW9mZi1ieTogxaB0xJtww6FuIE7Em21lYyA8c3RlcG5lbUBnbWFpbC5jb20+
DQoNClBhdGNoIGFwcGxpZWQuDQoNClRoYW5rcywNCg0KQWxleA0KDQo+IC0tLQ0KPiAgIG1h
bjIvcG9sbC4yIHwgNCArKy0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4yL3BvbGwuMiBiL21h
bjIvcG9sbC4yDQo+IGluZGV4IGZmMjIwNDUyNDdmMy4uZDk4ZDk0MTcyYjA4IDEwMDY0NA0K
PiAtLS0gYS9tYW4yL3BvbGwuMg0KPiArKysgYi9tYW4yL3BvbGwuMg0KPiBAQCAtMzUxLDcg
KzM1MSw3IEBAIHZhbHVlLg0KPiAgIC5CIEVJTlZBTA0KPiAgIC5SQiAoIHBwb2xsICgpKQ0K
PiAgIFRoZSB0aW1lb3V0IHZhbHVlIGV4cHJlc3NlZCBpbg0KPiAtLkkgKmlwDQo+ICsuSSAq
dG1vX3ANCj4gICBpcyBpbnZhbGlkIChuZWdhdGl2ZSkuDQo+ICAgLlRQDQo+ICAgLkIgRU5P
TUVNDQo+IEBAIC00NjgsNyArNDY4LDcgQEAgZmllbGQgaW4gYSBodW1hbi1yZWFkYWJsZSBm
b3JtOw0KPiAgIGlmIHRoZSBmaWxlIGRlc2NyaXB0b3IgaXMgcmVhZGFibGUsIHJlYWRzIHNv
bWUgZGF0YSBmcm9tIGl0LA0KPiAgIGFuZCBkaXNwbGF5cyB0aGF0IGRhdGEgb24gc3RhbmRh
cmQgb3V0cHV0OyBhbmQNCj4gICAuSVAgXChidQ0KPiAtaWYgdGhlIGZpbGUgZGVzY3JpcHRv
cnMgd2FzIG5vdCByZWFkYWJsZSwNCj4gK2lmIHRoZSBmaWxlIGRlc2NyaXB0b3Igd2FzIG5v
dCByZWFkYWJsZSwNCj4gICBidXQgc29tZSBvdGhlciBldmVudCBvY2N1cnJlZCAocHJlc3Vt
YWJseQ0KPiAgIC5CUiBQT0xMSFVQICksDQo+ICAgY2xvc2VzIHRoZSBmaWxlIGRlc2NyaXB0
b3IuDQo+IA0KPiBiYXNlLWNvbW1pdDogMjI2Y2Q5NWQ3OGMyNGRlZTE2OWJiOTY5MTM3MjEy
MjFmYjhmNjU2YQ0KDQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVq
YW5kcm8tY29sb21hci5lcy8+DQo=

--------------2fSEEcttato2ERUwPPPmvEkm--

--------------Ieg8bQHD0KUJ79N8Gwmkb5WB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmL6unUACgkQnowa+77/
2zKXNw//SjJpLrXSgfG3PhpDfuCuaQRCAb4PQm3gmJiOCDbEZxbEDv2IFly8kMHG
+O3cViY3OAX6F0gW7fB2jKbWxvLWcUKpYEgOmKW+6/UjTzhsNLxQktaxRMJcY6To
N4To5nfuHZUx6fa6QxxxwSA5r4yKX4/bmdos8qsmosGrKGkDvdQHmSKOCwxp9Cos
vQd4ID2WrrOhhIauAYYxeTgJJZEXqOrDn6VcnD31vBmNII2E6p/9Oh/ROtNC3aPD
AD+u7zxrGQ6z3gSuNY6BYo41AE258U+xKcDMljZrBbMPIrVDw5rIN17cyFInIJpE
z99cjZOyamlzQDep53dxvURqNVuYhIU0YY/TkpaH+l8xO8c9+wZJIyGOaFzPPpfZ
mxKMve6+mSaweoOJ9ZuTXCY1a6Hod49ptUh/oA9b0pvtLGtj+p0ptld4/AmtPPlf
Gzg+5G5/UyCT+IyBYEZentajOwnO5IZBjra+LbMdnnvK/YiDCl3gwNc9IRoluI7r
gN9DSUdRpT+AjH+QytayAVhJMGNjlKo8w/H60c4sHhBiJsc76HiwD3GsDUstqjCb
3I2cdJDTfK6zuQW1Qx2o5YIYOLr9q0ibmTXyWCO20VlQ8hwBUwgWPICgqAVHqUVx
xtkDPa1k5MZnilA2RL/7nAoKlzbyFIdmSLPLs/QLOrCbh5z2j2I=
=NKci
-----END PGP SIGNATURE-----

--------------Ieg8bQHD0KUJ79N8Gwmkb5WB--
