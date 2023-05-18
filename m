Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2384F707C72
	for <lists+linux-man@lfdr.de>; Thu, 18 May 2023 11:03:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229963AbjERJDT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 May 2023 05:03:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229902AbjERJDS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 May 2023 05:03:18 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D94B41BD4
        for <linux-man@vger.kernel.org>; Thu, 18 May 2023 02:03:17 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3f4ad71b00eso11218275e9.2
        for <linux-man@vger.kernel.org>; Thu, 18 May 2023 02:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684400596; x=1686992596;
        h=in-reply-to:references:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ch5wTPFstRrrN6H7phBAPZb9PQbo1RzJbKfvGbASpGA=;
        b=KJit4gZqsdVe3sNg/u0AT5AKJdooSra4FXNEfBj14E7SBNFxIVWw6rd1Lj30xSZXF7
         1cfwW+QMl9OJwsMp2IVWTVtfD70TiZh/ULWnQ/cWPlmtzt0hQCvKR8LUBIDdYHrNgoKp
         jH+GXOyCZX3btV5DbaPDCJ4Zon5pbpdtIe0NBsQmdLiTrQbP+jycNGKsqxM+Zj04hLfn
         3TKMeMU+bx+4BvPRJkcYpiMWH2ElcwSqKYeM1hF2QxCkY41k9/YWkM3A02pFwFgLQ4Fh
         jQbD/3yhQfTjYLgJ5Q+UtnZsccf/M3K4joMj7QP5UCpLrgynPgLiOINeAeI4+9DjTXM/
         3R1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684400596; x=1686992596;
        h=in-reply-to:references:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ch5wTPFstRrrN6H7phBAPZb9PQbo1RzJbKfvGbASpGA=;
        b=E9Q1i7dze1TTQQntwahYFzwBE5btCfIFeV+AbSw53kZysV4h/e0mI68WXn0xYDwfGo
         d2q3642ThOrgX4Z9us/aoNpHNF0XNQFXRaJGug//2Tn5kkzltaVCzrhDy/R/gnQDtpYm
         KwkRSEem6GVK6dCTRKe7D2FpCU6bjeH+JDGDgS4Vcj+D33BVbRQpFJkQ4ds0NPBdgiYA
         tlDuHR1qPTlmfgeLNGz3Ac2SlEtHy8dQzE/QDLToI1gher1sLrUK7Ng5qfKoRRJenaGr
         cDJx0tK/12W76I7anFm5ZithJlT1IJlxq2tMdU/L52U5TY6cMquddvT3cXAEON5UdTxh
         7d3g==
X-Gm-Message-State: AC+VfDyIQuQdtPxpiWvjWATP0fXCsQpqczbJv9bA6MsiF4ZglMEBsCGk
        NyFfpzLygjg1BO2bdylRn8EceAs612c=
X-Google-Smtp-Source: ACHHUZ5pSWaxcmCRWjvE3PXMhjxh7Egrc8Tkh/+J5nYibutf11+nRqwBhaFrMCNdSJjZoBEGTkNP0A==
X-Received: by 2002:a7b:ca4e:0:b0:3f1:7aff:e14a with SMTP id m14-20020a7bca4e000000b003f17affe14amr875091wml.39.1684400596146;
        Thu, 18 May 2023 02:03:16 -0700 (PDT)
Received: from [192.168.43.80] ([46.6.166.66])
        by smtp.gmail.com with ESMTPSA id l16-20020a5d4810000000b003064600cff9sm1467132wrq.38.2023.05.18.02.03.15
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 May 2023 02:03:15 -0700 (PDT)
Message-ID: <13993515-e3af-3c40-1351-24aaf8814bf6@gmail.com>
Date:   Thu, 18 May 2023 11:03:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: Doubts about mmap(2)
Content-Language: en-US
From:   Alex Colomar <alx.manpages@gmail.com>
To:     lnx-man <linux-man@vger.kernel.org>
References: <d67a30a2-0f67-8ff0-e2da-6f8d8704dc7b@gmail.com>
In-Reply-To: <d67a30a2-0f67-8ff0-e2da-6f8d8704dc7b@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------UXVXM6kSnN0EjwcceRZC9xKQ"
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------UXVXM6kSnN0EjwcceRZC9xKQ
Content-Type: multipart/mixed; boundary="------------G0YiZppxhpsq2viMa8LW0GuF";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: lnx-man <linux-man@vger.kernel.org>
Message-ID: <13993515-e3af-3c40-1351-24aaf8814bf6@gmail.com>
Subject: Re: Doubts about mmap(2)
References: <d67a30a2-0f67-8ff0-e2da-6f8d8704dc7b@gmail.com>
In-Reply-To: <d67a30a2-0f67-8ff0-e2da-6f8d8704dc7b@gmail.com>

--------------G0YiZppxhpsq2viMa8LW0GuF
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNS8xOC8yMyAxMDo1MywgQWxleCBDb2xvbWFyIHdyb3RlOg0KPiBIaSENCj4gDQo+IEkg
YmVsaWV2ZSBtbWFwKDIpIGlzIGNvbmZ1c2luZyAoc2VlIHRoZSBlbWJvbGRlbmVkIHBhcnRz
KToNCj4gDQo+IERFU0NSSVBUSU9ODQo+ICDCoMKgwqDCoMKgwqAgbW1hcCgpwqAgY3JlYXRl
c8KgIGHCoCBuZXcgbWFwcGluZyBpbiB0aGUgdmlydHVhbCBhZGRyZXNzIHNwYWNlIG9mDQo+
ICDCoMKgwqDCoMKgwqAgdGhlIGNhbGxpbmcgcHJvY2Vzcy7CoCAqKlRoZSBzdGFydGluZyBh
ZGRyZXNzIGZvciB0aGUgbmV3wqAgbWFwcGluZw0KPiAgwqDCoMKgwqDCoMKgIGlzIHNwZWNp
ZmllZCBpbiBhZGRyLioqwqAgVGhlIGxlbmd0aCBhcmd1bWVudCBzcGVjaWZpZXMgdGhlIGxl
bmd0aA0KPiAgwqDCoMKgwqDCoMKgIG9mIHRoZSBtYXBwaW5nICh3aGljaCBtdXN0IGJlIGdy
ZWF0ZXIgdGhhbiAwKS4NCj4gDQo+ICDCoMKgwqDCoMKgwqAgSWYgYWRkciBpcyBOVUxMLCB0
aGVuIHRoZSBrZXJuZWwgY2hvb3NlcyB0aGUgKHBhZ2XigJBhbGlnbmVkKSBhZOKAkA0KPiAg
wqDCoMKgwqDCoMKgIGRyZXNzIGF0IHdoaWNoIHRvIGNyZWF0ZSB0aGUgbWFwcGluZzsgdGhp
cyBpcyB0aGUgbW9zdCBwb3J0YWJsZQ0KPiAgwqDCoMKgwqDCoMKgIG1ldGhvZMKgIG9mwqAg
Y3JlYXRpbmfCoCBhIG5ldyBtYXBwaW5nLsKgICoqSWYgYWRkciBpcyBub3QgTlVMTCwgdGhl
bg0KPiAgwqDCoMKgwqDCoMKgIHRoZSBrZXJuZWwgdGFrZXMgaXQgYXMgYSBoaW50IGFib3V0
IHdoZXJlIHRvIHBsYWNlIHRoZSBtYXBwaW5nOw0KPiAgwqDCoMKgwqDCoMKgIG9uIExpbnV4
LCB0aGUga2VybmVsIHdpbGwgcGljayBhIG5lYXJieSBwYWdlIGJvdW5kYXJ5KiogKGJ1dMKg
IGFs4oCQDQo+ICDCoMKgwqDCoMKgwqAgd2F5c8KgwqDCoCBhYm92ZcKgwqDCoCBvcsKgwqAg
ZXF1YWzCoMKgIHRvwqDCoCB0aGXCoMKgIHZhbHVlwqDCoCBzcGVjaWZpZWTCoMKgIGJ5DQo+
ICDCoMKgwqDCoMKgwqAgL3Byb2Mvc3lzL3ZtL21tYXBfbWluX2FkZHIpIGFuZCBhdHRlbXB0
IHRvIGNyZWF0ZcKgIHRoZcKgIG1hcHBpbmcNCj4gIMKgwqDCoMKgwqDCoCB0aGVyZS7CoMKg
IElmwqAgYW5vdGhlcsKgIG1hcHBpbmfCoCBhbHJlYWR5IGV4aXN0cyB0aGVyZSwgdGhlIGtl
cm5lbA0KPiAgwqDCoMKgwqDCoMKgIHBpY2tzIGEgbmV3IGFkZHJlc3MgdGhhdCBtYXkgb3Ig
bWF5IG5vdMKgIGRlcGVuZMKgIG9uwqAgdGhlwqAgaGludC4NCj4gIMKgwqDCoMKgwqDCoCBU
aGUgYWRkcmVzcyBvZiB0aGUgbmV3IG1hcHBpbmcgaXMgcmV0dXJuZWQgYXMgdGhlIHJlc3Vs
dCBvZiB0aGUNCj4gIMKgwqDCoMKgwqDCoCBjYWxsLg0KPiANCj4gDQo+IFRoZSBmaXJzdCBl
bWJvbGRlbmVkIHNlbnRlbmNlIGNvbnRyYWRpY3RzIHRoZSBzZWNvbmQuwqAgSXQncyBub3Qg
dGhlDQo+IHN0YXJ0aW5nIGFkZHJlc3MsIGJ1dCBqdXN0IGEgaGludCB0byBmaW5kIGEgbmVh
cmJ5ICg+PSkgc3RhcnRpbmcNCg0KSSB3YXMgYSBiaXQgd3JvbmcgdGhlcmUuICBJdCdzID49
IG1tYXBfbWluX2FkZHIsIG5vdCA+PSBoaW50LiAgQnV0IHRoZQ0Kc3VnZ2VzdGlvbiBiZWxv
dyBob2xkcy4NCg0KPiBhZGRyZXNzLsKgIEhvdyBhYm91dCBzYXlpbmcgdGhpcz86DQo+IA0K
PiAgwqDCoMKgIEEgaGludCBmb3IgdGhlIHN0YXJ0aW5nIGFkZHJlc3MgZm9yIHRoZSBuZXcg
bWFwcGluZyBpcyBzcGVjaWZpZWQgaW4NCj4gIMKgwqDCoCBhZGRyLg0KPiANCj4gQ2hlZXJz
LA0KPiBBbGV4DQo+IA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVz
Lz4NCkdQRyBrZXkgZmluZ2VycHJpbnQ6IEE5MzQ4NTk0Q0UzMTI4M0E4MjZGQkREOEQ1NzYz
M0Q0NDFFMjVCQjUNCg0K

--------------G0YiZppxhpsq2viMa8LW0GuF--

--------------UXVXM6kSnN0EjwcceRZC9xKQ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRl6dIACgkQnowa+77/
2zIKtQ//fxcWfqn4tiWM9nGlyTAscgYMal0OvkoAu2bZmvIVY5nixoxMf1X0KH8m
aeawUYUdKjR0jK2DZycw0jMspMZ40J5rBimBTp9zaGPk1cRe9lWfVYpvzK4YKmK9
0qnEZvUPfpY+25EzFuUw36feQ0Bj90ed9ixpJ9FLdNC9pyUO+pu5oK5U6PxNkvCq
lnX3hWmvCBQflKzKJcIpGBlM7cRIEPslm0MyZqvMED9QrdolNDqyn2g/wI2t+6sw
+rQVAs1EY0azgMb7P7t68/YmlaLm+FMLa6BlqxUIjR1hwB8ikWIBxKJpP2IJjy/1
YeX9ThH2wkvKj7F8ktg/9JfjFtUG1+E0MhBQQa4zEqsMiJ9KndZ58m/jjdwUlNww
rj+Th6Mrtxk2ZsHdqpSkj6ta4m8oOqu4stxKdb3KQNEUqJxl6lsAdhJeCMBC68y1
8j7yC/mwzz5V51weYj9RyPjcR2tQHeSxwG2Eb9Y5CMxV7PAyOaDdqvzW48Fkfidj
CWo36N07I08SWHDA6UU9zYb9hsFtzLZVQD3Rc46YiJ0oaydVVcVwP5Tr24WTYIS1
hWSksMbHi5DTMsQQK5Jq6ebXeFtvPRiZrwOokp3nlK6KLjStl7ybA9b8cgcRAJnG
qQQjJ5fwXLfEtxxjyjCnqxBReUjCYABHoKTGTPVCzJPAL4g/H9E=
=taYU
-----END PGP SIGNATURE-----

--------------UXVXM6kSnN0EjwcceRZC9xKQ--
