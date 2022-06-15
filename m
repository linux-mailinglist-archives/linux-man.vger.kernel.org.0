Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FE6E54CED1
	for <lists+linux-man@lfdr.de>; Wed, 15 Jun 2022 18:36:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239852AbiFOQgI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Jun 2022 12:36:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356772AbiFOQgF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Jun 2022 12:36:05 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C09B92BB2D
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 09:36:04 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id j5-20020a05600c1c0500b0039c5dbbfa48so1454372wms.5
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 09:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=PdcW2VmzYVjAbztnHdXFdws4KDPHX+SUB6mekY0XRuU=;
        b=btvDbB9n5I1F0VXAnCr5hi5Hn+16XX9EUnfrsWqT7QBNBtWz6aiCux78tr73B3ppgB
         appBjG/bkoR9LNV5zElZyG8PBOaw2mtGPLBqFKi8XptvyhmwzxKDFmQTIO1Q8tquwWn1
         K/WXIkNsoGiVxdtemSMAzBFJ2g9MuZ/StJOkQ8DPRrv6ZyYNg6p73iJPympyhm+0/DK0
         GJT0GE0L5lpPeAWuZMXlAPIAbZ9KqrrxSWAANxyK1TuR0mHiSX56z9oBrUWecUh1h+Db
         KVUVRkwAkqDyfWTdkCJKq0s8TJ2K0PE6mH4WO+JLc95dK/U62Ryc+lHraUM8xC3+dohX
         30oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=PdcW2VmzYVjAbztnHdXFdws4KDPHX+SUB6mekY0XRuU=;
        b=dO+fz7Ep/r0l/XYhWPU4Mb4z52x5ABYXe4T/19nf5hRAI05oUXhorL6lGgwi2JUoEO
         yG79jlv+ErRFvLodwC3U1riIGDFmEZg5PqulpsTt9bEfUoptlP8fSz3sEvGJ317Ay2Fb
         Nq86al07t3Sj/MD5un3pZu2qhvDkVjiZkhz198pM4xJ9YzmIl7LcOm9bJeF1CdkWFwve
         EIeIZOp8bG3Opi5dkMt1ghkyaqKUpcZEIGqEd32ziE4mnco51FnChYQ005nDGkLOwH/k
         2HdKha5JcmFBYqpzA3Gdi3DYCY4N4c2TvhISiWbKPpLse916pn21UTkjwE/zL0yQosIu
         0J5w==
X-Gm-Message-State: AJIora/zaUMZdLmBi/PypWTN4UraoHkfqsP3vdw+P5lhKrXTBp+3ZWc0
        J8/b8BzWPrRnK0kyiF24WcM=
X-Google-Smtp-Source: AGRyM1t1dY5vjNdxm2XdrX2Svcai+NbUMxC3mSxwyI4AdUiTqvdGjq1mPat11zDESJk58bsepppcXA==
X-Received: by 2002:a05:600c:49a2:b0:39c:5d0d:2e29 with SMTP id h34-20020a05600c49a200b0039c5d0d2e29mr273087wmp.95.1655310963330;
        Wed, 15 Jun 2022 09:36:03 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p7-20020a05600c430700b0039c2e2d0502sm2813126wme.4.2022.06.15.09.36.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 09:36:02 -0700 (PDT)
Message-ID: <b0a8b39b-f05f-7809-c8a4-f4f84821770d@gmail.com>
Date:   Wed, 15 Jun 2022 18:36:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/2] uname.2: fix standard reference wording
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <4a27c7c7295739005855299b23d1ab20b11e0110.1655287466.git.nabijaczleweli@nabijaczleweli.xyz>
 <4246201e-0ee5-1019-4c5b-79b9d2d4cbc5@gmail.com>
 <20220615162934.675zbxzbcordhsqt@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220615162934.675zbxzbcordhsqt@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------zPeW7hdaXYjQ0WweR0aFSRdd"
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
--------------zPeW7hdaXYjQ0WweR0aFSRdd
Content-Type: multipart/mixed; boundary="------------7j0mFSvOLC0lQFV51uwExf4j";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <b0a8b39b-f05f-7809-c8a4-f4f84821770d@gmail.com>
Subject: Re: [PATCH 1/2] uname.2: fix standard reference wording
References: <4a27c7c7295739005855299b23d1ab20b11e0110.1655287466.git.nabijaczleweli@nabijaczleweli.xyz>
 <4246201e-0ee5-1019-4c5b-79b9d2d4cbc5@gmail.com>
 <20220615162934.675zbxzbcordhsqt@tarta.nabijaczleweli.xyz>
In-Reply-To: <20220615162934.675zbxzbcordhsqt@tarta.nabijaczleweli.xyz>

--------------7j0mFSvOLC0lQFV51uwExf4j
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDYvMTUvMjIgMTg6MjksINC90LDQsSB3cm90ZToNCj4+IFRoYXQgcmVhZHMg
YSBiaXQgd2VpcmQuICBJcyBpdCBhIHR5cG8sIG9yIGlzIGl0IGludGVuZGVkPw0KPiANCj4g
VHlwbyEgU3VwcG9zZWQgdG8ndmUgYmVlbiAiaW4gc29tZSBuZXR3b3JrIi4gV291bGQgeW91
IGxpa2UgYSByZXNlbmQ/DQo+IFRoaXMgbGluZSBpcyByZXBsYWNlZCBpbiAyLzIuDQoNClll
cywgcGxlYXNlIDopDQoNClRoYW5rcywNCg0KQWxleA0KDQo+IA0KPiBCZXN0LA0KPiDQvdCw
0LENCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNv
bG9tYXIuZXMvPg0K

--------------7j0mFSvOLC0lQFV51uwExf4j--

--------------zPeW7hdaXYjQ0WweR0aFSRdd
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKqCnEACgkQnowa+77/
2zL4yg//QHrXr5dxX2sCEq87/uPYtjnXeV6PYS61qA7G6goPOSkWowGhk5dG+RET
wskKjCWgf0Pi0+//mAp40UK4wvpAcG3iDoOpWcYtTxfavLmUAVeDuJjwdvYk6dlK
zAW8sFmXKRaB/ZaFk7t3GidaLuJ7fupwISjl42TggN5KGcP+KWa6kZgu4CNEJZ51
oxBFjJ08kb85BGIitqwtrygy7JsRpwpJ8Fb3OjqDZaJnwI3SYdnBsNzK5B3DiZTf
wYiFOWAysGXxDYkNPTEUhCiUonBpwHRK9WgxwQgfO42NgWTGIzH8OVbvYXxE7QSX
5GFz9U0uxiJ2W/fcyMIlilbtx//he7yh8LPrFRJZW9xJDULnDd0SP5WbB7d63wYe
kLF80yLGHMTNaRvPFqqahp/k0hJfdsLfh20m6Bx2p5znW+JBbd3Q8s6El2IERwVq
HfqVg9oWLgFWleV5Z8CRqQCkfn87UNsK8egrIOaOxyNyxgNTDOX9NEmwyUtHFCxO
3zIWO8a3qJctxOcOIvCkOJZHQZbweyy+VQee3pXeqDQGY2fI2sSpH9UvDB9t24QP
WSiM2osz1ZewD9pMOo/5zEy2lec6q7W+LJJZC1RCJtU89X1G9vAMmtqY2HfvfMuM
+mzBHIRvr68bWEWIGctjiMS8YYo12NlDdv3Tf1jrmmrOthgOmoo=
=eZnd
-----END PGP SIGNATURE-----

--------------zPeW7hdaXYjQ0WweR0aFSRdd--
