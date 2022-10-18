Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1912A603355
	for <lists+linux-man@lfdr.de>; Tue, 18 Oct 2022 21:28:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229705AbiJRT2e (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 15:28:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229625AbiJRT2d (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 15:28:33 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 091726D56A
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 12:28:32 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id b4so25314529wrs.1
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 12:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2bnyHveDI3pmueobP8yFqqwVP9KrrYu23k48kMgEufc=;
        b=YFiq4NvnytcbcEuh8DlM1Yaliecn81zjEVfoODOA35RsI2oDWNcjRgjX8ii2ndUG95
         9EZp7ySXtH5ddOEp9n8EaaZSbL4ELiymC3QFenIMXrT1Z9Pg6t3iIOj6JKDutrc8HAuR
         dsWlXfP6MeDXMEeVWXqsvGstAlTCdiX567AtfOlWUAAyQBcOoKJHijtbYZfmsZWEC3IA
         mcS0CwJmmjzs0YCW9uPjAnJwlznBUIrBAfUSzC+vG4+0zByLcibW6U2mhDFN6Pis/fWT
         YFfaqPgaKk4gPXBCENkSy2GEw+zuBY3+Lg2e3B0wSGfvzPUEUz3j04GKh2RP7SdgzMHY
         e6hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2bnyHveDI3pmueobP8yFqqwVP9KrrYu23k48kMgEufc=;
        b=3VKiIwCn3MD1SflDLOOiqTNqfIGQVIaGB5XhQZYH4JzPhwvhaWbXIL0Rk8+9CRYAVI
         +4F9m8Ko4xA6l9PgMe9g70YImCJYVqxOLRtE7wI/36qsB6P3inx6ERiKao4vV+n4Df/F
         z6upYUy1W0l8px00jB/8GX3PGKxCGDg400d9o95RogXiXyAmbp4y0ox4MBUcFM9v3507
         /nKZd9NLJ5bNP+07x4gzqQOfFQQatLp2Rf/QcSkSFIwDvdkELNG3Zl8iLujem8x2UMjm
         uTLrnGLh6HDrbZzrD9FRGrJkrfcl4W4A9rQtTNHVDjXXyVurMjtWY1GQxJMQGFsmPbb1
         bHzQ==
X-Gm-Message-State: ACrzQf3D0tfpuMzjI2mHH4EGeLgpIjAOncN2tmux4hNCbO6/ca9hoM1J
        yfrQbZrl+iXflaFsaPNHyHcHhyHUZtI=
X-Google-Smtp-Source: AMsMyM78jNH9t6rmxp7x7k3icTGoP0bUqaEqnDF2nWojv6WOHPUoGKmBPdJnXEJOj5MTdzGLAx0fhw==
X-Received: by 2002:a5d:688f:0:b0:22c:df1c:92cd with SMTP id h15-20020a5d688f000000b0022cdf1c92cdmr2935021wru.52.1666121310571;
        Tue, 18 Oct 2022 12:28:30 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n17-20020a05600c465100b003c65c9a36dfsm13415295wmo.48.2022.10.18.12.28.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 12:28:30 -0700 (PDT)
Message-ID: <06f3e74b-8469-7039-82e2-b5afe89794aa@gmail.com>
Date:   Tue, 18 Oct 2022 21:28:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: installing man-pages from source
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Pierre Labastie <pierre.labastie@neuf.fr>,
        linux-man <linux-man@vger.kernel.org>
References: <a94037d5-b30b-897a-eac8-879c834914f8@kernel.org>
In-Reply-To: <a94037d5-b30b-897a-eac8-879c834914f8@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------2r5YrX9XIu6whx5DfiF0XYyD"
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
--------------2r5YrX9XIu6whx5DfiF0XYyD
Content-Type: multipart/mixed; boundary="------------Ob0s5codyC9wVIFiUPrW8ynS";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Pierre Labastie <pierre.labastie@neuf.fr>,
 linux-man <linux-man@vger.kernel.org>
Message-ID: <06f3e74b-8469-7039-82e2-b5afe89794aa@gmail.com>
Subject: Re: installing man-pages from source
References: <a94037d5-b30b-897a-eac8-879c834914f8@kernel.org>
In-Reply-To: <a94037d5-b30b-897a-eac8-879c834914f8@kernel.org>

--------------Ob0s5codyC9wVIFiUPrW8ynS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTAvMTgvMjIgMjE6MjIsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPiBIaSBQaWVy
cmUsDQo+IA0KPiBXZSBkaXNjb3ZlcmVkIGEgYnVnIGFib3V0IHVzaW5nIGluc3RhbGwoMSkg
dmVyeSByZWNlbnRseSBpbiBhIGRpc2N1c3Npb24gDQo+IGluIE5HSU5YIFVuaXQ6DQo+IA0K
PiA8aHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2RvY3MvbWFuLXBhZ2VzL21hbi1w
YWdlcy5naXQvY29tbWl0Lz4NCj4gDQo+IEkgZm9yZ290IHRvIGFwcGx5IHRoaXMgZml4IGJl
Zm9yZSByZWxlYXNpbmcgbWFuLXBhZ2VzLTYuMDEuwqAgOigNCj4gSSdtIGludGVyZXN0ZWQg
aW4ga25vd2luZyBpZiBpdCdzIGltcG9ydGFudCBmb3IgeW91IGFuZCBpZiB5b3UnZCBsaWtl
IA0KPiBhbnkgYWN0aW9uIGZyb20gbWUuwqAgSSBndWVzcyBpdCdzIGVzcGVjaWFsbHkgaW1w
b3J0YW50IHRvIGxpbnV4ZnJvbXNjcmF0Y2guDQoNCk5ldmVyIG1pbmQuICBJIHdhcyBzbyBz
dHVwaWQgOikNClRoZSBidWcgd2FzIHRoZXJlIGJlY2F1c2UgaW4gTkdJTlggdGhlIGJ1aWxk
IHN5c3RlbSBjcmVhdGVzIHRoZSANCmRpcmVjdG9yaWVzIHVuY29uZGl0aW9uYWxseSwgd2hp
bGUgaW4gdGhlIG1hbi1wYWdlcyB3ZSBjcmVhdGUgdGhlbSBvbmx5IA0KaWYgdGhleSBkb24n
dCBleGlzdC4NCg0KU28sIG5vdCBhIGJ1Zy4NCg0KQ2hlZXJzLA0KQWxleA0KDQotLSANCjxo
dHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------Ob0s5codyC9wVIFiUPrW8ynS--

--------------2r5YrX9XIu6whx5DfiF0XYyD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNO/lYACgkQnowa+77/
2zKb0A/9GVFxipVK3Zxlobyjsw1rDsUsfrAFTz0+jFQVPtAZ4Wbkv3/Qt/lyHUh1
tJkaY99AwUmegoKClySfGhTi+iSKVZvG1SPwGI8g7afamqT6FUxF7I4iHvDVxtJJ
mjFhaQkJbmQa0822GJuTOrZxzu9PTgmCp5jFcxMBqlc8Py+TAK6sH2bM5k/zkTpm
RnNPnb6jbslPXCXDkUBgQf/ectkfNg/qLX+H1shv2gnowIhA1EsL9T3M2GtGwsBx
TvYpD8vpu5EB+Fa75x1LxvsadgvrwU4ZJ7+bwe7jeH12UO8mSQPvc/FpysydVK+1
cPk6m/dAHhpQsF+BdgUYGaZb74pV21IwZZTYiIHZ1fC8Fp91ZRLzEVDn8T43vsjr
8a82g1a7pQItCYAezJ/fzmvIeiSrQUpkhzxF2xXPsJw1q+yKZGRMY35S6b0YivUj
8KUHZYoPhGI3YWJtn93ypiMEkkJrIA/XTUXoHEzJ1demcgA5lcaLt/KGX3fNubqK
RiOfMcn5fRpraMXPhHE1A6p2SL1J+75fyZtmXassFjBAFGYYNtrkfyounayEK9cd
EtAeqDubu2oAXnQfkItqxjVYI24uVV4Lb2UL2tis+g1QKxrYu1w79CoA6z27fYeU
alYYKvqrgFKxjNPJvDguvcsgg6jgcV4T2eQvmNr+zFYTJmZs8vU=
=5ofD
-----END PGP SIGNATURE-----

--------------2r5YrX9XIu6whx5DfiF0XYyD--
