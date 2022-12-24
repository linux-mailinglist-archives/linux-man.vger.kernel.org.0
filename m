Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38C836559D1
	for <lists+linux-man@lfdr.de>; Sat, 24 Dec 2022 11:37:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229637AbiLXKhz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Dec 2022 05:37:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbiLXKhz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Dec 2022 05:37:55 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3359DEBE
        for <linux-man@vger.kernel.org>; Sat, 24 Dec 2022 02:37:53 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id b24-20020a05600c4a9800b003d21efdd61dso5003960wmp.3
        for <linux-man@vger.kernel.org>; Sat, 24 Dec 2022 02:37:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-language:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Us4wnNl1jTPZTidlhZLpB58i19AkO07kue8bcH2m2Qg=;
        b=B0uc4liPiysU/X0k6w3fuyN54cCo+UQgEdzZA6uspuYZtXYuL8zO33bl5YZObnkCMI
         ePo2vhQcKlwv8uTUcGZXq+glOq6D/rFn895lLWtKXA3iy7krSGdsofuSTCrrUlmkC6Hf
         qFkgNb6rBJqjBZQJaT6bsY2lY/jZruIB5hTqMClQa6FXyA3+K5ptkFoSOBRorbYGXnnD
         11N5npc2T8IXtiei0JpOvvcLhEp4fno0Aot8mu3Gh5Xq3vF+3y3nG406rTCiEiRGk7AT
         tSJrfuPw4jLTuFsSMkQcF+ZfNi5U8n7EvC258WMH91QmTZWm6uBpjlorV2/fdDQSQsw6
         kIxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-language:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Us4wnNl1jTPZTidlhZLpB58i19AkO07kue8bcH2m2Qg=;
        b=BOrRa42H2P4A9/YdfVYRwSKBoTlxv9prQAsCbuZXE670hOBe3ALJOj4Jt6gs2KME78
         CSuwaN9RgKZn8mFzW3bJ/Rdw9VMXryV1yEVDxij/hNGNAP32t36Ah27H8R3zxnzGjhhM
         xNXoG0eg2SNaWjfcnH0H0MN6cQppL5+ehypjv0m1IjYPornyZUTeTj4OPQL/tXw8DUeU
         XzyghTjkaajbNVUGtHFXl0m68f0ngmEBLBdUV2vLAk+NR/2nOTYZ1C7d91SAZT6J/lbv
         GOi54ZGzww10QrX9EI6B8xM8/cia3t5Le91Hg7MzSznztvrXb+011WI4C+8I66ge+Rkx
         sttQ==
X-Gm-Message-State: AFqh2kpHA1ajquFjjAXFy+fBp4QvcO8iBX3Pg/aeoyJsOnm7GUKnZ19a
        aLvouInUqyA+eR5xc/3zgxZt9mkM1HE=
X-Google-Smtp-Source: AMrXdXuC3Qfj+U2RKiFTOm4LNWirjBQCshvxgbsQ2b9UURBrHs7aTobEG6yZvktKIJuhzQhy3M9vkQ==
X-Received: by 2002:a05:600c:1f12:b0:3d2:267d:64bd with SMTP id bd18-20020a05600c1f1200b003d2267d64bdmr10684997wmb.3.1671878272183;
        Sat, 24 Dec 2022 02:37:52 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v15-20020a05600c444f00b003cf54b77bfesm13456677wmn.28.2022.12.24.02.37.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Dec 2022 02:37:51 -0800 (PST)
Message-ID: <43941d08-2277-28ec-8536-19a2b6e35469@gmail.com>
Date:   Sat, 24 Dec 2022 11:37:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: man-pages book: Using stdin/stdout more?
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Deri <deri@chuzzlewit.myzen.co.uk>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <bc608529-e8bf-ba91-8206-986d880a595f@gmail.com>
Content-Language: en-US
In-Reply-To: <bc608529-e8bf-ba91-8206-986d880a595f@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JE0ubui4QVS0yzGhJ6iwjvNC"
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
--------------JE0ubui4QVS0yzGhJ6iwjvNC
Content-Type: multipart/mixed; boundary="------------MkFt2oMwB0rT4mDCshpTsyqz";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <43941d08-2277-28ec-8536-19a2b6e35469@gmail.com>
Subject: Re: man-pages book: Using stdin/stdout more?
References: <bc608529-e8bf-ba91-8206-986d880a595f@gmail.com>
In-Reply-To: <bc608529-e8bf-ba91-8206-986d880a595f@gmail.com>

--------------MkFt2oMwB0rT4mDCshpTsyqz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTIvMjQvMjIgMDI6MzQsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPiBIaSBEZXJp
IQ0KPiANCj4gSSB1cGxvYWRlZCB0aGUgc2NyaXB0IHRvIHRoZSByZXBvLiA6KQ0KPiANCj4g
V291bGQgaXQgYmUgcG9zc2libGUgdG8gdXNlIGEgcGlwZSBpbnN0ZWFkIG9mIHRoZSBUIGZp
bGU/DQoNCk9yIGV2ZW4gYmV0dGVyLCBiZWNhdXNlIGhhdmluZyB0aGUgaW50ZXJtZWRpYXRl
IGZpbGUgaXMgaW50ZXJlc3RpbmcgZm9yIA0KZGVidWdnaW5nLiAgSG93IGFib3V0IGJyZWFr
aW5nIHRoZSBwcm9jZXNzIGludG8gMiBzY3JpcHRzLCBib3RoIG9mIHdoaWNoIHdyaXRlIA0K
dG8gc3Rkb3V0Pw0KDQpUaGVuIGEgd3JhcHBlciB3b3VsZCBvbmx5IGhhdmUgdG8gY2FsbCB0
aGUgdHdvIHNjcmlwdHMuICBNYXliZSB0aGUgc2Vjb25kIGNhbiANCmV2ZW4gcmVhZCBmcm9t
IHN0ZGluLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiBXb3VsZCBpdCBiZSBwb3NzaWJsZSB0
byBnZW5lcmF0ZSB0aGUgUERGIG9uIHN0ZG91dD8NCj4gDQo+IFRoYXQgd291bGQgaGVscCBo
b29raW5nIHRoZSBzY3JpcHQgaW50byB0aGUgYnVpbGQgc3lzdGVtLg0KDQotLSANCjxodHRw
Oi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------MkFt2oMwB0rT4mDCshpTsyqz--

--------------JE0ubui4QVS0yzGhJ6iwjvNC
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOm1n4ACgkQnowa+77/
2zJ1fw//WfFq7nrPXCw8tKNXRfxpNBnpSDBzviC8PDIj6hHa/q66i9j4hz0A9rFA
1NvuqlJ4Qs/DeyozH6YgvVfjix3JawXsTKku9Cpnwl6YYz92ya376AyMVkVQz5I/
QyTM/1tlokLvIuecD+XL3RFk5NZkxENlA0bj4N8lXGwHtgxHAdFFWakEWAG+ogPF
+94jSChUpc3jr57qB4ou9W0Ea3yWHP3aB/h8IAHXeRx75qn2as4nbcg6rQ72+rWj
4OQdDgtjwjuRrJhSBIm+WzTD4/cCNsqZ9wlfnlxOebJv8d2flFgCjgEbj1PupFQE
xghBTwYHmFOzJ3MugQTfv+F6IB+H/RwiCoqVEUswqjozxPz8FzS5Ewmb5iDnLc6K
HDABaWGwGUEZpVi/rHVrpnVLjqzFVPsNwizAgp4hMKsM1JwqhzZjvBTGNoDfiY8s
X+HY5FfJEGaGKjEXZks5YOAKApIiwlsb0u4qZeZgI01WZuYrYvJ503EfKc0Y4XtP
zxjHDMsV1CWh9GMADdtMdYElNWY2N7u/x06WaORDjeqo0YUl6bS/bo3/jeANP0Wv
vfXkaCikKU0ziCnDewmQLhENSWHKV5dTA+pDdc35IiYqfYAjWvdakn/HDge8d6oz
LCU4CNoiGUp3WF+wKAY3yc1StU+HsRadGco56EQWHo4hAp87wDQ=
=fTx8
-----END PGP SIGNATURE-----

--------------JE0ubui4QVS0yzGhJ6iwjvNC--
