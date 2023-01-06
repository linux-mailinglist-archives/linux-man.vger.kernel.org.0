Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7B4E65F83E
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 01:40:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235595AbjAFAk0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 19:40:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232367AbjAFAkY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 19:40:24 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6868C4F12B
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 16:40:23 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id fm16-20020a05600c0c1000b003d96fb976efso2573756wmb.3
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 16:40:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x1lbVgSHCKC8bV353nYd2xa2cXT5Y9Jm2Xx9aisOElM=;
        b=MiipLQ9P5aG3PMVaChg66NF67AV2NYVvttxyy7WMUwly77x8MkxGzhxAmL68PDBWzN
         xqVA0GjXyqIFH+cedDo2xfgS2gyrJJ1/qZU0Ut/2zFtyKwe4GmtupRI/HMpfalEtwsgA
         3A6SvBDXvgoP4VP402chgBpOpl4UQJ0bQgY4Y2hWSOBYeIH5Jqv/2N6EO1rhKmq9a78Z
         +e7njgd5mDYVzxyYDWhcFcownRsg9xln+ZBbyVTRZTucN5GX1yAB+QIVwc6xg1eOrodw
         9LHhHlXuZl8jR3Gq52h+VAIVu2QnKR7YXFrDtPl7F1TH1pjV2RF914PPYcSdFNHCSjd7
         tVrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=x1lbVgSHCKC8bV353nYd2xa2cXT5Y9Jm2Xx9aisOElM=;
        b=xwi2FgWpyC4QNO72gNBShyCeaopGk18DrmfrubP16eollhTWKAhkEiLLobaOLXT1cM
         S9Bue19iuSCW2YK/y5tjy4HmwgMNPtuO2Qrelu/fgLXPIYS5f4Mg1lE20X1eRVe5Ugmx
         zPr1YHkICcNtYvqWYjCQ8xWhfGAhzYLSktSQl48p5DUcZiGYR66HthgBTYP0Wabc+H6T
         Ri+uDqpGxbYHDThcO79wNsoTj3sxORjzLFKA1YVXJLHBKKJxvmKX+s3aP8NHI/2QXdZ/
         aBGHDRorgk+/i/NG4/5+uLsKf93C0SJ9b9y/nEDf3fTmv2faXCU6loIzGPI8MT3hoWDI
         9m1g==
X-Gm-Message-State: AFqh2koIfAYlSTuizyY7pthv1PcoR65HcY+w1CjUvxtJTKIBpsB4as9p
        +s5bfHw9fiA7hHlYp0gh2i0=
X-Google-Smtp-Source: AMrXdXtA9mOhrNzqlsn+Do0JqS6lSkiZMlt/o3ypNlQSA5h7HCpmzbtAi6VREZmZMtZ5B93JBUTlQw==
X-Received: by 2002:a05:600c:d1:b0:3d3:4d21:704d with SMTP id u17-20020a05600c00d100b003d34d21704dmr37833933wmm.14.1672965621997;
        Thu, 05 Jan 2023 16:40:21 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i17-20020a05600c355100b003d99fad7511sm4845065wmq.22.2023.01.05.16.40.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 16:40:21 -0800 (PST)
Message-ID: <61a4275b-f9f9-dbb0-bff7-f6687ab169b4@gmail.com>
Date:   Fri, 6 Jan 2023 01:40:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 10/13] intro.3: srcfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230105225328.tutvqrvewd6knewc@illithid>
 <7cac58e5-19bf-de63-7bc7-2ef22ee6f6f9@gmail.com>
 <20230106001929.n62apcljbzg4j2vu@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230106001929.n62apcljbzg4j2vu@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------DK9gqZgfmpCzqpdiY098BNli"
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------DK9gqZgfmpCzqpdiY098BNli
Content-Type: multipart/mixed; boundary="------------ScF1S8ebpzxuBguwMias837H";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <61a4275b-f9f9-dbb0-bff7-f6687ab169b4@gmail.com>
Subject: Re: [PATCH v3 10/13] intro.3: srcfix
References: <20230105225328.tutvqrvewd6knewc@illithid>
 <7cac58e5-19bf-de63-7bc7-2ef22ee6f6f9@gmail.com>
 <20230106001929.n62apcljbzg4j2vu@illithid>
In-Reply-To: <20230106001929.n62apcljbzg4j2vu@illithid>

--------------ScF1S8ebpzxuBguwMias837H
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvNi8yMyAwMToxOSwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3cm90ZToNCj4gSGkg
QWxleCwNCj4gDQo+IEF0IDIwMjMtMDEtMDZUMDA6NTU6NDErMDEwMCwgQWxlamFuZHJvIENv
bG9tYXIgd3JvdGU6DQo+PiBPbiAxLzUvMjMgMjM6NTMsIEcuIEJyYW5kZW4gUm9iaW5zb24g
d3JvdGU6DQo+Pj4gKiBCcmVhayBpbnB1dCBsaW5lcyBhdCBwaHJhc2UgYm91bmRhcmllcyBt
b3JlIG9mdGVuLg0KPj4+ICogQnJlYWsgaW5wdXQgbGluZXMgYWZ0ZXIgY29tbWFzLg0KPj4+
ICogU2V0IG11bHRpLXdvcmQgcGFyZW50aGV0aWNhbHMgb24gdGhlaXIgb3duIGlucHV0IGxp
bmVzLg0KPj4+ICogUHJvdGVjdCBtYW4gcGFnZSBjcm9zcyByZWZlcmVuY2UgZnJvbSBoeXBo
ZW5hdGlvbi4gIChUaGlzIHdpbGwgbm90DQo+Pj4gICAgYmUgbmVjZXNzYXJ5IHVwb24gbWln
cmF0aW9uIHRvIGdyb2ZmIDEuMjMncyBgTVJgIG1hY3JvLikNCj4+DQo+PiBJIHBsYW4gdG8g
bWlncmF0ZSBhcyBzb29uIGFzIGl0IGlzIGluIERlYmlhbiwgc28gbWF5YmUgaXQncyBub3Qg
d29ydGgNCj4+IGRvaW5nIHRoYXQuDQo+IA0KPiBJIHJlZ2FyZCBoeXBoZW5hdGlvbiBzdXBw
cmVzc2lvbiBhcyBjb3JyZWN0IChhbmQgaGFybWxlc3MpIHByYWN0aWNlIHdpdGgNCj4gZm9u
dCBtYWNyb3M7IGRvIHlvdSB3YW50IHRoYXQgY2hhbmdlIGJhY2tlZCBvdXQ/DQoNCkF0IGxl
YXN0IHNlcGFyYXRlZC4gIENvdWxkIHlvdSBwdXQgaXQgbGFzdCBpbiB0aGUgc2V0Pw0KDQpU
aGFua3MsDQoNCkFsZXgNCg0KPiANCj4gUmVnYXJkcywNCj4gQnJhbmRlbg0KDQotLSANCjxo
dHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------ScF1S8ebpzxuBguwMias837H--

--------------DK9gqZgfmpCzqpdiY098BNli
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO3bfQACgkQnowa+77/
2zLuCA//QZVd3GtbW/W4k4N0y8dKX4OuCICGgWnpk6zNRdSMzR1FbMrGa3GSGPPu
w5NGxOqNfHfOGBfSZu8QssXzWXvp2G6uLGzmsfZwvOnNxwyjs7K0VT56fRT6kH6z
oxDol9GGF5jnXpjA9y9Q9i5xkG8n7ypq2avw1aN1uZLVlHuslAm5QGq3LdHUGCyv
rDmZPujMVHA7SwOFiG8bAY2eWJToQLcLihFb7Fu6fHq6ysbvGh0+QhXRyc32Q1Yn
dQL3KQoJD2jLmaDD21kdqivcgIsjjfy3vDlhFiuASU7DTIf7MqYB2c00gNL/09d4
Vn/Xpi1DZW4KsU53TMAkd9Q5kdsJD96Un2DG+0XueUs3yii2Biyhe+wXmuTf+7IZ
5WNd4vB5eWn1SN/6R1YJnLdesx1AnV9p4BrZIY/MbboZIfqDOFRsOUR9NOsS1LQs
HAvjrm4q2jD1TimVbBGmTh96deR5NSU32flmLH+4HJEZLTaZJpR90YOa63yipyLZ
vPwAfsEwj7/eUm05Tcj4H8k0MNM6IoVouyqYtD+oB9Bu8ftDikmQdQL1/i5Yg3pi
uSdMUEJHnQ5Vguz5eRwjnIu07rD3hL7liB8NsqpJWOcwytanNFw4xipXWwc9LWy5
mO4S8KyStvaGzV6EMB6ta0g4zwVX02vRRZpmZHiqSCXEQDfIgrU=
=tk1l
-----END PGP SIGNATURE-----

--------------DK9gqZgfmpCzqpdiY098BNli--
