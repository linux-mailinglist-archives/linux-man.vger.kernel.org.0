Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9D6964BE27
	for <lists+linux-man@lfdr.de>; Tue, 13 Dec 2022 21:58:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237279AbiLMU6U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Dec 2022 15:58:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237282AbiLMU6T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Dec 2022 15:58:19 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F215620F49
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 12:58:15 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id f18so17078175wrj.5
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 12:58:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hop3d94QVfHTOn7yZlY+19Va+apG5tH9rXO6rLvykZI=;
        b=U6Umgp2LySsX23WNApt4lfl4R/h37Wx3n7IoUuxRPOa/W9O9aq4lvcpNyJvibQ3RYU
         GofkdzFtMrMMnACVkJseqMTEWZmsvb5ZUaYrljaCYB/adfKRil1evRRp3HcZZ8nXUx3n
         0D2ZZIV+2TGb/ECjTBrzYhIlnv38d7tnn6pWB6fj5O0tHSlKMCxTvIxR6th42AvQwCvm
         AxfeHKJiNpPu/79AkVl8SFPs2whw7FQ7dZQN5d8jSr4CD1JYmuip1Pm5ZM9b/CUU2gNC
         DaGP9fHdLR2H2g8s4XuhnfNqT3RYwrrs1VQCJPcn4CNX1UIWZTCcaw91geKgOs9+8J7R
         wH2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Hop3d94QVfHTOn7yZlY+19Va+apG5tH9rXO6rLvykZI=;
        b=1Gnsj0Z+vEw9a8elLGjzPCYedufjbbaj98B+PfkV832dmTgkvdMaDXdeqrD41MNRrp
         2O9B2ivNn1BLa6ac0jvgxhEOcx5j0rteKQuPQchINrnYf6uv20UfnqgfENycCUAKXKex
         dm5qYLzrTRMo3cLs9GtRmkn0neCY5KNgV5ip1FYHn/YmARf5eTqX1Pj6oAZQ0dibdtm2
         fhKGLZPUHhTnxjt2cxmQ7v3OvfOurUQxb740RUH1GAq/b0RswHbbBRiCiBSwcm2AnMVW
         XSrbc17vHEJHRBOEe+XmLD0c3JDQ44vxNnN+dNTAbAVloOEkbAcc5pKiyvgTdtozAusZ
         p/JQ==
X-Gm-Message-State: ANoB5pmifw4LF0GwmuNUOgwLDsFKZ0q3vvz+rrMU3n1/tnj2U3gok5Vr
        AsTCdQlScXx3zo3/9imOzNmCES8ZtNQ=
X-Google-Smtp-Source: AA0mqf496JWBnrb7asMNJhvfipz7nAjDCrzoSDt3cFJ94doBCTxcdyk3NW53fykgK3s0QvgeA25fxw==
X-Received: by 2002:a5d:4090:0:b0:24d:5829:4e59 with SMTP id o16-20020a5d4090000000b0024d58294e59mr9435734wrp.58.1670965094434;
        Tue, 13 Dec 2022 12:58:14 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h18-20020adffa92000000b002420d51e581sm714549wrr.67.2022.12.13.12.58.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 12:58:14 -0800 (PST)
Message-ID: <3be783cc-773b-7cc9-052b-fe15d83d67b9@gmail.com>
Date:   Tue, 13 Dec 2022 21:57:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v2 0/3] Rewrite strcpy(3)
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org, Martin Sebor <msebor@redhat.com>
References: <20221212142418.27615-1-alx@kernel.org>
 <20221212230044.86105-1-alx@kernel.org>
 <20221213205634.fvqbvyjxqrnxdatd@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221213205634.fvqbvyjxqrnxdatd@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JZbr9LVrnupZnLJd0eEGAF9r"
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
--------------JZbr9LVrnupZnLJd0eEGAF9r
Content-Type: multipart/mixed; boundary="------------3XjRfTv1mRDazeOEwa7bpfPc";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org, Martin Sebor <msebor@redhat.com>
Message-ID: <3be783cc-773b-7cc9-052b-fe15d83d67b9@gmail.com>
Subject: Re: [PATCH v2 0/3] Rewrite strcpy(3)
References: <20221212142418.27615-1-alx@kernel.org>
 <20221212230044.86105-1-alx@kernel.org>
 <20221213205634.fvqbvyjxqrnxdatd@jwilk.net>
In-Reply-To: <20221213205634.fvqbvyjxqrnxdatd@jwilk.net>

--------------3XjRfTv1mRDazeOEwa7bpfPc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsDQoNCk9uIDEyLzEzLzIyIDIxOjU2LCBKYWt1YiBXaWxrIHdyb3RlOg0KPiBU
aGUgc2hlZXIgc2l6ZSBvZiB0aGlzIHBhZ2UgbWFrZSBpdCBhbG1vc3QgdW51c2FibGUgZm9y
IG1lLg0KPiBQbGVhc2UgZG9uJ3QgbWVyZ2UgaXQuDQoNClBsYW4gYiBpcyBhIHN0cmluZ19j
b3B5KDcpIHBhZ2UsIGFuZCBrZWVwIHRoZSBvdGhlciBwYWdlcyBtaW5pbWFsLiAgV291bGQg
dGhhdCANCnBsZWFzZSB5b3U/DQoNClRoYW5rcywNCg0KQWxleA0KDQo+IA0KPiAqIEFsZWph
bmRybyBDb2xvbWFyIDxhbHgubWFucGFnZXNAZ21haWwuY29tPiwgMjAyMi0xMi0xMyAwMDow
MDoNCj4+IMKgwqDCoMKgwqAgc3RwZWNweSgzKSwgc3RwZWNweXgoMykNCj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBOb3QgcHJvdmlkZWQgYnkgYW55IGxpYnJhcnkuDQo+IA0KPiBU
aGVuIHRoZXkgZG9uJ3QgYmVsb25nIGluIHRoZSBtYW4tcGFnZXMgcHJvamVjdC4gPg0KPj4g
wqDCoMKgwqDCoCBzdHJzY3B5KDMpDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTm90
IHByb3ZpZGVkIGJ5IGFueSBsaWJyYXJ5LsKgIEl0wqAgaXPCoCBhwqAgTGludXjCoCBrZXJu
ZWzCoCBpbnRlcm5hbA0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZ1bmN0aW9uLg0K
PiANCj4gRGl0dG8uDQo+IA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFy
LmVzLz4NCg==

--------------3XjRfTv1mRDazeOEwa7bpfPc--

--------------JZbr9LVrnupZnLJd0eEGAF9r
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOY51MACgkQnowa+77/
2zLRFA//YFuFhhaWPDSW6SyDWR52JyKiNUUkuiI2GhAceT2fvfmR+j52m0u05XNv
rJ8K8UuRpnjam60gj21zMUToZqEHA8qK5uhShkgURLlhI7TVOpr6GG/BDi2YAeZB
5zL8c+h0edkLiJMLvtPJWpkZchBf2llQOblj8eUXldj/8CCYK2FfuRi/T0tvbJas
Jvq0HLQd7yDwK0adD688eh56c8fGpYhs1bpb1tOIhjkhWpmm47PQQbkVrnabuLLf
kWDFstGclx5u8QGbmJ/SFuYsuF8YUsEWkIOt6zLdOcjCVxBLEtRg/wDhQihRvlWR
Tw7FCS5sf/9xBFvhg9ow0xpoSwWwFGM9yyK5iaQyDjfrHIo2aODroavAWbabzSs7
LCTFo26RAiK5eV6sAk0OOJLmtRBSMjMBCUNhxjemfFcPc65vIAC9xoCjkZfQy0+t
vKOJmIAzuG7dX/eDNXO5JplZKZYzNc4xLd0U4kRyA6Sufj7TnZzBa65j0QpNs4eu
E+fCbthqtMAAwjtC6YeZW48GYLdZWqadH+WkN74ek4JF94oiF6v1JDaoZ55j5JOO
Nfe4S9Ym+DYhZTxjykvlmXktriRRg2pyE7GC81exPWddij/aYIk1sJUlm9L1iDvL
SArlWOabeQRjIUSrSgThTketXliKPR18qkJCnX32wpXNw5EuRdE=
=Pfxs
-----END PGP SIGNATURE-----

--------------JZbr9LVrnupZnLJd0eEGAF9r--
