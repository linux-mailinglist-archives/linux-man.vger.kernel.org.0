Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CAC8587BD3
	for <lists+linux-man@lfdr.de>; Tue,  2 Aug 2022 13:53:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236514AbiHBLxm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Aug 2022 07:53:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231208AbiHBLxm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Aug 2022 07:53:42 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19C4F313AD
        for <linux-man@vger.kernel.org>; Tue,  2 Aug 2022 04:53:41 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id j1so9216704wrw.1
        for <linux-man@vger.kernel.org>; Tue, 02 Aug 2022 04:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=+yYHg/rV0zHbSeZPSMDt1mxuW+ZJiv53l+PPrlaABvU=;
        b=OipuqNGFL1qn478U90IozVPAwT0fwYZ2R6gwXde7HX4m48i9cohTLEaMR74jPpnCHO
         5PPzxVwCY49FZCxHl0gUVP7GEx6FAMpxCBkj6BX949HUJReatF7aRb3g2BpWHv6UnVRB
         dmxQT53Dl2xH9DpfYb1gz0R95FvsEhTQmvaxP6iptmc/rx0BgtVvlaaYsndYQJKwm1/t
         fMxdVcQs2IPUv0pE5GVSAmsYrv3sQVCLQDD8ETW8COCa1cO45xbkOZSCLzvX2p0xltDM
         Qim/jCFtt1x3EaJN9tVeRlxsA95obM7lwWXDfzi6OiZdORMnIIl1QIQOjMwS1TZFFBNU
         xeeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=+yYHg/rV0zHbSeZPSMDt1mxuW+ZJiv53l+PPrlaABvU=;
        b=JZC/UZu8XrwjD2DSo+lFNyLOS6ZNJlEh3MZu4vrfSkOxLlTp/pwhoj4dWF0uLdn6/i
         JMl4TpGQ/80EE6g5+8aUKDSqWAvVoE7KkEtpoy1UokgNdzz4SbtWXjoNvn+5DEnfcE3S
         A0EpGFg0cJgJxf7CBeKB5IGsmqa/NVKyIuQCAl6aRfmymq8BhZqJIyhBvVxYiTFto2P0
         IqyTGYG9I775oc7NuCL+FkqGIPQzvHH8NXvqz12u5y2Gqm82n+QihETR3t+DVdiONz1v
         U4UCU+TDrznB7orMxbfka/hPPoLLjmv8Y/6U/wUQqr9e3S77ov6Q/gm6JpXhy6sfOi+9
         uamA==
X-Gm-Message-State: ACgBeo1dyW/cfrYig2SgbLhcaVGLxwGW4sdeMNZPnfpBtmGlSzfBxYv3
        la3y37h2XffqIeYBuuLl9XE0F74CPM8=
X-Google-Smtp-Source: AA6agR4aMXmFtGxYTxA1El/1I02sBwv3KWMLvXWPBVSehCraOAw98OAP6tpfw5l3ZzFDbxVXhpuZJw==
X-Received: by 2002:a5d:5a17:0:b0:21e:80ba:f5ef with SMTP id bq23-20020a5d5a17000000b0021e80baf5efmr12590663wrb.643.1659441219630;
        Tue, 02 Aug 2022 04:53:39 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k18-20020a5d6d52000000b0021f0c05859esm14694435wri.71.2022.08.02.04.53.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Aug 2022 04:53:39 -0700 (PDT)
Message-ID: <97f38ef1-6e85-5d82-5979-e6775b45d2ac@gmail.com>
Date:   Tue, 2 Aug 2022 13:53:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Subject: Re: [PATCH 3/3] getaddrinfo_a.3: gnu.cz => git.kernel.org
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
 <7b4b6f589254eda8cf67b8ffb555d874359429ce.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <7b4b6f589254eda8cf67b8ffb555d874359429ce.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------SE0o45be0w0kh78ucCCE81u0"
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
--------------SE0o45be0w0kh78ucCCE81u0
Content-Type: multipart/mixed; boundary="------------ygm0iYwppS5RSmcYFuhfjimj";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <97f38ef1-6e85-5d82-5979-e6775b45d2ac@gmail.com>
Subject: Re: [PATCH 3/3] getaddrinfo_a.3: gnu.cz => git.kernel.org
References: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
 <7b4b6f589254eda8cf67b8ffb555d874359429ce.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <7b4b6f589254eda8cf67b8ffb555d874359429ce.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>

--------------ygm0iYwppS5RSmcYFuhfjimj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxLA0KDQpPbiA4LzIvMjIgMDM6MTEsINC90LDQsSB3cm90ZToNCj4gZ251LmN6
IGV4aXN0cyBhdCBhIGRpZmZlcmVudCBhZGRyZXNzIChidXQgaXMgdW5yZWFjaGFibGUgdGhl
cmUpLA0KPiBhbmQgdGhlIGFkZHJlc3Mgd2UgaGFkIGlzIGFuIHVuYXNzaWduZWQgY29vbGhv
dXNpbmcgb25lDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBaGVsZW5pYSBaaWVtaWHFhHNrYSA8
bmFiaWphY3psZXdlbGlAbmFiaWphY3psZXdlbGkueHl6Pg0KPiAtLS0NCj4gICBtYW4zL2dl
dGFkZHJpbmZvX2EuMyB8IDEyICsrKysrKy0tLS0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA2
IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFu
My9nZXRhZGRyaW5mb19hLjMgYi9tYW4zL2dldGFkZHJpbmZvX2EuMw0KPiBpbmRleCAyNTll
N2U0MGUuLjhhNDllYTBlNCAxMDA2NDQNCj4gLS0tIGEvbWFuMy9nZXRhZGRyaW5mb19hLjMN
Cj4gKysrIGIvbWFuMy9nZXRhZGRyaW5mb19hLjMNCj4gQEAgLTMyMywxMCArMzIzLDEwIEBA
IFRoZSBwcm9ncmFtIG1pZ2h0IGJlIHVzZWQgbGlrZSB0aGlzOg0KPiAgIC5QUA0KPiAgIC5p
biArNG4NCj4gICAuRVgNCj4gLSQgXGZCLi9hLm91dCBtaXJyb3JzLmtlcm5lbC5vcmcgZW5v
ZW50LmxpbnV4Zm91bmRhdGlvbi5vcmcgZ251LmN6XGZQDQo+ICskIFxmQi4vYS5vdXQgbWly
cm9ycy5rZXJuZWwub3JnIGVub2VudC5saW51eGZvdW5kYXRpb24ub3JnIGdpdC5rZXJuZWwu
b3JnXGZQDQo+ICAgbWlycm9ycy5rZXJuZWwub3JnOiAyMTYuMTY1LjEyOS4xMzkNCj4gICBl
bm9lbnQubGludXhmb3VuZGF0aW9uLm9yZzogTmFtZSBvciBzZXJ2aWNlIG5vdCBrbm93bg0K
PiAtZ251LmN6OiA4Ny4yMzYuMTk3LjEzDQo+ICtnaXQua2VybmVsLm9yZzogMTQ1LjQwLjY4
Ljc1DQoNCkknZCBwcmVmZXIgdXNpbmcgYSBHTlUgYWRkcmVzcywgaWYgeW91IGRvbid0IG1p
bmQuIDopDQpKdXN0IGZvciB2YXJpZXR5Lg0KDQoNCkNoZWVycywNCg0KQWxleA0KDQoNCi0t
IA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVz
Lz4NCg==

--------------ygm0iYwppS5RSmcYFuhfjimj--

--------------SE0o45be0w0kh78ucCCE81u0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLpEEIACgkQnowa+77/
2zJVHBAAq0/IUU9DM7kIhC7k3zTfuXt5w75UXiIUfy9u0BimtpdjEoxycTe+cc64
MGI1fT0lSGoBmIJsWILPQW0z4Cgyk090GMPZidjCScDfoCSpSyxmq3p3T/V8X6SO
ZKxTY9rEt0+cBEM7gulTAsUxtwbQopRUWwRmiLg5Jl3m7bxhm0RwPml7L8V2ERFK
Ce9MDKVovWrtBQtSUtwepL7+5FyGgzhB7GGBVfFMcUZ/eIzsXvVs0kzwyRkf7NSI
NsEiZnZkcJartrUqIC5gcsY7nMeQJKY2Ui4pV2iXo2qLIOb+atVOtAbhFJ3ZBwSW
Ao839EUPTcZHjL56CQJacUA6+rRzEW02qbcpMWui2CEBB7agjtCAumgvoz2eiKWV
Xe1NfTfdlMIsKWLfALkbqjJxGo9rOWnkCxWa/6g2T2o3P3ISLG8Ci/Qol0ChCCT7
hW/JPHEdYxxnw48oIgGfumYUlZUDTqS2mjPVOXcMvbNkOR2IXL7BqACAO/WA7Osv
ROqI3qQcgo+lTU1BxQ4ZunSqBW5nIFHxr13+39JlFCYbyD8w2XaPh90v1NX8Rb+n
k58b/vL93VSxEZwn7LT/CEXIRN+xEVGjxgtYdmijjuDO8r2ulPdwSBBXvfVjBtNZ
WK/pYZ3eKGd5HfMD2Q34hAYXAQmRQ7RFuWaJh47QqSD+inHaqLs=
=+78m
-----END PGP SIGNATURE-----

--------------SE0o45be0w0kh78ucCCE81u0--
