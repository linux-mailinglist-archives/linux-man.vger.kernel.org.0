Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A416957FF36
	for <lists+linux-man@lfdr.de>; Mon, 25 Jul 2022 14:46:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235204AbiGYMq2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Jul 2022 08:46:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234858AbiGYMqY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Jul 2022 08:46:24 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33CD513F61
        for <linux-man@vger.kernel.org>; Mon, 25 Jul 2022 05:46:23 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id z13so15786805wro.13
        for <linux-man@vger.kernel.org>; Mon, 25 Jul 2022 05:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=f2I22N6BiRV02WHioo0v/O+I/if+J1FSuHcauAxYbz0=;
        b=iszQ7D05OQjG+VJdHnT+1ALGUsgfB3RcR/+0mak8ryHTkYedwZxI06czLFsYcmmgAt
         dtfND1K/CC2ayOpdsWGh2rml/ZBg/A0L+gj4xIl3AboP8cF6GCYPXW3U66ZEbsI5DCkS
         Yo7FyDd5DpUgHHbRtuW93055TtoyjF8dphkdpdyULKnwaGqCs6O08DYlUoxvowKfF2UC
         Ejrwnb2U2s2wBnDDJNSUJRXKoWQNxxodZY8E+HKN8zPQ3butXKwTLEwNlQNRaXjw++s/
         UgSRqsHOPNZMKS9iM8wsng3O5b/DHNGixABhahX/OlmDOfj2Ku1FHfrEV/X9Sq/3wfsl
         A4Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=f2I22N6BiRV02WHioo0v/O+I/if+J1FSuHcauAxYbz0=;
        b=G5kR+7QpGAb6o51lkujJCI+vLmxaedXNSgXEiQD9qXK5hsZRy9r2GF7It2/vjxM7fn
         gGNcpxYfAIcm9F9KsKDNwztVWJWYCWuF3wyOhTXdGdSKCPMve3PIXnNpVpeo3mf/Nn3r
         GDRHhlxc/ZsKWHmHwHo/wuY0Kk9PkuFbiMeTHbeoVnRgy1fRx+PHUm91eXLhe47l+hIl
         TowYxc5r7E3P4XSEwuY4mNKH6teo5cyES3AA55sBVQJ++H33Dni55QL7R6iEYsFInLFn
         /4N61Fq/AfJHbzoNH17UoHxeOZ8S4LmS0/cpKuiXPrRqtJAiQQdklv9W2tLtvwfSeIaG
         Up5A==
X-Gm-Message-State: AJIora8GJ6txzVsabb/afROjk+FqNCfxP5wyzfzOzN/5xjl/GGsrIvA6
        eIy9+oHtMEXW6fH6/PwJ+Nc=
X-Google-Smtp-Source: AGRyM1ty5s+qd4Ri1CVy5mpq5T7YHYIOOBZcfU3l8ehEfOTaoVhxXhTU0qsHG9pbel12IYz3F3enHg==
X-Received: by 2002:adf:e28c:0:b0:21e:660e:26aa with SMTP id v12-20020adfe28c000000b0021e660e26aamr7511052wri.345.1658753180755;
        Mon, 25 Jul 2022 05:46:20 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i24-20020a1c5418000000b003a3187a2d4csm18087025wmb.22.2022.07.25.05.46.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jul 2022 05:46:20 -0700 (PDT)
Message-ID: <b7ecc62d-3b46-c6be-d102-3ede7b81b4ed@gmail.com>
Date:   Mon, 25 Jul 2022 14:46:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: bash-completion doesn't support man subsections (was: Linux man-pages
 Makefile portability)
Content-Language: en-US
To:     Colin Watson <cjwatson@debian.org>
Cc:     Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org,
        g.branden.robinson@gmail.com, man-db-devel@nongnu.org
References: <d8646de0-e4f0-3d4b-e763-92355162a405@gmail.com>
 <Yq+P39bpy2QEeaSd@asta-kit.de>
 <8b9daa0e-6f08-dd55-5772-51f5052ed8bb@gmail.com>
 <YrB66rgFZqryrmpt@asta-kit.de>
 <6e294373-2661-286c-09c4-e67cd84103d7@gmail.com>
 <fdde7402-5e69-b6ff-60fc-74ad9c9054f1@gmail.com>
 <YtrXbDo5NVxNT/cb@asta-kit.de>
 <80553a14-8f39-d4ad-def3-35d6551a31f3@gmail.com>
 <Ytw65nGl1qouSU5R@asta-kit.de>
 <ff01b98c-563f-dfd3-4996-65ff5e5f44ce@gmail.com>
 <Yt5iPprqbVjiQRy6@riva.ucam.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <Yt5iPprqbVjiQRy6@riva.ucam.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------clCj2IgdGjaEmaVH8zD0kRuw"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------clCj2IgdGjaEmaVH8zD0kRuw
Content-Type: multipart/mixed; boundary="------------FZ0heqZg0002LqDxGbkLbXWZ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Colin Watson <cjwatson@debian.org>
Cc: Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org,
 g.branden.robinson@gmail.com, man-db-devel@nongnu.org
Message-ID: <b7ecc62d-3b46-c6be-d102-3ede7b81b4ed@gmail.com>
Subject: bash-completion doesn't support man subsections (was: Linux man-pages
 Makefile portability)
References: <d8646de0-e4f0-3d4b-e763-92355162a405@gmail.com>
 <Yq+P39bpy2QEeaSd@asta-kit.de>
 <8b9daa0e-6f08-dd55-5772-51f5052ed8bb@gmail.com>
 <YrB66rgFZqryrmpt@asta-kit.de>
 <6e294373-2661-286c-09c4-e67cd84103d7@gmail.com>
 <fdde7402-5e69-b6ff-60fc-74ad9c9054f1@gmail.com>
 <YtrXbDo5NVxNT/cb@asta-kit.de>
 <80553a14-8f39-d4ad-def3-35d6551a31f3@gmail.com>
 <Ytw65nGl1qouSU5R@asta-kit.de>
 <ff01b98c-563f-dfd3-4996-65ff5e5f44ce@gmail.com>
 <Yt5iPprqbVjiQRy6@riva.ucam.org>
In-Reply-To: <Yt5iPprqbVjiQRy6@riva.ucam.org>

--------------FZ0heqZg0002LqDxGbkLbXWZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQ29saW4sDQoNCk9uIDcvMjUvMjIgMTE6MjgsIENvbGluIFdhdHNvbiB3cm90ZToNCj4g
T24gU3VuLCBKdWwgMjQsIDIwMjIgYXQgMDE6MDk6MjNQTSArMDIwMCwgQWxlamFuZHJvIENv
bG9tYXIgKG1hbi1wYWdlcykgd3JvdGU6DQo+PiBbVE8gKz0gQ29saW47IENDICs9IG1hbi1k
di1kZXZlbEA7DQo+PiB0aGVyZSdzIGEgYnVnIGluIG1hbigxKSdzIGF1dG9jb21wbGV0ZV0N
Cj4gDQo+IG1hbi1kYiBkb2Vzbid0IHNoaXAgaXRzIG93biBhdXRvY29tcGxldGUgY29kZSBh
dCB0aGUgbW9tZW50Lg0KPiBUaGlzIGlzIHByb2JhYmx5IHNoaXBwZWQgYnkgc29tZSBvdGhl
ciBwYWNrYWdlIGluIHlvdXIgZGlzdHJpYnV0aW9uLA0KDQpIZWgsIEkgYmV0IGl0J3MgdGhl
IHNhbWUgYXMgeW91cnMsIGFzIHlvdSBzaG93IHVwIGFzIHRoZSBtYWludGFpbmVyIDspDQoN
CiQgYXB0LWNhY2hlIHNob3cgbWFuLWRiIHwgZ3JlcCBNYWludGFpbmVyDQpNYWludGFpbmVy
OiBDb2xpbiBXYXRzb24gPGNqd2F0c29uQGRlYmlhbi5vcmc+DQoNClllYWgsIEkgdXNlIERl
YmlhbiAoU2lkKS4NCg0KDQo+IGFsdGhvdWdoIEkgZG9uJ3Qga25vdyBleGFjdGx5IHdoYXQg
dGhhdCB3b3VsZCBiZSAobWF5YmUgYmFzaC1jb21wbGV0aW9uPykuDQpSZXBvcnRlZCB0byB1
cHN0cmVhbToNCjxodHRwczovL2dpdGh1Yi5jb20vc2NvcC9iYXNoLWNvbXBsZXRpb24vaXNz
dWVzLzc3OD4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXIN
CjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------FZ0heqZg0002LqDxGbkLbXWZ--

--------------clCj2IgdGjaEmaVH8zD0kRuw
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLekJQACgkQnowa+77/
2zKbCw//ehfhNsFbOFN2tIK4pS6ME3mtezUJQ2NZvT07zWkZZrxqh0enOJIYDyYv
09Bxq4HOBIP1aqcM5b4aL4Pk5trsi2DaTJh8GCmJHXn5AbLbRm/ofUsuADxv2YPN
kOkPOyxU3CEku8SnnOKS4gfJGnnfTN+KvlgOPRFOFA1RHLX87488EsUqVXiErkEm
6YOycrw8PKyLSSe31DB85mhKK8qLy4FDERWAZrmi5N2heSqRUGd/h8K4N7oK+h1i
bw1mE6kjxTLl6iMuVOGRUjdsojGYbpgNvVA+8rohliBWSqRxXtq/ETtM9URLs8Lr
90vu0XpmrGBjqNZHYHB2hE9e2TpRIi1thyGJgiP86dxvWFSx6pzPR5voi983Olms
UQ6m8Rhl0J/EWn5huFKe233LWso11K7iar1KGO1YukJSuZFP5mkby/gkh4VmmV/l
PzzJNkQuA48PMM6vrkCqhybU2ORraAmvM38QtmvFyCtIlZa8x4uUjTMr0Hp6u045
P5mjKadL5962dj74K+er+s/H27sHMnfT/4Nuwq9ZOCTSwlvFdwuYQptIT27kncan
j7OraJ6295Cv1viXV7COKdI67crA64yy6R98gQq6iRivPBniQDd7HvszaB+9lO37
IbUzKCFl5c2gPkRBxu2ZJQhc9/1R82cMI9tEWq9ea89gQvLUHRY=
=3Dx1
-----END PGP SIGNATURE-----

--------------clCj2IgdGjaEmaVH8zD0kRuw--
