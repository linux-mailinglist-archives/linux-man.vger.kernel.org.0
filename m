Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 104F26488B9
	for <lists+linux-man@lfdr.de>; Fri,  9 Dec 2022 19:59:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229850AbiLIS7d (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Dec 2022 13:59:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230085AbiLIS7b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Dec 2022 13:59:31 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19872AE4C5
        for <linux-man@vger.kernel.org>; Fri,  9 Dec 2022 10:59:29 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id n7so503841wms.3
        for <linux-man@vger.kernel.org>; Fri, 09 Dec 2022 10:59:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2IjUQslDbljqKvX7boUdD/XSa0mDvvL1GZ8PvZzN8+c=;
        b=l11qeloTdGMcS6bKiHkgLZjggwxb4r6zWsrN0mBegtuCItu+Zfx84Rzx0dSa2eIRsd
         ub6I9rmig2mM68XajKprlCDXky0gLIlKas2e3OoWYEv5rAg/TKLmMOKp3LWh0hXfqIbQ
         U1LsPGWlljYBnWCjnt4Aek2JrelircWwcN23vJ1nU2+H0Ds8o4Q/I2OpQzHM/XzHcaau
         o/PHwevNsr1GC30XoaTtWo6QSW5t21l6nSc/p4iD2TqnVPy7xZ28qZgoJJwpRSGnXbAX
         ROaspvrWwM4qn0oQFhdeg9QxsQFVelhCs+YFQI+sjf4Pr8bL2uBSjZOh2EB6eU33zo4o
         un3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2IjUQslDbljqKvX7boUdD/XSa0mDvvL1GZ8PvZzN8+c=;
        b=csmuwBRYiMF223wcTUZO/+MVy4zLVGkchrqX9ixZE9jEAVpngT4NJwU2kXx9ryv7+Y
         vcVXRGW9zMInkCXJtyfwMqoniW/10GsmBtGodtE6S5RX8yXZjqIRV7eQzkaPqDoGci0H
         LrJKVC29J6Z8Z9DEBRAK0wKmQQL7mSMoaVhRDMtbEkTKs/5uyjGmhLG1Pfnk2OSEsnv8
         06CeVkBApPXs/FShxnwbjKCT8HqmAe1LtMOzwfVlVuibAl7dhJ8bcvN3eYU/txGN/B9I
         /DgRgt1sGBQnKefN0nahXWRSSy8lDq5nQv7XqQ6+5zOEzyRZozLe0G+rgbN0TvGjPzDv
         io5Q==
X-Gm-Message-State: ANoB5plutw8k6t4t7B+TbJcSQZpjkxW6ZKwNpqz5RaLN2lKcg9EBLxNu
        Ov5ieIw+Oezfpqy+U6f+6bJA2XlLOvA=
X-Google-Smtp-Source: AA0mqf6d9lMkwdz2u1SjpWBRBUTF6XujPXuChEEK+wJlOJXvCKXzSKwWagtdwp2XydIWYf/rRV0GhQ==
X-Received: by 2002:a05:600c:4f51:b0:3c6:e60f:3f6b with SMTP id m17-20020a05600c4f5100b003c6e60f3f6bmr6123661wmq.34.1670612367527;
        Fri, 09 Dec 2022 10:59:27 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l10-20020a7bc44a000000b003c21ba7d7d6sm503714wmi.44.2022.12.09.10.59.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Dec 2022 10:59:27 -0800 (PST)
Message-ID: <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
Date:   Fri, 9 Dec 2022 19:59:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
Content-Language: en-US
To:     Ian Abbott <abbotti@mev.co.uk>, Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221208123454.13132-1-abbotti@mev.co.uk>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------weJmoCfeC1lbYUj800Sx3kTK"
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
--------------weJmoCfeC1lbYUj800Sx3kTK
Content-Type: multipart/mixed; boundary="------------9AHQG7m7jPTqfeeeNEfNnGjd";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, GNU C Library <libc-alpha@sourceware.org>
Message-ID: <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
References: <20221208123454.13132-1-abbotti@mev.co.uk>
In-Reply-To: <20221208123454.13132-1-abbotti@mev.co.uk>

--------------9AHQG7m7jPTqfeeeNEfNnGjd
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSWFuLA0KDQpPbiAxMi84LzIyIDEzOjM0LCBJYW4gQWJib3R0IHdyb3RlOg0KPiBUaGUg
YHNjYW5mKClgIGZ1bmN0aW9uIGRvZXMgbm90IGludGVudGlvbmFsbHkgc2V0IGBlcnJub2Ag
dG8gYEVSQU5HRWAuDQo+IFRoYXQgaXMganVzdCBhIHNpZGUgZWZmZWN0IG9mIHRoZSBjb2Rl
IHRoYXQgaXQgdXNlcyB0byBwZXJmb3JtDQo+IGNvbnZlcnNpb25zLiAgSXQgYWxzbyBkb2Vz
IG5vdCB3b3JrIGFzIHJlbGlhYmx5IGFzIGluZGljYXRlZCBpbiB0aGUNCj4gJ21hbicgcGFn
ZSB3aGVuIHRoZSB0YXJnZXQgaW50ZWdlciB0eXBlIGlzIG5hcnJvd2VyIHRoYW4gYGxvbmdg
Lg0KPiBUeXBpY2FsbHkgKGF0IGxlYXN0IGluIGdsaWJjKSBmb3IgdGFyZ2V0IGludGVnZXIg
dHlwZXMgbmFycm93ZXIgdGhhbg0KPiBgbG9uZ2AsIHRoZSBudW1iZXIgaGFzIHRvIGV4Y2Vl
ZCB0aGUgcmFuZ2Ugb2YgYGxvbmdgIChmb3Igc2lnbmVkDQo+IGNvbnZlcnNpb25zKSBvciBg
dW5zaWduZWQgbG9uZ2AgKGZvciB1bnNpZ25lZCBjb252ZXJzaW9ucykgZm9yIGBlcnJub2AN
Cj4gdG8gYmUgc2V0IHRvIGBFUkFOR0VgLg0KPiANCj4gRG9jdW1lbnRpbmcgYEVSQU5HRWAg
aW4gdGhlIEVSUk9SUyBzZWN0aW9uIGtpbmQgb2YgaW1wbGllcyB0aGF0DQo+IGBzY2FuZigp
YCBzaG91bGQgcmV0dXJuIGBFT0ZgIHdoZW4gYW4gaW50ZWdlciBvdmVyZmxvdyBpcyBlbmNv
dW50ZXJlZCwNCj4gd2hpY2ggaXQgZG9lc24ndCAoYW5kIGRvaW5nIHNvIHdvdWxkIHZpb2xh
dGUgdGhlIEMgc3RhbmRhcmQpLg0KPiANCj4gSnVzdCByZW1vdmUgYW55IG1lbnRpb24gb2Yg
dGhlIGBFUkFOR0VgIGVycm9yIHRvIGF2b2lkIGNvbmZ1c2lvbi4NCj4gDQo+IEZpeGVzOiA2
NDZhZjU0MGU0NjcgKCJBZGQgYW4gRVJST1JTIHNlY3Rpb24gZG9jdW1lbnRpbmcgYXQgbGVh
c3Qgc29tZSBvZiB0aGUgZXJyb3JzIHRoYXQgbWF5IG9jY3VyIGZvciBzY2FuZigpLiIpDQo+
IENjOiBNaWNoYWVsIEtlcnJpc2sgPG10ay5tYW5wYWdlc0BnbWFpbC5jb20+DQo+IFNpZ25l
ZC1vZmYtYnk6IElhbiBBYmJvdHQgPGFiYm90dGlAbWV2LmNvLnVrPg0KDQpJIHNlZS4gIEhv
dyBhYm91dCBzYXlpbmcgc29tZXRoaW5nIGxpa2UgIml0IG1heSBhbHNvIGZhaWwgZm9yIGFu
eSBvZiBhbnkgZXJyb3JzIA0KdGhhdCBmdW5jdGlvbnMgdXNlZCB0byBwZXJmb3JtIHRoZSBj
b252ZXJzaW9ucyBtYXkgZmFpbCI/DQoNCkNoZWVycywNCg0KQWxleA0KDQo+IC0tLQ0KPiAg
IG1hbjMvc2NhbmYuMyB8IDcgLS0tLS0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA3IGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjMvc2NhbmYuMyBiL21hbjMvc2NhbmYu
Mw0KPiBpbmRleCBiYTQ3MGE1YzEuLmM1ZmY1OWY0NSAxMDA2NDQNCj4gLS0tIGEvbWFuMy9z
Y2FuZi4zDQo+ICsrKyBiL21hbjMvc2NhbmYuMw0KPiBAQCAtNTc2LDEwICs1NzYsNiBAQCBp
cyBOVUxMLg0KPiAgIC5UUA0KPiAgIC5CIEVOT01FTQ0KPiAgIE91dCBvZiBtZW1vcnkuDQo+
IC0uVFANCj4gLS5CIEVSQU5HRQ0KPiAtVGhlIHJlc3VsdCBvZiBhbiBpbnRlZ2VyIGNvbnZl
cnNpb24gd291bGQgZXhjZWVkIHRoZSBzaXplDQo+IC10aGF0IGNhbiBiZSBzdG9yZWQgaW4g
dGhlIGNvcnJlc3BvbmRpbmcgaW50ZWdlciB0eXBlLg0KPiAgIC5TSCBBVFRSSUJVVEVTDQo+
ICAgRm9yIGFuIGV4cGxhbmF0aW9uIG9mIHRoZSB0ZXJtcyB1c2VkIGluIHRoaXMgc2VjdGlv
biwgc2VlDQo+ICAgLkJSIGF0dHJpYnV0ZXMgKDcpLg0KPiBAQCAtNjA5LDkgKzYwNSw2IEBA
IFRoZSBmdW5jdGlvbnMNCj4gICBhbmQNCj4gICAuQlIgc3NjYW5mICgpDQo+ICAgY29uZm9y
bSB0byBDODkgYW5kIEM5OSBhbmQgUE9TSVguMS0yMDAxLg0KPiAtVGhlc2Ugc3RhbmRhcmRz
IGRvIG5vdCBzcGVjaWZ5IHRoZQ0KPiAtLkIgRVJBTkdFDQo+IC1lcnJvci4NCj4gICAuUFAN
Cj4gICBUaGUNCj4gICAuQiBxDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9t
YXIuZXMvPg0K

--------------9AHQG7m7jPTqfeeeNEfNnGjd--

--------------weJmoCfeC1lbYUj800Sx3kTK
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOThY0ACgkQnowa+77/
2zJbgQ//RtBzhXzqcnPxi8XxhXcUqkiNaiv4N+OMQoGeL+cO6zrjGKdDcl5WWD7D
PxB7GLyC1KJnXy9AJIuCcoi4Nc9OpcwnzbwY8o6X+F/OjsRv/xNhOxbuz81gkTOE
KF4eBoEsyJEFSq/qDGXJFZzm32r1AUbB6fWAFBxQdUZXPqUVJI+pTAR3u6SqZDq7
H8LarITO1y+vtHexghft/BAyjhj9xRbWvsxNwUqdIq8n9ea4ETtJ1L/7IFvkuPJQ
D1MQ+GOSesK+EOsRJsliyMMNeb5ApBA0L8g9HICpsOO24uhQNrvJVCWcGDTeWLe0
PolSCpjWQDrPg/FFA9T+w6ZYTBFMq1XF2uIHCfLKAhNPq86YwUPET/dl6aQ2UYWI
LlxOoREcemNqaW9lcpK6YjtRVw7BG/QyahucfacPfh4mi30WXFXBZUPMPNHxnkfc
PtANnU5ruPeAfBE6ttJ2A1YJpMmO1Tgjr8mX+8aoFd4HyDASMCrhDRj9xhkKz3ZE
q1+6pGPt79LMDAIUwLmRBVug2Eo+3fRZojZjcq71jesbiXwBfAA0sitexaBUG1Tf
Pfb8E1ocaGHGjplaANa8LDydlrTeCdTTazf/Cgf/KF0kLdr1paJM8Z0zmnC5b29M
INnU7IL1/EzX4APVQA73AHRS1tQ3hOwWM7cJf71/mtcWhq3sRx4=
=Ldjx
-----END PGP SIGNATURE-----

--------------weJmoCfeC1lbYUj800Sx3kTK--
