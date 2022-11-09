Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76A84622F62
	for <lists+linux-man@lfdr.de>; Wed,  9 Nov 2022 16:53:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229586AbiKIPxn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Nov 2022 10:53:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229582AbiKIPxm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Nov 2022 10:53:42 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D47ADEBA
        for <linux-man@vger.kernel.org>; Wed,  9 Nov 2022 07:53:41 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id w14so26395014wru.8
        for <linux-man@vger.kernel.org>; Wed, 09 Nov 2022 07:53:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3r4yVEueTjC3mWPvOt3AoywsTXGAz2vTZi6ijB4sf48=;
        b=qpdGIdcp31fZ+fQAML6Le6MlBfb8I4fW1bgSA5/faBA3b9ytReYDZKLtyG647fvovE
         9AXgiP7S9rCgG9PA1f+c18lKC/EPAaNC0nzYe9KQEguHaNfhFz1ph+YtcsM4rQ4okORP
         B4GrMuGipIYQ1iqs2EOz4z1EcClqIbQ0T5pzwVV7powOwWe4dd1mdilzWxRVo6bpcRXL
         q+ZdfPo+z+nok9Y6IzVswzOoQeDCCT/XE/ZtzweK3ISwcB5/gPDTXDhQed858y4J3H2M
         +ifWJmCDDu6vvs/416YsdgxM0GIAmPA0yf+Lz7Zmi/LNCjtTe2hoQbxPDs9YtlIOeRjf
         yb7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3r4yVEueTjC3mWPvOt3AoywsTXGAz2vTZi6ijB4sf48=;
        b=yBvRwC3s/58lrh2ksBIP5+2LwKrdbCK8g5PggX3V4bspy40mZ8416GPdhRqdLNaeDl
         C6u0nRNKAVFRBAbJU8M4JhGSmo0ULO8VDvWGl8IseUbeAaT9fOJ7XmZ1sMD6rbk4Kr+c
         56PiSzmqL40JosKoXzzdbsszUy8SIIPFs0spBjuzQiDnzSSTiewa5JhYfoRBQvyz7/CS
         fZTJ8XBey/zS2xA/l71MumpJiqi00tNIf+R7UDgDZIzjJJ1jCj7PoBY/wTbLSQ/tRv72
         VxUhVa2fxHv22TdEbg8y0Xv3+EUU0G5cjOKDDk2r0YfoKCqeNu9p6uiHY4khT5trPV0v
         RKEQ==
X-Gm-Message-State: ACrzQf1JZSRQigZ6GDYlfHpMnaM6Lgho90NT6ZcEbpytjE00UYaviODS
        cgclHiPEDDLq5qo5HIpfhRvVQcrrclY=
X-Google-Smtp-Source: AMsMyM71/uUGeJ1FsMAXikgjDtVlsL32JqXpMEmN3CLdx3bfXxe2MrbNgCZ11WKvgEeCBYqeLrCbrA==
X-Received: by 2002:a5d:5610:0:b0:236:50d5:e6ec with SMTP id l16-20020a5d5610000000b0023650d5e6ecmr39088912wrv.13.1668009201981;
        Wed, 09 Nov 2022 07:53:21 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b30-20020a05600c4a9e00b003c6b70a4d69sm1746585wmp.42.2022.11.09.07.53.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 07:53:21 -0800 (PST)
Message-ID: <bbf2e5fc-54bd-ac41-d60d-a69d35cfcb84@gmail.com>
Date:   Wed, 9 Nov 2022 16:53:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] INSTALL, Makefile, cmd.mk, lint-man.mk: Lint about '\" t'
 comment for tbl(1)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Mike Frysinger <vapier@gentoo.org>,
        Mike Frysinger <vapier@chromium.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
References: <20221109151812.58365-1-alx@kernel.org>
 <35e5f115-060d-9101-503f-b008f3316b01@gmail.com>
 <103cdcad-074b-2652-f3a7-ea8218a351ac@gmail.com>
In-Reply-To: <103cdcad-074b-2652-f3a7-ea8218a351ac@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kIWsiTLF3NFDCJD3zXztSVIq"
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
--------------kIWsiTLF3NFDCJD3zXztSVIq
Content-Type: multipart/mixed; boundary="------------0G0qnh9jbLbSv7Lc0Ew1BIVR";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Mike Frysinger <vapier@gentoo.org>,
 Mike Frysinger <vapier@chromium.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>, Stefan Puiu <stefan.puiu@gmail.com>
Message-ID: <bbf2e5fc-54bd-ac41-d60d-a69d35cfcb84@gmail.com>
Subject: Re: [PATCH] INSTALL, Makefile, cmd.mk, lint-man.mk: Lint about '\" t'
 comment for tbl(1)
References: <20221109151812.58365-1-alx@kernel.org>
 <35e5f115-060d-9101-503f-b008f3316b01@gmail.com>
 <103cdcad-074b-2652-f3a7-ea8218a351ac@gmail.com>
In-Reply-To: <103cdcad-074b-2652-f3a7-ea8218a351ac@gmail.com>

--------------0G0qnh9jbLbSv7Lc0Ew1BIVR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDExLzkvMjIgMTY6NDIsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPiBPbiAx
MS85LzIyIDE2OjQwLCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gDQo+PiBUaGUgZGlm
ZiBpcyBodWdlLCBzbyBJIHdvbid0IHNlbmQgaXQsIGJ1dCB5b3UgY2FuIGV4cGVjdCB3aGF0
IGl0IGlzIGJ5IGp1c3QgDQo+PiBydW5uaW5nIHlvdXIgb3duIHNjcmlwdCA6KQ0KPiANCj4g
SSBjYW4gc2hvdyB5b3UgdGhpcywgdGhvdWdoOg0KPiANCj4gIMKgNTkyIGZpbGVzIGNoYW5n
ZWQsIDU5MiBpbnNlcnRpb25zKCspDQoNCkFuZCB0aGUgZmlyc3QgY291cGxlIG9mIGRpZmZz
IGlzOg0KDQpkaWZmIC0tZ2l0IGEvbWFuMi9hZGp0aW1leC4yIGIvbWFuMi9hZGp0aW1leC4y
DQppbmRleCBjMTA2OTI4ZTkuLjUxYmE2NTBhOCAxMDA2NDQNCi0tLSBhL21hbjIvYWRqdGlt
ZXguMg0KKysrIGIvbWFuMi9hZGp0aW1leC4yDQpAQCAtMSwzICsxLDQgQEANCisnXCIgdA0K
ICAuXCIgQ29weXJpZ2h0IChjKSAxOTk1IE1pY2hhZWwgQ2hhc3RhaW4gKG1lY0BzaGVsbC5w
b3J0YWwuY29tKSwgMTUgQXByaWwgMTk5NS4NCiAgLlwiIGFuZCBDb3B5cmlnaHQgKEMpIDIw
MTQsIDIwMTYgTWljaGFlbCBLZXJyaXNrIDxtdGsubWFucGFnZXNAZ21haWwuY29tPg0KICAu
XCINCmRpZmYgLS1naXQgYS9tYW4yL2Nsb2NrX2dldHJlcy4yIGIvbWFuMi9jbG9ja19nZXRy
ZXMuMg0KaW5kZXggMjI4ZDIxNDY3Li45MWE1N2JjMzYgMTAwNjQ0DQotLS0gYS9tYW4yL2Ns
b2NrX2dldHJlcy4yDQorKysgYi9tYW4yL2Nsb2NrX2dldHJlcy4yDQpAQCAtMSwzICsxLDQg
QEANCisnXCIgdA0KICAuXCIgQ29weXJpZ2h0IChjKSAyMDAzIE5pY2sgQ2xpZmZvcmQgKHph
ZkBucmMuY28ubnopLCBKYW4gMjUsIDIwMDMNCiAgLlwiIENvcHlyaWdodCAoYykgMjAwMyBB
bmRyaWVzIEJyb3V3ZXIgKGFlYkBjd2kubmwpLCBBdWcgMjQsIDIwMDMNCiAgLlwiIENvcHly
aWdodCAoYykgMjAyMCBNaWNoYWVsIEtlcnJpc2sgPG10ay5tYW5wYWdlc0BnbWFpbC5jb20+
DQoNCj4gDQo+IA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4N
Cg==

--------------0G0qnh9jbLbSv7Lc0Ew1BIVR--

--------------kIWsiTLF3NFDCJD3zXztSVIq
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNrzOkACgkQnowa+77/
2zIHFg/7BC9udoMN0PhOLlMm4qr6X7UGc4q9bszaShlEg3wRLSexwuWD5b5uKqn0
RkQqRZMM4do0w5x0TzpdRwVJBo7SUlKEuLgT98qMIHXKXIcILmzww3Z0YmcLnQOl
dPVRfrwu5OkynYv32rbEc+lr8SwjkS70M56ZksIxD+MPwERoh/XWH+l4ChCMgG4h
E62+IqfGiZr2+Hdv+oNJdgw91/kO1chaWGhwUpEGMOJ/d1Zwb3gF5ohsKs4jEV0s
J4IzflrdNZLSZ4Ebpgq8/tlNbmZneXx/kgDsg47ruuOf/V3AKNLZ8PhiIUyKqirU
za3ENxACt7sbPJECpPmSYN3x/WDZaY25RlBn+Q1zZ5cXabA1r8EOh/eRMuWancMi
Xw9PlAizA5lLamIXKLtpH8i+Q/aJ2sEZ6TS8iCibNCKe+XRPL5iYOkAt9PiO1xeX
ALJvSI/EO6AupSmHtzZlnf0xMm965HRqW73BnLtJ3D3R0Dg4/aXUZ5r7PsNMAsOE
NrLHVtrjToLMw8GTcmqwQq2DgmeQSuflBUjNVaB78/YtcxT0jS82fppUbDTnoej5
nytWhCjYl2SrNAagkZFO0S13xMAKzI3tgCexbZh6NXIWsZQt6Cq+C0esrtmQvzMV
jTHqdWNpgmS0KlpGiZuzmg/nBdF0B2ovZIzSouUCHzZoqZlofgc=
=JUxN
-----END PGP SIGNATURE-----

--------------kIWsiTLF3NFDCJD3zXztSVIq--
