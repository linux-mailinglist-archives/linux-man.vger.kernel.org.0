Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59A265798BE
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 13:47:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233271AbiGSLrN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 07:47:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbiGSLrM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 07:47:12 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 416001ADA5
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 04:47:11 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id d16so21174912wrv.10
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 04:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=toT2KyN10YDi0x1QNdI2CeNSqPEa5VmrcVFWNe2GGt0=;
        b=JXWJIa17UOIDJwJlW9wA0fwv3/KeEDyF6VBjc+J/Zh3pOwzdEvfzSzwViBSrQQAtYE
         syizI/rZAGkWfhbss7uYeXQXz2SKgHz0r58SlF5WRqAidIG3bzV7s5q76lt65fSzYHSO
         dK7qvB8LNizfb0AntDLgOssUW/NqzYN0wojYXnSg8+0SEgYanBd15NDI25Qun1UVCLLX
         xCiOmYTm3xdL+kcyqJo/np7iPlNsJ7slAmtjcjY0gROToGxBwPEQq9lfnJZnCXrFMXAm
         gv3I/rYBuiCX97CISAnKy8rvLbtx7NDbBjOdZejWvWBRS/DcctewRO1pLKNj8Jbfy+Ne
         iuew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=toT2KyN10YDi0x1QNdI2CeNSqPEa5VmrcVFWNe2GGt0=;
        b=Lkx1AN5VAvyGUh9xfvIp/45bGf5SvVpE3YOrzEPJXFp0nvYduI1i1txc1r+7fezUxY
         l0iQBFI2nvRf2dHXkGUhDVriEN2qSpsbzjTR2IuFREmPNRQJXYUHUz7AO6FImZ4FCSyM
         WmdURY5G9lsOjLvajvF7/kplPDJIr9y/mcUALbREyH9c/yMv/oInjpGjvu1mb4coUEkp
         2io43P7ZrTN8QtBFnHoDmSp7LVUd/StCx4EdHHXmy5udbjAdjRUBcg8qsz73mqexfNV0
         kS7bs5HtY/NbRzYnEkJ09sKSijyys5dNsB1vbcC4rAN9kqqL3pMgvX/L1PIeivR/4WVA
         F7mg==
X-Gm-Message-State: AJIora88o2Zykki37b3Ze5lM65jXYqowk45dhqqevQ/7hbRc3qtnx+Ic
        dxEZyGaE4o06a1H2ofgG8FRmJliw6Nk=
X-Google-Smtp-Source: AGRyM1vPLrL1TEh7k6Zp/NU5QJ0WUeIlyB0D7ac8x8cwWwsoc3d5DvSsHskHcySvV72auVpKdL9BnA==
X-Received: by 2002:a05:6000:1547:b0:21d:9252:3f72 with SMTP id 7-20020a056000154700b0021d92523f72mr25807225wry.600.1658231229736;
        Tue, 19 Jul 2022 04:47:09 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z18-20020a5d44d2000000b0021cf31e1f7csm8593178wrr.102.2022.07.19.04.47.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 04:47:09 -0700 (PDT)
Message-ID: <3edd56de-624e-948e-8d0a-aa3e61375539@gmail.com>
Date:   Tue, 19 Jul 2022 13:47:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH 3/5] tm.3type: tm_year is year minus 1900, not since
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <82226362f0439ac1b52be2b0266a4bb9b0a6221b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <82226362f0439ac1b52be2b0266a4bb9b0a6221b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Oo0gyb1pz2x8kfpu7S9MVh03"
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
--------------Oo0gyb1pz2x8kfpu7S9MVh03
Content-Type: multipart/mixed; boundary="------------q7doo1tmPtBjnYrxTk57Fl34";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <3edd56de-624e-948e-8d0a-aa3e61375539@gmail.com>
Subject: Re: [PATCH 3/5] tm.3type: tm_year is year minus 1900, not since
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <82226362f0439ac1b52be2b0266a4bb9b0a6221b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <82226362f0439ac1b52be2b0266a4bb9b0a6221b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>

--------------q7doo1tmPtBjnYrxTk57Fl34
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDcvMTkvMjIgMDM6NTYsINC90LDQsSB3cm90ZToNCj4gU2luY2Ugb25seSBtYWtl
cyBzZW5zZSBpZiB0aGUgeWVhciByZXByZXNlbnRlZCBpcyBhZnRlciAxOTAwOg0KPiBob3cg
bWFueSB5ZWFycyBoYXZlIHBhc3NlZCBzaW5jZSAxOTAwIGluLi4uIDE0MTA/DQo+IA0KPiBB
bHNvIFxmQiB0aGUgY29uc3RhbnQgbGlrZSBlbHNld2hlcmUgaW4gdGhlIGh1bmsNCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IEFoZWxlbmlhIFppZW1pYcWEc2thIDxuYWJpamFjemxld2VsaUBu
YWJpamFjemxld2VsaS54eXo+DQoNClBhdGNoIGFwcGxpZWQuDQoNClRoYW5rcywNCg0KQWxl
eA0KDQo+IC0tLQ0KPiAgIG1hbjMvdG0uM3R5cGUgfCAyICstDQo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
bWFuMy90bS4zdHlwZSBiL21hbjMvdG0uM3R5cGUNCj4gaW5kZXggZGFmNzVlMmMxLi4xOTMx
ZDg5MGQgMTAwNjQ0DQo+IC0tLSBhL21hbjMvdG0uM3R5cGUNCj4gKysrIGIvbWFuMy90bS4z
dHlwZQ0KPiBAQCAtMTksNyArMTksNyBAQCBTdGFuZGFyZCBDIGxpYnJhcnkNCj4gICAuQlIg
IiAgICBpbnQgIHRtX2hvdXI7IiAiICAgLyogSG91ciAgICAgICAgICAgICBbIiAwICIsICIg
MjMgIl0gKi8iDQo+ICAgLkJSICIgICAgaW50ICB0bV9tZGF5OyIgIiAgIC8qIERheSBvZiB0
aGUgbW9udGggWyIgMSAiLCAiIDMxICJdICovIg0KPiAgIC5CUiAiICAgIGludCAgdG1fbW9u
OyIgIiAgICAvKiBNb250aCAgICAgICAgICAgIFsiIDAgIiwgIiAxMSAiXSAoSmFudWFyeSA9
ICIgMCAiKSAqLyINCj4gLS5CUiAiICAgIGludCAgdG1feWVhcjsiICIgICAvKiBZZWFycyBz
aW5jZSAxOTAwICovIg0KPiArLkJSICIgICAgaW50ICB0bV95ZWFyOyIgIiAgIC8qIFllYXIg
bWludXMgIiAxOTAwICIgKi8iDQo+ICAgLkJSICIgICAgaW50ICB0bV93ZGF5OyIgXA0KPiAg
ICIgICAvKiBEYXkgb2YgdGhlIHdlZWsgIFsiIDAgIiwgIiA2ICJdICAgKFN1bmRheSA9ICIg
MCAiKSAqLyINCj4gICAuQlIgIiAgICBpbnQgIHRtX3lkYXk7IiBcDQoNCi0tIA0KQWxlamFu
ZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------q7doo1tmPtBjnYrxTk57Fl34--

--------------Oo0gyb1pz2x8kfpu7S9MVh03
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLWmbsACgkQnowa+77/
2zISOA//SYe9sLOimMjEnvUF99tqtywcbwH+YlDjbnaaIY1KQROQqZIVWe12O+dY
H1GFllecyIHPT+XL+YhfmeQ3LTOB3HCprPEkmTA7u3W1cnBeWDVJJp8t0ic/baWL
ZhyY2d4L+5qDVgSywZvBZnViasiDurlQSZec7Y1ewz/qNXtjTh9oF0zpxdGR2nNh
cSvtsyJVvJblr4n+0aJPtnWwlPhhn1GfI/A0AqH2iLApgetX9+AeoWDhjy1GlM2w
TtvMDj3HjMUVBHHDaHBTzFfjeGidRfuM91n/ZLDUa++KyaEnbeVrOGqxt0zK4uCF
AeTdEBkRnLTIQPmluqctVFQUyMOWn6PIr0wvlGk1Qjs/8kQy/nHVgkzwvnJwcrmJ
hqB25BtKGdatXxWG4AUO0f01XfkKo93AWJt/cDKzU5xwsJpHzBuB/VDQXnUkIoeO
RVES/EvzuUjveH1TEN21WWK9g5Kuyj38DqwwZyG23Mu2Wf8ZEflieiMY6pOZNH3F
U9msuUSifAMi6FvlUQgkLypx2K/ABxK6N4CONuJioTidF7RWqW8xgH9d3SV6YgSP
Dk35Ohr0aDTChglVsbTD+X8E1t9hnEiOINIhwVX5vufIGW7NDyIzGIfbRo2LHzhK
0kCBEq/uRydkRlyIfOlmEaQtlZpzv8JnhXkuZ057ZTX/l8J98HI=
=rypM
-----END PGP SIGNATURE-----

--------------Oo0gyb1pz2x8kfpu7S9MVh03--
