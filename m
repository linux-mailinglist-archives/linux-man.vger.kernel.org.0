Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0F34624946
	for <lists+linux-man@lfdr.de>; Thu, 10 Nov 2022 19:22:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231810AbiKJSV5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 13:21:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231948AbiKJSVd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 13:21:33 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 750B94E40A
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 10:20:44 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id l14so3494277wrw.2
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 10:20:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tENlMJLdEL3RXJLn/AnbRowpRGtbfPdlAcRQ/rDiOr8=;
        b=EZTaSXHLwVVDyi47IvmGyTs6/TUZf9Y6kyVaSFuQIkOWOMPt0LebnRgBPRQxRZHn98
         JGlLdvZHHM5VsDUfikChseRcFy+GOtydRTe/2bAiheWkEsLcJEibrLwTE1kzjwipwuu4
         O8fUDq50vJP9s81KKwHOocq3tWWPq6KtGIiV5dpYsrv/Y7awwDf30Wev6J7fvWEh5KUu
         qkF5DTeRnzttoCtLCSBXxGOWkPOzvo+q2S7YI5zaYsd6t5ihbTheZ+CmUVupwNkyb0OH
         zYCLDlHuEtGIQiPKSS08KOhqGp5wb/5tx/MAQ5zz7Je6XfabKOGgTNPmNcWbU9tdice/
         BPmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tENlMJLdEL3RXJLn/AnbRowpRGtbfPdlAcRQ/rDiOr8=;
        b=zRbIJbmeA3v5ro4cSXtPbYU4yfJYOmmcqbN4kQtLVP1F6XVFu6oIUiDAxTSb2bai9T
         tziYcCGzvSv1QgG+hzUy9kxDaZKAj7V8mMqC1978XjgICvrlL/2Sq2fhcEOtSP+rEkq5
         QojhBRXoN43CFtNjgK3wwbPxhk9mg/w2HyeCQDy/8y9MktRx89Qy9/Yd0Gu3NxPKeHy5
         rMYLOBwKlPKu8zeoEm8BP+JzDOZIjjHqEz0yLTWew8PoLNlY9y/Q4njyTzkaX/xKg5KD
         JDjoxHPNuHzBIS//2x5pev6NDYsE5VO+Q7KY/M7rBl1vdridnGCbvnwcjTlEFOf+ZsLt
         SesA==
X-Gm-Message-State: ACrzQf2yn9s50b3Kz2Jx9v2eWkJS5tUr2eCY1pc4kgdDofdQVR+wi62G
        kyxS1/z/3zGI4ojpp6dQNh8vnvuSYog=
X-Google-Smtp-Source: AMsMyM4ZNPRGouMk12jkMyFfMx79YB4o6OdZ3tXZ9JVQfiQYyQkzYK+v3UihbQuTeJAfq9e6pb3Q0w==
X-Received: by 2002:a5d:4e88:0:b0:236:590:f5a9 with SMTP id e8-20020a5d4e88000000b002360590f5a9mr39282229wru.126.1668104443041;
        Thu, 10 Nov 2022 10:20:43 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z25-20020a05600c221900b003c6c5a5a651sm285797wml.28.2022.11.10.10.20.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 10:20:42 -0800 (PST)
Message-ID: <80e390f0-9eea-b565-68b6-da8eb3d5943c@gmail.com>
Date:   Thu, 10 Nov 2022 19:20:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: MR macro 4th argument (was: [PATCH] Various pages: SYNOPSIS: Use
 VLA syntax in function parameters)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        groff <groff@gnu.org>
Cc:     Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org
References: <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <20221110094033.ptpfsqpvvx2yd5xs@illithid>
 <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
 <01da77c7-fed2-0fc1-ae6a-770885057a27@gmail.com>
 <5e3a103d-2aff-511a-e819-96dafb640c24@gmail.com>
 <a3159c9e-4ead-78f3-c1ca-e2144c3e882d@gmail.com>
In-Reply-To: <a3159c9e-4ead-78f3-c1ca-e2144c3e882d@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ktIFi3NhfjCGdvdQc0ahRT7f"
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
--------------ktIFi3NhfjCGdvdQc0ahRT7f
Content-Type: multipart/mixed; boundary="------------AzlRIKUpiqAKNf1XmF0B0ZNE";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 groff <groff@gnu.org>
Cc: Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org
Message-ID: <80e390f0-9eea-b565-68b6-da8eb3d5943c@gmail.com>
Subject: Re: MR macro 4th argument (was: [PATCH] Various pages: SYNOPSIS: Use
 VLA syntax in function parameters)
References: <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <20221110094033.ptpfsqpvvx2yd5xs@illithid>
 <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
 <01da77c7-fed2-0fc1-ae6a-770885057a27@gmail.com>
 <5e3a103d-2aff-511a-e819-96dafb640c24@gmail.com>
 <a3159c9e-4ead-78f3-c1ca-e2144c3e882d@gmail.com>
In-Reply-To: <a3159c9e-4ead-78f3-c1ca-e2144c3e882d@gmail.com>

--------------AzlRIKUpiqAKNf1XmF0B0ZNE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDExLzEwLzIyIDE5OjExLCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gSGkg
QnJhbmRlbiwNCj4gDQo+IEFub3RoZXIgaW50ZXJlc3RpbmcgdGhpbmcgaXMgd2hhdCB0byBk
byBoZXJlOg0KPiANCj4gJCBzZWQgLW4gMzE5LDMyMHAgbWFuMi90aW1lcmZkX2NyZWF0ZS4y
DQo+IC5UUA0KPiAuQlIgcG9sbCAiKDIpLCAiIHNlbGVjdCAiKDIpIChhbmQgc2ltaWxhciki
DQo+IA0KPiANCj4gQ2FuIEkgaGF2ZSBtdWx0aXBsZSBpbnB1dCBsaW5lcyBhcyB0aGUgdGFn
IGZvciBhIFRQP8KgIEhvdyB0byBwdXQgMiBNUiByZWZlcmVuY2VzIA0KPiBpbiB0aGVyZT8N
Cg0KT3IgbWF5YmUgSSBzaG91bGQgcmVvcmdhbml6ZSBpdCBhbmQgdXNlIFRRIGFuZCBtdWx0
aXBsZSBzZXBhcmF0ZSB0YWdzLi4uDQoNCj4gDQo+IENoZWVycywNCj4gDQo+IEFsZXgNCj4g
DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------AzlRIKUpiqAKNf1XmF0B0ZNE--

--------------ktIFi3NhfjCGdvdQc0ahRT7f
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNtQPgACgkQnowa+77/
2zKCfw//SrdemQbYLK6zvnKTPrIuttPRTQkcljqLv2KPJjjBSpS2kjdedEMGuPEN
S6hKpNJTnlkwlE6KkdDkAqNJFCW+wkdWrwmuWQBcD9bTBIFCyBMzEDga3yZ+fcfe
Yi7K//t+n+UFYSxdMcx4MkIDr8pvvdF5fgVQtKFyhJoeYPeS0OshVJh7dz1E7pQ3
UBlDHA5pJ5W+mW0XwpCej5ifLIZ8RvXezuSgDVMD3n4sNyzSKHc4zkEvM90FPmUE
1iNZG8eXLLydZkLtHO6VS+99ZHDSxl0ovb+ldFCjh5jmc1wsUElFfbQuUfZNZ6IY
ZXdOc7hoe9DZMFil7XAR43GVleNvxs+l2+GVDCLlAS0MNTIBgn8cDOObg6PmKcv3
+2S9jT0gW2yqFl6JNVtXgjUtcw3JNifgOxcu1YJu6azvIHS4VKeUZVVM2zU7ryW7
6XvXOOw1H2nL6HMJj+14Pe/Oztqyt+hNlEU32cWpL2czdn8R9k9ImsG+Uq3ijZJ3
zCHCD2MMI1lodxhRvM1wAde2qU1O+PeC4x+h9U6CE+hb2UbQJ4ZQXo5upR/jn1ZA
2Gv5CEDX/qHvv/AcCy4Z9ViDUpGCCLBFJ32VSxjUv8ZPcbuLdz3s/6Z/3q8aJUIv
ygoBv0lENrjxKdTCm5EMut0lRxAbrCKJRnGHl8N4G9Oaraj+28g=
=lCil
-----END PGP SIGNATURE-----

--------------ktIFi3NhfjCGdvdQc0ahRT7f--
