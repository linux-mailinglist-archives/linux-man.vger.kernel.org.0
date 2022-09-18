Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 222035BC069
	for <lists+linux-man@lfdr.de>; Mon, 19 Sep 2022 00:39:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229519AbiIRWjA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Sep 2022 18:39:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229601AbiIRWi4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Sep 2022 18:38:56 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9BD513E00
        for <linux-man@vger.kernel.org>; Sun, 18 Sep 2022 15:38:55 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id z25so44207298lfr.2
        for <linux-man@vger.kernel.org>; Sun, 18 Sep 2022 15:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=2f8k09l1S//Is8aMV7VWkb12g69Z2IGhSZT+hqb/hTI=;
        b=bnwNZujHw2QwjjtxqKtOsUN71aOO5NJbm5YSVF48zbt98t5vfN8Yq7lDew6OU7cPCp
         5Hm/2lVtC77aucTUWwrIlezrw/xcI185gHVMNBERPYEP68HeY9wxIhQ24LSfl99uIVrS
         WAYsl3QMkNq6JGiHsAvsGlPne09O3XT5hcDeTUl0Jik4aC6wslY683LaHFz3NDqGcWXu
         uoGGDJhWVxQDf2BCDhlOAY31ME+B9d8Paz/buCWMLmPXBNSVN4taNR6G6oa27LXUgGi5
         rmphHgQBbKvK7WZbJRPUgTSFsRbGEZuweAjRLyqWsdVIxj9NjzneDqZkd9HuD1Kwpz8+
         zk8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=2f8k09l1S//Is8aMV7VWkb12g69Z2IGhSZT+hqb/hTI=;
        b=UDZyUMRJ/gC6WlwPJqRUhMCO7QzI8hGyxWzubzjgPCQSHiBgwrsPpLVwm8uEXD6MJ7
         /rOdfeyypq1M6GCk2yTorbRDBySru7iLxgSUfDspIS4nq202OgFjCS3/Ukzfef2XIwUL
         ftQBU2pliGnm5B8hX7k7vU1hj7viw4ZT26SqEgPaw60mYE0t7siwff/yv22RLAbiz7ZU
         gnPkQjsH6bMyGVPQvk6CF3IVUKJFI1t0b/yI5U07vLcl0XOkMedggZ/vS4znilAN2iNd
         FvCgaOzLAfiXbWPPYB9m2DRJKeATCuJHTDd+D/YcJbDWYHxFs6U67fG8MtD7dFxo9rAF
         lNkg==
X-Gm-Message-State: ACrzQf1XIKyvAyRwZE1DMZfJ7/PAZ1YtALCjaBCj6av7wqiSep3oyMDQ
        uRwmlP6/q0+JeBwSOA5c4ZioFxD1gs6osQ==
X-Google-Smtp-Source: AMsMyM7VPG1Gi9UKmE5ZWh/RtonU7m9uiZ57g4cp6Tv0VN0k6ou43B2o9td3sOqM80uLz8tHdml4HQ==
X-Received: by 2002:a19:9202:0:b0:49d:7310:742f with SMTP id u2-20020a199202000000b0049d7310742fmr5598946lfd.312.1663540734080;
        Sun, 18 Sep 2022 15:38:54 -0700 (PDT)
Received: from [192.168.1.104] ([31.169.55.19])
        by smtp.gmail.com with ESMTPSA id u18-20020ac258d2000000b0049110ba325asm4863567lfo.158.2022.09.18.15.38.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Sep 2022 15:38:53 -0700 (PDT)
Message-ID: <d84d7fbf-51d4-4d0d-96ea-9ca10d9ee3a7@gmail.com>
Date:   Mon, 19 Sep 2022 00:38:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH] register_printf_speficier.3, register_printf_modifier.3,
 register_printf_type.3: Add new manual page and links
Content-Language: en-US
From:   Alex Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
Cc:     Walter Harms <wharms@bfs.de>
References: <20220918221640.19942-1-alx.manpages@gmail.com>
 <23ae1f95-d2aa-87f7-664e-ba3ffab16c43@gmail.com>
In-Reply-To: <23ae1f95-d2aa-87f7-664e-ba3ffab16c43@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------A708KPp41trkRm9As2pOzKy4"
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------A708KPp41trkRm9As2pOzKy4
Content-Type: multipart/mixed; boundary="------------CemtFvRc4zA5Co5Nh0wGUK30";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Cc: Walter Harms <wharms@bfs.de>
Message-ID: <d84d7fbf-51d4-4d0d-96ea-9ca10d9ee3a7@gmail.com>
Subject: Re: [PATCH] register_printf_speficier.3, register_printf_modifier.3,
 register_printf_type.3: Add new manual page and links
References: <20220918221640.19942-1-alx.manpages@gmail.com>
 <23ae1f95-d2aa-87f7-664e-ba3ffab16c43@gmail.com>
In-Reply-To: <23ae1f95-d2aa-87f7-664e-ba3ffab16c43@gmail.com>

--------------CemtFvRc4zA5Co5Nh0wGUK30
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gOS8xOS8yMiAwMDozNiwgQWxleCBDb2xvbWFyIHdyb3RlOg0KPiBPbiA5LzE5LzIyIDAw
OjE2LCBBbGV4IENvbG9tYXIgd3JvdGU6DQo+PiBBbmQgaXQgc2VlbXMgSSBhbHNvIG5lZWQg
c29tZSBoZWxwIHdpdGggbXkgb3duIGV4YW1wbGUsIHNpbmNlIEkNCj4+IGRpc2NvdmVyZWQg
dGhlcmUncyBzb21lIHNvcnQgb2YgdW5kZWZpbmVkIGJlaGF2aW9yIGluIGl0IChqdXN0IHJ1
bg0KPj4gaXQgc2V2ZXJhbCB0aW1lcyBhbmQgc2VlOyBzb21lIHdvcmssIGJ1dCBzb21lIGRv
IHNob3cgd2VpcmQgc3R1ZmYNCj4+IGZvciB0aGUgY2FzZXMgd2hlcmUgd2l0aCBtb2RpZmll
cnMgdGhhdCBtYWtlIHRoZSBudW1iZXIgd2lkZXIgdGhhbg0KPj4gdW5zaWduZWQgaW50KS7C
oCBJZiB5b3UgZmluZCB0aGUgdW5kZWZpbmVkIGJlaGF2aW9yLCBwbGVhc2Ugc2hvdw0KPj4g
bWUuwqAgSSdsbCBjb250aW51ZSBkZWJ1Z2dpbmcsIGFueXdheS4NCj4+DQo+IA0KPiANCj4g
VGhpcyBpcyB0aGUgVUIgSSdtIGV4cGVyaWVuY2luZzoNCj4gDQo+IGFseEBkZWxsNzc2MDp+
L3RtcCQgLi9hLm91dCB8IGhlYWQNCj4gLi4uLi0tLS0uLi4uLS0tLS4uLi4tLS0tLi4uLi0t
LS0NCj4gMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAx
MTExMTExMTExMTExMDEwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMTAxMTExMDsNCj4gMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAxMTExMTExMTEx
MTExMDEwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMTAxMTExMDsNCj4gMDAwMDAwMDEwMTEx
MTA7DQo+IDAwMDAwMDAxMDExMTEwOw0KPiAwMDAwMDAwMTAxMTExMDsNCj4gMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAxMTExMTExMTExMTExMDEw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMTAxMTExMDsNCj4gMDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAxMTExMTExMTExMTExMDEwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMTAxMTExMDsNCj4gLi4uLi0tLS0uLi4uLS0tLS4uLi4tLS0tLi4u
Li0tLS0NCj4gMGIwMDAwMDAwMTAxMTExMDsNCj4gYWx4QGRlbGw3NzYwOn4vdG1wJCAuL2Eu
b3V0IHwgaGVhZA0KPiAuLi4uLS0tLS4uLi4tLS0tLi4uLi0tLS0uLi4uLS0tLQ0KPiAwMDAw
MDAwMTAxMTExMDsNCj4gMDAwMDAwMDEwMTExMTA7DQo+IDAwMDAwMDAxMDExMTEwOw0KPiAw
MDAwMDAwMTAxMTExMDsNCj4gMDAwMDAwMDEwMTExMTA7DQo+IDAwMDAwMDAxMDExMTEwOw0K
PiAwMDAwMDAwMTAxMTExMDsNCj4gLi4uLi0tLS0uLi4uLS0tLS4uLi4tLS0tLi4uLi0tLS0N
Cj4gMGIwMDAwMDAwMTAxMTExMDsNCj4gDQoNCk9oLCBhbmQgSSBoYXZlIGV4dHJhIHplcm9z
LCBidXQgdGhhdCdzIGEgYnVnIEkgaW50cm9kdWNlZCB0b2RheS4gIEJlZm9yZSANCnRoYXQs
IHRoZSBvdGhlciBvbmUgaXMgc3RpbGwgdGhlcmUuIDovDQoNCj4gDQo+IFRoZSBmaXJzdCBy
dW4gaXMgd3JvbmcsIGFuZCB0aGUgc2Vjb25kIG9uZSBpcyBjb3JyZWN0LsKgIFRoZSByZWxl
dmFudCANCj4gcHJpbnRmKDMpIGxpbmVzIGFyZToNCj4gDQo+IA0KPiAgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcHJpbnRmKCIuLi4uLS0tLS4uLi4tLS0tLi4uLi0tLS0uLi4uLS0tLVxuIik7
DQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwcmludGYoIiVsbGI7XG4iLCAweDVFbGx1KTsN
Cj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgIHByaW50ZigiJWxCO1xuIiwgMHg1RWx1KTsNCj4g
IMKgwqDCoMKgwqDCoMKgwqDCoMKgIHByaW50ZigiJWI7XG4iLCAweDVFdSk7DQo+ICDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBwcmludGYoIiVoQjtcbiIsIDB4NUV1KTsNCj4gIMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHByaW50ZigiJWhoYjtcbiIsIDB4NUV1KTsNCj4gIMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHByaW50ZigiJWpiO1xuIiwgKHVpbnRtYXhfdCkweDVFKTsNCj4gIMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHByaW50ZigiJXpiO1xuIiwgKHNpemVfdCkweDVFKTsNCj4gIMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHByaW50ZigiLi4uLi0tLS0uLi4uLS0tLS4uLi4tLS0tLi4u
Li0tLS1cbiIpOw0KPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHJpbnRmKCIlI2I7XG4iLCAw
eDVFdSk7DQo+IA0KPiANCj4gQ2hlZXJzLA0KPiANCj4gQWxleA0KPiANCj4gDQoNCi0tIA0K
PGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KDQo=

--------------CemtFvRc4zA5Co5Nh0wGUK30--

--------------A708KPp41trkRm9As2pOzKy4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMnnf0ACgkQnowa+77/
2zJsMBAAjwQt0v/fcwvEqZH5iMeQiRBpp7aDGBRYBaEdWmcmwXNRSFmODNcxgvzx
gVNZInZaXrig3O2f93TtABTRVSuP8V2wNd2VumN83lruKOZZ9x9qfqyWlXXNqNsq
q2uQo6Jx34/1gaKsAs3lxINXn9XYE63Kt1X50pQRbZis07G1YoLROAq4f/k+oL69
VteOy0/mfrh6Hq1knV0/D5/Ob3kCf+uJaC1xcnSt0O5KM5YAKUmpquIey/v4fxSJ
VqZJ7Z8TxE8uJLqYw4kZ847BKpB5Pv6vsD6L+ExLcgtxOQbCnXvrojb9+qtHISSK
DN6FOjcJLHW4NqpAvbUHm3nyxsysHfiILR180iuYIk4OuEPt+VTuySx+J3ImXR5y
t8/5l4QNWmXwpBVGkipgH+iKa348syHBlwVkoiRef2/I5PzutmyRT90N/p2murwr
7JAhfqdYv9bpiji7U9xwrbr7Q1dQ1zoeVkrXXTF3hp9/4JDONjb4cxROeRumn+qB
Lg8vhAOVNE1AkvWvbGYel72ecYYdvnB3iFk/p8SiK24h9a8Nx5+zXYLdcIBcbCfz
gChYJpMBaf69yGY3gw8VWk/p77l8v/5da53TuzS3GL1MVt9QE5AMR71/2UTTy/vf
QCU+0hBNcF4J3NnRaw7uVUK/Ujj2gMa9ZHs59+2nDUdCQ0iKBes=
=RBEs
-----END PGP SIGNATURE-----

--------------A708KPp41trkRm9As2pOzKy4--
