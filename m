Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 373F66417D9
	for <lists+linux-man@lfdr.de>; Sat,  3 Dec 2022 17:43:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229758AbiLCQnC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Dec 2022 11:43:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbiLCQnB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Dec 2022 11:43:01 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF618E87
        for <linux-man@vger.kernel.org>; Sat,  3 Dec 2022 08:42:59 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id f18so12436428wrj.5
        for <linux-man@vger.kernel.org>; Sat, 03 Dec 2022 08:42:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BZyi8YfdikUhIK2GRM44LZLXZ08fus9xBasOAUvHBLs=;
        b=b/ad3MVYwQj6Q7IVaPCc3Qbj+4yc8Q4qVIVf65G+lU4taVOEU8Rh6P5z6yIAgGWDRT
         j8ZTLkHEBlc9mPmOULV159sEeoTPZ/sGUgrbEcdygimgVeeMHkWSkE1fiR7wbqkfyzCV
         CkYjZt7bpcvaU2PrT2MmkNc0ISBXUGtKHtZWNd/4u2jV9IUTg2+2ZGPobgHV7dhmEWft
         zs7xaABUGVXE3L3zMroHJPAwa+RgFeqDThEFDgi5I4/uuLzu5aAQ/Csxv1FeLRuMCd5j
         2UdCwN8qxtvmTKnVIzzynFoCF4Xq9zRiZTQGa8L5UY4Zc6GRJgTTH828WG0eWI66GlBp
         xMxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BZyi8YfdikUhIK2GRM44LZLXZ08fus9xBasOAUvHBLs=;
        b=lbZMVtW69+qO9OGJRbiPnvc50HqETanLSaWoFy1E1euuV5hlVOAmqEF23ZBJWCfiEL
         nX0omij2cH2hpdrc00YKduoQcPUdU/KJ1vg4CZU8gnjgVuQ3p6sNajCucplDjNKtmiXi
         qQAcNwKf0hlghNcO80wD9IctdCLu79RP7z6/95VwU1qZWBG2W80fw71TSSap+TmENR6v
         dmfwb4vfF1yHAO2DAuuVBxhBmros/2fogUG87vNHDmXnmkMiX0k2BmQsebLNx+r2T0SW
         WHO8cIMFy0x6pzC7oQ9LwE1So+sVxzbwXNFp+RwoG6ggbmFPIr9vJaXgGnKR1EyLga8H
         rCGQ==
X-Gm-Message-State: ANoB5pmv1xUclaNdo8Ouy3HpdXcdbeIVfvzTwBWc37iDUiPtZtScRIfA
        9fd8K4g36SYOFtezood3KT0=
X-Google-Smtp-Source: AA0mqf4VMILDEwxZCYqXTci18kulXb9pT3Ussn7FzqUSvMU0ynN+MKqcPx+vp1Nc6tz+CiR3SiOk0A==
X-Received: by 2002:a5d:408f:0:b0:242:263e:3ba7 with SMTP id o15-20020a5d408f000000b00242263e3ba7mr12192228wrp.561.1670085778338;
        Sat, 03 Dec 2022 08:42:58 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l2-20020a5d6742000000b0024216d2e386sm9692141wrw.16.2022.12.03.08.42.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Dec 2022 08:42:57 -0800 (PST)
Message-ID: <1a54dcd1-a32e-8e1c-8e8a-6ab5e5b3e663@gmail.com>
Date:   Sat, 3 Dec 2022 17:42:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] select_tut.2: tfix
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20221203145758.7713-1-jwilk@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221203145758.7713-1-jwilk@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Po3q88w7Vpqzzfn9G3H0eD0E"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Po3q88w7Vpqzzfn9G3H0eD0E
Content-Type: multipart/mixed; boundary="------------6fN0pyFlYKGHoz2RN0W6SBHa";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, Michael Kerrisk <mtk.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <1a54dcd1-a32e-8e1c-8e8a-6ab5e5b3e663@gmail.com>
Subject: Re: [PATCH] select_tut.2: tfix
References: <20221203145758.7713-1-jwilk@jwilk.net>
In-Reply-To: <20221203145758.7713-1-jwilk@jwilk.net>

--------------6fN0pyFlYKGHoz2RN0W6SBHa
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsDQoNCk9uIDEyLzMvMjIgMTU6NTcsIEpha3ViIFdpbGsgd3JvdGU6DQo+IEFk
ZCBtaXNzaW5nIGNvbW1hLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSmFrdWIgV2lsayA8andp
bGtAandpbGsubmV0Pg0KDQpQYXRjaCBhcHBsaWVkLiAgVGhhbmtzIQ0KDQpBbGV4DQoNCj4g
LS0tDQo+ICAgbWFuMi9zZWxlY3RfdHV0LjIgfCAyICstDQo+ICAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFu
Mi9zZWxlY3RfdHV0LjIgYi9tYW4yL3NlbGVjdF90dXQuMg0KPiBpbmRleCA3NDk0OTdlNzAu
LjlkNjJkYjAyMyAxMDA2NDQNCj4gLS0tIGEvbWFuMi9zZWxlY3RfdHV0LjINCj4gKysrIGIv
bWFuMi9zZWxlY3RfdHV0LjINCj4gQEAgLTIzNCw3ICsyMzQsNyBAQCBjYW4gZmFpbCB3aXRo
IHRoZSBlcnJvcg0KPiAgIFxmQkVJTlRSXGZQLA0KPiAgIGFuZCBjYWxscyB0bw0KPiAgIC5C
UiByZWFkICgyKSwNCj4gLS5CUiByZWN2ICgyKQ0KPiArLkJSIHJlY3YgKDIpLA0KPiAgIC5C
UiB3cml0ZSAoMiksDQo+ICAgYW5kDQo+ICAgLkJSIHNlbmQgKDIpDQoNCi0tIA0KPGh0dHA6
Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------6fN0pyFlYKGHoz2RN0W6SBHa--

--------------Po3q88w7Vpqzzfn9G3H0eD0E
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOLfJAACgkQnowa+77/
2zJlNw//WC9hFBjPWMCLM0jZztTHs6z2BmzOSrf/kOqt6EpGu0rNNBCh18eH3HMw
9F5M35e6omFGAoHj6NF3ySAqxvtWuc7g431sP984rG/atkYjwwf7squIQDP2Rih4
WN3WMczayAODgDJpSSEXf2CS5ntLglbeZWSIZHtCJflNBg8RHUglYrvrGPVimA8e
doguaXn7EZKo6YDOd8xu8YNJNetIwArWeeXky8IKdtcfywoFWloceaozE5mIOmuL
ZHfkTeWXxP3CI/07leRnbHUkpRHMlFg6guPU7ZzBV3yTbVneNbTT3iun8dRgsbsX
xZ1UA2nPqOnlUWawlpRCD/rPklDM0SF/+rqEdDmp7fJgmWxvgm4kYM4kPMgXndqg
JDJKPc/SFX+8sxEMQ4bsK/rZZwZ7HsQEA0DqtXZ+XAQm9eSX6xpPP/lf2LghBg9d
D+D5ccaxkzg8QsmT5vaZe3HHLNcWJ8HG2cLD6TLJbAiR1McPTnOlxkO5z1EY6s2r
n6NNmWj/qaalBfgheLzgTwKLRoZZpPb4Kpnl17aobHfSscvgsSJh608eFnlBH0kD
On8CjPAsMXFFtFYk6VwH0AHvGMdcovSpoGvwE0YcUb4YytJyv+njbL3H7IujwOxw
LxTHJLhRleeZoKziAfh0hAtszgmd6gChGgply1aaKGTyLtGq5xI=
=Gdbx
-----END PGP SIGNATURE-----

--------------Po3q88w7Vpqzzfn9G3H0eD0E--
