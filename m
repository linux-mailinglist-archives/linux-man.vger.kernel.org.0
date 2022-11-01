Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A17D614A5D
	for <lists+linux-man@lfdr.de>; Tue,  1 Nov 2022 13:12:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230273AbiKAMMi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Nov 2022 08:12:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230178AbiKAMMh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Nov 2022 08:12:37 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C603C29
        for <linux-man@vger.kernel.org>; Tue,  1 Nov 2022 05:12:34 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id v1so19822279wrt.11
        for <linux-man@vger.kernel.org>; Tue, 01 Nov 2022 05:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C2J+0HUEzKOykB8syZs90FRkCum/7axCt4j7tuFv1S4=;
        b=MKMHja3E6M73JUc+sMLmwrf2ih/SBXgMFdYqL5pFLs7renPWFcfkiCMu9EuGtnQKzQ
         j+h2/raUAsf4s5RfBkokiFz0TjIONMVS4WQ+QWrQa9RVZ7o1Qzk7AlWXMfyUVKj2FK2i
         eyQGRtCh/o2aFgUXreVH9BygRE2eFgznSqnq3DyJ1b0mUjdNYnQZ8uCcrzQ0pguvTwnp
         4NEEF4OWulHx2LfSzZKXg3wdivQ4K9H3VbvvOBUuuyVdB4edq/e5Irp5MsKi4LbfGGlL
         mpiaf9P+07adDLpQJRXtFk93DGjgrYf48x3b/7P8o2cfWmXpfmJ1jBdnL0ZRTOOWYCUd
         figg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=C2J+0HUEzKOykB8syZs90FRkCum/7axCt4j7tuFv1S4=;
        b=qaebEUEnQKJWZxU5IEaf3zTMQXhNExdc0StN3XXbk5XdGaKfGzwZZfm0fZPQ9KRUga
         K3oJW8lSQFn3BsW8IMQk8iIe1WccY57wrXDUqGjD4Z8NgK8OfE9iQXduhv6pQJ0dxyVq
         14nGrzrXgv4hk/lZ3ljqywPskVl5g0+TWOl953TlnPr5d+Kyu+7zfylVYOaGaR/jcToW
         zLNeGj6Nm2A2aFqxn5ubPSnwi8sm0rbIRrmsTOCTkSwqei7CfXnc8cgs9rig9rRwwEaT
         p4wLKcefVtgqEoq9Mjt5Aiu+en+709lYHdxD8gIF7W+5LWsLXzk3ukXQA/N3URTf/6vK
         uwRg==
X-Gm-Message-State: ACrzQf0C6XKTIoIkv5qZ4GZGU07up6IK5BG/80BiNJFwRTQSXw0YJgwn
        K51UMpDDgEwtqfV1399CoAdfzb0Hba4=
X-Google-Smtp-Source: AMsMyM7bDqlXKB42yQUv8S7GtqXkMKpVLYjLF3rK0A/siQaNAHhoWCj05cWV8zTXl14avAFp1N6cqQ==
X-Received: by 2002:a5d:4e88:0:b0:236:590:f5a9 with SMTP id e8-20020a5d4e88000000b002360590f5a9mr10609796wru.126.1667304752614;
        Tue, 01 Nov 2022 05:12:32 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j7-20020a056000124700b00236883f2f5csm9720948wrx.94.2022.11.01.05.12.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Nov 2022 05:12:32 -0700 (PDT)
Message-ID: <4fcae221-f442-4e82-95af-03d233f0718c@gmail.com>
Date:   Tue, 1 Nov 2022 13:12:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH man-pages v3 4/4] madvise.2: add documentation for
 MADV_COLLAPSE
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Zach OKeefe <zokeefe@google.com>, Yang Shi <shy828301@gmail.com>,
        linux-mm@kvack.org, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-5-zokeefe@google.com>
 <bb3b5c3c-3966-ea1a-6d84-4f7f3afa37ca@gmail.com>
 <20221101015110.jjavjoltbwc3ohep@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221101015110.jjavjoltbwc3ohep@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5i7Be0JiWfBdQSXzpBvNUbau"
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
--------------5i7Be0JiWfBdQSXzpBvNUbau
Content-Type: multipart/mixed; boundary="------------YLgH6KYYDKNSqyItkxkpJ8r0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Zach OKeefe <zokeefe@google.com>, Yang Shi <shy828301@gmail.com>,
 linux-mm@kvack.org, linux-man@vger.kernel.org,
 Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <4fcae221-f442-4e82-95af-03d233f0718c@gmail.com>
Subject: Re: [PATCH man-pages v3 4/4] madvise.2: add documentation for
 MADV_COLLAPSE
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-5-zokeefe@google.com>
 <bb3b5c3c-3966-ea1a-6d84-4f7f3afa37ca@gmail.com>
 <20221101015110.jjavjoltbwc3ohep@illithid>
In-Reply-To: <20221101015110.jjavjoltbwc3ohep@illithid>

--------------YLgH6KYYDKNSqyItkxkpJ8r0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGV5IEJyYW5kZW4hDQoNCk9uIDExLzEvMjIgMDI6NTEsIEcuIEJyYW5kZW4gUm9iaW5zb24g
d3JvdGU6DQo+IEF0IDIwMjItMTAtMzFUMjI6MTU6MDkrMDEwMCwgQWxlamFuZHJvIENvbG9t
YXIgd3JvdGU6DQo+PiBUaGUgaXNzdWUgd2FzIGluIGxpbmUgNDc0LCBhbmQgdGhlIGlzc3Vl
IGlzIHRoYXQgaXQgdXNlcyBhIHdlaXJkIHNpbmdsZQ0KPj4gcXVvdGUuIFBsZWFzZSB1c2Ug
dGhlIGZvaWxsb3dpbmcgQVNDSUkgY2hhcmFjdGVyIGZvciB0aGUgc2luZ2xlIHF1b3RlIChz
ZWUNCj4+IGFzY2lpKDcpKToNCj4+IDA0NyAgIDM5ICAgIDI3ICAgICcNCj4gWy4uLl0NCj4+
IEknbGwgcmVwb3J0IGEgYnVnIHRvIGdyb2ZmKDEpIGFib3V0IHRoZSBpc3N1ZSB3aXRoIHRo
ZSBsaW5lIGNvdW50Lg0KPiANCj4gVGhhbmtzLCBBbGV4LiAgVGhlcmUgYXBwZWFyIHRvIGJl
IHNvbWUgdmVyeSBvbGQgYnVncyBhcm91bmQgaW5wdXQgbGluZQ0KPiBudW1iZXIgdHJhY2tp
bmcgaW4gR05VIGVxbiwgcG9zc2libHkgZ29pbmcgYmFjayAzMCsgeWVhcnMuDQoNCkhlaCEg
IEl0IGZlZWxzIGdvb2QgZmluZGluZyAzMC15ci1vbGQgYnVncyA6KQ0KDQo+IA0KPiBJJ3Zl
IGNvbW1pdHRlZCBhIHJlZ3Jlc3Npb24gdGVzdFsxXSBhbmQgZml4LlsyXSAgVGhlIGZpeCBj
YW4gYmUgZXhwZWN0ZWQNCj4gKGFsb25nIHdpdGggbGl0ZXJhbGx5IGh1bmRyZWRzIG9mIG90
aGVycykgaW4gZ3JvZmYgMS4yMy4NCg0KWWVhaCwgSSdtIHdhaXRpbmdbMV0gZm9yIHRoYXQg
cmVsZWFzZSB0byBoYXZlICdtYWtlIGxpbnQnIGJlIHVzYWJsZSBieSANCmNvbnRyaWJ1dG9y
cy4gIEJ1dCBpdCdzIGJlZW4gYWxyZWFkeSBwcm92ZWQgaW4gdGhpcyBwYXRjaCBzZXQgdGhh
dCBpdCBjYW4gYmUgDQp1c2VmdWwgdG8gY2F0Y2ggdGhpbmdzIHRoYXQgSSBtaXNzLCBldmVu
IGlmIEkgaGF2ZSB0byBydW4gaXQuDQoNClsxXTogPGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9kb2NzL21hbi1wYWdlcy9tYW4tcGFnZXMuZ2l0L3RyZWUvSU5TVEFMTCNuOTg+
DQoNCj4gDQo+IEFuZCBub3cgSSBzZWUgSSBtYW5hZ2VkIHRvIHNuZWFrIGEgY29zbWV0aWMg
aW5kZW50YXRpb24gZXJyb3IgaW50byB0aGUNCj4gY29tbWl0IG1lc3NhZ2UgZm9yIHRoZSBz
ZWNvbmQgKGJ1dCBub3QgdGhlIENoYW5nZUxvZyksIHdoZXJlIEknbSBzdHVjaw0KPiB3aXRo
IGl0IGZvcmV2ZXIuICBPaCB3ZWxsLg0KDQo6KQ0KDQpDaGVlcnMsDQpBbGV4DQoNCj4gDQo+
IFJlZ2FyZHMsDQo+IEJyYW5kZW4NCj4gDQo+IFsxXSBodHRwczovL2dpdC5zYXZhbm5haC5n
bnUub3JnL2NnaXQvZ3JvZmYuZ2l0L2NvbW1pdC8/aWQ9N2UyM2UxMzQyMDc3YTZkN2MwYjAy
YzNkNjY2ZjEzMWQ5NWYyYjUxMA0KPiBbMl0gaHR0cHM6Ly9naXQuc2F2YW5uYWguZ251Lm9y
Zy9jZ2l0L2dyb2ZmLmdpdC9jb21taXQvP2lkPWRjOThhOGIwOWU3ZjNkY2ZlOTY4Yjk3OGVi
MjEwZjQ2OGRiNzhjYzkNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5l
cy8+DQo=

--------------YLgH6KYYDKNSqyItkxkpJ8r0--

--------------5i7Be0JiWfBdQSXzpBvNUbau
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNhDS4ACgkQnowa+77/
2zIETRAAhTBb0x8wEhfZA6japztooWTzoIWwHOulcJjy91z+rPuEPn+hmPb8Z2lo
FTa7V62EPYrSOKo5beTNPnXisXoaiCScjdDaYMD5WI5L2elqeAZ7wT+PRc/3FIzt
dmLlo1wjyMATbj0ycX9qT0s2gL7mP0NSKEw3+pAdAdX3G79snJTyeHgE/uk4w6b0
ezXqiEMPGeWQfwfBl+E6odPjKCW56Xj81zF7qoIgGXxhoyTdKwkBF+dnYhRDtBto
kVbBFbSrf4yH+lzeCDT85pgdMqALzCuhaWKlRKX42jso9VqFLj7wbwE0sT2EpFNk
785bEaZNasMJAYF9G2cXTQyk2gh+b+hB5dTTmnCCjQdlYfF7ILCa5H1h/wVPpsHE
xP6tPym03k3Kdc2BmOadTaO3ycfP3kxYtgwSXEDZ0r/fuQJ4UDHN96flGJyWgI9c
HHGWzB8GTICUpUiSBsmLt3O/DWv44Zr0b/IktpL5bkPEJYzHrAO8nasysYqYgz3A
T4jCwI8hB8RTdT+/8rRgLUvBDkiquyQF7yneR0ysE+j0S9TKK60VOzM7BBjnIony
Z8I49iNvApl+cAoDHRVSMKIsHPizGG6CO3A6oouR6sFxp90XeEbOVACqSvcdiZgV
zSWWBpCPyPg9alDX53AN1KoOWZqiYP/FeIxXgiWkeCjTGhOEuRA=
=85vv
-----END PGP SIGNATURE-----

--------------5i7Be0JiWfBdQSXzpBvNUbau--
