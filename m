Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 704C06237ED
	for <lists+linux-man@lfdr.de>; Thu, 10 Nov 2022 01:06:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231789AbiKJAGq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Nov 2022 19:06:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232105AbiKJAGo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Nov 2022 19:06:44 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF9321743D
        for <linux-man@vger.kernel.org>; Wed,  9 Nov 2022 16:06:42 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id k8so108829wrh.1
        for <linux-man@vger.kernel.org>; Wed, 09 Nov 2022 16:06:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hsucSYcouVQEItZE2z+y0V+e+BKTs+IglF8A/ZDz7u8=;
        b=a2F1Z0tozgg8nIbgIJFxMhxAEIhGPIkh9n0SCmjaPUXpZzL3qBenA7EuhgwUZswa6t
         n2tEM6VPGSe6FD9D7XUZHCtpj7LFvaOWgMlLW5VnUpZjgFNbNsBO/6tv6ADmsPnKtPTL
         2XlVNw0Yc/WNqWYOrSDgnXC0idgGJ46wXW2AsAkQmJa7eVAtfWOff195ahBQWZfsM/EY
         LN8xOn07A85JGEuGAOgXrwqC77qnOhgLhI0nBgCH77UDPnatwnLLRxshBYuNyDUp5djx
         uiaZ9bFMqpGKmUlPAkvvXcuVV116Tnnn+4IvSrbCQfHSRJCziF1vG+RHbQ46qIXe+kBc
         A7CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hsucSYcouVQEItZE2z+y0V+e+BKTs+IglF8A/ZDz7u8=;
        b=zvniviMCLwVHCBUbWlYy7aHDijK8ScyVhJHNJrzXy5sfVvFXSpyH9SXsdXhC91EA+m
         NwAPi09jv5AwUd83RsaBme7vEHt+sJMSh+qmdJqfwb+TRWBxwZEk9Vhjromm7d+3uRB4
         tqwVp1yPGvWjr+L8Qh0kkJiqh4I96CB3H75+BzhXIl3XiwlVFXHMiHZby5qUnpEPoI/M
         U3e6ahv805RrzPChDTLYDh8VpScYJDGfmyei7d58Cse17qJ8tdCubaz/7borl6piMKx6
         TurwrVxg0Vy0Don90kCN1vw6UHwOphOpY/AZZdU/n4/z7P+h7Xql/cVDpkQxDoepEBgS
         FitA==
X-Gm-Message-State: ACrzQf0xjmwGk2Nf6ATHsBj9YNI+wKZQnSGKnEVjIvaMZYrPlCyEs1rY
        B2zX7ijr0VPbx4UqDFIse5c=
X-Google-Smtp-Source: AMsMyM54lH0M9El7yqrSV/7SO/ephC/raq2sWZ7/eGVRbmWbDUYDYFE1xGraJxbTCQnBH/RYTlyFbg==
X-Received: by 2002:a5d:66c3:0:b0:236:aa03:aa3c with SMTP id k3-20020a5d66c3000000b00236aa03aa3cmr37928852wrw.243.1668038801453;
        Wed, 09 Nov 2022 16:06:41 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v2-20020adfedc2000000b00228daaa84aesm14283678wro.25.2022.11.09.16.06.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 16:06:40 -0800 (PST)
Message-ID: <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
Date:   Thu, 10 Nov 2022 01:06:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
To:     Martin Uecker <uecker@tugraz.at>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------A6K4ue05N5wNq4WH2nk0PMrI"
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
--------------A6K4ue05N5wNq4WH2nk0PMrI
Content-Type: multipart/mixed; boundary="------------wcW1P4EtNBO0JirN4NVfWLJ1";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
In-Reply-To: <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>

--------------wcW1P4EtNBO0JirN4NVfWLJ1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWFydGluLA0KDQpPbiA5LzMvMjIgMTc6MzEsIE1hcnRpbiBVZWNrZXIgd3JvdGU6DQo+
IE15IGV4cGVyaWVuY2UgaXMgdGhhdCBpZiBvbmUgd2FudHMgdG8gc2VlIHNvbWV0aGluZyBm
aXhlZCwNCj4gb25lIGhhcyB0byBwdXNoIGZvciBpdC4gIFN0YW5kYXJkaXphdGlvbiBpcyBt
ZWFudA0KPiB0byBzdGFuZGFyZGl6ZSBleGlzdGluZyBwcmFjdGljZSwgc28gaWYgd2Ugd2Fu
dCB0byBzZWUNCj4gdGhpcyBpbXByb3ZlZCwgd2UgY2FuIG5vdCB3YWl0IGZvciB0aGlzLg0K
DQpJIGZ1bGx5IGFncmVlIHdpdGggeW91LiAgSSd2ZSBiZWVuIHJ1bWluYXRpbmcgdGhlc2Ug
cGF0Y2hlcyBmb3Igc29tZSB0aW1lLCBmb3IgDQpoYXZpbmcgc29tZSBtb3JlIHRpbWUgdG8g
dGhpbmsgYWJvdXQgdGhlbS4gIE5vdywgSSBsaWtlIHRoZW0gZW5vdWdoIHRvIHB1c2guIA0K
U28sIGFmdGVyIGEgZmV3IG1pbm9yIGNvc21ldGljIGlzc3VlcyBkZXRlY3RlZCBieSBzb21l
IGxpbnRlcnMsIEkndmUgcHVzaGVkIHRoZSANCmNoYW5nZXMgdG8gZG9jdW1lbnQgYWxsIG9m
IG1hbjIgYW5kIG1hbjMgd2l0aCBoeXBvdGhldGljYWwgVkxBIHN5bnRheC4NCg0KTm93LCBJ
J3ZlIHJlbGVhc2VkIG1hbi1wYWdlcy02LjAxIHZlcnkgcmVjZW50bHkgKGp1c3QgYSBmZXcg
d2Vla3MgYWdvKSwgYW5kIEkgDQpkb24ndCBwbGFuIHRvIHJlbGVhc2UgYWdhaW4gaW4gYSB5
ZWFyIG9yIHR3bywgc28gdGhlcmUncyB0aW1lIHRvIGRvIHRoZSANCmltcGxlbWVudGF0aW9u
IGluIEdDQy4gIEZyb20gbXkgc2lkZSwgcGxlYXNlIGNvbnNpZGVyIHRoaXMgYW4gQUNLIG9y
IGV2ZW4gDQpzb21ld2hhdCBvZiBhIHB1c2ggdG8gZ2V0IHRoaW5ncyBkb25lIGluIHRoZSBj
b21waWxlciBzaWRlIG9mIHRoaW5ncyA6KQ0KDQpJJ2xsIHNob3cgaGVyZSBhbiBleGNlcnB0
IG9mIHdoYXQga2luZCBvZiBzeW50YXggaGFzIGJlZW4gcHVzaGVkLiAgT2YgY291cnNlLCAN
CnRoZXJlJ3Mgcm9vbSBmb3IgaW1wcm92aW5nL2ZpeGluZywgc2luY2UgaXQncyBub3Qgc2Vl
biBhbiBvZmZpY2lhbCByZWxlYXNlLCBidXQgDQpmb3Igbm93LCB0aGlzIGlzIHdoYXQncyB1
cCB0aGVyZToNCg0KDQogICAgICAgIGludCBzdHJuY21wKGNvbnN0IGNoYXIgczFbLm5dLCBj
b25zdCBjaGFyIHMyWy5uXSwgc2l6ZV90IG4pOw0KDQogICAgICAgIGxvbmcgbWJpbmQodm9p
ZCBhZGRyWy5sZW5dLCB1bnNpZ25lZCBsb25nIGxlbiwgaW50IG1vZGUsDQogICAgICAgICAg
ICAgICAgICAgY29uc3QgdW5zaWduZWQgbG9uZyBub2RlbWFza1soLm1heG5vZGUgKyBVTE9O
R19XSURUSCDigJAgMSkNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIC8gVUxPTkdfV0lEVEhdLA0KICAgICAgICAgICAgICAgICAgIHVuc2lnbmVk
IGxvbmcgbWF4bm9kZSwgdW5zaWduZWQgaW50IGZsYWdzKTsNCg0KICAgICAgICBpbnQgY2Fj
aGVmbHVzaCh2b2lkIGFkZHJbLm5ieXRlc10sIGludCBuYnl0ZXMsIGludCBjYWNoZSk7DQoN
Cg0KSSd2ZSBzaG93biB0aGUgdGhyZWUga2luZHMgb2YgcHJvdG90eXBlcyB0aGF0IGhhdmUg
YmVlbiBjaGFuZ2VkOg0KDQotICBOb3JtYWwgVkxBOyBub3RoaW5nIGZhbmN5IGV4Y2VwdCBm
b3IgdGhlICcuJy4NCi0gIENvbXBsZXggc2l6ZSBleHByZXNzaW9ucy4NCi0gICd2b2lkICon
IFZMQXMgKGFzc3VtaW5nIEdOVSBjb252ZW50aW9uczogc2l6ZW9mKHZvaWQgKik9PTEpLg0K
DQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xv
bWFyLmVzLz4NCg==

--------------wcW1P4EtNBO0JirN4NVfWLJ1--

--------------A6K4ue05N5wNq4WH2nk0PMrI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNsQIgACgkQnowa+77/
2zIM+g/+JqrNJqWvM1WA8qPKQrjQ262vw69fsHQHy3oWUYcCZ+PrrfL19MPs8LhX
lP5qpOrf2XX5gJovc9hS8a/ql5/nnTCP45daDYWKsbUq9BJlI2uIfmXAawKHPme4
RdCuA7WFjLMpbT8G3UcVLIGMjAdB9ZIDqdHa2x92g6pR/LjPngFMPqto1OtqrWHT
Xr8y3i7qWQHSZrNdyFbzqMuqTaq821BSWFE+5VA5U0LPF5q71pUIdgYuy5JUlqQ7
05LPoIhT9uBrjnU0pWs1xDEC2Uy9neqNEJRYS2CxUZ3fDFM85er2WhjhpfKHVBiU
UTmQf1GqLbHBAqXxd2IJSIU8SXOfv1V8ocw05taB6nHaVEY3F3NhypudtOsHsKJY
pKB668Cz/8nayfibFvbSgBWW5d7uPO9esyPD++HFpgiOrSaUQ8wNYczLiDeMdSws
kBmukakmDXhty/w79qpexkk6nfR74cvnoNTzqsoliiySEJI85s30VjQHRffFRxGo
7LZbNmZHzqtL3MBPfk3wLqmXuJqBYAtVOwcdtuoBG1X9vp4R6k6fcV+uYOPGQqdt
YLQ6Fe4oAIMheTLgwbGd43ohnSA7K9eUnPucs4odkVd4DtNw3YtdnX5y+XIULZFW
zDFDbVLQaeo11jOYlirUWMDQeMlcL2u6cSCCy1/YTtsZfCnKhqo=
=cIHf
-----END PGP SIGNATURE-----

--------------A6K4ue05N5wNq4WH2nk0PMrI--
