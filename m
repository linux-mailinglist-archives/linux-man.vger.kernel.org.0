Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E753B56490C
	for <lists+linux-man@lfdr.de>; Sun,  3 Jul 2022 20:21:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230174AbiGCSV1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 3 Jul 2022 14:21:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229879AbiGCSV0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 3 Jul 2022 14:21:26 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37C59134
        for <linux-man@vger.kernel.org>; Sun,  3 Jul 2022 11:21:25 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id q9so10391543wrd.8
        for <linux-man@vger.kernel.org>; Sun, 03 Jul 2022 11:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=P1i9Z2tKrA5DqtkAc9JtIBV3GD9szursNjJggX/6GTs=;
        b=bYNHuU+lZawdPKBS0VPq/gbUWiMC+A73Wst+TDXA9h/l/yvHFKNksxeNaMqV8B8vPX
         oYhrYumDqPSoS53zuSn1z5MROK0rprCfvVm7Cqpv7/QFkgYzgJn7dhKD4Yj1eOHhE0cq
         m3pWtDhcy1hMoADH2mivO2umuKc8ZG9l65guBS2vNmSQgt/xBKcLU88W597ryKA/dAYU
         IMmI5mcjmkz1GUu83MR2NU1eP49ohmnTbc9v9gtAzKnDPU90Q4UXcDfbo5QZTEjA+9Fo
         DfCfG1A6HY7Rw+oN+njNodJhTJCNuJymqietEhhGxUSwgje3steuI0XSIkIJmGw7OOdI
         fD8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=P1i9Z2tKrA5DqtkAc9JtIBV3GD9szursNjJggX/6GTs=;
        b=JdyE2mcTSA3414TSOUaPuKm614MvgUhP/dmKAtvVo+MCBZYlXmTXfLgB19JAzuQlY5
         mOcecFkHOqOCr5+TW5lBMwCVbwtoG9flVK03PT2KgZjcHKXE4CtHB4UU820OyNTFCfgA
         o+xHrTz/2LiZXa1shQXup8hTluBUmrbQcgvChUEswSBu0oBPLNcB8p8FRv2tWUCepRLc
         +L7ookTFVHQPmSHoEJ0RqAQ+yNgkEV0egOhwRtHV45FSZjBup+ZUhF8Xwxq7gOX7tBCZ
         PBBtzKf/kiKpiK2LLajMaMGqr8RKEDDEawLBAZUXQOpyQaGhxNFMiYTw0Qd2rZYELSgC
         H2jQ==
X-Gm-Message-State: AJIora9EXkKZDxgYSGuEeU0h6ZR11uJEjKLNTuGBwuokHQgurUvCnZkY
        EpoG6vFLcnAeIMfsJ0aK8+cOLcnIP0o=
X-Google-Smtp-Source: AGRyM1sk0mw6Gl/7Ur6NdiYUjnF4ssZoyVjbWVUm1eNVPyLanCJtQLozHyTuA1e7Ol/DACCHnVhirA==
X-Received: by 2002:a5d:428d:0:b0:21b:a1c1:2b04 with SMTP id k13-20020a5d428d000000b0021ba1c12b04mr23617922wrq.106.1656872483759;
        Sun, 03 Jul 2022 11:21:23 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c8-20020adfa308000000b0021d4d6355efsm7247861wrb.109.2022.07.03.11.21.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Jul 2022 11:21:22 -0700 (PDT)
Message-ID: <280baf7e-66dd-1782-55ce-3deed8eb5e0f@gmail.com>
Date:   Sun, 3 Jul 2022 20:21:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] updwtmp.3: Add #define GNU_SOURCE for updwtmpx
Content-Language: en-US
To:     Sam James <sam@gentoo.org>, linux-man@vger.kernel.org
References: <20220624025911.728497-1-sam@gentoo.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220624025911.728497-1-sam@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------FN8W0Q68YGCoUnI6FxIqHONY"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------FN8W0Q68YGCoUnI6FxIqHONY
Content-Type: multipart/mixed; boundary="------------pe2r01cECXVd2MyuLC0i8ROS";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sam James <sam@gentoo.org>, linux-man@vger.kernel.org
Message-ID: <280baf7e-66dd-1782-55ce-3deed8eb5e0f@gmail.com>
Subject: Re: [PATCH] updwtmp.3: Add #define GNU_SOURCE for updwtmpx
References: <20220624025911.728497-1-sam@gentoo.org>
In-Reply-To: <20220624025911.728497-1-sam@gentoo.org>

--------------pe2r01cECXVd2MyuLC0i8ROS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU2FtIQ0KDQpPbiA2LzI0LzIyIDA0OjU5LCBTYW0gSmFtZXMgd3JvdGU6DQo+IENsb3Nl
czogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMTYxNjgN
Cj4gU2lnbmVkLW9mZi1ieTogU2FtIEphbWVzIDxzYW1AZ2VudG9vLm9yZz4NCg0KVGhhbmtz
IGZvciB0aGUgcGF0Y2ghICBJIGFwcGxpZWQgaXQuDQoNCkFuZCB5ZXMsIGdsaWJjIHVzZXMg
aW50ZXJuYWxseSBfX1VTRV9HTlUgZm9yIHdoZW4gYSB1c2VyIGlzIGV4cGVjdGVkIHRvIA0K
ZGVmaW5lIF9HTlVfU09VUkNFLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KU2VlIGFsc286DQoN
Cg0KYWx4QGFzdXM1Nzc1Oi91c3IvaW5jbHVkZSQgZ3JlcGMgX19VU0VfR05VDQouL2ZlYXR1
cmVzLmg6MzkyOg0KIyBkZWZpbmUgX19VU0VfR05VCTENCg0KDQouL3JlZ2V4Lmg6MzM6DQoj
IGRlZmluZSBfX1VTRV9HTlUgMQ0KDQoNCi4veDg2XzY0LWxpbnV4LWdudS9ydWJ5LTMuMC4w
L3JiX21qaXRfbWluX2hlYWRlci0zLjAuNC5oOjE5NTU0Og0KI2RlZmluZSBfX1VTRV9HTlUg
MQ0KYWx4QGFzdXM1Nzc1Oi91c3IvaW5jbHVkZSQgZ3JlcCAtcm5DMSBkZWZpbmUuX19VU0Vf
R05VIGZlYXR1cmVzLmggcmVnZXguaA0KZmVhdHVyZXMuaC0zOTEtI2lmZGVmCV9HTlVfU09V
UkNFDQpmZWF0dXJlcy5oOjM5MjojIGRlZmluZSBfX1VTRV9HTlUJMQ0KZmVhdHVyZXMuaC0z
OTMtI2VuZGlmDQotLQ0KcmVnZXguaC0zMi0jaWZkZWYgX0dOVV9TT1VSQ0UNCnJlZ2V4Lmg6
MzM6IyBkZWZpbmUgX19VU0VfR05VIDENCnJlZ2V4LmgtMzQtI2VuZGlmDQoNCg0KPiAtLS0N
Cj4gICBtYW4zL3VwZHd0bXAuMyB8IDEgKw0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjMvdXBkd3RtcC4zIGIvbWFuMy91cGR3
dG1wLjMNCj4gaW5kZXggYmQ4NGI5MWNkLi4xNzViZWM3NzIgMTAwNjQ0DQo+IC0tLSBhL21h
bjMvdXBkd3RtcC4zDQo+ICsrKyBiL21hbjMvdXBkd3RtcC4zDQo+IEBAIC02Niw2ICs2Niw3
IEBAIGdsaWJjIHByb3ZpZGVzIChzaW5jZSB2ZXJzaW9uIDIuMSk6DQo+ICAgLlBQDQo+ICAg
LmluICs0bg0KPiAgIC5FWA0KPiArLkJSICIjZGVmaW5lIF9HTlVfU09VUkNFICAgICAgICAg
ICIgIi8qIFNlZSBmZWF0dXJlX3Rlc3RfbWFjcm9zKDcpICovIg0KPiAgIC5CICNpbmNsdWRl
IDx1dG1weC5oPg0KPiAgIC5CSSAidm9pZCB1cGR3dG1weCAoY29uc3QgY2hhciAqIiB3dG1w
eF9maWxlICIsIGNvbnN0IHN0cnVjdCB1dG1weCAqIiB1dHggKTsNCj4gICAuRUUNCg0KLS0g
DQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMv
Pg0K

--------------pe2r01cECXVd2MyuLC0i8ROS--

--------------FN8W0Q68YGCoUnI6FxIqHONY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLB3iEACgkQnowa+77/
2zKwqxAApBoeEGNIGtKvWV/pt+OfoN8wqJZvYWc+un0l11it103MmLL+B8rnjsYl
I8oyU8F8hbQ3Rs/c3j0xENKwDtLjDHU1PLAYOKdxFHBtUcf3cPbTCQLCezVi6mmM
wtiLQKOjDXB5ZO/Ik9o68agjtHAGeJZ9H0L46pnhbOQj8dIpHYzPVIcHuR51Iqg1
iJ5UAn8EkHMETPAAa3wLA082jEG1kAHhU3ASl5bslydxnh62CZMT3vDJxyAv76z5
1oK56tGYEmLDfNue2G9mtJAEgyXRP/a5cOSgG1uA7VlHo72UeBtlL4xRt+hbTs+n
N/Bz0gy78pfy/RCMbn+pny07AOHaKY0XzbhF813GNr4ukeXx6GOUhHfWmbhuDwpQ
szNi8HjYfTcfAFju0U6j54IXxbGNkJVb0XIuuJvsYhfSAjMp7s6a1l1iAYUayBY0
ToVsYo/PTJVB2TC1dIi0jk+uhxjApRyUO4ppCVUHUPYWngj5Wcji9ZvAYEF6DXED
H2PJ6VZvQcnsvdVJU/PUQBHTUpzwvjSlwjxTeYDLvzNN9gg4YdLxJgn05D9hhoz0
kNnzkEUxpY0h8NyweQa33Huh88lgwdq5n716X7LaxUS8jjjoXWgKGayg/gJcP9It
q5OX/X2W/q9bydPDNg5nxoInW14yNSIRYcEdZd0fMN7wHEmgokk=
=nZhl
-----END PGP SIGNATURE-----

--------------FN8W0Q68YGCoUnI6FxIqHONY--
