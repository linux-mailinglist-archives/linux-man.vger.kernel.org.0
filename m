Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9623C63B4EE
	for <lists+linux-man@lfdr.de>; Mon, 28 Nov 2022 23:42:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233219AbiK1Wmy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Nov 2022 17:42:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232966AbiK1Wmx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Nov 2022 17:42:53 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74C651FFB0
        for <linux-man@vger.kernel.org>; Mon, 28 Nov 2022 14:42:51 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id v124-20020a1cac82000000b003cf7a4ea2caso12928499wme.5
        for <linux-man@vger.kernel.org>; Mon, 28 Nov 2022 14:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KvymSu3E0qk9ZvKcHH/xFHXhImFPNB0/1j/WH5U4ykM=;
        b=fHTc7zhiWjTnQ3IibatqQQsI/XrVaGEmbRcomh0K7Sez4rX/foJPypb0GNZntzEtUH
         jEGB6xdKtqisHo3BFkov1z4VyhhSDMtQ1Y5ud2juxXneFe2nFjjLY1szydzYaO8rRyHj
         TLF1E5dzVuTgfJKQ5aHU9Y/dcS4d6i7ZHxQV52z/FxgeQJ4N4PpHOEwmLzwkLPq/4DH0
         95UISu3KGDcgZyp6dG3+3rtg5DB38OrPixQbJeQhT6IwNJigyVUMy84Sveej7q3SxVak
         Zf90LjV+LSuEp1JjcgdEbwkjcyGoN51T9/OjYyctuby6HvO5ZO7i8Zy4tPD1areSEI7e
         sO3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KvymSu3E0qk9ZvKcHH/xFHXhImFPNB0/1j/WH5U4ykM=;
        b=z7h/jgUVKs32dsXH25sWQ0zUOYYA0/r9VVMAaltbmNURONzEX4kFd+JfqILAjHkP+W
         2F5PUlJVCYKk9EUDetd7R6PQa2533rifggVVZ7NJQv1CskCcn2cfhWByfe0M31m0m5ka
         qrpKmkA08WwSmCBN4UFybfQ/mBOrWzMK0Q3gLRFsOa7kxS+cwh2q7kDygcy3XNVB15PH
         UvR5cL8+yhCwrDNUjdeSUVeKx+fM6CY3AwFGH8REEAouFHXugHasBvCr72I/CDnSr7xS
         Llz6dnKsf7gowDJUPQMH/J9yLlVK2ErCG5OENQmuJJe9Jdt6YQaOH3AC6lPr6XS28AjT
         vClQ==
X-Gm-Message-State: ANoB5plWIDfCMAe9tAfBBP8Ms5rc4cr+JKJvrt9mi8p3Ugsy9IlD4s7k
        jUCC0y2MH0Sh6CSemxoYjeI=
X-Google-Smtp-Source: AA0mqf4gj08uxz8stMMlOAO26gSaZD7XY3uXEIAKDZMieMhHniJOtrLOt3fZfsfUFLxlPHKpy7EwfQ==
X-Received: by 2002:a05:600c:1d93:b0:3cf:d0ba:e5ff with SMTP id p19-20020a05600c1d9300b003cfd0bae5ffmr38848448wms.36.1669675370034;
        Mon, 28 Nov 2022 14:42:50 -0800 (PST)
Received: from [192.168.43.80] ([31.221.250.124])
        by smtp.gmail.com with ESMTPSA id s3-20020a5d4243000000b00241e4bff85asm11721869wrr.100.2022.11.28.14.42.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Nov 2022 14:42:49 -0800 (PST)
Message-ID: <fca34c0f-23c9-401d-9f75-c4bef6cf2aea@gmail.com>
Date:   Mon, 28 Nov 2022 23:42:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH] confstr.3: srcfix
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20221124151034.8060-1-jwilk@jwilk.net>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221124151034.8060-1-jwilk@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wN8DKe1UXyhjL8SlywyWfm0P"
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
--------------wN8DKe1UXyhjL8SlywyWfm0P
Content-Type: multipart/mixed; boundary="------------067IGxM0mXEM1vJCdA8cF0VJ";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, Michael Kerrisk <mtk.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <fca34c0f-23c9-401d-9f75-c4bef6cf2aea@gmail.com>
Subject: Re: [PATCH] confstr.3: srcfix
References: <20221124151034.8060-1-jwilk@jwilk.net>
In-Reply-To: <20221124151034.8060-1-jwilk@jwilk.net>

--------------067IGxM0mXEM1vJCdA8cF0VJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTEvMjQvMjIgMTY6MTAsIEpha3ViIFdpbGsgd3JvdGU6DQo+IEF0IGxlYXN0IG9uIERl
YmlhbiBzeXN0ZW1zLCB0aGVyZSdzIG5vICJjb25mc3RyIiBpbiB0aGUgaW5mbyBkaXJlY3Rv
cnkNCj4gbm9kZSwgc28gdGhlIGNvbW1hbmQgImluZm8gY29uZnN0ciIgZWl0aGVyIGZhaWxz
IHdpdGg6DQo+IA0KPiAgICAgIGluZm86IE5vIG1lbnUgaXRlbSAnY29uZnN0cicgaW4gbm9k
ZSAnKGRpcilUb3AnDQo+IA0KPiBvciBzaG93cyB5b3UgdGhpcyB2ZXJ5IG1hbiBwYWdlLg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogSmFrdWIgV2lsayA8andpbGtAandpbGsubmV0Pg0KDQpI
aSBKYWt1YiwNCg0KUGF0Y2ggYXBwbGllZCEgIFRoYW5rcy4NCg0KQWxleA0KDQo+IC0tLQ0K
PiAgIG1hbjMvY29uZnN0ci4zIHwgMiArLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjMvY29uZnN0
ci4zIGIvbWFuMy9jb25mc3RyLjMNCj4gaW5kZXggOWQzYjVkNzJkLi4zMTAwN2U5MWYgMTAw
NjQ0DQo+IC0tLSBhL21hbjMvY29uZnN0ci4zDQo+ICsrKyBiL21hbjMvY29uZnN0ci4zDQo+
IEBAIC01LDcgKzUsNyBAQA0KPiAgIC5cIiBNb2RpZmllZCBTYXQgSnVsIDI0IDE5OjUzOjAy
IDE5OTMgYnkgUmlrIEZhaXRoIChmYWl0aEBjcy51bmMuZWR1KQ0KPiAgIC5cIg0KPiAgIC5c
IiBGSVhNRSBNYW55IG1vcmUgdmFsdWVzIGZvciAnbmFtZScgYXJlIHN1cHBvcnRlZCwgc29t
ZSBvZiB3aGljaA0KPiAtLlwiIGFyZSBkb2N1bWVudGVkIHVuZGVyICdpbmZvIGNvbmZzdHIn
Lg0KPiArLlwiIGFyZSBkb2N1bWVudGVkIHVuZGVyICdpbmZvIGxpYmMgY29uZnN0cicuDQo+
ICAgLlwiIFNlZSA8Yml0cy9jb25mbmFtZS5oPiBmb3IgdGhlIHJlc3QuDQo+ICAgLlwiIFRo
ZXNlIHNob3VsZCBhbGwgYmUgYWRkZWQgdG8gdGhpcyBwYWdlLg0KPiAgIC5cIiBTZWUgYWxz
byB0aGUgUE9TSVguMS0yMDAxIHNwZWNpZmljYXRpb24gb2YgY29uZnN0cigpDQoNCi0tIA0K
PGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KDQo=

--------------067IGxM0mXEM1vJCdA8cF0VJ--

--------------wN8DKe1UXyhjL8SlywyWfm0P
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOFOWgACgkQnowa+77/
2zK/MRAAgb4oYHV7uST1oDMZ6bpCdRkfP2MWVdgPZHmUoEiOFmKZyucxrvfCq9FY
3+cmt4vIJDWVzmFyuwk/E7hNTXKIa91jEtn2JmokVxpFkDKNsDz9ckZhIXs07dEp
8z4+Yaueq/fkCH3F1thc6oJ5U4MQBzGLsqfb1XqQQTASuenyErTU66iPvANBWHZq
IM/Hr3/rr0TbCm9epvIQqb4JcDtTzWrw6lxgDW9ccGYFJmglpy7n7TkEV5ZVpb2S
jeA0WM9FWEmZ/esAEJoeblDyUnklL2SOMrQmnlGGjCsJx9w4w4pU8hj+oTdWHWBU
MwBm/ntxN5ZMhWOT00N6RK9zoKKTQjmM0DtYmF9rPVFqzZOAdF0DXXD7DFL4D59I
848rUZxTVUIAz4lwQTQe4CKvu10rwrz6eJ7Y7vF47o7I8fxeYpuXIymGt2NiXk2s
3F2Ao0ZFmDa/j2Bk/Dmn16J6pHvRi02v83mwOXwTby3XpSVEcDihK63vfv3t7a0s
6CYPvFS68HZeXwGbYnBFqDtIQPtYBSDQPtgdVftzLldnG7TcR85lG1ySfRbEYjS3
3lwsyGmhOuQPe45pN3hIfePD0ybJJ7tl1TNH2/elJ376EqgRVNOugx9/HpIz9dow
Y36xLc6+DpiLBpaZu+cQxkGqdi0m9s6fygvEZ2JIgIiO2LI8yMA=
=IDLY
-----END PGP SIGNATURE-----

--------------wN8DKe1UXyhjL8SlywyWfm0P--
