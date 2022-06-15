Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A46754CD74
	for <lists+linux-man@lfdr.de>; Wed, 15 Jun 2022 17:50:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242516AbiFOPuh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Jun 2022 11:50:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245689AbiFOPud (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Jun 2022 11:50:33 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B75E7313BF
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 08:50:30 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id h19so12724373wrc.12
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 08:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=4hMo+ReQu3VgNWP0soi10R3JQ0a3LmCap25GTxpmVGQ=;
        b=HTELgSrGU9nulSHqQtrNh6k/YdTmvAAur/KKNhjaQ4/lpTlkKezzeB3JbFrwQlG6/L
         an/0ur2qMZ7xTb1sNfeH7n8yvSdkxLu5igT6hPX1LWD6w7TqvuUYWH7W1p9Qg2NXk/pO
         FzISYDaEShw0qMsG6CwtCTI4y290NaWVWMmnLfMPeIrmHUO6aFYnzqgwnEIFzu0vcqeA
         zNNRKOm+Ar9cBMAVv5nOu+HrnQCt7+l6R6nXhdcZUzYkUI0s+cKmyjEJxgOTH6j3QHlP
         ChkrglSwaHEhIqyySyqgIxPETgR8g5fE0Lm+om4Apfl/9yQfxUBKNMZTPnGYjCGpMP2A
         TwSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=4hMo+ReQu3VgNWP0soi10R3JQ0a3LmCap25GTxpmVGQ=;
        b=zFK1CIa1djzOmrD8mIIARyYCE9cyqy8Y47sl/e1GbkEvqQNl0J5Pp4u8AKIJaKBdwY
         x5syG7i+Rk0LnEBjsiC/uq7LETsIO2aJ2DX3efc16VVUBGsBYcgdv13EuSeExKqGXdV5
         2KNCyXXGwmA5+u7aIEUEXgyvkPmJeFomYktfYfSBulA2RXrZmu4n4paaKWv8gHIQ7zdS
         ORtv6af9UaAjRgXllDR5of1wszCZqIGZat6BG4AmIbH2Vy5yYuBq0EddkGeNBgwiE+OI
         M/OplTQsHcnKv3H5k+3xfQr9jrPT34mYDCQghKJSUtql9Kt1MT6wCf5BTIQrwdJRvADh
         fcmw==
X-Gm-Message-State: AJIora94WkWJidoe4JnGp0uU36Q1W5rixueYROOqAsC2BXF9UNVuev3g
        IIoEyOgFhrOAX6ii6qeexAtdzQdGwvU=
X-Google-Smtp-Source: AGRyM1uK1GwsOaadLTRju4/hC88C8H6PjM0NC6Pj0MRYrw4yvNDIbG2fYsBFX9WrZvvGC8jolYzKXQ==
X-Received: by 2002:adf:f5c4:0:b0:210:2bc4:5c9f with SMTP id k4-20020adff5c4000000b002102bc45c9fmr493614wrp.146.1655308229281;
        Wed, 15 Jun 2022 08:50:29 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l2-20020a5d6682000000b0020e6ce4dabdsm15585008wru.103.2022.06.15.08.50.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 08:50:28 -0700 (PDT)
Message-ID: <0a535d0b-572e-db16-f7fa-93da924588c8@gmail.com>
Date:   Wed, 15 Jun 2022 17:50:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] system_data_types.7: struct stat: describe blkcnt_t and
 blksize_t
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20220615145719.co5l7hmqys22x77j@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220615145719.co5l7hmqys22x77j@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ivAmTIhlMBZSNvOMScvpixS0"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------ivAmTIhlMBZSNvOMScvpixS0
Content-Type: multipart/mixed; boundary="------------FHQvcHs072ouSgF0kXgIBFVw";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <0a535d0b-572e-db16-f7fa-93da924588c8@gmail.com>
Subject: Re: [PATCH] system_data_types.7: struct stat: describe blkcnt_t and
 blksize_t
References: <20220615145719.co5l7hmqys22x77j@tarta.nabijaczleweli.xyz>
In-Reply-To: <20220615145719.co5l7hmqys22x77j@tarta.nabijaczleweli.xyz>

--------------FHQvcHs072ouSgF0kXgIBFVw
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksINC90LDQsSENCg0KT24gNi8xNS8yMiAxNjo1Nywg0L3QsNCxIHdyb3RlOg0KPiBQZXIg
SXNzdWUgNywgYm90aCBhcmUgc2lnbmVkIGludGVnZXJzLg0KDQpBRkFJSywgdGhhdCdzIHRy
dWUgc2luY2UgUE9TSVguMS0yMDAxLiAgTm8gbmVlZCB0byBnbyB0byBJc3N1ZSA3Lg0KDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBBaGVsZW5pYSBaaWVtaWHFhHNrYSA8bmFiaWphY3psZXdl
bGlAbmFiaWphY3psZXdlbGkueHl6Pg0KPiAtLS0NCj4gICBtYW43L3N5c3RlbV9kYXRhX3R5
cGVzLjcgfCA0ICsrKysNCj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvbWFuNy9zeXN0ZW1fZGF0YV90eXBlcy43IGIvbWFuNy9zeXN0
ZW1fZGF0YV90eXBlcy43DQo+IGluZGV4IDIzYWNjMTM5My4uNzg1MTgyMTM0IDEwMDY0NA0K
PiAtLS0gYS9tYW43L3N5c3RlbV9kYXRhX3R5cGVzLjcNCj4gKysrIGIvbWFuNy9zeXN0ZW1f
ZGF0YV90eXBlcy43DQo+IEBAIC02NjgsNiArNjY4LDggQEAgaXQgY29udGFpbnMsIHdpdGhv
dXQgYSB0ZXJtaW5hdGluZyBudWxsIGJ5dGUuDQo+ICAgLlRQDQo+ICAgLkkgc3RfYmxrc2l6
ZQ0KPiAgIFRoaXMgZmllbGQgZ2l2ZXMgdGhlICJwcmVmZXJyZWQiIGJsb2NrIHNpemUgZm9y
IGVmZmljaWVudCBmaWxlc3lzdGVtIEkvTy4NCj4gKy5JIGJsa3NpemVfdA0KPiAraXMgYSBz
aWduZWQgaW50ZWdlciB0eXBlLg0KDQpUaGF0J3MgY292ZXJlZCBpbiB0aGUgJ2Jsa3NpemVf
dCcgZW50cnkuDQoNCj4gICAuVFANCj4gICAuSSBzdF9ibG9ja3MNCj4gICBUaGlzIGZpZWxk
IGluZGljYXRlcyB0aGUgbnVtYmVyIG9mIGJsb2NrcyBhbGxvY2F0ZWQgdG8gdGhlIGZpbGUs
DQo+IEBAIC02NzUsNiArNjc3LDggQEAgaW4gNTEyLWJ5dGUgdW5pdHMuDQo+ICAgKFRoaXMg
bWF5IGJlIHNtYWxsZXIgdGhhbg0KPiAgIC5JUiBzdF9zaXplIC81MTINCj4gICB3aGVuIHRo
ZSBmaWxlIGhhcyBob2xlcy4pDQo+ICsuSSBibGtjbnRfdA0KPiAraXMgYSBzaWduZWQgaW50
ZWdlciB0eXBlLg0KDQpTYW1lLCBpbiAnYmxrY250X3QnLg0KDQpDaGVlcnMsDQoNCkFsZXgN
Cg0KPiAgIC5UUA0KPiAgIC5JIHN0X2F0aW1lDQo+ICAgVGhpcyBpcyB0aGUgdGltZSBvZiB0
aGUgbGFzdCBhY2Nlc3Mgb2YgZmlsZSBkYXRhLg0KDQotLSANCkFsZWphbmRybyBDb2xvbWFy
DQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------FHQvcHs072ouSgF0kXgIBFVw--

--------------ivAmTIhlMBZSNvOMScvpixS0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKp/7sACgkQnowa+77/
2zLUGg//RrlEaVu8vTWlIhpZfTSGzK3AzJ74oDilZ8g5GYjf0BchglyM2I2kVruW
hk9kLyV9I0L0cfzCQcp0M6RpN9em3I+dauTrhE2TFPx5PlQzF9sEO96Uc1+rsbr0
TwtJgVcdyYH73bQuJ84PzRNSmFN8+pT2kIi5og4qbHARkgtg11aezcJC4zLdOBYr
UzqO9vV7GF9h0Eh4Rl+fZUULDQoLH3C18ztd8nQUOzP191bBUAdY41Lug/cqcFZM
kcdoHnGiSLgOT9Atajy2AsE/n6sXOTwp53eyiVpnXSOPRI4CnclTWs91BTITLz3/
cvva3NFM8KWNoqEo7OBEYg7bFguDjUu7uWErW/EJK++07LXyCPdhxH5jvPOgPH9Z
nRKtLlL2IU6Rd21i7+cBhJqdpqmLKJmJblR9bHtwD30L6Lmep/SHS1Fd7hZcFAAP
KtHs0Hz1+rPtyeEWyLaBTet3O3jvZ7uiBdkoi+UabrAn5WemPiY98+LnsBxQPNfs
PTJTRtCCh94xH2/tC+3fKmF+znIcfWJdaqrQ01Sq39E5GH70OztFBthVTd0S1krE
XS6RTb+0SgeUr+KDlqmkM6aOuk0Eo7eUK5cFxvtIA0/RIaWNsvkn1gxObTlEJimJ
xOTM6/Vqu2CZbkAlfrcSigAXYf/16sNmDwyUAWlG3JmjDDEtMIw=
=osNJ
-----END PGP SIGNATURE-----

--------------ivAmTIhlMBZSNvOMScvpixS0--
