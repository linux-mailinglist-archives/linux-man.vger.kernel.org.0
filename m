Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1452D682AC0
	for <lists+linux-man@lfdr.de>; Tue, 31 Jan 2023 11:43:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231535AbjAaKng (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Jan 2023 05:43:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229943AbjAaKng (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Jan 2023 05:43:36 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 661E614E91
        for <linux-man@vger.kernel.org>; Tue, 31 Jan 2023 02:43:35 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id c10-20020a05600c0a4a00b003db0636ff84so10269307wmq.0
        for <linux-man@vger.kernel.org>; Tue, 31 Jan 2023 02:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+oqT4jcT9fmz2njKToPQ7j/XKAOR7BpP+atdnpFjFsQ=;
        b=DOFc8LbfenBAvICsVng9jLiK0ROvdVvRhyWlUrYMsJd3VuKbdysVdVfuTVtgPBBQAC
         zkAr9j3evJQ8W91E0TJ8aTG0DU165VCY8QJ4D1HtQWqA3cVm3blDbNpjKxokIWXiavgo
         fuh7U6gloBZ0ZeOqdFXVIqed2fra5opLHU2T+E+tYrKPkgJKE2dteXqg75CLHQM9E74n
         SIJ1wLTWURxEpGSUGIxwBiQOJR6YUFui+FBkJHNmFcf5HqazApVamV1ReCG17SlTMorn
         cM9MKdGpOMjr1Y5u3B8pfvdJc8tViLNTeVe7Jgux6XbrIX/7vd2/wjQ+LeisZYQEZXan
         vt+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+oqT4jcT9fmz2njKToPQ7j/XKAOR7BpP+atdnpFjFsQ=;
        b=TQrC0QHYqmeLq/W8s25CP9SkFlzJJ9gx9yDPYk2pz+Ind1HD2K6bbcXEP6I/RLuUrq
         vz0k+LO+nxxgUZbqLDa9tTxa0ck7PcZop4Ug7ktRNR+oaASQzkDTfE93MLI+Nwzt/D9T
         pAt2P0WbVmocwyl+nc1KoJtG44xwvFBSIXzTebDfBbv5BWfGFYAGx7cYCWA9Rer2lGNa
         ad4fDGCU47L6TDqJ+gaVxl8Eei7fitnRWZ6tb7zmd6YrSW6TRiErmD5YwmxP0BO9ZNQO
         0BuIairw6T4Y3OBd9fthhp0ZzWTlb/EPfkh2Ile8OhE8YnJFy7JXKaAUAathkKojMdni
         FHmQ==
X-Gm-Message-State: AO0yUKWWjXXjDkxyR+7N42tG6rFMopSM0jBfxdYuhdbF+iOtNUSUEfpn
        bFwXx3oZbHT91cbjJQBZc/8=
X-Google-Smtp-Source: AK7set/J8EMhrA/KVb02bG3owr8bM4WdQxvS0KJpPmfI+TJ8j3jmKL520vkaWMaDNM7tqA5f5ILo5Q==
X-Received: by 2002:a05:600c:3b88:b0:3dd:1bd6:385e with SMTP id n8-20020a05600c3b8800b003dd1bd6385emr2722428wms.21.1675161813795;
        Tue, 31 Jan 2023 02:43:33 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p20-20020a05600c2e9400b003d9862ec435sm15321731wmn.20.2023.01.31.02.43.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 02:43:33 -0800 (PST)
Message-ID: <169cff3a-6791-59af-5e01-910a1fbe5a2f@gmail.com>
Date:   Tue, 31 Jan 2023 11:43:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] intN_t.3type: tfix
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230130190941.4633-1-jwilk@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230130190941.4633-1-jwilk@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------LP3ycTrbwW9Jzjh8JD9Me4nj"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------LP3ycTrbwW9Jzjh8JD9Me4nj
Content-Type: multipart/mixed; boundary="------------qML6EYATMNSbK1w71g3StAgx";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, Michael Kerrisk <mtk.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <169cff3a-6791-59af-5e01-910a1fbe5a2f@gmail.com>
Subject: Re: [PATCH] intN_t.3type: tfix
References: <20230130190941.4633-1-jwilk@jwilk.net>
In-Reply-To: <20230130190941.4633-1-jwilk@jwilk.net>

--------------qML6EYATMNSbK1w71g3StAgx
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsDQoNCk9uIDEvMzAvMjMgMjA6MDksIEpha3ViIFdpbGsgd3JvdGU6DQo+IFNp
Z25lZC1vZmYtYnk6IEpha3ViIFdpbGsgPGp3aWxrQGp3aWxrLm5ldD4NCg0KUGF0Y2ggYXBw
bGllZC4NCg0KVGhhbmtzIQ0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFuM3R5cGUvaW50Tl90
LjN0eXBlIHwgMiArLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjN0eXBlL2ludE5fdC4zdHlwZSBi
L21hbjN0eXBlL2ludE5fdC4zdHlwZQ0KPiBpbmRleCBjYTMwNTE2ZWYuLjA5MzgzY2Q2NSAx
MDA2NDQNCj4gLS0tIGEvbWFuM3R5cGUvaW50Tl90LjN0eXBlDQo+ICsrKyBiL21hbjN0eXBl
L2ludE5fdC4zdHlwZQ0KPiBAQCAtOTgsNyArOTgsNyBAQCBhcmUgb25seSByZXF1aXJlZCBp
biBpbXBsZW1lbnRhdGlvbnMgdGhhdCBwcm92aWRlIGludGVnZXIgdHlwZXMgd2l0aCB3aWR0
aCA2NDsNCj4gICBhbmQgYWxsIG90aGVyIHR5cGVzIG9mIHRoaXMgZm9ybSBhcmUgb3B0aW9u
YWwuDQo+ICAgLlBQDQo+ICAgVGhlIG1hY3Jvcw0KPiAtLlJCIFsgVSBdIElOVCBcZklOXGZQ
IF9XSURUSCBXDQo+ICsuUkIgWyBVIF0gSU5UIFxmSU5cZlAgX1dJRFRIDQo+ICAgZXhwYW5k
IHRvIHRoZSB3aWR0aCBpbiBiaXRzIG9mIHRoZXNlIHR5cGVzDQo+ICAgLlJJICggTiApLg0K
PiAgIC5QUA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==


--------------qML6EYATMNSbK1w71g3StAgx--

--------------LP3ycTrbwW9Jzjh8JD9Me4nj
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPY8NQACgkQnowa+77/
2zK0LRAAmwWngjfF62QzGMFDEqbMr3hyQh5ONpgt6+fmaCO5zO2qoM4bH05nV/+g
VffejfqSnCz8Xy0kreVcsjzVXe2Qlx4dz4iTKx93Md+qzRoAmMgFixK1GE0zpDGu
pDC3WiP/GRKnnhcChfrTClPKk8PajXZBiT1WqAUnHLlSFB+5g7pCXHBKXqde38w4
nEBkWdP/Il6krui4aHFN9fUyow0YwD4/LcTaAPGmODfZ6C02WJTKrhV2G7CxOwZg
x20OvWCfSiencL6BRTazDmiufq7gG9cw3Q7sjIZpM7fsNw0gIrZXaoQ4aE1rYkWz
zfgD56Tjvo3HP/Td3nc/mJwxJre3E9F5v6xVS8tkVyn7JzlPFyoYgf29VA2CP1Hz
5nliwq3QyV0eB4CxaZcq9zd13M7tIGrRRGs8IteYv7vtU1MQZzle8NdqMiqRZE01
y3sKQJu50npEuEsw9q15HxcXdhsYCw1Jqf9Wegz04iSmmg+D8pwBBJGWzTNIYJga
4C7D2rb2+S+QMHkvokPvVpeKOBZCa60CFfcCM4y6I/cFAY4TWWCY7qxPGiJklJVo
TY1omNY9qDRBrryyVW3s5zQw4Wag9m/JdGm7cmwZIFqCDrit4++IHYACz9pQPYOr
+V0FV0lAMspQ7+OFdpa3qQX+Qwmc7iAy7GEeS9TM+49TLb11iAs=
=oC0N
-----END PGP SIGNATURE-----

--------------LP3ycTrbwW9Jzjh8JD9Me4nj--
