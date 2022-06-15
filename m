Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A8D754CD87
	for <lists+linux-man@lfdr.de>; Wed, 15 Jun 2022 17:53:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229553AbiFOPxe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Jun 2022 11:53:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347832AbiFOPxV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Jun 2022 11:53:21 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3A7D2B2
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 08:53:20 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id a15so15984641wrh.2
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 08:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to;
        bh=zXVQ/rLCvoY2v5CtVbIW8ggQHeD7s+2SaiWMZHrMzdU=;
        b=KqUwIiWTBEwZwm41JR6nMPtCFHZ73LvORE/Y9xsfHoiQ2n8wezk/qWKkBnDUwQtA0o
         Wm7WezupQUGaJ7c86wkBIirnAgZi1LwruDpzhnptOB+M2iE5vnD6kFv8+qOGw198BVHY
         j8HKdMPBId8eL8wTMLpmM764ae27dVSO9RVa9Mra8LmInC0glyHmuJJKWb1v09lVH0vj
         TSTteH4bGYA/I+Sf9TjCjKepPbLhSRblKyLccUW8rYlDH9kA4jrWgbakHoTFWjRhrS5f
         h/2QYZC6WQmMSxB04WnL5hew4DwpJc56Tp+ukIsHqjoy/brpk1DGJuOCPRNr81Z7P9go
         kcow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to;
        bh=zXVQ/rLCvoY2v5CtVbIW8ggQHeD7s+2SaiWMZHrMzdU=;
        b=ZF1IkwatiDZzX61BDf1t3Crdq4gKSEHNXm+BiQnl8MSlWyw9wojBl8aZzqFWF21O3S
         E9CtDAQT3nBSInnfcd9QLXZg8A8PXyBBPieAFckS8laGDpC+mKpsYfCTfbbRCMHyrs1n
         nkEsiPCx5gJcYTggqEWsI/E+1/yP3DWQbgF3VUkUpJSM1avAzQMz0/MnLcQUeLmgypfz
         Lye+w2zXa5H7Q3CRzbA+GTefTEw/pjo0fSo+roiCwWxtsn8WsHcrxviDDrCe/M8+HJGi
         LZrLoTYS7gg5Iwm9siw90if+bhcMlQ6uMfVyzg25LzFsm/LcDaW8eTccoLAgWBUjPECQ
         Vo1w==
X-Gm-Message-State: AJIora+6s1kRiaJUOhYY0lkxb+K/joeoB7hYt6ZiegMgnG0qnNm7sSES
        7IoJ0ptvv+fnuq974PHjC5K+L1DUQHw=
X-Google-Smtp-Source: AGRyM1snS21NkOfPuX7shxTTMuZJFw8dPD++BJbpWKOMVi4HeD7I6ZED08nCXQp/2QauvQHqFtwjWQ==
X-Received: by 2002:adf:f2ca:0:b0:210:2a75:8c51 with SMTP id d10-20020adff2ca000000b002102a758c51mr425296wrp.329.1655308399163;
        Wed, 15 Jun 2022 08:53:19 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p2-20020a05600c358200b003942a244f47sm2845499wmq.32.2022.06.15.08.53.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 08:53:18 -0700 (PDT)
Message-ID: <a1a962b8-3f19-8e23-bbf5-167d162a49e7@gmail.com>
Date:   Wed, 15 Jun 2022 17:53:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] system_data_types.7: struct stat: describe blkcnt_t and
 blksize_t
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20220615145719.co5l7hmqys22x77j@tarta.nabijaczleweli.xyz>
 <0a535d0b-572e-db16-f7fa-93da924588c8@gmail.com>
In-Reply-To: <0a535d0b-572e-db16-f7fa-93da924588c8@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------OJbCE970S8e7ge6mU9Oz0mST"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------OJbCE970S8e7ge6mU9Oz0mST
Content-Type: multipart/mixed; boundary="------------27A7J9KR5qd2hgg0nDmlTWvD";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <a1a962b8-3f19-8e23-bbf5-167d162a49e7@gmail.com>
Subject: Re: [PATCH] system_data_types.7: struct stat: describe blkcnt_t and
 blksize_t
References: <20220615145719.co5l7hmqys22x77j@tarta.nabijaczleweli.xyz>
 <0a535d0b-572e-db16-f7fa-93da924588c8@gmail.com>
In-Reply-To: <0a535d0b-572e-db16-f7fa-93da924588c8@gmail.com>

--------------27A7J9KR5qd2hgg0nDmlTWvD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNi8xNS8yMiAxNzo1MCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiArLkkgYmxr
c2l6ZV90DQo+PiAraXMgYSBzaWduZWQgaW50ZWdlciB0eXBlLg0KPiANCj4gVGhhdCdzIGNv
dmVyZWQgaW4gdGhlICdibGtzaXplX3QnIGVudHJ5Lg0KDQpTb3JyeSwgSSBoYWQgYSBtaXgg
YmV0d2VlbiAvdXNyIGFuZCAvdXNyL2xvY2FsIG1hbnVhbCBwYWdlcy4NCg0KSSBtb3ZlZCBp
dCByZWNlbnRseSB0byBhIHNlcGFyYXRlIGJsa3NpemVfdCgzdHlwZSkgcGFnZS4gIEFuZCB0
aGUgc2FtZSANCmlzIHRydWUgZm9yIGJsa2NudF90KDN0eXBlKS4NCg0KQ2hlZXJzLA0KDQpB
bGV4DQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1j
b2xvbWFyLmVzLz4NCg==

--------------27A7J9KR5qd2hgg0nDmlTWvD--

--------------OJbCE970S8e7ge6mU9Oz0mST
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKqAG0ACgkQnowa+77/
2zLlug//bwNWK8T8TLIlbGysknvIBHl438c331Ov8N78k04A7RIgI8vhWz/PeAV+
g+EhWqViFWMBxgGKuMyEo7hySontL325dW1qGm4fKAdP4aZhGd+ewGmMYICmVQus
hYia9OSJnAuDTCOGNei18ffj9A65at0SsVs0lgT0CTZGwk31nv2oBKvplmemV9N2
pkQi5i+KqyhwoXRzDZl5FByOQ7lWXLFZR4aV8qxCtYZYaZfeThNWgsKeHH1HCBxT
34E44fNX1MuA8/MFjkWvLVXLue93K1V1jQo/p81BfewObHLudyf61SXRzGWMrm3Q
+FGZWiJKxHKB/POctriknDglLqXxRpxRX9/aTi9VPRbtfnkVwtNwwCpgeVDsiuML
tplfanzt0gYTQtPPcVHaFGEtcAKd/o7R8U8OQ8NB/aM1ltcj/xHIFnXm5i5J1wBW
30qN50l3x18/iwE2P2fqMgjR9KCA8QeLR1lfZK1TUtAc2AqavBDGVJMQ7+FmmStQ
wGkIfV+2egFMvAVGnBzHCpLBcHqDrrdClILcUsaXKzkoic1PxaPUA3ofqUZNYQLO
IAA3Xi6Mlsi8jzvJruzeYBnGDTfv9avN5Z0PR4o9tJTa74HdBcaVV/Sxnau6tbRO
qVA/pbBFTE5PB97dUSEr7woEitC90IxHSVCg+XCLkRwRQOUPnkU=
=xSQ5
-----END PGP SIGNATURE-----

--------------OJbCE970S8e7ge6mU9Oz0mST--
