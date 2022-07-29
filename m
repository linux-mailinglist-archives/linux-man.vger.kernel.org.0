Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29C9D584F4E
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 13:01:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234639AbiG2LBy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 07:01:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234581AbiG2LBw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 07:01:52 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8BDC2AE34
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 04:01:47 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id v3so4617304wrp.0
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 04:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=RwlhVOjHCFXbdRhjlObn6Eh9hd8zjnVVfyJTwfBbFRs=;
        b=Z8QJoZ6jd09/pnVbZnyM9LFRji+gQj2CUo3yccTRnaDAFIeA58agc9QJZWLMgCQY7Y
         yMm3PHqFb7lzJwhu2hELuCtf4oY8ypRGYmmAzNKNZ8D+0mWgg3cMKL+4jxy/yXOFeYpS
         WoFzxKjaWlta0pm/Y83jDhL1lZSoMmQr9hlj9by/N8JfpgRZH4adttQJaeE/yVM7Yr6F
         axrJHPTbtZDBYHZ51muF1HK8E/hmTjOltex7bO/jCPmEtDqerM2bD1s7sc84AYDISN7Z
         iMltb9+dxkynXMcgHCd/HzqtDaLBs+K5DAIiCU01DAtSgWW8xhzvjhBIQqBYq6bJpqGr
         IM3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=RwlhVOjHCFXbdRhjlObn6Eh9hd8zjnVVfyJTwfBbFRs=;
        b=Q3QQNnX6slY15fDL/jaMHzuEGCguvEaoBG5zWonIN159zV6NDVTreKC07QQ9dlYsYC
         rzbacoXqRcx/sLat1GpZZlh3cV9oC3fHMfrKUrVvP/EZVpAGwub7J0WK51yhknnJxDdq
         ghVlwhgL7igQxQzBho49CEJK+VMZIUpOLqgFhL5BdQxSDrR+MENgjm6CphEquEPQvz87
         wRrA5W36YFHuLuBUiwWFRHOuMM5LGPvMU6Lzh3OA3dSXMu6bAlSMXQCC8TmJgsh2cxfR
         GE6raaNFduOURJqacV+1E3C8qoBiDg5gheEc9N06yWjHA/YWKxsjeFyVYtaMs6INF2Om
         zqZQ==
X-Gm-Message-State: ACgBeo1ES5H+RCXMNvucw6FMds8yyvqaZ9wbL0dmjgei2QCBxMfzimSy
        kFxWIzUNhStKBKcKEIxffRI=
X-Google-Smtp-Source: AA6agR5xTOi1gsOIuN7i/wShHGOtv0pGjWKUX6q8Af+AmaaYrB5jhuAgNMwXSClPZKULa09iRatt+A==
X-Received: by 2002:a5d:5c0c:0:b0:21e:7098:1903 with SMTP id cc12-20020a5d5c0c000000b0021e70981903mr1968483wrb.623.1659092506337;
        Fri, 29 Jul 2022 04:01:46 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d14-20020adfef8e000000b0021d6dad334bsm3399465wro.4.2022.07.29.04.01.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jul 2022 04:01:45 -0700 (PDT)
Message-ID: <346b2391-5ed8-b61b-580b-225e04ec9081@gmail.com>
Date:   Fri, 29 Jul 2022 13:01:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [patch] RLIMIT_NPROC not enforced for root user, irrespective
 capabilities
Content-Language: en-US
To:     "Schneider, Robert" <robert.schneider03@sap.com>,
        Eric Paris <eparis@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        David Howells <dhowells@redhat.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
References: <PAXPR02MB72147C88F7E9F82CC1AA577F8FAD9@PAXPR02MB7214.eurprd02.prod.outlook.com>
 <9e740310-6a05-5a05-b403-98369960830e@gmail.com>
 <PAXPR02MB7214288BB38033ACE0DBE35E8F879@PAXPR02MB7214.eurprd02.prod.outlook.com>
 <dcd16a37-82e4-d7c4-dbbc-0764cadfee76@gmail.com>
 <PAXPR02MB721437B523D36018F989DD6D8F969@PAXPR02MB7214.eurprd02.prod.outlook.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <PAXPR02MB721437B523D36018F989DD6D8F969@PAXPR02MB7214.eurprd02.prod.outlook.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5m2Ei7AROGkkbYSCUKqy1w80"
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
--------------5m2Ei7AROGkkbYSCUKqy1w80
Content-Type: multipart/mixed; boundary="------------bktTRnVus18M5MjGHdLpeg4f";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "Schneider, Robert" <robert.schneider03@sap.com>,
 Eric Paris <eparis@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 David Howells <dhowells@redhat.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
 "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
Message-ID: <346b2391-5ed8-b61b-580b-225e04ec9081@gmail.com>
Subject: Re: [patch] RLIMIT_NPROC not enforced for root user, irrespective
 capabilities
References: <PAXPR02MB72147C88F7E9F82CC1AA577F8FAD9@PAXPR02MB7214.eurprd02.prod.outlook.com>
 <9e740310-6a05-5a05-b403-98369960830e@gmail.com>
 <PAXPR02MB7214288BB38033ACE0DBE35E8F879@PAXPR02MB7214.eurprd02.prod.outlook.com>
 <dcd16a37-82e4-d7c4-dbbc-0764cadfee76@gmail.com>
 <PAXPR02MB721437B523D36018F989DD6D8F969@PAXPR02MB7214.eurprd02.prod.outlook.com>
In-Reply-To: <PAXPR02MB721437B523D36018F989DD6D8F969@PAXPR02MB7214.eurprd02.prod.outlook.com>

--------------bktTRnVus18M5MjGHdLpeg4f
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUm9iZXJ0LA0KDQpPbiA3LzI4LzIyIDA5OjQ3LCBTY2huZWlkZXIsIFJvYmVydCB3cm90
ZToNCj4gSGkgQWxleCwNCj4gDQo+IHNvcnJ5IGZvciB0aGUgcGF0Y2ggaXNzdWUuIEknbSBz
dHVjayBoZXJlIHdpdGggT3V0bG9vayBmb3IgdGhlIHRpbWUgYmVpbmcsIGJ1dCBsZXQgbWUg
Z2l2ZSBpdCBhbm90aGVyIHNob3QuIEknbGwgYWxzbyBhdHRhY2ggaXQgYXMgYSBmaWxlLg0K
DQpZZWFoLCBqdXN0IGJ1cm4gT3V0bG9vaywgaXQgdXNlbGVzcyA6KQ0KDQpJIGNvdWxkIGFw
cGx5IGl0IGZyb20gdGhlIGF0dGFjaG1lbnQ6DQo8aHR0cHM6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2RvY3MvbWFuLXBhZ2VzL21hbi1wYWdlcy5naXQvY29tbWl0Lz9pZD01ZmEyZWNi
NTM2NTZjOWZkY2JkNWEyMTk3MjkwNmUzZGEzM2NiNTA0Pg0KDQpCVFcsIHdlIHVzZSBhIHBy
ZWZpeCB3aXRoIHRoZSBmaWxlbmFtZSBiZWluZyBtb2RpZmllZCAoc2VlIHRoZSBsaW5rKS4N
Cg0KVGhhbmtzLA0KDQpBbGV4DQoNCj4gDQo+IA0KPiAgRnJvbSBkYjFlNzA2MGE1ZGI0NWE2
Zjg2NzhlYTAwMTczMzUxODI4OGZhNTE4IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQ0KPiBG
cm9tOiBSb2JlcnQgU2NobmVpZGVyIDxyb2JlcnQuc2NobmVpZGVyMDNAc2FwLmNvbT4NCj4g
RGF0ZTogVGh1LCAyOCBKdWwgMjAyMiAwNzo0MDo1NiArMDAwMA0KPiBTdWJqZWN0OiBbUEFU
Q0hdIFJMSU1JVF9OUFJPQyBhbHNvIGlnbm9yZWQgZm9yIHJ1aWQgMA0KPiANCj4gLS0tDQo+
ICAgbWFuMi9nZXRybGltaXQuMiB8IDMgKystDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjIvZ2V0
cmxpbWl0LjIgYi9tYW4yL2dldHJsaW1pdC4yDQo+IGluZGV4IDM3MzYyMjA3Ny4uMjZiYTdk
NjhjIDEwMDY0NA0KPiAtLS0gYS9tYW4yL2dldHJsaW1pdC4yDQo+ICsrKyBiL21hbjIvZ2V0
cmxpbWl0LjINCj4gQEAgLTM0Miw3ICszNDIsOCBAQCBsaW1pdCBpcyBub3QgZW5mb3JjZWQg
Zm9yIHByb2Nlc3NlcyB0aGF0IGhhdmUgZWl0aGVyIHRoZQ0KPiAgIC5CIENBUF9TWVNfQURN
SU4NCj4gICBvciB0aGUNCj4gICAuQiBDQVBfU1lTX1JFU09VUkNFDQo+IC1jYXBhYmlsaXR5
Lg0KPiArY2FwYWJpbGl0eSwNCj4gK29yIHJ1biB3aXRoIHJlYWwgdXNlciBJRCAwLg0KPiAg
IC5UUA0KPiAgIC5CIFJMSU1JVF9SU1MNCj4gICBUaGlzIGlzIGEgbGltaXQgKGluIGJ5dGVz
KSBvbiB0aGUgcHJvY2VzcydzIHJlc2lkZW50IHNldA0KDQotLSANCkFsZWphbmRybyBDb2xv
bWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------bktTRnVus18M5MjGHdLpeg4f--

--------------5m2Ei7AROGkkbYSCUKqy1w80
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLjvhgACgkQnowa+77/
2zJxrw//VMSTHZh/xwr9snf9YbK8ePQIKwVXHrunjcZPEErGTTskOo5YVEWSn1rU
pLF6Xy8pW+KnAx3blkPHFWFTrAu75DDnJJnKnC5dEcW4Z2buMUZhy7N/AeGYoNAo
5FyQ6ia+1RdL08Z/aL4+10R3vjeIhWdk8ymZlZY4nP6gogEpBkX1fTOUhpNgdGPl
nbXbddj9nc+JMgPw6pWOJzqfo166KKVpLMn+ZZEyRT/Ik/h6fc6WQ2w7rAWuWETA
bEZqxHOtWwKNPFXcmD5ds/3fZZ6e8Tfxg1RuwPOfPWNBAsyq0y+LECPAyRSq7Juh
y9Th0jE1R1tV3RZBKQOM9XgHCs1Ucry+REkpfInzmkFFYrvbl+LxAFB1VqBySPKy
xIR4MoEJtv6egw5dQKik30HrtoEjVxD5cFP6FBVIax/hr5shN4ralox40jBDNdUf
SGHKwWHOE+R32ZcQrtWAgYRhZBnzILYjsSsXb3uPOGa+pR/lIOWl5vA3gteqLnzI
r6oHj9M/rDU82hZYdEHsgeMIoppWPDNqya2k6cA6T4FbB6a7QLCwLxyFyWfe5KEK
RZ/fXWZIEc1GYGT4HPkBFGT3kmyJVYNDwdBUkbTr1jpnDqLeHqGOHmbe5NC5Bn0B
++0jVKAdYGoxBf/JIw2yYcYOC9ToZMVWFvq3ZQWIb0CmmYHd7ns=
=YY64
-----END PGP SIGNATURE-----

--------------5m2Ei7AROGkkbYSCUKqy1w80--
