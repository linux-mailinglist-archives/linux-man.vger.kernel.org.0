Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18F3B565F4D
	for <lists+linux-man@lfdr.de>; Tue,  5 Jul 2022 00:02:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229719AbiGDWC1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Jul 2022 18:02:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229641AbiGDWC0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Jul 2022 18:02:26 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE32D659D
        for <linux-man@vger.kernel.org>; Mon,  4 Jul 2022 15:02:25 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id k129so6066373wme.0
        for <linux-man@vger.kernel.org>; Mon, 04 Jul 2022 15:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=+SkfSoIcircfgDLyyT/vphLyXsfu77ruQe/a3MET2jw=;
        b=cNvrIj96AAEg5WP5l/I0PGnba5N+6j33C+HQsUdJfqPDPVd4Zli+eIKhzOW0opuD4c
         f/XdZuBIQ9xXY0KmX7/p9S0n2xWIocR3G8ltuKPLLs43FOO8kiPJdI/Vp+KVtErWwYd1
         LUiZ17sr0vXYPJtU+7lR4q52rOc6Rd/tE+8Sm5AlGiWqPdRz05aQBDLjPpXSoPXGStCu
         dQoG6p5OxxzF6va5wYz75IIAfedraFKvAQFWjy2EBfa32sBVpOuKQNhbyjW4Ig640qhq
         h3+ZMvws5V/D+u27NBU1qA+ESWxVQzbImrm5ZS4RsLfRpHNBNo7FMZU3Wk4Jh2sUFCPv
         FayA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=+SkfSoIcircfgDLyyT/vphLyXsfu77ruQe/a3MET2jw=;
        b=cgYtEHWOo/md7+Dc93MnAGAultDKweLiSJ8n23rN0vokYSDH5SrJoLFKL5S6CHkxx2
         qoX1og65DcTPHLdopxH77BNwp2ftg5UTD6UOH2W0PD5Lgk/Q7p0wKvs0s+sSxPmabUNZ
         SZGDcqzZmQO5iAlMaGZjbvbIhCrQLHcVfKFTNsvWdvUOWMISOic/7w9elrK5vIR3fL1k
         Q7IlOwSsnJWKGx3gsFBSgMpEgGKppxYcNPGD5gNCjvie2ck3VjZ8bBz4/wxlr6U3njmr
         41Gsn3jaOzFEtzzVWUof+xcgiuxtUP4cS3T9sbq6SH/x7WfDn2hSA1s6Wk1ja/7hBeB0
         AjUA==
X-Gm-Message-State: AJIora+v2aRfXGag0i8pRZ5tRK16vCIDEAbuSLXuPD0WUGjZcNdN6V9E
        c86l9gspMXNY7V7lrt6oUdY=
X-Google-Smtp-Source: AGRyM1uvDypmuVcxYyb/iy1VFx5I5v3bahSJ2H/cqH2iZAbp7/1sWOGES9j7P3MO6xzWJ35kXg5uqQ==
X-Received: by 2002:a05:600c:510f:b0:3a0:5836:3ddb with SMTP id o15-20020a05600c510f00b003a058363ddbmr35104815wms.123.1656972144499;
        Mon, 04 Jul 2022 15:02:24 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n35-20020a05600c3ba300b003a039054567sm20007283wms.18.2022.07.04.15.02.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jul 2022 15:02:23 -0700 (PDT)
Message-ID: <ba2e454e-3dec-e877-9b51-d02a9f5ae747@gmail.com>
Date:   Tue, 5 Jul 2022 00:02:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 4/4] fts.3: tfix
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
 <f05a70b218089c288c3cefd1b2fbb4650a119eed.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <f05a70b218089c288c3cefd1b2fbb4650a119eed.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------gGYjZMUQb9q0ueFbGclOuFf0"
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
--------------gGYjZMUQb9q0ueFbGclOuFf0
Content-Type: multipart/mixed; boundary="------------9x0mIXUdBU5imIsYf4ptJb7D";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <ba2e454e-3dec-e877-9b51-d02a9f5ae747@gmail.com>
Subject: Re: [PATCH 4/4] fts.3: tfix
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
 <f05a70b218089c288c3cefd1b2fbb4650a119eed.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <f05a70b218089c288c3cefd1b2fbb4650a119eed.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>

--------------9x0mIXUdBU5imIsYf4ptJb7D
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDcvNC8yMiAwMDoyMywg0L3QsNCxIHdyb3RlOg0KPiBzdGF0cCAtPiBmdHNf
c3RhdHANCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFoZWxlbmlhIFppZW1pYcWEc2thIDxuYWJp
amFjemxld2VsaUBuYWJpamFjemxld2VsaS54eXo+DQoNCkkgdHJpZWQgdG8gYXBwbHkgdGhp
cyBwYXRjaCwgYnV0IGl0IGRvZXNuJ3Qgd2FudCB0by4gIEkgZ3Vlc3MgaXQgZGVwZW5kcyAN
Cm9uIHByZXZpb3VzIHBhdGNoZXMgaW4gdGhpcyBzZXQsIHNvIEknbGwgd2FpdCBmb3IgdjIu
DQoNCkNoZWVycywNCg0KQWxleA0KDQo+IC0tLQ0KPiAgIG1hbjMvZnRzLjMgfCA0ICsrLS0N
Cj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL21hbjMvZnRzLjMgYi9tYW4zL2Z0cy4zDQo+IGluZGV4IDYy
N2JiNWFmYy4uNjAxYTc0Y2Q1IDEwMDY0NA0KPiAtLS0gYS9tYW4zL2Z0cy4zDQo+ICsrKyBi
L21hbjMvZnRzLjMNCj4gQEAgLTQzMyw3ICs0MzMsNyBAQCBwYXRobmFtZXMgd2VyZSBwcm92
aWRlZCBhcyBhcmd1bWVudHMgdG8NCj4gICBCeSBkZWZhdWx0LCByZXR1cm5lZA0KPiAgIC5J
IEZUU0VOVA0KPiAgIHN0cnVjdHVyZXMgcmVmZXJlbmNlIGZpbGUgY2hhcmFjdGVyaXN0aWMg
aW5mb3JtYXRpb24gKHRoZQ0KPiAtLkkgc3RhdHANCj4gKy5JIGZ0c19zdGF0cA0KPiAgIGZp
ZWxkKSBmb3IgZWFjaCBmaWxlIHZpc2l0ZWQuDQo+ICAgVGhpcyBvcHRpb24gcmVsYXhlcyB0
aGF0IHJlcXVpcmVtZW50IGFzIGEgcGVyZm9ybWFuY2Ugb3B0aW1pemF0aW9uLA0KPiAgIGFs
bG93aW5nIHRoZQ0KPiBAQCAtNDQyLDcgKzQ0Miw3IEBAIGZ0cyBmdW5jdGlvbnMgdG8gc2V0
IHRoZQ0KPiAgIGZpZWxkIHRvDQo+ICAgLkIgRlRTX05TT0sNCj4gICBhbmQgbGVhdmUgdGhl
IGNvbnRlbnRzIG9mIHRoZQ0KPiAtLkkgc3RhdHANCj4gKy5JIGZ0c19zdGF0cA0KPiAgIGZp
ZWxkIHVuZGVmaW5lZC4NCj4gICAuVFANCj4gICAuQiBGVFNfU0VFRE9UDQoNCi0tIA0KQWxl
amFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==


--------------9x0mIXUdBU5imIsYf4ptJb7D--

--------------gGYjZMUQb9q0ueFbGclOuFf0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLDY24ACgkQnowa+77/
2zKqEg//T854rNwqAEMMBmnWgmgJQydMzKRt2y99IB6wzEWxYuczlyYIbQ2E8+Y9
Yhhb/6CD8Wki47HcjVexERxzYLRN+p674ZeBOgCvueMQVxzpwtpuptjL3+u439Fg
GWXpntJ99gsvjGxZdxN0CBksd92KGvR2HbvqS29S9FgTSlHpZ9K+W5Na0jg0MboP
zjxKXPNyKrgSsalCCOYNccoIarls6sl+nxJQAqvG6sMD4jgzVQPVCpTmlBuyIKe+
G7hRceBeFntwS1c1+C8OjfVAIJLKMHtjhVQ49u0upWbbAMiXjuJum7Ld3bXWBzlj
62WTmK3KMbYBrxxndiodMeazivopC0FOyJFws76bUsQBmx5gF4ywLsoNX2Jg0caK
zTZc0N1AfuAnkgcSKt4ObZgIJh96SiHBvhsUjjYE2bS8sDfxpA/h9lr8zIrg+HW6
Gn/S0jZYRr/8nIYOqvPdxLAVRHbD4mPRPr2RiZuj+bfQlcQ96qW7p34CBTR/SckV
Enb9I+swUDxnupngk31YW/N6zJQp4eqvJhdHCL/FZyflKa6YzzKcByCiSFAR04CI
8+slnQSYO2eK94HWnr6h9iZhQT6ehc6v8eXZhRVftz9aE+P/xnqqR6YY2t1VkYMu
XhJJO2LHk9ervlHATJFXv4pxQ2ENRvG+/7AkaxVgcJgJuoAuPQo=
=n/TV
-----END PGP SIGNATURE-----

--------------gGYjZMUQb9q0ueFbGclOuFf0--
