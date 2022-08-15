Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A965594D65
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 03:34:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233745AbiHPB11 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Aug 2022 21:27:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245039AbiHPB1F (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Aug 2022 21:27:05 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA1641CDE77
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 14:16:20 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id b4so7296881wrn.4
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 14:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=dohhJZne4vXvHDkkJe3Qa5WjpGzfZwVEhFqyzt7SD2k=;
        b=DEbrttpnk7F7QWmlq3Jn9OUeGwI4eH5JDTKXa39r7HTz3c6rbh+4DTYprFfUQqbSve
         9ApiZi657IHG62GDdI1S8qQUGYczleGGZQX/Nbv8CR+7UyCYJOspUGdJ/FzYiL7iBTEj
         VMunFchxGnLi9DCD1RlUDrxs1fB1i/ocYBwIMtlDhNLwzo6qi3d8OnGSY77paeIvqkd2
         kzTJ9QkMjbGjBIMDfdZpFdLrVcN5DnfV8+9ghlsZ8QLu6zWAhwGr+6m1HDB4i/bfeBzT
         oWaO3b52sSlXM5BmJR9H95RCBdeas9lk65Vy2WR7aGIOjKm9LhQdrAVaN6caiiyp8wYb
         IEKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=dohhJZne4vXvHDkkJe3Qa5WjpGzfZwVEhFqyzt7SD2k=;
        b=m5fJrMLANzalIs6GF4tGYR/EevIK9933pE+qeORko8Shy2PZCJuL9XyfPEzePb7YKC
         Jt67gpC8nfNqNSsQXzLuWtp1FExC7IULSXDYE3FP57kxbFjLYGHiAQXXqAWBl+jJNWUd
         7lmHQIQuHQ/mf3mJrOGtqkB7uK+d8b9i48KFz2+/iNhKN1BkK4rhtA6WkrxOKeaUH4iE
         5Z9k+Gb4Vaz552OZYpcU2+fDcpv2JBUEQc+OtFxPgLhqfY7Bq0tWg2v0nEJg9A2l3Gmh
         dykcCiXw8kJy1HiFV8F93v58xI8Y5JhU9CVO6uxhGEk9WCV8meHzPKpsIochUDUorOlM
         lMRA==
X-Gm-Message-State: ACgBeo07Jib8G0OOrYFDyV7HfRi66AMr8q8miw/OtFPWaq3IhUS/piMG
        BLzpFQQkfiQVrG/uVvzmHX9KGg+vflI=
X-Google-Smtp-Source: AA6agR55asFvhrHxe0NtR9Hml7fHTw2DKRhLR+RK7x7Z3evw0i866A1oov1trDjV8FdFH4z2Wi3n5Q==
X-Received: by 2002:a05:6000:812:b0:220:5a66:ebd0 with SMTP id bt18-20020a056000081200b002205a66ebd0mr9921147wrb.519.1660598179229;
        Mon, 15 Aug 2022 14:16:19 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q9-20020adff509000000b0021efc75914esm8271164wro.79.2022.08.15.14.16.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 14:16:18 -0700 (PDT)
Message-ID: <bd0b302d-94b8-4d86-f84b-84a09f2e0406@gmail.com>
Date:   Mon, 15 Aug 2022 23:16:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH] getline.3: wfix.
Content-Language: en-US
To:     enh <enh@google.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <CAJgzZopm7h_0_4j=grKiOu5tWr87ik4-nNvMRy1gxxH_b5b7dQ@mail.gmail.com>
 <3d4a4b63-99f2-1d9a-f496-aa4ee68775be@gmail.com>
 <CAJgzZoq1AUJO3wrk3a4OA3Kb2z5yW1otHnmsDWk2GHJbRDafoQ@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAJgzZoq1AUJO3wrk3a4OA3Kb2z5yW1otHnmsDWk2GHJbRDafoQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------RxPS30EaTrj8QN2qkbNR8zCV"
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
--------------RxPS30EaTrj8QN2qkbNR8zCV
Content-Type: multipart/mixed; boundary="------------3KUBr7H32gSBjSen9f08RbW7";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <bd0b302d-94b8-4d86-f84b-84a09f2e0406@gmail.com>
Subject: Re: [PATCH] getline.3: wfix.
References: <CAJgzZopm7h_0_4j=grKiOu5tWr87ik4-nNvMRy1gxxH_b5b7dQ@mail.gmail.com>
 <3d4a4b63-99f2-1d9a-f496-aa4ee68775be@gmail.com>
 <CAJgzZoq1AUJO3wrk3a4OA3Kb2z5yW1otHnmsDWk2GHJbRDafoQ@mail.gmail.com>
In-Reply-To: <CAJgzZoq1AUJO3wrk3a4OA3Kb2z5yW1otHnmsDWk2GHJbRDafoQ@mail.gmail.com>

--------------3KUBr7H32gSBjSen9f08RbW7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRWxsaW90dCwNCg0KT24gOC8yLzIyIDIzOjE3LCBlbmggd3JvdGU6DQo+IGFjay4gaSd2
ZSBmaXhlZCBhbGwgdGhlIG90aGVyIGluc3RhbmNlcyBvZiBgLkkgImZvbyJgIGluIHRoYXQg
ZmlsZSB0b28uLi4NCj4gDQo+IERhdGU6IEZyaSwgMjkgSnVsIDIwMjIgMTM6MTM6MTAgLTA3
MDANCj4gU3ViamVjdDogW1BBVENIXSBnZXRsaW5lLjM6IHdmaXguDQo+IA0KPiBDbGFyaWZ5
IGluIHRoZSBSRVRVUk4gVkFMVUUgc2VjdGlvbiB0aGF0IGl0J3MgbmVjZXNzYXJ5IHRvIGZy
ZWUgdGhlDQo+IGJ1ZmZlciwgc2luY2UgYXQgbGVhc3Qgb25lIHBlcnNvbiBtaXNzZWQgdGhp
cyB1cCBhdCB0aGUgc3RhcnQgb2YgdGhlDQo+IERFU0NSSVBUSU9OLg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogRWxsaW90dCBIdWdoZXMgPGVuaEBnb29nbGUuY29tPg0KDQpJIGJyb2tlIHlv
dXIgcGF0Y2ggaW50byB0d28gc2VwYXJhdGUgcGF0Y2hlcywgYW5kIGFwcGxpZWQgdGhlbSBi
b3RoLg0KDQpUaGFua3MsDQoNCkFsZXgNCg0KPiAtLS0NCj4gICBtYW4zL2dldGxpbmUuMyB8
IDIxICsrKysrKysrKysrKystLS0tLS0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNl
cnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjMvZ2V0
bGluZS4zIGIvbWFuMy9nZXRsaW5lLjMNCj4gaW5kZXggOGI3MzU3ODI1Li5jYjllNWIwNDkg
MTAwNjQ0DQo+IC0tLSBhL21hbjMvZ2V0bGluZS4zDQo+ICsrKyBiL21hbjMvZ2V0bGluZS4z
DQo+IEBAIC0zNiwxMiArMzYsMTIgQEAgRmVhdHVyZSBUZXN0IE1hY3JvIFJlcXVpcmVtZW50
cyBmb3IgZ2xpYmMgKHNlZQ0KPiAgIC5CUiBnZXRsaW5lICgpDQo+ICAgcmVhZHMgYW4gZW50
aXJlIGxpbmUgZnJvbSBcZklzdHJlYW1cZlAsDQo+ICAgc3RvcmluZyB0aGUgYWRkcmVzcyBv
ZiB0aGUgYnVmZmVyIGNvbnRhaW5pbmcgdGhlIHRleHQgaW50bw0KPiAtLklSICIqbGluZXB0
ciIgLg0KPiArLklSICpsaW5lcHRyIC4NCj4gICBUaGUgYnVmZmVyIGlzIG51bGwtdGVybWlu
YXRlZCBhbmQgaW5jbHVkZXMgdGhlIG5ld2xpbmUgY2hhcmFjdGVyLCBpZg0KPiAgIG9uZSB3
YXMgZm91bmQuDQo+ICAgLlBQDQo+ICAgSWYNCj4gLS5JICIqbGluZXB0ciINCj4gKy5JICps
aW5lcHRyDQo+ICAgaXMgc2V0IHRvIE5VTEwgYmVmb3JlIHRoZSBjYWxsLCB0aGVuDQo+ICAg
LkJSIGdldGxpbmUgKCkNCj4gICB3aWxsIGFsbG9jYXRlIGEgYnVmZmVyIGZvciBzdG9yaW5n
IHRoZSBsaW5lLg0KPiBAQCAtNTIsMjYgKzUyLDI2IEBAIGZhaWxlZC4NCj4gICAuUFANCj4g
ICBBbHRlcm5hdGl2ZWx5LCBiZWZvcmUgY2FsbGluZw0KPiAgIC5CUiBnZXRsaW5lICgpLA0K
PiAtLkkgIipsaW5lcHRyIg0KPiArLkkgKmxpbmVwdHINCj4gICBjYW4gY29udGFpbiBhIHBv
aW50ZXIgdG8gYQ0KPiAgIC5CUiBtYWxsb2MgKDMpXC1hbGxvY2F0ZWQNCj4gICBidWZmZXIN
Cj4gLS5JICIqbiINCj4gKy5JICpuDQo+ICAgYnl0ZXMgaW4gc2l6ZS4NCj4gICBJZiB0aGUg
YnVmZmVyIGlzIG5vdCBsYXJnZSBlbm91Z2ggdG8gaG9sZCB0aGUgbGluZSwNCj4gICAuQlIg
Z2V0bGluZSAoKQ0KPiAgIHJlc2l6ZXMgaXQgd2l0aA0KPiAgIC5CUiByZWFsbG9jICgzKSwN
Cj4gICB1cGRhdGluZw0KPiAtLkkgIipsaW5lcHRyIg0KPiArLkkgKmxpbmVwdHINCj4gICBh
bmQNCj4gLS5JICIqbiINCj4gKy5JICpuDQo+ICAgYXMgbmVjZXNzYXJ5Lg0KPiAgIC5QUA0K
PiAgIEluIGVpdGhlciBjYXNlLCBvbiBhIHN1Y2Nlc3NmdWwgY2FsbCwNCj4gLS5JICIqbGlu
ZXB0ciINCj4gKy5JICpsaW5lcHRyDQo+ICAgYW5kDQo+IC0uSSAiKm4iDQo+ICsuSSAqbg0K
PiAgIHdpbGwgYmUgdXBkYXRlZCB0byByZWZsZWN0IHRoZSBidWZmZXIgYWRkcmVzcyBhbmQg
YWxsb2NhdGVkIHNpemUgcmVzcGVjdGl2ZWx5Lg0KPiAgIC5QUA0KPiAgIC5CUiBnZXRkZWxp
bSAoKQ0KPiBAQCAtOTksNiArOTksMTEgQEAgY29uZGl0aW9uKS4NCj4gICBJbiB0aGUgZXZl
bnQgb2YgYSBmYWlsdXJlLA0KPiAgIC5JIGVycm5vDQo+ICAgaXMgc2V0IHRvIGluZGljYXRl
IHRoZSBlcnJvci4NCj4gKy5QUA0KPiArSWYNCj4gKy5JICpsaW5lcHRyDQo+ICt3YXMgc2V0
IHRvIE5VTEwgYmVmb3JlIHRoZSBjYWxsLCB0aGVuIHRoZSBidWZmZXIgc2hvdWxkIGJlIGZy
ZWVkIGJ5IHRoZQ0KPiArdXNlciBwcm9ncmFtIGV2ZW4gb24gZmFpbHVyZS4NCj4gICAuU0gg
RVJST1JTDQo+ICAgLlRQDQo+ICAgLkIgRUlOVkFMDQoNCi0tIA0KQWxlamFuZHJvIENvbG9t
YXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------3KUBr7H32gSBjSen9f08RbW7--

--------------RxPS30EaTrj8QN2qkbNR8zCV
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmL6t5oACgkQnowa+77/
2zIoYw//S4GRMhAIKcDPyQyK/AlfI2ZLFkczLVb7nd3DjIHpJGz7pOVHaDaVFbWE
yCT83Tmi02m9AKrkT+1pSg43RLAPC1yuCOhN8oCku61T6j/+HHFqPGLIVfagpoR2
qb/aNg76Ratb5hoScdyka8i2S8+5Vx1/3dz1uz21DCy9y4gJ4q+vJr8hr5cFt445
EKbaNEJQldN2erBiFXGQhURrH2bedloHsm9Az6FJ5QVZ/L6Hf8LXZu4MJHsh4VZy
4RZOQcCK+CIt0ggD7/gAi6xZQmcifkBk3CAkQk78Pq133WMAp6up85RplRTXSz37
rPQn2nQG2hPp5HsRqZc3Edf7nLy9F+wi3MxswOZzN6A0dYk10ePiUQiQCiOPoY1Y
MGthpEQqZbv56Zp4xAQ7Pzu+upMWBqKYZ1e6Xp1utYqTrM2xooAl37J/z9g3c48D
RICQNCkl/qhC2sVWCX0o480OuDWTGX65j4y3OFHgARqga6NiiQqd3NPWTpFBAO83
+djgRk7kQpsyYn5TuKy55qvx0h6H3K+fbXTS4iY9NHLPnNxTlhuj49JhJs2f/DWg
+0MnbOJDCNiFXVdVDTY/e/fTs/4QRd+s+QgpfSV6MWPdVMAUBbQyWttFZr1f1pgu
SYTm0VPviiTSlkFN1+K8x1IT2j+nGoBFOlQ04KMzuY8MG7eIZ+8=
=Wqyu
-----END PGP SIGNATURE-----

--------------RxPS30EaTrj8QN2qkbNR8zCV--
