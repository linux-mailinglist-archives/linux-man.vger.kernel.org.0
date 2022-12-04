Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF2DB641F56
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 20:55:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229970AbiLDTzV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 14:55:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbiLDTzT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 14:55:19 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D46E910FC3
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 11:55:18 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id bs21so15771123wrb.4
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 11:55:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=57bcvevo1FikgZVqsxP2oGtRQjS6tTXvGmjqC7p2Gds=;
        b=k4Dnbi9Nfz9Kiz4yma+9sGvs6p9lw3ms/TWBTxn3b4pN/vPBgbO8gUP2xnL4OMHH6Q
         32/ZRKcIJdxBIzUbZvqBBtusZ/P2YhA/dbzCsupJynf+HdunZ8fvKDYTeBC7prDZWLC5
         9NgbPJARiJDkq5LBavrEtvxyCwQ/KiP1z1B8b+ueX95p3Dc4cxpDfn6cJ5tAYrOKuGgA
         xRtHYHV7fjAUAv07aXzshxR8nUE1tXPGmhmojOrEf5AM2032tOaxtlQYP20y+OuPEynV
         OkgQ9Ql+LGLkH+rF8P48OxKQvsGfUNVUL4+fhl/DAGq1AFeFWLgT7TaKf5aOAvf9wPJn
         0YrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=57bcvevo1FikgZVqsxP2oGtRQjS6tTXvGmjqC7p2Gds=;
        b=Cw+VGSe+zsstcQyCLu6iE0BR+Apsq5JKW8X/OvMqp2g0Awr6/H490I+BNBNr0Tzxos
         sdTy3eZMNdpBZw8+x9rZ3D/G1CLsSi9ctgbAw8UsBFYNwLEGJPTMc/aAePp78pHHf/PE
         CEuoa13C736PR+M6cxjSFydtsRN/zQeCjzv9xndedzQ5OuGI9yURqkPCN/Er9Hiaix/U
         lCy9MrF2Ztb9btk+oaVkAAIAEhDg0qTYplEfiq3du6fNJpx+WyvQjm3VkMeetMaxMjQu
         R1kWIOP8BwtS165WCMkmjI6tDdQ6A18mQS0Y4aEPB6igBfgYegFh/jYQSuGCsSHROp1q
         +Viw==
X-Gm-Message-State: ANoB5pk0+S8SzgwRhmQZg3kyxm0hBLEX0uR5ErL/L1VIAFpw2Bh2xm2q
        yuQb1rFW8ZEMVEg+ekOAueI=
X-Google-Smtp-Source: AA0mqf68kAcGvBUOosoOwLn3M5ve5vnAACetC8C8ZSDdy/xFbvRBZn5aik5s0/OV2PDXWJPK/t2syw==
X-Received: by 2002:a05:6000:226:b0:242:5ba6:de18 with SMTP id l6-20020a056000022600b002425ba6de18mr2685931wrz.54.1670183717490;
        Sun, 04 Dec 2022 11:55:17 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m9-20020a05600c3b0900b003cf47556f21sm21529282wms.2.2022.12.04.11.55.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 11:55:17 -0800 (PST)
Message-ID: <44d14599-a166-225c-603d-55d9cc8e6a3b@gmail.com>
Date:   Sun, 4 Dec 2022 20:55:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page strcat.3
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090716.GA707@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090716.GA707@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ml2gwtEouKnL0W0gVSIH500R"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------ml2gwtEouKnL0W0gVSIH500R
Content-Type: multipart/mixed; boundary="------------t6CNBuHu0AbQBg762JHnpkxK";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <44d14599-a166-225c-603d-55d9cc8e6a3b@gmail.com>
Subject: Re: Issue in man page strcat.3
References: <20221204090716.GA707@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090716.GA707@Debian-50-lenny-64-minimal>

--------------t6CNBuHu0AbQBg762JHnpkxK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgVGhlIHZhcmlhYmxlIEk8c2l6ZT4gaXMgbm90IGRlZmluZWQgYWJvdmUg
aW4gdGhlIHN1bW1hcnk/IElzIHRoaXMgSTxuPj8NCj4gDQo+ICJUaGlzIGZ1bmN0aW9uIGFw
cGVuZHMgdGhlIG51bGwtdGVybWluYXRlZCBzdHJpbmcgSTxzcmM+IHRvIHRoZSBzdHJpbmci
DQo+ICJJPGRlc3Q+LCBjb3B5aW5nIGF0IG1vc3QgSTxzaXplLXN0cmxlbihkZXN0KS0xPiBm
cm9tIEk8c3JjPiwgYW5kIGFkZHMgYSINCj4gInRlcm1pbmF0aW5nIG51bGwgYnl0ZSB0byB0
aGUgcmVzdWx0LCBJPHVubGVzcz4gSTxzaXplPiBpcyBsZXNzIHRoYW4iDQo+ICJJPHN0cmxl
bihkZXN0KT4uICBUaGlzIGZ1bmN0aW9uIGZpeGVzIHRoZSBidWZmZXIgb3ZlcnJ1biBwcm9i
bGVtIG9mIg0KPiAiQjxzdHJjYXQ+KCksIGJ1dCB0aGUgY2FsbGVyIG11c3Qgc3RpbGwgaGFu
ZGxlIHRoZSBwb3NzaWJpbGl0eSBvZiBkYXRhIGxvc3MiDQo+ICJpZiBJPHNpemU+IGlzIHRv
byBzbWFsbC4gIFRoZSBmdW5jdGlvbiByZXR1cm5zIHRoZSBsZW5ndGggb2YgdGhlIHN0cmlu
ZyINCj4gIkI8c3RybGNhdD4oKSAgdHJpZWQgdG8gY3JlYXRlOyBpZiB0aGUgcmV0dXJuIHZh
bHVlIGlzIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCINCj4gInRvIEk8c2l6ZT4sIGRhdGEgbG9z
cyBvY2N1cnJlZC4gIElmIGRhdGEgbG9zcyBtYXR0ZXJzLCB0aGUgY2FsbGVyIEk8bXVzdD4i
DQo+ICJlaXRoZXIgY2hlY2sgdGhlIGFyZ3VtZW50cyBiZWZvcmUgdGhlIGNhbGwsIG9yIHRl
c3QgdGhlIGZ1bmN0aW9uIHJldHVybiINCj4gInZhbHVlLiAgQjxzdHJsY2F0PigpICBpcyBu
b3QgcHJlc2VudCBpbiBnbGliYyBhbmQgaXMgbm90IHN0YW5kYXJkaXplZCBieSINCj4gIlBP
U0lYLCBidXQgaXMgYXZhaWxhYmxlIG9uIExpbnV4IHZpYSB0aGUgSTxsaWJic2Q+IGxpYnJh
cnkuIg0KDQoNClRoZSByZXBvcnQgaXMgaW52YWxpZC4gIFRoYXQgJ3NpemUnIHJlZmVycyB0
byB0aGUgc3RybGNhdCgzKSBwcm90b3R5cGUsIGRlY2xhcmVkIA0KaW4gdGhlIHNhbWUgTk9U
RVMgc2VjdGlvbi4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------t6CNBuHu0AbQBg762JHnpkxK--

--------------ml2gwtEouKnL0W0gVSIH500R
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOM+yQACgkQnowa+77/
2zKNPA/7B0LY8IOIw7FOGH7FSOzlnXSu0Bsvr9joG6/kguV5PUOxW0/iZm0Ky+WY
Q5pbNL/7uHvXX+EmYdnPTgrrxE3Va7mB/w3GxKkKlCSRfZAvoXvrPu/GC89L8q/c
ZT02VsUPYegzV4Ei6Yx6moMWvqiDLOKE+lRdx2EdVHtneczEEgpggHE4bwkQYjA4
PrOrs3B6Xfasw23/oyu+lhpB/WpQHJaDt+MZU3Ak9BzN9C3kz2cW06gwNaejQb0z
NplGcWmrsRNqd1g8Iq0e9ctUodJfgHdWx23OOFFQlZPx2EDX88oBrOC9WHrNdwIh
u/dLc+kgiKgLfhBF87g8pXKx/+BoJucg1FYkMITffNPnf2nV9UMbH2h1WguJH5k0
Ho8jfWsW8mScldbJq4j2ZRS1rhFACD+rUKjoSTPZNjXSh2Mc0W72YEHH3tzQt+o7
A8t8OMybX/6UIAoD6alqrlPjWlvBJ5iH3wTmiHPuOqvw86t+rjBqyk7rRBOczt6k
nLrlyTrPUVIQaFmqtET0FSSEa3xBWaJWjliEQybGnBOfSG9cL1Fh0stlIi983n/N
J4HGRlWI9PJ7bIAwX2oDQMpxFHbs8eWPrIbt6YzW30a9MbSB9Z6O1kzxxD6EhwPs
gePNrbl6URvoGgCZmXOpAkzhInGOhJJM40tFWNA94FlROFgrdpk=
=kvj2
-----END PGP SIGNATURE-----

--------------ml2gwtEouKnL0W0gVSIH500R--
