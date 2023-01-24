Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD013679EDF
	for <lists+linux-man@lfdr.de>; Tue, 24 Jan 2023 17:38:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233508AbjAXQit (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Jan 2023 11:38:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233349AbjAXQit (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Jan 2023 11:38:49 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85233CF
        for <linux-man@vger.kernel.org>; Tue, 24 Jan 2023 08:38:40 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id bk16so14443978wrb.11
        for <linux-man@vger.kernel.org>; Tue, 24 Jan 2023 08:38:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vny99RG2V3Z1IEGAmxEFFpYTtIY17nMZ04mM2NDbyjA=;
        b=OijtORPw95fPmbgtWdyzaoBT/1ll7x99r7mL2CLGtLPGD/WS5j2zDfvlxNVW/vval6
         /cMhtI5AIfVqdqEzsVnpxegPwJtA23oWnTbdd2D2gOGymeqmIfVjaJZ5tUtK+7fySKbJ
         ku+Ecw77oZBdLXG04E2j+4mgdig4JrUCLzzBBCt6OILu7WA+0o0O4yztjl/cdJU17bzO
         ZPXm/qaQALgHqY+M9R+giufUI0ye33O40L5VsA3XsQfHf5AcGf+3p2TKZtXueB3lLHTp
         siNiPE2X7nvnw775OFVwUzeWw5Tdh1iGbjBeDmOZo9fGQkIPna6kjjuPTBOt5HEADZl1
         yNKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Vny99RG2V3Z1IEGAmxEFFpYTtIY17nMZ04mM2NDbyjA=;
        b=6e4GJIVbtnkSPIsUAvJ05lJLhqHGmVoXWa4CYplooh0Hg05ht3u0VJvqMtI44pLvt3
         /B2nb6rnvNvhqZSXBHy86Tht0SPDDFQnlK4nsdtvZ/+kHLTvFxTZMP3GdAFoybMIo2hI
         Hf+KBy2FiE+9BWc2bUonrTEeM205TbWE6eMRp3XEjNMY4eXpjbFLdsoQfD0hbY955F12
         RzBdcp/eu0jYUkohfGsygXK1et/TIYrKyk37PWIzkjRNO7KuiJXfQnQbmCqTaQXf43AU
         A5L65Tpzr6bhFQXF+koc9VSge05InetBNf1bi4SvH0cXG8E0AluN+ajT4cH6SwmRrPjR
         SkPA==
X-Gm-Message-State: AO0yUKW4C2kbK5RFxUg8rAjYCK54nSaqwQNJgfSG1k4LiVM/7lo5GgIS
        Cid5ZqwgeACMcL6R5evvuyw=
X-Google-Smtp-Source: AK7set8YIIRQtMoZGAvSlYpTG2G1kla4rPe/6B0VWJ/9QMLl/mBv9Uoh73RrX3hUZbBVuoQNL12pgg==
X-Received: by 2002:a05:6000:5:b0:2bf:ae2f:c6ff with SMTP id h5-20020a056000000500b002bfae2fc6ffmr2948024wrx.31.1674578318987;
        Tue, 24 Jan 2023 08:38:38 -0800 (PST)
Received: from [192.168.43.80] ([46.222.154.138])
        by smtp.gmail.com with ESMTPSA id bv17-20020a0560001f1100b002be2f18938csm2268291wrb.41.2023.01.24.08.38.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jan 2023 08:38:38 -0800 (PST)
Message-ID: <5dbf06be-e083-4b39-343d-2507802b9881@gmail.com>
Date:   Tue, 24 Jan 2023 17:38:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: struct sockaddr_storage
Content-Language: en-US
To:     Richard Biener <richard.guenther@gmail.com>
Cc:     Stefan Puiu <stefan.puiu@gmail.com>,
        GNU C Library <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>, gcc@gcc.gnu.org,
        Igor Sysoev <igor@sysoev.ru>,
        =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>
References: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
 <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com>
 <61bbb556-ff9b-ebdc-5566-bc1ae533c0aa@gmail.com>
 <CACKs7VDGAaSXkjeuBdvEkFbFJ_OnwObTf1_9eVb44RJf-O3Fwg@mail.gmail.com>
 <4c47dcb0-f665-d6ff-cc26-d5f4e99bd739@gmail.com>
 <CAFiYyc29oHbDqP8fdrT8cSr0Vnunu24sGQuQb65vK0P37rfnmg@mail.gmail.com>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAFiYyc29oHbDqP8fdrT8cSr0Vnunu24sGQuQb65vK0P37rfnmg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------IlBYmpAUAew6Kb1RQOjkYezP"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------IlBYmpAUAew6Kb1RQOjkYezP
Content-Type: multipart/mixed; boundary="------------mjiJsr51iANTx1O7y27Cj63L";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Richard Biener <richard.guenther@gmail.com>
Cc: Stefan Puiu <stefan.puiu@gmail.com>,
 GNU C Library <libc-alpha@sourceware.org>,
 linux-man <linux-man@vger.kernel.org>, gcc@gcc.gnu.org,
 Igor Sysoev <igor@sysoev.ru>, =?UTF-8?Q?Bastien_Roucari=c3=a8s?=
 <rouca@debian.org>
Message-ID: <5dbf06be-e083-4b39-343d-2507802b9881@gmail.com>
Subject: Re: struct sockaddr_storage
References: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
 <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com>
 <61bbb556-ff9b-ebdc-5566-bc1ae533c0aa@gmail.com>
 <CACKs7VDGAaSXkjeuBdvEkFbFJ_OnwObTf1_9eVb44RJf-O3Fwg@mail.gmail.com>
 <4c47dcb0-f665-d6ff-cc26-d5f4e99bd739@gmail.com>
 <CAFiYyc29oHbDqP8fdrT8cSr0Vnunu24sGQuQb65vK0P37rfnmg@mail.gmail.com>
In-Reply-To: <CAFiYyc29oHbDqP8fdrT8cSr0Vnunu24sGQuQb65vK0P37rfnmg@mail.gmail.com>

--------------mjiJsr51iANTx1O7y27Cj63L
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUmljaGFyZCwNCg0KT24gMS8yMy8yMyAxNzoyOCwgUmljaGFyZCBCaWVuZXIgd3JvdGU6
DQo+PiBUaGUgY29tbW9uIGluaXRpYWwgc2VxdWVuY2Ugb2Ygc3RydWN0dXJlcyBpcyBvbmx5
IGFsbG93ZWQgaWYgdGhlIHN0cnVjdHVyZXMgZm9ybQ0KPj4gcGFydCBvZiBhIHVuaW9uICh3
aGljaCBpcyB3aHkgdG8gYXZvaWQgVUIgeW91IG5lZWQgYSB1bmlvbjsgYW5kIHN0aWxsLCB5
b3UgbmVlZA0KPj4gdG8gbWFrZSBzdXJlIHlvdSBkb24ndCBpbnZva2UgVUIgaW4gYSBkaWZm
ZXJlbnQgd2F5KS4NCj4+IDxodHRwczovL3BvcnQ3MC5uZXQvJTdFbnN6L2MvYzExL24xNTcw
Lmh0bWwjNi41LjIuM3A2Pg0KPiANCj4gR0NDIG9ubHkgYWxsb3dzIGl0IGlmIHRoZSB1bmlv
biBpcyB2aXNpYmxlIGFzIHBhcnQgb2YgdGhlIGFjY2VzcywgdGhhdA0KPiBpcywgaXQgYWxs
b3dzIGl0DQo+IHVuZGVyIGl0cyBydWxlIG9mIGFsbG93aW5nIHB1bm5pbmcgZm9yIHVuaW9u
IGFjY2Vzc2VzIGFuZCBub3Qgc3BlY2lhbGx5IGJlY2F1c2UNCj4gb2YgdGhlIGluaXRpYWwg
c2VxdWVuY2UgcnVsZS4gIFNvDQo+IA0KPiAgIHUuYS54ID0gMTsNCj4gICAuLi4gPSB1LmIu
eDsNCj4gDQo+IGlzIGFsbG93ZWQgYnV0DQo+IA0KPiAgICBzdHJ1Y3QgQSAqcCA9ICZ1LmE7
DQo+ICAgIHAtPnggPSAxOw0KPiAgICBzdHJ1Y3QgQiAqcSA9ICZ1LmI7DQo+ICAgIC4uLiA9
IHEtPng7DQo+IA0KPiBpcyBVQiB3aXRoIEdDQyBpZiBzdHJ1Y3QgQSBhbmQgQiBhcmUgdGhl
IHVuaW9uIG1lbWJlcnMgd2l0aCBhIGNvbW1vbg0KPiBpbml0aWFsIHNlcXVlbmNlLg0KDQpZ
ZXAuICBUaGF0J3Mgd2h5IHdlIG5lZWQgYSB1bmlvbiB0aGF0IGlzIGRlZmluZWQgaW4gbGli
Yywgc28gdGhhdCBpdCBjYW4gDQpiZSB1c2VkIGJvdGggaW4gYW5kIG91dCBvZiBnbGliYy4g
IHNvY2thZGRyX3N0b3JhZ2UgY2FuIGJlIHJlY29udmVydGVkIA0KdG8gdGhhdCBwdXJwb3Nl
Lg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29s
b21hci5lcy8+DQoNCg==

--------------mjiJsr51iANTx1O7y27Cj63L--

--------------IlBYmpAUAew6Kb1RQOjkYezP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPQCYsACgkQnowa+77/
2zI6vA//aoyaDeIeSsS4flxyFk8MjFf9YHatKBhfHeenYDT87RON/LladRX3BCRx
UVO05Np6BWOdBgphzJjpZ/53HQR3VOAStTCumSlcX4XiVFWebE1hpJ/ecuvMsYx1
RwZbh0GCIHmHK1c4P17vCw5eGb7vDfDE1vxwq5gU5Y+5QELFQYTDGsUt7Wty5YdG
72j2MFah2K1jFYp/qfnyKYTAUbuZYwR8jQy8fxBZdiwqojGO4dMZxQX5dj1/2UCV
p8c/RX0lHXX0SLkYdp4bDD/+48ICUaQ7UAwHhL3qRmy6Tkcqxrov0sAEm2GXKw8t
knxV3oLT6uvOCn052VtABqgUL4FzfzNSGEQhKdXWG0rtLWDHD5lEbDwMVcsR3a8x
dZNO78QY1scvyOR7gkTjPU7gPyIhVh3yv92wCnEFMb7wefx/bmEycKI/94O7O1vP
2bOIJcsKarmmefYh4WiA2J8JK2eh77LOJim0tebyagqZmWJ9eCkTLOWAPP8vRbBf
MjSuyIt8lQvQ5+sf66rwdJ1QcQNjWZ/Lt9c8MxnqxxMGqRR2JnmYEGttAlDr2OKk
o1eGQBPH+dn+Ue2qzFaOK9ObxVdPqEzT/qjm0qZgwWqn1JuTFmwzLw+5+785rx++
F7oO4UaF1nGkRyGurXAvFafBIF+cdcpmxLU1n/s8J7jzk2hHtjg=
=UlgL
-----END PGP SIGNATURE-----

--------------IlBYmpAUAew6Kb1RQOjkYezP--
