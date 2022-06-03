Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCB7253CD29
	for <lists+linux-man@lfdr.de>; Fri,  3 Jun 2022 18:25:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231298AbiFCQZl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 3 Jun 2022 12:25:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238628AbiFCQZj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 3 Jun 2022 12:25:39 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87CB95159C
        for <linux-man@vger.kernel.org>; Fri,  3 Jun 2022 09:25:37 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id q7so11052283wrg.5
        for <linux-man@vger.kernel.org>; Fri, 03 Jun 2022 09:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=PFfXXeKzW0iEgL3Y/BHpW5lLYbDYF+9FfQRhvQzxoBc=;
        b=UzPvoZQEonhKC0tGBktFN6YvpQhfR21XwfsUQvd31mt+f1IbsqSVFPay2mciVeQO1l
         NPCMGYC9T2cWDiYZlnDBV4U/5Xvv4LxmqeUTg3kTYxNSxVYodQf7yatTKl6NyMfKghrq
         iEr1MbHi0LNAQ64CuS53/YytYTMib/YfmZmB4zuNM/mZ/4h3jaF53znjpcoIeSZzgehd
         9CgySVvVMUL5VD6TJugz3vtE5lv3wxrtsC54NKCY/J5rGgo+6Pi5UrLIwZgkbp48/wbh
         BS5lfieOHYQmm0FoL3j/tt1HjT2pQSQzM2/bK9pUAUiQ3nDzdLfRI55N2T0I74pHGe+E
         Bi9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=PFfXXeKzW0iEgL3Y/BHpW5lLYbDYF+9FfQRhvQzxoBc=;
        b=g6bQ0SrsSkqYnEKsOFHrktBEhx9m6CNlJMuC9n/XLJqZvMzxVmZpfmZNIzmqsDtPvB
         yFyCJ+s/3/QhXKSDzNS9V8I4b0F7qmLqdnVNUSWnsu1tp3q8iQ4soEnlK8k2grhf9GfT
         VoxjdiJQCvrNBEf0hLXJVVLxVvhdz9HOFw3uExkGIqeK93bNb8XIik9Ckyv0rxeomE6S
         P9ri+n/Iw4rq/0VIRfIYBcf0JC26kXEzCMZ4uxhpfmldLYWwGJL0AjaEzb6pPrbCZsQE
         cj8RyeAvIFZ7Qqv+Hba8YgChPzGtVkJ+E8TkxrrycXffgdWm5q2zaj7y3O+VfNjToZRO
         WiUw==
X-Gm-Message-State: AOAM533e4f3bdkXOaRt4EZ2m+kJ1R0gbFKD8/5fzWB1DILZRnM32Cvum
        ejjnBt8G2oXBlx6XlPMnT5s=
X-Google-Smtp-Source: ABdhPJy+cWT7mIs0AbpMAn0HwMeH978kXs3gUCJ3fDRZSDKx/NQyllGnV35zvQef9fMnjikBBAGMFQ==
X-Received: by 2002:adf:e24d:0:b0:211:9c1a:3f2 with SMTP id bl13-20020adfe24d000000b002119c1a03f2mr8820165wrb.431.1654273536067;
        Fri, 03 Jun 2022 09:25:36 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c7-20020a05600c0a4700b003973c54bd69sm14949744wmq.1.2022.06.03.09.25.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jun 2022 09:25:35 -0700 (PDT)
Message-ID: <a06413f0-c87d-f80e-cb3a-e27258fbcd59@gmail.com>
Date:   Fri, 3 Jun 2022 18:25:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH] mmap.2: wfix
Content-Language: en-US
To:     Jesse Rosenstock <jrosenstock@google.com>,
        linux-man@vger.kernel.org
References: <CAMZQ0rKYpg6+4WD45BdEdPy1QiKtk+KbJL6WRZo9tVQ2B2qGXA@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAMZQ0rKYpg6+4WD45BdEdPy1QiKtk+KbJL6WRZo9tVQ2B2qGXA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------CqaCxvF63HMoh0KKUL86Ty7C"
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------CqaCxvF63HMoh0KKUL86Ty7C
Content-Type: multipart/mixed; boundary="------------4U9Ey4b9Qciz297xnesH83O8";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jesse Rosenstock <jrosenstock@google.com>, linux-man@vger.kernel.org
Message-ID: <a06413f0-c87d-f80e-cb3a-e27258fbcd59@gmail.com>
Subject: Re: [PATCH] mmap.2: wfix
References: <CAMZQ0rKYpg6+4WD45BdEdPy1QiKtk+KbJL6WRZo9tVQ2B2qGXA@mail.gmail.com>
In-Reply-To: <CAMZQ0rKYpg6+4WD45BdEdPy1QiKtk+KbJL6WRZo9tVQ2B2qGXA@mail.gmail.com>

--------------4U9Ey4b9Qciz297xnesH83O8
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmVzc2UsDQoNCk9uIDYvMy8yMiAxNjo0NSwgSmVzc2UgUm9zZW5zdG9jayB3cm90ZToN
Cj4gQ2hhbmdlICJzdXBwb3J0ZWQgb25seSBzaW5jZSIgdG8gInN1cHBvcnQgd2FzIGFkZGVk
IGluIi4NCj4gDQo+IFByZXZpb3VzbHksIHRoaXMgc2FpZCwgIk1BUF9QT1BVTEFURSBpcyBz
dXBwb3J0ZWQgZm9yIHByaXZhdGUgbWFwcGluZ3Mgb25seQ0KPiBzaW5jZSBMaW51eCAyLjYu
MjMuIiAgVGhpcyBjb3VsZCBiZSBwYXJzZWQgYXMgIk1BUF9QT1BVTEFURSBpcyBzdXBwb3J0
ZWQNCj4gZm9yIHByaXZhdGUgbWFwcGluZ3Mgb25seSBbbm90IHNoYXJlZCBtYXBwaW5nc10g
c2luY2UgTGludXggMi42LjIzLiINCj4gU29tZW9uZSAoYSBuYXRpdmUgRW5nbGlzaCBzcGVh
a2VyKSB0cmllZCB0byB0ZWxsIG1lIHRoaXMuDQo+IA0KPiBDaGFuZ2UgdG8gIlN1cHBvcnQg
Zm9yIE1BUF9QT1BVTEFURSBpbiBjb25qdW5jdGlvbiB3aXRoIHByaXZhdGUgbWFwcGluZ3MN
Cj4gd2FzIGFkZGVkIGluIExpbnV4IDIuNi4yMy4iICBUaGlzIGlzIHVuYW1iaWd1b3VzLCBh
bmQgInN1cHBvcnQgd2FzDQo+IGFkZGVkIiBpcyBtb3JlIGNvbW1vbiBpbiBvdGhlciBtYW4g
cGFnZXMuDQo+IA0KPiBUaGVyZSBhcmUgbW9yZSBpbnN0YW5jZXMgb2YgInN1cHBvcnRlZCBv
bmx5IHNpbmNlIiwgYnV0IHRoZXkgc2VlbQ0KPiBjbGVhcmVyLiAgSSBjb3VsZCBzZW5kIGEg
c2VwYXJhdGUgcGF0Y2ggZm9yIHRoZW0gaWYgZGVzaXJlZC4NCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IEplc3NlIFJvc2Vuc3RvY2sgPGptckBnb29nbGUuY29tPg0KDQpUaGUgcGF0Y2ggbWFr
ZXMgc2Vuc2UgdG8gbWUuICBJZiB5b3UgY29uc2lkZXIgb3RoZXIgcGF0Y2hlcyB3b3VsZCBi
ZSANCmdvb2QgdG9vLCBzZW5kIHRoZW0gYW5kIEknbGwgaGF2ZSBhIGxvb2sgYXQgdGhlbS4N
Cg0KUGF0Y2ggYXBwbGllZC4NCg0KVGhhbmtzLA0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFu
Mi9tbWFwLjIgfCA3ICsrKystLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjIvbW1hcC4yIGIv
bWFuMi9tbWFwLjINCj4gaW5kZXggOTZiNzQ0NGIwLi5iOWNmZTgyYTYgMTAwNjQ0DQo+IC0t
LSBhL21hbjIvbW1hcC4yDQo+ICsrKyBiL21hbjIvbW1hcC4yDQo+IEBAIC0yMTUsMTEgKzIx
NSwxMSBAQCBUaGUNCj4gICBhcmd1bWVudCBzaG91bGQgYmUgemVyby4NCj4gICAuXCIgU2Vl
IHRoZSBwZ29mZiBvdmVyZmxvdyBjaGVjayBpbiBkb19tbWFwKCkuDQo+ICAgLlwiIFNlZSB0
aGUgb2Zmc2V0IGNoZWNrIGluIHN5c19tbWFwIGluIGFyY2gveDg2L2tlcm5lbC9zeXNfeDg2
XzY0LmMuDQo+IC1UaGUgdXNlIG9mDQo+ICtTdXBwb3J0IGZvcg0KPiAgIC5CIE1BUF9BTk9O
WU1PVVMNCj4gICBpbiBjb25qdW5jdGlvbiB3aXRoDQo+ICAgLkIgTUFQX1NIQVJFRA0KPiAt
aXMgc3VwcG9ydGVkIG9uIExpbnV4IG9ubHkgc2luY2Uga2VybmVsIDIuNC4NCj4gK3dhcyBh
ZGRlZCBpbiBMaW51eCAyLjQuDQo+ICAgLlRQDQo+ICAgLkIgTUFQX0RFTllXUklURQ0KPiAg
IFRoaXMgZmxhZyBpcyBpZ25vcmVkLg0KPiBAQCAtNDA1LDggKzQwNSw5IEBAIFRoZQ0KPiAg
IGNhbGwgZG9lc24ndCBmYWlsIGlmIHRoZSBtYXBwaW5nIGNhbm5vdCBiZSBwb3B1bGF0ZWQg
KGZvciBleGFtcGxlLCBkdWUNCj4gICB0byBsaW1pdGF0aW9ucyBvbiB0aGUgbnVtYmVyIG9m
IG1hcHBlZCBodWdlIHBhZ2VzIHdoZW4gdXNpbmcNCj4gICAuQlIgTUFQX0hVR0VUTEIgKS4N
Cj4gK1N1cHBvcnQgZm9yDQo+ICAgLkJSIE1BUF9QT1BVTEFURQ0KPiAtaXMgc3VwcG9ydGVk
IGZvciBwcml2YXRlIG1hcHBpbmdzIG9ubHkgc2luY2UgTGludXggMi42LjIzLg0KPiAraW4g
Y29uanVuY3Rpb24gd2l0aCBwcml2YXRlIG1hcHBpbmdzIHdhcyBhZGRlZCBpbiBMaW51eCAy
LjYuMjMuDQo+ICAgLlRQDQo+ICAgLkJSIE1BUF9TVEFDSyAiIChzaW5jZSBMaW51eCAyLjYu
MjcpIg0KPiAgIEFsbG9jYXRlIHRoZSBtYXBwaW5nIGF0IGFuIGFkZHJlc3Mgc3VpdGFibGUg
Zm9yIGEgcHJvY2Vzcw0KPiAtLQ0KPiAyLjM2LjEuMjU1LmdlNDY3NTFlOTZmLWdvb2cNCg0K
LS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIu
ZXMvPg0K

--------------4U9Ey4b9Qciz297xnesH83O8--

--------------CqaCxvF63HMoh0KKUL86Ty7C
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKaNfIACgkQnowa+77/
2zKeCA/8DgJA91Xz6W3BplgQF79uK7UIg2Ec6vmuBU9tvPIVD+dden09vwKwBCpI
YkPJ+Qfp9QyMBmcy1xOlu7yoSB4MNPm/S5VJmBldR4K1AIyUV5MDuI/TXL9wNrUN
s38MZnALlEhxs85x/kWnhIfiUys0EJXKbsKaOlPPm03JHfx44M21PW9+KSEMYuZM
hB6NbgnBQv/1fx57xvQBJLnCEsAEhv+fqF5TdJeRH0I4YhpbuMMvmKed3iS0uBKX
9RMwPwJNveWi3JPylz2UBO6xBvGu94q2BfxTBNKXLqT9bj2eAdulPXFO3/9OgjDv
Z56UwzBYk8s1/nDntF1ZqDDU/toWjfF0Pl9pvv6M0q7c86nu6O7rZyPIwWJxej09
ibOra1Gnzi2Gqk809ofEnl08YNdTENhc1dnzBk2x46TjB6RaEd2I74LfIjTtQn6/
Po9/eIS3/8GQZJ6F+Xr9ZhJ0SMbMtHYjg5T7okmPLWF+GEH78amXgOhZdFstTICC
+2GCkj6KbbXfSo4VOZvIi8N7K9VPvvFFvasqDmYjk3zu0M/pqaKy1oxhlrlwjHoO
D3X5bs+YnYc7WH5/GYlVRHiaD/8CeC2xro982MYa1neJQ9i8ra6XjRUg1fMUXNIu
1jg1zASHZiZoWrsBvmO9LCubfBOt/J8mOi12BcWH7w71b6pdTsc=
=DYek
-----END PGP SIGNATURE-----

--------------CqaCxvF63HMoh0KKUL86Ty7C--
