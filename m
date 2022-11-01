Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3FC4614BE1
	for <lists+linux-man@lfdr.de>; Tue,  1 Nov 2022 14:38:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229871AbiKANi1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Nov 2022 09:38:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229867AbiKANi0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Nov 2022 09:38:26 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 758F0327
        for <linux-man@vger.kernel.org>; Tue,  1 Nov 2022 06:38:23 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id bs21so20157964wrb.4
        for <linux-man@vger.kernel.org>; Tue, 01 Nov 2022 06:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4elxbIbszE/Gf58rpq1Jngpp7J7NYgH2YMP/VGhhqjE=;
        b=JVAybaxuPGgzJyykSr7lRHqILzWuKi2/wiF2yGfZs4R7fokUmP5MhWBXfeiYmHMgkU
         1lcxyOY5656M2a/r4jVuavxaVCR71CwZwqTQIvcAMhrC8UCVbLS8NFIKUYjpv4IHOpcU
         FBSklMuSlwVioAxgIW/twDL9TWle4I7XNod41H0ocDG0qS0sx3PMvkxUbkHPPAzJ8X7O
         rfTuWcp99Dlirs0qnKkyUhhwYm0YxV1UuJvtzCXoSjn07BPiUvGeqmD/+tJpnXlGFKN7
         fNQe30COi8BgwEkrennuUGD964B5lqun487HBuEXeKDnZmp82FHyAQSh860rCXgB3TU5
         ytBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4elxbIbszE/Gf58rpq1Jngpp7J7NYgH2YMP/VGhhqjE=;
        b=4FP/L9HECsdzXqyS//+m5PXuYdumAtm9m8FlvbhtyYeAj58LHahI1UeE4LuFERNyuq
         5PcsIzbqYX+dwpjWR+yPPkNkFXBJUzsKyRZbBjgQB386yo/no7o3zuuRKtSHLMXb8ZF+
         EUER9+XmW9ekoFux/iXLZvHmMt9GgzwuTCQ8u12LibL+SvNqVK0l8FTCud2DuiMCMytM
         iEXRtNX19oeeMifmVzNyjG8YJ7juYgjxV2Lq7LAMT3Ms34pVuMeblac/fodXIMe6mdzb
         mtyqFJ5nD/kgMZZdrfmtxZnoVWGYx4GReeSkKj5yhcZdIcIS5i1wxbZ/MYLTIbXlRWHm
         fJkQ==
X-Gm-Message-State: ACrzQf1W5A1K29WENZ/ubf/irlld/DO0NbhcGJ91zU7HwJ+Juf1SXBCT
        1swPCfvcwDyBDx0ld8IyTnkWNN3Rs1c=
X-Google-Smtp-Source: AMsMyM5mgtP8y42T3wSRjHdR7vP62nw48mDAdFV/D0O//qrjlgoggN+3gOuj3YiL+rzcwW3LZQi0mg==
X-Received: by 2002:adf:b646:0:b0:221:76eb:b3ba with SMTP id i6-20020adfb646000000b0022176ebb3bamr11417632wre.237.1667309901897;
        Tue, 01 Nov 2022 06:38:21 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b21-20020a05600c4e1500b003c6bd91caa5sm5057333wmq.17.2022.11.01.06.38.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Nov 2022 06:38:21 -0700 (PDT)
Message-ID: <c2c88b4e-7c10-0045-5de1-5f595cc9166b@gmail.com>
Date:   Tue, 1 Nov 2022 14:38:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH RESEND] keyrings.7: tfix hexadecimal number prefix
Content-Language: en-US
To:     Grzegorz Szymaszek <gszymaszek@short.pl>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
References: <Ys7DGh/CJ14Kbpie@nx64de-df6d00> <Y2DfeqJB/gyUUcRQ@nx64de-df6d00>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <Y2DfeqJB/gyUUcRQ@nx64de-df6d00>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------v8hx8z6lQUs2LgJ0YDBG7ioS"
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
--------------v8hx8z6lQUs2LgJ0YDBG7ioS
Content-Type: multipart/mixed; boundary="------------AH44tfeVuqLaarkCneMCwpL6";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Grzegorz Szymaszek <gszymaszek@short.pl>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>,
 Alejandro Colomar <alx@kernel.org>
Message-ID: <c2c88b4e-7c10-0045-5de1-5f595cc9166b@gmail.com>
Subject: Re: [PATCH RESEND] keyrings.7: tfix hexadecimal number prefix
References: <Ys7DGh/CJ14Kbpie@nx64de-df6d00> <Y2DfeqJB/gyUUcRQ@nx64de-df6d00>
In-Reply-To: <Y2DfeqJB/gyUUcRQ@nx64de-df6d00>

--------------AH44tfeVuqLaarkCneMCwpL6
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgR3J6ZWdvcnosDQoNCk9uIDExLzEvMjIgMDk6NTcsIEdyemVnb3J6IFN6eW1hc3playB3
cm90ZToNCj4gSW4gdGhlIERFU0NSSVBUSU9OLCB3aGVyZSB0aGUgUGVybWlzc2lvbnMgY29s
dW1uIG9mIC9wcm9jL2tleXMgaXMNCj4gZXhwbGFpbmVkLCB0aGUgMHgwMiB2YWx1ZSB3YXMg
d3JpdHRlbiBhcyBPeDAyLiBJbiBjYXNlIG9uZSBjYW5ub3Qgc3BvdA0KPiB0aGUgZGlmZmVy
ZW5jZTogdGhlIGZpcnN0IGNoYXJhY3RlciB3YXMgbGV0dGVyIG8gKFUrMDA0RiksIHdoaWxl
IGl0DQo+IHNob3VsZCBiZSBkaWdpdCB6ZXJvIChVKzAwMzApLg0KPiANCj4gSXQgc2VlbXMg
dGhlIHNvdXJjZSB0cmVlIGRvZXMgbm90IGNvbnRhaW4gYW55IG90aGVyICJPeCIgaW5zdGFu
Y2VzDQo+IGV4Y2VwdCBhdCB0aGUgYmVnaW5uaW5nIG9mICJPeGZvcmQiLg0KPiANCj4gU2ln
bmVkLW9mZi1ieTogR3J6ZWdvcnogU3p5bWFzemVrIDxnc3p5bWFzemVrQHNob3J0LnBsPg0K
DQpQYXRjaCBhcHBsaWVkLg0KDQpUaGFua3MsDQoNCkFsZXgNCg0KPiAtLS0NCj4gICBtYW43
L2tleXJpbmdzLjcgfCAyICstDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuNy9rZXlyaW5ncy43IGIv
bWFuNy9rZXlyaW5ncy43DQo+IGluZGV4IDM1ODkwNTk3MC4uYmNjOTY2NWNlIDEwMDY0NA0K
PiAtLS0gYS9tYW43L2tleXJpbmdzLjcNCj4gKysrIGIvbWFuNy9rZXlyaW5ncy43DQo+IEBA
IC02MzcsNyArNjM3LDcgQEAgV2l0aGluIGVhY2ggYnl0ZSwgdGhlIHBlcm1pc3Npb24gYml0
cyBhcmUgYXMgZm9sbG93czoNCj4gICAweDAxDQo+ICAgLkkgdmlldw0KPiAgIC5UUA0KPiAt
T3gwMg0KPiArMHgwMg0KPiAgIC5JIHJlYWQNCj4gICAuVFANCj4gICAweDA0DQoNCi0tIA0K
PGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------AH44tfeVuqLaarkCneMCwpL6--

--------------v8hx8z6lQUs2LgJ0YDBG7ioS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNhIUUACgkQnowa+77/
2zI6fhAAqZplmGgyGqIgPCdEHSgfEimjDQIoe+vMqp7wMjkAF6exR4B4fo8Xs2wE
Rh7WzzUD0mtcXNTMQyFfLHD9m2vL5pd/QkSZ7haGCJB7pDW09GWz0ezYo4uN+T/s
R/f8auI5Sa2AY9mCtX9umEyB5Zk1S1X99qrQuVOJ1g+2tpVXyNOmZYFyeP0jd6Og
J/a5l7k7w+1HVr3nYwu7t4ekeTm0M+rjnY4irU1U4pvPlZYODRmh/irfPMhOEY6+
9GqURm4kEcrv5jjoiwwZZvyFP7U+csoEsDNHfWBIKd31+CIpKkeyVXesxhNY0ACO
hKKIpt7XY9aj7aGe8M0npnXi/HSShn35nL2FMkiLbIdviw42hEzbPXioWXA4XfyO
CymZ/kNg6XtunNKPUlU2gVc3qeHSQgr3avdhuVepheORZgCXW62duJzwC7V9I51W
AWrFvyqRpQHqDRyqEqYuPEMtBcUVYGGXPpB6xZWJctQqRawFmLzIdaJ5GQ9jzklK
4oo3IU0eu7YE6ipft/GhgTOjW82MSgRpgkLiWPwS63BhNV8RjEnQo5XczOwW32oe
xWBkUqNZ4v2qBC+mv1MOa++VH6KODWVyLu2Sk/o8LrkHqlOq/4+iKPCGCpZugXKM
Gb1oVsm6EKTWPuLtvDISTdRrjq8jJ295g5yQU4ZvJ98IPbOEsR4=
=dkt6
-----END PGP SIGNATURE-----

--------------v8hx8z6lQUs2LgJ0YDBG7ioS--
