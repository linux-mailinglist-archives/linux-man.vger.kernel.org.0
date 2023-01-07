Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F8D2660EE1
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 13:45:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230298AbjAGMpn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 07:45:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231785AbjAGMpm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 07:45:42 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 073766E0D6
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 04:45:40 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id k4so802742wrv.1
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 04:45:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rPSYBiGWVmk4UPR9+is9t7Y2h1Nktdxpljkv3u66H3A=;
        b=p7l0QiA9RdCD9DjGycKp3bfHvalLnfIPzKPIgufzxxoYUFok0QOq0G+aL0nVGYY3ys
         U/eap1fnW3e5+2UU4YdCbJda3cMAbOpNrHHk1AsZoL6X/jQgxbmohVxrSo4l70Ga8EP3
         kn8cOW0/Ny3Ih/6EtDeZjHEjc5d+3m58CrbUfLSrBxPcu9GBL617SB23NI2iWErVv/IS
         EW2oD8SeXluqzoQwaC6cOlbfzZR6eKqcE+Gob7TyTVpMHuJEKtQwZKp6vQB9ufBYOGkO
         rPIRksGfV098fUhgpp93nyIypqVMCsH6sWZS5tGH3bP/geWxpY7JDVkQDbDhkmknGw1j
         Hs3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rPSYBiGWVmk4UPR9+is9t7Y2h1Nktdxpljkv3u66H3A=;
        b=D4+bqiea3e/l5r2hkqRYQa2RGgf+QMXsjUKIwuErAu1OZ6hNoSdXIqsMdo6Eqa+hi1
         e6b0wZdyK0ReV8Pf4Owj/cMSQWm3Q/bGQdmGr0IEXMIVbg2wFHT5gl1S8h73bjH+t4Oq
         jLMULoRE79nuE6Ze2PAVRWj9Jt3JU9GmlimU/ypq35AbSTuu3L/ZuUOHoqDy9rIjGWGH
         w7BW2O+nC4+lKKP0DXYngSy5wXTyn9W9uoHGzqX8uBdiGj/r8mvHS4b32vzAgEBCCquM
         GydnJr6X8pCqlT1qGtFfsLCnO0I4J0cwrWQclCqHZZfA+uXgvMK9FV7Fu6kOGKW7taFO
         Wu7Q==
X-Gm-Message-State: AFqh2krxu0PFn+FVMNewuC0iDXXkP+G9J/r4/bo53Bh6ixs6wcQgO0lr
        /AOR41aPIv7qvh7eVPbrhVfw5V0eItM=
X-Google-Smtp-Source: AMrXdXsGEisoaneqmB4oS5ry2fY+LpIsDvwYbRouJ/jkEs5LLClrMG4fGwPybJTP2MASUN+6OmtBQg==
X-Received: by 2002:a5d:534e:0:b0:2bb:6d44:5d1 with SMTP id t14-20020a5d534e000000b002bb6d4405d1mr1085523wrv.28.1673095538544;
        Sat, 07 Jan 2023 04:45:38 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id u14-20020a5d6ace000000b002422bc69111sm4422457wrw.9.2023.01.07.04.45.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jan 2023 04:45:38 -0800 (PST)
Message-ID: <814d00de-7ed7-0a7f-3b96-714c35591019@gmail.com>
Date:   Sat, 7 Jan 2023 13:45:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 08/10] intro.3: wfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230107095518.3ix6hfbgig43tmkw@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230107095518.3ix6hfbgig43tmkw@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Rw3QXeFlKtTsPzhGLBVgG8UJ"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Rw3QXeFlKtTsPzhGLBVgG8UJ
Content-Type: multipart/mixed; boundary="------------NIgOwWc8qig4qyF35D5H59qW";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <814d00de-7ed7-0a7f-3b96-714c35591019@gmail.com>
Subject: Re: [PATCH v4 08/10] intro.3: wfix
References: <20230107095518.3ix6hfbgig43tmkw@illithid>
In-Reply-To: <20230107095518.3ix6hfbgig43tmkw@illithid>

--------------NIgOwWc8qig4qyF35D5H59qW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS83LzIzIDEwOjU1LCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiAqIFRpZ2h0ZW4gY3Jvc3MgcmVmZXJlbmNlLiAgSXQgd2FzdGVzIHdvcmRzIHRv
IHRlbGwgcGVvcGxlIHRvIGxvb2sNCj4gICAgZWxzZXdoZXJlICJmb3IgZnVydGhlciBpbmZv
cm1hdGlvbiIuICBXaHkgZWxzZSB3b3VsZCB0aGV5IGxvb2sgdGhlcmU/DQo+ICogVXNlIHBh
c3NpdmUgdm9pY2UgbGVzcy4NCj4gKiBSZWxvY2F0ZSBzZW50ZW5jZSBmb3IgbW9yZSBjb2hl
cmVudCBkaXNjdXNzaW9uLg0KPiAqIFNheSAiYXBwbGljYXRpb24gX3Byb2dyYW1taW5nXyBp
bnRlcmZhY2UiLg0KDQpJIG5vdGljZWQgdGhhdCB3aGVuIHlvdSBzZW50IGl0LCBidXQgdGhv
dWdodCB0aGF0IG1heWJlIGl0IHdhcyBqdXN0IGFub3RoZXIgd2F5IA0Kb2Ygc2F5aW5nIGl0
LiAgRHVja2R1Y2tnbyBzZWVtZWQgdG8gaGF2ZSBzZXZlcmFsIGluc3RhbmNlcyBvZiB0aGF0
IGFsdGVybmF0aXZlIA0KZXhwYW5zaW9uIG9mIEFQSSwgc28gSSBhY2NlcHRlZCBpdC4gIEkn
bSBjdXJpb3VzIGFib3V0ICJhcHBsaWNhdGlvbiBwcm9ncmFtIA0KaW50ZXJhY2UiLCBzaW5j
ZSBJIGhhZG4ndCBoZWFyZCBhYm91dCBpdCBiZWZvcmUgeW91ciBwYXRjaDsgaXMgaXQgYSBu
b3JtYWwgDQpleHBhbnNpb24gb2YgQVBJPw0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBHLiBC
cmFuZGVuIFJvYmluc29uIDxnLmJyYW5kZW4ucm9iaW5zb25AZ21haWwuY29tPg0KDQpQYXRj
aCBhcHBsaWVkLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiAtLS0NCj4gICBtYW4zL2ludHJv
LjMgfCAyMyArKysrKysrKysrKystLS0tLS0tLS0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAx
MiBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9t
YW4zL2ludHJvLjMgYi9tYW4zL2ludHJvLjMNCj4gaW5kZXggZDZkOTFmNmJkLi5iYmFlZjUy
NWUgMTAwNjQ0DQo+IC0tLSBhL21hbjMvaW50cm8uMw0KPiArKysgYi9tYW4zL2ludHJvLjMN
Cj4gQEAgLTQyLDkgKzQyLDggQEAgbXVzdCBiZSBkZWZpbmVkIGJlZm9yZSBpbmNsdWRpbmcN
Cj4gICAuSSBhbnkNCj4gICBoZWFkZXIgZmlsZXMuKQ0KPiAgIEluIHN1Y2ggY2FzZXMsDQo+
IC10aGUgcmVxdWlyZWQgbWFjcm8gaXMgZGVzY3JpYmVkIGluIHRoZSBtYW4gcGFnZS4NCj4g
LUZvciBmdXJ0aGVyIGluZm9ybWF0aW9uIG9uIGZlYXR1cmUgdGVzdCBtYWNyb3MsDQo+IC1z
ZWUNCj4gK3RoZSByZWxldmFudCBmdW5jdGlvbidzIG1hbiBwYWdlIGRlc2NyaWJlcyB0aGUg
cmVxdWlyZWQgbWFjcm8uDQo+ICtTZWUNCj4gICAuQlIgZmVhdHVyZV90ZXN0X21hY3JvcyAo
NykuDQo+ICAgLlwiDQo+ICAgLlwiIFRoZXJlDQo+IEBAIC03Nyw5ICs3NiwxNiBAQCBzZWUN
Cj4gICAuXCIgVmFyaW91cyBzcGVjaWFsIGxpYnJhcmllcy4gIFRoZSBtYW51YWwgcGFnZXMg
ZG9jdW1lbnRpbmcgdGhlaXIgZnVuY3Rpb25zDQo+ICAgLlwiIHNwZWNpZnkgdGhlIGxpYnJh
cnkgbmFtZXMuDQo+ICAgLlNTIFN1YnNlY3Rpb25zDQo+IC1TZWN0aW9uIDMgb2YgdGhpcyBt
YW51YWwgaXMgb3JnYW5pemVkIGludG8gc3Vic2VjdGlvbnMNCj4gK1RoZSBMaW51eA0KPiAr
LkkgbWFuLXBhZ2VzDQo+ICtvcmdhbml6ZSBzZWN0aW9uIDMgaW50byBzdWJzZWN0aW9ucw0K
PiAgIHRoYXQgcmVmbGVjdCB0aGUgY29tcGxleCBzdHJ1Y3R1cmUgb2YgdGhlIHN0YW5kYXJk
IEMgbGlicmFyeQ0KPiAtYW5kIGl0cyBtYW55IGltcGxlbWVudGF0aW9uczoNCj4gK2FuZCBp
dHMgbWFueSBpbXBsZW1lbnRhdGlvbnMuDQo+ICsuSVIgbGliYyAncw0KPiArZGlmZmljdWx0
IGhpc3RvcnkgZnJlcXVlbnRseSBtYWtlcyBpdCBhIHBvb3IgZXhhbXBsZSB0byBmb2xsb3cN
Cj4gK2luIGRlc2lnbiwNCj4gK2ltcGxlbWVudGF0aW9uLA0KPiArYW5kIHByZXNlbnRhdGlv
bi4NCj4gICAuSVAgXChidSAzDQo+ICAgM2NvbnN0DQo+ICAgLklQIFwoYnUNCj4gQEAgLTg3
LDExICs5Myw2IEBAIGFuZCBpdHMgbWFueSBpbXBsZW1lbnRhdGlvbnM6DQo+ICAgLklQIFwo
YnUNCj4gICAzdHlwZQ0KPiAgIC5QUA0KPiAtVGhpcyBkaWZmaWN1bHQgaGlzdG9yeSBmcmVx
dWVudGx5IG1ha2VzIGl0IGEgcG9vciBleGFtcGxlIHRvIGZvbGxvdw0KPiAtaW4gZGVzaWdu
LA0KPiAtaW1wbGVtZW50YXRpb24sDQo+IC1hbmQgcHJlc2VudGF0aW9uLg0KPiAtLlBQDQo+
ICAgSWRlYWxseSwNCj4gICBhIGxpYnJhcnkgZm9yIHRoZSBDIGxhbmd1YWdlDQo+ICAgaXMg
ZGVzaWduZWQgc3VjaCB0aGF0IGVhY2ggaGVhZGVyIGZpbGUNCj4gQEAgLTEwMSw3ICsxMDIs
NyBAQCBhbmQgZXhwb3NlcyBvbmx5IGRhdGEgdHlwZXMgYW5kIGNvbnN0YW50cyB0aGF0DQo+
ICAgYXJlIHJlcXVpcmVkIGZvciB1c2Ugb2YgdGhvc2UgZnVuY3Rpb25zLg0KPiAgIFRvZ2V0
aGVyLA0KPiAgIHRoZXNlIGFyZSB0ZXJtZWQgYW4gQVBJIG9yDQo+IC0uSVIgImFwcGxpY2F0
aW9uIHByb2dyYW0gaW50ZXJmYWNlIiAuDQo+ICsuSVIgImFwcGxpY2F0aW9uIHByb2dyYW1t
aW5nIGludGVyZmFjZSIgLg0KPiAgIFR5cGVzIGFuZCBjb25zdGFudHMgdG8gYmUgc2hhcmVk
IGFtb25nIG11bHRpcGxlIEFQSXMNCj4gICBzaG91bGQgYmUgcGxhY2VkIGluIGhlYWRlciBm
aWxlcyB0aGF0IGRlY2xhcmUgbm8gZnVuY3Rpb25zLg0KPiAgIFRoaXMgb3JnYW5pemF0aW9u
IHBlcm1pdHMgYSBDIGxpYnJhcnkgbW9kdWxlDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFu
ZHJvLWNvbG9tYXIuZXMvPg0K

--------------NIgOwWc8qig4qyF35D5H59qW--

--------------Rw3QXeFlKtTsPzhGLBVgG8UJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO5aWoACgkQnowa+77/
2zKHHw/+JvyU7a+dm9mbrlYN4SzsnG2QhULX9AipYX6iujz09nxFhquS9MU7jTZT
jRPEJ37iuK+aWsb3CRNBUAqbhtxNolkLGpyBlClKNd4iMR5ODhw7jium0dXsLOfJ
NWOdL1Bzg5OJx2p/rms+JK+2TOfNmzYRzZf4MEk5gKYBDORuaB/I2cZ92Y6cPqrw
iFxJ+MJh9ak8Vcy3BIvJJP8TdZogwBZVzYdgeUZZsjD0JFTBzewqNd9h2s2vTvNC
GXc9zeaGrNYg1TE91tju2HavQ1Xb2uPCZgD809T2Qp5tJ7IZ8xUXvEFSDax8Qdyo
43tfaYKceElBdiVB60eH9VpMpS4cr1+UN6A6WN9ZgIu+sDy4Ondk/0XSOO8YLqUC
UY8a+NLXPbjNEOdPxxSaMTV52TkhTOh7adNeSqL6DDKCQYQjCJb2ovU+0v47STLS
yV+xqJ8j1/wVefFh3IySC5WL/Zzk39E+Jl2hAtm3Hpqww2k9WezMvJO9RkQY+ylh
GrBdDwWGyvEVu5g2pq477/z674jv6KAlaajmrTYmLjGMzdxuvfPOyGM0RkPkbhFh
viiMtwiibHCsaxkLqglmkWMYiEjLHe0lOkY7PxA5dyps3u5Xk/Y7NekyEwC3ugr5
qUoeZDFzOXTEeZSdW6UQNmMafVThEMBN6N9uNCCQ9+810EQjpNs=
=t4vJ
-----END PGP SIGNATURE-----

--------------Rw3QXeFlKtTsPzhGLBVgG8UJ--
