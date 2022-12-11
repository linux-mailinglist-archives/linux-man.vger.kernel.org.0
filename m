Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1537649564
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 18:33:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbiLKRdl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 12:33:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229918AbiLKRdk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 12:33:40 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A0FEB1E1
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 09:33:39 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id p13-20020a05600c468d00b003cf8859ed1bso3296967wmo.1
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 09:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HWD4g6kBtS/yJF3mvceT23xCM5N3NkLYXSKna/A1sek=;
        b=Zj64+AGX3+Fka25e59G7h3dMjObuuF9+c322uJwSTM+GoGix4HAnTJnqmVpm+9FPeJ
         aa5TF7VsXCCnlGpdWFzg8NPVuGmOPpzoj1oHB4n/IWLIS39wOBhObeqdGjaEQWqgZNC3
         XfQtb1hfhYkvKOPI2kj+cw4HCP+myMivXJhLBS5azQTFT4UE0EUYy/jqORZJZIiGv4Sa
         ZWpIAkmAA9x+loO6B3MODWlOTCpPq2BqvkU1XpkauVo//gG6VsgM8zK9Gc7Qy5D90hyd
         s26BrCCVZzSZLRdGhAoL+HOGwZx/NioJ193gfWnHFPTfn2hTny8E7PvAmWXi3ja6y/Vc
         KIvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HWD4g6kBtS/yJF3mvceT23xCM5N3NkLYXSKna/A1sek=;
        b=5dyJUp4OUEQoCdNl5L4NT3FM937r6WGhrOq2AnlVHvPtZlhlZx25XzwqSIE4jqifDc
         QPVbqcWWyakers0lwJ0pqB4OilpLAWaxyV0Q4ooahY2OdygRYhC6nEriKgLaus8gx+Mf
         gb/FUfR1HfFbshwEnRQU1TpDKkeXvJai4/iZT62ESlosL/PbeEMBZPbxBc1k/2Th9YRS
         qgpl+a2dOXGsH0/8HzZ9413TiyRR968V09ISr9+JVE98oTH0Rrd5UHd7okpwIUSp7gQh
         0lVI4MkUiuSgvjn21XtQc4U3H9JCvSakMPFbPS9ORvkc51IV1lHamkrxPkPv2NBGHEP7
         WC8g==
X-Gm-Message-State: ANoB5pnSZa1Xm53QXFlpCbKqqVO7K/kzUq7YTJF4/To5VW1r1TgkN0H0
        ROJRoRDdu4+Mam1suubxbsQE4dvbZqM=
X-Google-Smtp-Source: AA0mqf5FDmfUsfqA7447Oz8nvTmVlKIPB4KyOH2RbZUrNo8dlgN6hbbZ5GhV2dVxH6y6SJOwE5EcUw==
X-Received: by 2002:a05:600c:3d96:b0:3cf:7704:50ce with SMTP id bi22-20020a05600c3d9600b003cf770450cemr10103829wmb.38.1670780017897;
        Sun, 11 Dec 2022 09:33:37 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l41-20020a05600c1d2900b003c6b874a0dfsm8209518wms.14.2022.12.11.09.33.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 09:33:37 -0800 (PST)
Message-ID: <aa61a91d-abc7-fae2-0494-9842b6081bb5@gmail.com>
Date:   Sun, 11 Dec 2022 18:33:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [patch] nice.2: wfix
Content-Language: en-US
To:     GNU C Library <libc-alpha@sourceware.org>
Cc:     linux-man@vger.kernel.org, i+linux@1a-insec.net,
        Alejandro Colomar <alx@kernel.org>
References: <53fb2366-517c-9f76-982f-ac2d16d3476c@1a-insec.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <53fb2366-517c-9f76-982f-ac2d16d3476c@1a-insec.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------oaEZoagzqq7wTJD3lYx95wv0"
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
--------------oaEZoagzqq7wTJD3lYx95wv0
Content-Type: multipart/mixed; boundary="------------c1VIPl8fLYbQ0qnLfkvYvTNb";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: GNU C Library <libc-alpha@sourceware.org>
Cc: linux-man@vger.kernel.org, i+linux@1a-insec.net,
 Alejandro Colomar <alx@kernel.org>
Message-ID: <aa61a91d-abc7-fae2-0494-9842b6081bb5@gmail.com>
Subject: Re: [patch] nice.2: wfix
References: <53fb2366-517c-9f76-982f-ac2d16d3476c@1a-insec.net>
In-Reply-To: <53fb2366-517c-9f76-982f-ac2d16d3476c@1a-insec.net>

--------------c1VIPl8fLYbQ0qnLfkvYvTNb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgZ2xpYmMgZGV2ZWxvcGVycywNCg0KT24gMTEvMi8yMiAwMjo1MCwgaStsaW51eEAxYS1p
bnNlYy5uZXQgd3JvdGU6DQo+IG5pY2UoMikgaW4gZ2xpYmMgdXNlcyBgc2V0cHJpb3JpdHko
UFJJT19QUk9DRVNTLCB4KWAuIEkgdGhpbmsgInRocmVhZCIgbWVhbnMgDQo+IHB0aHJlYWQg
bW9yZSwgc28gInByb2Nlc3MiIGlzIHRoZSBiZXR0ZXIgd29yZCBoZXJlLg0KPiANCj4gVGhl
IHBhdGNoIGlzIGJlbG93Og0KPiANCj4gDQo+ICBGcm9tIDgzNWMzM2RiYzcyYWJlYzAyZDQ5
YTVhYzZiMWIxNmU0ZDM5YTU5OWIgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxDQo+IEZyb206
IExvY3JpYSBDeWJlciA8NzQ1NjA2NTkrbG9jcmlhY3liZXJAdXNlcnMubm9yZXBseS5naXRo
dWIuY29tPg0KPiBEYXRlOiBUdWUsIDEgTm92IDIwMjIgMDY6MTA6MTYgKzAwMDANCj4gU3Vi
amVjdDogW1BBVENIXSBuaWNlLjIgdGZpeA0KPiBTaWduZWQtb2ZmLWJ5OiBMb2NyaWEgQ3li
ZXIgPGkrbGludXhAMWEuaW5zZWMubmV0Pg0KDQpJIG5ldmVyIHVzZWQgdGhpcyBzeXNjYWxs
LiAgQ291bGQgYW55IG9mIHlvdSBwbGVhc2UgcmV2aWV3IHRoaXMgcGF0Y2g/DQoNCkNoZWVy
cywNCg0KQWxleA0KDQo+IA0KPiAtLS0NCj4gIMKgbWFuMi9uaWNlLjIgfCAyICstDQo+ICDC
oDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL21hbjIvbmljZS4yIGIvbWFuMi9uaWNlLjINCj4gaW5kZXggZjRlMjQw
Ni4uMmVjZDc0MyAxMDA2NDQNCj4gLS0tIGEvbWFuMi9uaWNlLjINCj4gKysrIGIvbWFuMi9u
aWNlLjINCj4gQEAgLTM2LDcgKzM2LDcgQEAgRmVhdHVyZSBUZXN0IE1hY3JvIFJlcXVpcmVt
ZW50cyBmb3IgZ2xpYmMgKHNlZQ0KPiAgwqAuQlIgbmljZSAoKQ0KPiAgwqBhZGRzDQo+ICDC
oC5JIGluYw0KPiAtdG8gdGhlIG5pY2UgdmFsdWUgZm9yIHRoZSBjYWxsaW5nIHRocmVhZC4N
Cj4gK3RvIHRoZSBuaWNlIHZhbHVlIGZvciB0aGUgY2FsbGluZyBwcm9jZXNzLg0KPiAgwqAo
QSBoaWdoZXIgbmljZSB2YWx1ZSBtZWFucyBhIGxvd2VyIHByaW9yaXR5LikNCj4gIMKgLlBQ
DQo+ICDCoFRoZSByYW5nZSBvZiB0aGUgbmljZSB2YWx1ZSBpcyArMTkgKGxvdyBwcmlvcml0
eSkgdG8gXC0yMCAoaGlnaCBwcmlvcml0eSkuDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFu
ZHJvLWNvbG9tYXIuZXMvPg0K

--------------c1VIPl8fLYbQ0qnLfkvYvTNb--

--------------oaEZoagzqq7wTJD3lYx95wv0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOWFHAACgkQnowa+77/
2zINwg/6AmTpHFPgmSyzrIP0sFlVS29FGr09iMGRKr25uCTDDqh67+Xlw9qA4rKY
e3o55h7nVOhclwxTH8Ulx8SPbX0ME6WZW0trZ84NLnsjC4RiZ4uEhB9JoRYgB3h0
tkfiH8aZrkJLjYmWgEpaoTiHLOht7ieXcJeCOfHfj6EUmW9Vjh4NdAt4uUC2auoh
NqfDjEjtYE2cKklQtFs7MPuvcnHTTwiH9MEjrtznQ494vkvQFU86sCJj9OHGQLPV
wEowJo7abUgP9zv8n7UF8NOIfB07Yg2U4Tj6lgDJzzYVtST3iMal75TVWDWeOfSa
o/n/8Nl4yn/BgmDZl/RQO1F71YDPVDyOKyR2a9DQYr5PvDlOtxcnF3PDCgf7lePa
2HxNyAMcWMgj+lcBwo9gTmHLJPnMnnzAzv6Ow2tMh1+R0oJYJQnpnf5TAHVWLUWQ
WXIsNIld0BmM90YN+e2tfWd7jfZBdGmwYfg+hWt+7jrZ8eOyXdq7PWOWY+lCDxxF
WIWTN1qSSDxafS4COc3rmh5RMPcuh6+nle6qmpQgc1Sc6cDXnRXgVPHIC9dYhlEs
coOh44ZLUoUOnOJHvWhMj/ANwpKSTRu0tpPO9Clb+50TSu5ogOH7CmsxdY4TZFf+
U8EkoeAI21MrcKh+ia1I2zb/wY8FZ/bRaFOzgJjB2VyM/gmyaUU=
=X2PD
-----END PGP SIGNATURE-----

--------------oaEZoagzqq7wTJD3lYx95wv0--
