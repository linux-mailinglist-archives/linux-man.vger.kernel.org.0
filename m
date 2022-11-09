Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61FD7622F36
	for <lists+linux-man@lfdr.de>; Wed,  9 Nov 2022 16:42:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229485AbiKIPmO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Nov 2022 10:42:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229918AbiKIPmN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Nov 2022 10:42:13 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D68A13CEE
        for <linux-man@vger.kernel.org>; Wed,  9 Nov 2022 07:42:12 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id j5-20020a05600c410500b003cfa9c0ea76so1570286wmi.3
        for <linux-man@vger.kernel.org>; Wed, 09 Nov 2022 07:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KH8ZNIRnFbRbDWEw/pddpY1V8pxqKQ5NBS+gaJRL1Hw=;
        b=kFqHf//IwP0/lEMqTbe28QhVB7iWdgJXCMovjMhUhZgoVbrrt2en4ngfpqnQpZlVQo
         eGPQ0isq6CNXCNUER723pvTp9FvMW5DLJPsbCWaM5NS58pLNnsAmDIO+uoCPnvZbuE1w
         qayuWZQuZNkFSxrHgLzeTHc5zuumkalmDSaSMLiigbRmydQlQmOGzEN/Smzfa+wo65Ik
         YAJYrs7EyCiz0hLYw6cOEIxwZX46OEYOJHD5mXTMLwVehxdckSt1GY9r0T0VPMGRJq6O
         k6gymYBW0lVARK5vJRO913I97Wo+2zVWI7Bwae47j7ccXhFfG10JOG09HOeZIyqEjr4p
         jh8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KH8ZNIRnFbRbDWEw/pddpY1V8pxqKQ5NBS+gaJRL1Hw=;
        b=Z+WtFUy6AOECjpxn52kfaH2gQVbNMgarNYVjQYoX8cPvqVLmLwh+/O4GaSMoEZZPmP
         DVCrKGPz0SJbhI6NZYnvfre5PdWSA+JCFUgTr4NbrQ1TZI9xe2H/6LT4mOtyhjoKIYpS
         cxQAu6dCZGSmWn6eIgRpI6hpvK8XYAjnQLNaSJec3HnLnMYiuYE/ZscfY+QDEZbWYt9i
         Zr03E1Ze1l8vHhuU9h7ukeE/QfvhoeKesjqctZjk9/6nlDiGHle1ZWHOYzSxxsv4r/zD
         ajFrLwfXiRM6gjQj2rmtLW316vc26gN4Kn1Q6bnxdqcSjEWHm+YROoeFI+rOwRXU/X+o
         Vf9A==
X-Gm-Message-State: ANoB5pk9cPYsipSdfXUTx+dYaB9aANWAemn9zugLUdiPZRiXozHYjynV
        0AvJFgUw4pSKFZWk8QJvZ80=
X-Google-Smtp-Source: AA0mqf43Gna25+al0+6Z13aJRMoVKl5zofzWDWf1GpKdU80q8D7N9Dc9jQUxgOXChhOTkdsaFFIbhA==
X-Received: by 2002:a05:600c:993:b0:3cf:ab80:b503 with SMTP id w19-20020a05600c099300b003cfab80b503mr10854753wmp.176.1668008531077;
        Wed, 09 Nov 2022 07:42:11 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id fc18-20020a05600c525200b003b49bd61b19sm2227998wmb.15.2022.11.09.07.42.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 07:42:10 -0800 (PST)
Message-ID: <103cdcad-074b-2652-f3a7-ea8218a351ac@gmail.com>
Date:   Wed, 9 Nov 2022 16:42:09 +0100
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
In-Reply-To: <35e5f115-060d-9101-503f-b008f3316b01@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------n6i2BZlBNgLUzbc6tVFbfGaP"
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
--------------n6i2BZlBNgLUzbc6tVFbfGaP
Content-Type: multipart/mixed; boundary="------------8uSz9dbIlqkc6YCF0oSaw3pu";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Mike Frysinger <vapier@gentoo.org>,
 Mike Frysinger <vapier@chromium.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>, Stefan Puiu <stefan.puiu@gmail.com>
Message-ID: <103cdcad-074b-2652-f3a7-ea8218a351ac@gmail.com>
Subject: Re: [PATCH] INSTALL, Makefile, cmd.mk, lint-man.mk: Lint about '\" t'
 comment for tbl(1)
References: <20221109151812.58365-1-alx@kernel.org>
 <35e5f115-060d-9101-503f-b008f3316b01@gmail.com>
In-Reply-To: <35e5f115-060d-9101-503f-b008f3316b01@gmail.com>

--------------8uSz9dbIlqkc6YCF0oSaw3pu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTEvOS8yMiAxNjo0MCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQoNCj4gVGhlIGRp
ZmYgaXMgaHVnZSwgc28gSSB3b24ndCBzZW5kIGl0LCBidXQgeW91IGNhbiBleHBlY3Qgd2hh
dCBpdCBpcyBieSBqdXN0IA0KPiBydW5uaW5nIHlvdXIgb3duIHNjcmlwdCA6KQ0KDQpJIGNh
biBzaG93IHlvdSB0aGlzLCB0aG91Z2g6DQoNCiAgNTkyIGZpbGVzIGNoYW5nZWQsIDU5MiBp
bnNlcnRpb25zKCspDQoNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5l
cy8+DQo=

--------------8uSz9dbIlqkc6YCF0oSaw3pu--

--------------n6i2BZlBNgLUzbc6tVFbfGaP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNrylEACgkQnowa+77/
2zLUfw/+I6JrTaM4bQ9C7LHhKzD/fJDZb9CYJD0FmJJA2IgsTdNAGakZGmH6y9Tw
vvCWQNNXB+lDA9vPwkP8Tdrpwa8YmgMsXVtiO0HGV1T7ogdsqJnsThG40yuHFM5B
QFdmI2AH79dfAEi28x1vBokVGO68rZl/RXgGTtN6p1Ky+k1L3mb8p9ALogHzvK3y
283esCpWB4rQCrmLlpMVk2c4pHyrwVqZmFR3SnLjwRlHa+S2hKBk+iKjoLFG+TIk
A3vCgGF6Nfy3VuGg7YVO+MVeUiJOIKWI2TwbzK3XUnOFaICruuZbeRW5n5Nze24M
DvdbLOEP9Wx9ZJwZ0Bvw50DN/CD37fPLcSG1Ms8WAJF00mzjDsryvOiNrW3lPNtX
y/9FcIxOMuM3rmF2vQEBa0fobRsJgMMw7YRYx6r9GpcwiPJm+fAkOLPlWsEGbZd4
kNVYf5MepylSkI+MspFZoFWjZIiU8ZP/Vk8ddraI65O31H0V+jcg/jonilubgc5w
7jMkO/Sk8FRnj/pGkjAe3RJyw80Net1pZxjKs1L56CS7P4JWxZMheu/lYzpQ+5lL
DW3q4ig0L/p0ZEpFSsa/DkCHMkzXqrMB4s47BViJRMxWrZQ3KDX0cgd4PKGfVx36
Hwh9B1nFbHJIJyfxZXJcURBIP9goKgkDplu2eFtV6cF5QRyQcuA=
=L29i
-----END PGP SIGNATURE-----

--------------n6i2BZlBNgLUzbc6tVFbfGaP--
