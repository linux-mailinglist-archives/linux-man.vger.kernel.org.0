Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 794666586DA
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 21:57:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229668AbiL1U5B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Dec 2022 15:57:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231331AbiL1U46 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Dec 2022 15:56:58 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6C8F167C2
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 12:56:56 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id fm16-20020a05600c0c1000b003d96fb976efso9781973wmb.3
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 12:56:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cbJKMhVgo9JBdO5+y+M0U3roMcxAZEyS6YeU9+jPhzo=;
        b=Y1sRsyGpp9AyHzXyy8ZdOUGmsS5l5Qmzei0enBXP7BqxGwglva0Ung38f8EJ4IlGiS
         Qm/k1clcfdLXHz/b4GRxuujUNK1BiUNo0U5vJnzY+c97blXme2jAcrUwnojNj5l7m+zV
         OvUPe7DnVLIsj+T+VO37jsg/IiSAvoqOrUF4E5oTGdk2UXdESY+AuIFIwz4te2TmMm1Q
         FZ4D39MUJYj4I7dbifXdlLxDxujL22ZnryeyzZZgewV1npBcnZDcSwZ/+GaQSILu0r0o
         90aQ5TGaOXVYVx72bkgWDcxPn/FD4n0/8uDKBoCEptjSAcMOlyzFeY87WzZnMjJdW3UQ
         P31Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cbJKMhVgo9JBdO5+y+M0U3roMcxAZEyS6YeU9+jPhzo=;
        b=AxuA9dswO6vTTeNqfQg79xq7JCwRq5VxJBibVT0q8BKpfNzWQR+CtztOrrlPJxN1vu
         kPBbcImeTeJqk8ix/oZBqRsGcJwYwkSR0PlPIMgOJmZiy9UMN+ZtNOXjgl9OdHTlNMv5
         20ZIjV21jebUx5z3tLy8CqH0px1lIbhOiD6QYxbutp3ywfSTfE7vEAkacdrGTrQN0kC3
         je2NEyeLSEqV7jOhpc/OQjo8Veqlg+o8s5g/lGbbbsWwzF9dHutWInXj1eaQdg/tU7vV
         Ufn8SwQPC3HUNnHefI8M8jTXNWK6ZS42vKbx8nYNqj0gIeTCCRaZ0CrN/ktvvneyKUSC
         vI4A==
X-Gm-Message-State: AFqh2krCgcZGlEbVfCirOyj++ZR+9Npx/0sLqY/69SW4Rpc23hY/wQxf
        U/hfBFXzPN76AxaxyCSuqEk=
X-Google-Smtp-Source: AMrXdXvLohp2K8EScL+P7D4+kfjJh6IoZmg183Bm23myq3g4td2RJaPIeq+PiCHVMN3ohlFV6GRoIw==
X-Received: by 2002:a05:600c:3ba7:b0:3d3:4dac:aa69 with SMTP id n39-20020a05600c3ba700b003d34dacaa69mr18405197wms.36.1672261015347;
        Wed, 28 Dec 2022 12:56:55 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d9-20020a05600c3ac900b003d973d4fb28sm16246628wms.4.2022.12.28.12.56.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 12:56:54 -0800 (PST)
Message-ID: <b2ee2571-952e-4709-314d-ec4952a44ed8@gmail.com>
Date:   Wed, 28 Dec 2022 21:56:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] Add example to rand.3
Content-Language: en-US
To:     Jonny Grant <jg@jguk.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        Florian Weimer <fweimer@redhat.com>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
 <3af45047-1d30-c4e8-cb73-a70eed6927fe@gmail.com>
 <da69ac41-1ea0-b852-4e9a-3d27a10f2bd7@jguk.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <da69ac41-1ea0-b852-4e9a-3d27a10f2bd7@jguk.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1xGWDEGRzbhYk9oHBirVeTlk"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------1xGWDEGRzbhYk9oHBirVeTlk
Content-Type: multipart/mixed; boundary="------------w766AS8QR6FkP7O4ztdwZOFe";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jonny Grant <jg@jguk.org>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>,
 Florian Weimer <fweimer@redhat.com>
Message-ID: <b2ee2571-952e-4709-314d-ec4952a44ed8@gmail.com>
Subject: Re: [PATCH] Add example to rand.3
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
 <3af45047-1d30-c4e8-cb73-a70eed6927fe@gmail.com>
 <da69ac41-1ea0-b852-4e9a-3d27a10f2bd7@jguk.org>
In-Reply-To: <da69ac41-1ea0-b852-4e9a-3d27a10f2bd7@jguk.org>

--------------w766AS8QR6FkP7O4ztdwZOFe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9ubnksDQoNCk9uIDEyLzI4LzIyIDIxOjUxLCBKb25ueSBHcmFudCB3cm90ZToNCj4g
WW91J3JlIGNvbXBsZXRlbHkgcmlnaHQuIEl0J3MgYSByZWFsIGlzc3VlIGlmIHNvZnR3YXJl
IHN0YXJ0cyBtdWx0aXBsZSB0aW1lcyBwZXIgc2Vjb25kLCBvciBleGVjdXRlcyBpbiBsZXNz
IHRoYW4gb25lIHNlY29uZCBhbmQgdGhlbiBydW5zIGFnYWluLiBPdXIgc29mdHdhcmUgYWx3
YXlzIHJ1bnMgZm9yIGF0IGxlYXN0IG1pbnV0ZXMsIG1heWJlIGFub3RoZXIgY29kZSBzdWdn
ZXN0aW9uIGZvciBhIHNlZWQgd291bGQgYmUgZ29vZCBpbnN0ZWFkLCBsaWtlIGFyYzRyYW5k
b20uIEkgZG8gbGlrZSB0aGF0IHJhbmQoKSBvZmZlcnMgYSByZXByb2R1Y2libGUgc2VxdWVu
Y2UsIHVzZWZ1bCB3aGVuIGluIHNvbWUgb3RoZXIgc29mdHdhcmUgd2UgbG9nZ2VkIHRoZSBz
ZWVkIHZhbHVlIHVzZWQuIHJhbmRvbS40IC0gL2Rldi9yYW5kb20gd291bGQgYmUgYSBiZXR0
ZXIgc2VlZCB0aGFuIHRpbWUoTlVMTCkgaWYgcnVubmluZyB0aGUgcHJvZ3JhbSBtdWx0aXBs
ZSB0aW1lcyBwZXIgc2Vjb25kLiBBbnl3YXksIHJhbmQoKSBpcyBvbmx5IHBzZXVkby1yYW5k
b20sIHV0aWxpc2luZyAvZGV2L3JhbmRvbSB3b3VsZCBiZSByZWFsbHkgbXVjaCBtb3JlIHJh
bmRvbSwgYW5kIEkgbGlrZSB0aGF0IHRoZSBzZWVkIGlzIHNhdmVkIGJldHdlZW4gcmVib290
cy4NCg0KQWhoLCBJIGRpZG4ndCBjb25uZWN0IHRoZSBkb3RzIHRoZSBvdGhlciBkYXkhICBX
ZSBkb24ndCBuZWVkIHRvIHdhaXQgZm9yIGdsaWJjLiANCmxpYmJzZCBhbHJlYWR5IHByb3Zp
ZGVzIGFyYzRyYW5kb20gb24gR05VL0xpbnV4IHN5c3RlbXMsIHNvIEkgY2FuIGFscmVhZHkg
DQpyZWNvbW1lbmQgdXNpbmcgYXJjNHJhbmRvbSB0byBzZWVkIHNyYW5kKDMpLg0KDQpJJ2xs
IHByZXBhcmUgYSBwYXRjaC4uLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCj4gQ2hlZXJz
LCBKb25ueQ0KPiANCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+
DQo=

--------------w766AS8QR6FkP7O4ztdwZOFe--

--------------1xGWDEGRzbhYk9oHBirVeTlk
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOsrY8ACgkQnowa+77/
2zITHw/+JWCn1fB0QmD8ezIG6Gm9SnGMBmO6Z7gXjBDA+lVYcO6T+G1eObancyaG
9fUOybhc1XTVnCgwC28Nwd+xUJ+n+qdQ8Lymg6W/rIUvRClwh7xH5EZWS7Ccmzco
5bf2kj257GB7Vs/G0Ja5GXuKiyhvX1qvsHJwc0MUpHq5zqyYh9SvAUE9mMtSfxWq
1nR8fAzBSpLA18Nf161OXHGudmWGnxX02XODAnloJFy1VBvGAtGmDU5lt94L/ARu
UTUEKSyLRQW+FfHpECY9MARtTak2Mqf44lr/VQeYbkmHRaxIN8cR9p6IHVIj0NFo
8Ie1Je35DSvvwspuqidZYrLWwgWUYnCSjhslcV+Q/aGtykEfBO7Z11c6zfrYcPS1
AqOfGSqixGJcJtoK/vKkoRW51P9SWnFIe9cSgZ4fBIKW7lkCV/8boxOol5//UE0i
Rk65VQaEek9EnR3qPyumhfNnB88w2l4OXSysosk34ZO6yDlNw4k5bDIKFJev8HZQ
Jv5XW54XS07zhMvAsFfpG8+0WYWm6hULBFZoYAOW0cIMXbWR8ikLqAR3OLRulhKm
XaT2Qd7nc6JVqxfOJnp5GpS7XjdNRp29cuBnnJbGIW+8VF/UGzVYLrx8Iv04HUR6
7pP+GimNbEAQIB8JKZgQQn0+SqG+7P+UDjZY/zgXpmv/jRVPHrs=
=gQhA
-----END PGP SIGNATURE-----

--------------1xGWDEGRzbhYk9oHBirVeTlk--
