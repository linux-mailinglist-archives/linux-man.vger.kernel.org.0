Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF72F74BEC5
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 20:42:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229727AbjGHSmv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 14:42:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229496AbjGHSmu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 14:42:50 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC3D0E1
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 11:42:49 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 501F5600BE
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 18:42:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1969C433C7;
        Sat,  8 Jul 2023 18:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1688841768;
        bh=9CBdf+SAG5PufACJiGlUNHd+eqtLN2NdNhBBspjhzuM=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=WcWP+IHALfYqZmoWKfZhQGHmvd8S0z1GHd/lymQVUBIUwyznUIZ7UV8tyYk/S5H5p
         pXPbVtFHHhff60f4XP0zfnvVeA4/Dcjt5qDYjXcNxPVarHd2TwXTGHJphrONwgdbie
         64uWYDWsEih6nW35QcQbYiXfclp9e4ahzJBhHfutu8roXKva4F6epPqtykLKXNs0AI
         aHHE0bMWcd08bYKO6mB4+YGHIgmwjARbO26Q02lJVBNbBxowN0Sb1JbCANIXgWbSUY
         i7r7Xq5A8pGbCX+hpg7p2g2ExDY6J3KhWtYQt/nKQjiQRzv+b2fDcdjOTZzDvSZHMG
         pVzAr4AqKg6Lg==
Message-ID: <6c43e347-4786-68de-4d9e-a29a8f2419fc@kernel.org>
Date:   Sat, 8 Jul 2023 20:42:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] isalpha.3: behavior is undefined if c is out-of-range
Content-Language: en-US
To:     Yedidyah Bar David <didi@redhat.com>
Cc:     linux-man@vger.kernel.org
References: <CAHRwYXsxK-vyOLpDXk7V5F0fvit7O2s0Dj28M5aqXh8vxLdChA@mail.gmail.com>
 <14cbb4e3-9302-8065-2320-978181fbede0@gmail.com>
 <CAHRwYXsPXtcT-QdO7u2kGhy4Uxgs8o+H_20sV8L2ZZURfkm8cQ@mail.gmail.com>
 <7ddd8165-5ae5-f242-9294-7ae7a7059303@kernel.org>
 <CAHRwYXvVPRgKhktm7528zwTcfJiviW7Ef9oXqHGLrkoWSQvRKw@mail.gmail.com>
 <CAHRwYXu4KT=4PLkHj4yzSSBHjJcju5AoY4GPbXSZvW-DQkoMNQ@mail.gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
In-Reply-To: <CAHRwYXu4KT=4PLkHj4yzSSBHjJcju5AoY4GPbXSZvW-DQkoMNQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------U5ex33SXh4ELEXRfNcrj3mo1"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------U5ex33SXh4ELEXRfNcrj3mo1
Content-Type: multipart/mixed; boundary="------------50Q34KPSlBp9twF5PKnN0kif";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Yedidyah Bar David <didi@redhat.com>
Cc: linux-man@vger.kernel.org
Message-ID: <6c43e347-4786-68de-4d9e-a29a8f2419fc@kernel.org>
Subject: Re: [PATCH] isalpha.3: behavior is undefined if c is out-of-range
References: <CAHRwYXsxK-vyOLpDXk7V5F0fvit7O2s0Dj28M5aqXh8vxLdChA@mail.gmail.com>
 <14cbb4e3-9302-8065-2320-978181fbede0@gmail.com>
 <CAHRwYXsPXtcT-QdO7u2kGhy4Uxgs8o+H_20sV8L2ZZURfkm8cQ@mail.gmail.com>
 <7ddd8165-5ae5-f242-9294-7ae7a7059303@kernel.org>
 <CAHRwYXvVPRgKhktm7528zwTcfJiviW7Ef9oXqHGLrkoWSQvRKw@mail.gmail.com>
 <CAHRwYXu4KT=4PLkHj4yzSSBHjJcju5AoY4GPbXSZvW-DQkoMNQ@mail.gmail.com>
In-Reply-To: <CAHRwYXu4KT=4PLkHj4yzSSBHjJcju5AoY4GPbXSZvW-DQkoMNQ@mail.gmail.com>

--------------50Q34KPSlBp9twF5PKnN0kif
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWWVkaWR5YWgsDQoNCk9uIDYvMTMvMjMgMTY6MDcsIFllZGlkeWFoIEJhciBEYXZpZCB3
cm90ZToNCj4gSGksDQo+IA0KPiBBbnkgdXBkYXRlIG9uIHRoaXM/IFRoYW5rcyENCg0KVGhh
bmtzIGZvciB0aGUgcGluZy4gIEkndmUgYXBwbGllZCBpdCBub3cuDQoNCkNoZWVycywNCkFs
ZXgNCg0KPiANCj4gQmVzdCByZWdhcmRzLA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRy
by1jb2xvbWFyLmVzLz4NCkdQRyBrZXkgZmluZ2VycHJpbnQ6IEE5MzQ4NTk0Q0UzMTI4M0E4
MjZGQkREOEQ1NzYzM0Q0NDFFMjVCQjUNCg0K

--------------50Q34KPSlBp9twF5PKnN0kif--

--------------U5ex33SXh4ELEXRfNcrj3mo1
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSprh0ACgkQnowa+77/
2zJjmw//a1WfQIea6/6fOmXCL/TtRFLq6fmopIK3KeGt9RQ4Oev6FHyFJ6j8ew+8
0rSLcLBlu0Xt4jz6zB/ziwuKE8Vjq5750kUDi911F4PGrY4oRixO8LeebAqSwQt4
1N0Ep9GUJSd4HnwGvWmH3sSuzgkzz2FDOAa4Pi832dqZQN3bIGEHCQSzPSQonyJi
isbCnuH2Ss9OuYu2O88i2ejq4G2jYDBHlxQHSEKYNAvsawfTaIanddcLpvrXBhPg
yscaEDRULxlt1eC68lTBV0swlb2J0wzVp+Q150fwCQgz+XPYBWs/5YRNMUkqkNNX
Djlgii7hpBUSRYI3ZNoA0GqsWp5BXyVzDyEO/oeNR6xaWDVQPcikPURofGrJPQ6p
Qm4r/CF5ub677HwtgRP0c5fC5VIdZ77ooq3i9rSSiGhV9wVbljFUBfWhhq2CY2qN
/00oyd3uIy7NdcBxs2CKI+nw5qFNVxawPGmwyMZKkqnu1aXADS6DZjBC43Lw8V7g
SjhyHlqhTaM94Sarsze20pXubE/Qfp7hkU2qQxhZ7CbJ2gqK2Eqy6ZX/E4HGIx6l
VMQCWY+K4tkAhEcMV8mJ+mMpEvSaPmFhU+E0IIFs8JCzg4+J2MfYHuMcWRwLJuAg
/G6pG1snUPTDqJEfLvYVDHUeHxhiQp/9kLi0F+5bVmHri7uK1Vs=
=TgmE
-----END PGP SIGNATURE-----

--------------U5ex33SXh4ELEXRfNcrj3mo1--
