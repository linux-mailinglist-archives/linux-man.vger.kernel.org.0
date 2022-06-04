Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F9F053D49D
	for <lists+linux-man@lfdr.de>; Sat,  4 Jun 2022 03:29:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230285AbiFDB2Q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 3 Jun 2022 21:28:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350484AbiFDB2K (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 3 Jun 2022 21:28:10 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C2D858E41
        for <linux-man@vger.kernel.org>; Fri,  3 Jun 2022 18:26:46 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id u8so8022353wrm.13
        for <linux-man@vger.kernel.org>; Fri, 03 Jun 2022 18:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to;
        bh=IkbpdBp/vclOUtoX3B4Abfr/wkDXMuF8hcgINOsX6H4=;
        b=pcqiqx5GpgvdPPlRU99GklTZyMR1E7aTX7Lji5SCtrpotl/uLPO4d1OwJpvODy3sgN
         MCiTPoSNdbx0aB8t89uCnwJ8tufT1j+1GMC1FNd9lncwAP0qZ5tej+k0pmHjkEQXCTBC
         hbOMCkpgL8FN/qRtmn3Q0WYdIDmCpRiZbQDQE4n3M34ezTmQa7L3uybTXGdXlQEVBW82
         BnQhACDcd93WpyyVQfbRFwGF0rVrFlR+ERdv7oKNX9Kq4VvEwrv+pAby8YwSucvwZJiA
         BIiJ+HjorPLPNguoNc4VeDbQg2wqj+vMa8fB2NFuqJA4gnwMoUjTZfwT+502/57dw4rT
         FFgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to;
        bh=IkbpdBp/vclOUtoX3B4Abfr/wkDXMuF8hcgINOsX6H4=;
        b=A1lqoy3mL+Bl4QsgKUBgdAvFwxoi26fUaV762Z5FtCfjJMhGkXDgBpehN0gje4l10j
         x9s97HYPbCP1e3qISF4ifHYxffNdQYIARGPyJ0j8XIkhRA/OlYEmK/yDSqCYv+dZcELZ
         62UHnZSH0MK0qqoY+OfDsRdZxlcp+j99KNKZK8e0Hp8vKdUoWznKIwMH626RZC8ovaBd
         YeSOxDyogIAkoHHtnDPIgE2aReI1E/7eIDhAZc0+1VqgIRFVLujc/BNhRhofmsRVYAo/
         wc5xM8vhUhU75F2Vvr6TC6L4EHTP+21IwegBVoLaH5JkarA3pNgo1hu2cjpn0VWUeDZd
         i1Jg==
X-Gm-Message-State: AOAM531RfwTI5gFSvvg76MPSGERCT9jku9Y2iSkbfkOwIUCYhiLZ+j4T
        moP/pVWisNgx9Uqqp6F2XWM=
X-Google-Smtp-Source: ABdhPJxhbYf3cI90vVFS7poaPj1j4yorTwA3K2lSftRfo53Z1PwBjGxoVtQlFe7EvMndCIYXl6ZSUQ==
X-Received: by 2002:adf:dc81:0:b0:212:3a72:2f07 with SMTP id r1-20020adfdc81000000b002123a722f07mr10487427wrj.714.1654306004642;
        Fri, 03 Jun 2022 18:26:44 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q15-20020adff50f000000b002102e6b757csm10323180wro.90.2022.06.03.18.26.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jun 2022 18:26:43 -0700 (PDT)
Message-ID: <8a672358-07d0-3a64-30b0-5e25a46f1b80@gmail.com>
Date:   Sat, 4 Jun 2022 03:26:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: Man-pages Git repository
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Christian Aistleitner <christian@quelltextlich.at>
Cc:     Mike Frysinger <vapier@gentoo.org>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        John Marshall <John.W.Marshall@glasgow.ac.uk>
References: <A165C0C4-6879-49AB-8CF1-C1258C3F8773@glasgow.ac.uk>
 <2d3cff38-ba32-b382-c043-397af12d286b@gmail.com> <YjjquYSCEnlFr0PJ@vapier>
 <408859e3-dbf2-09a8-e404-210f4280d90b@gmail.com>
 <20220322094950.GA3775@quelltextlich.at>
 <a3a53704-84fe-7fc8-55d4-46094dc38ef2@gmail.com>
In-Reply-To: <a3a53704-84fe-7fc8-55d4-46094dc38ef2@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6iG7oiML3mv5twOZ6N25XBEU"
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------6iG7oiML3mv5twOZ6N25XBEU
Content-Type: multipart/mixed; boundary="------------0bM0662K5LwzksxrUxskClHM";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Christian Aistleitner <christian@quelltextlich.at>
Cc: Mike Frysinger <vapier@gentoo.org>,
 "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
 John Marshall <John.W.Marshall@glasgow.ac.uk>
Message-ID: <8a672358-07d0-3a64-30b0-5e25a46f1b80@gmail.com>
Subject: Re: Man-pages Git repository
References: <A165C0C4-6879-49AB-8CF1-C1258C3F8773@glasgow.ac.uk>
 <2d3cff38-ba32-b382-c043-397af12d286b@gmail.com> <YjjquYSCEnlFr0PJ@vapier>
 <408859e3-dbf2-09a8-e404-210f4280d90b@gmail.com>
 <20220322094950.GA3775@quelltextlich.at>
 <a3a53704-84fe-7fc8-55d4-46094dc38ef2@gmail.com>
In-Reply-To: <a3a53704-84fe-7fc8-55d4-46094dc38ef2@gmail.com>

--------------0bM0662K5LwzksxrUxskClHM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpPbiAzLzIyLzIyIDEyOjQ0LCBBbGVqYW5kcm8gQ29sb21hciAo
bWFuLXBhZ2VzKSB3cm90ZToNCj4+IFAuUy46IElmIHlvdSB0aGluayB0aGF0IHlldC1hbm90
aGVyLWxpbnV4LW1hbi1wYWdlcy1yZXBvLW9uLUdpdEh1YiBpcw0KPj4gY291bnRlci1wcm9k
dWN0aXZlIG9yIHlvdSBvYmplY3QgdG8gaGF2ZSB5b3VyIHNlcnZlciBxdWVyaWVkIGZvciBu
ZXcNCj4+IGNvbW1pdHMgZXZlcnkgaG91ciwgcGxlYXNlIGxldCBtZSBrbm93IGFuZCBJJ2xs
IHRlYXIgdGhhdCByZXBvIGRvd24NCj4+IGFnYWluLg0KPiANCj4gYSkgTm90IHJlYWxseSwg
YW5kIHRoYXQncyB5b3VyIGRlY2lzaW9uLsKgIEJ1dCBpZiB5b3UgYXNrIG1lLCBpZiBJIGhh
dmUgDQo+IHRvIGNob29zZSBiZXR3ZWVuICh0b28pIG1hbnkgZm9ya3MvbWlycm9ycywgb3Ig
anVzdCBhIHNpbmdsZSBzb3VyY2Ugb2YgDQo+IHRydXRoLCBJIHByZWZlciBtYW55LsKgIFdo
ZW4gdGhpbmdzIGdvIHdyb25nLCBtaXJyb3JzL2ZvcmtzIHNhdmUgdGhlIHdvcmxkLg0KPiAN
Cj4gYikgTmFoLCBJIGRvbid0IG1pbmQgdGhhdCBraW5kIG9mIHRyYWZmaWMuwqAgR28gYWhl
YWQuwqAgV2hhdCBJIGRvbid0IA0KPiBwcm9taXNlIGlzIHRoYXQgbXkgc2VydmVyIHdpbGwg
cmVzcG9uZCBhbHdheXM7IEkgbWF5IHR1cm4gaXQgb2ZmIGZvciANCj4gbWFpbnRlbmFuY2Ug
d2l0aG91dCBub3RpY2UuDQoNCg0KSSBub3cgaGF2ZSBwdXNoIGFjY2VzcyB0byBrZXJuZWwu
b3JnLCBhbmQgcHVzaGVkIGFsbCBvZiBteSBjb21taXRzIChmb3IgDQpub3cgdG8gYSBicmFu
Y2ggY2FsbGVkIGFseC9tYWluLCBhbmQgc29vbiB0byBtYXN0ZXIpLiAgVG8gbWUgaXQncyBm
aW5lIA0KaWYgeW91IGtlZXAgdGhlIGdpdGh1YiBtaXJyb3Igb2YgbXkgcGVyc29uYWwgc2Vy
dmVyLiAgSnVzdCBub3RpY2luZyB5b3UgDQp0aGF0IHRoZSByZWFzb24gaXQgb3JpZ2luYXRl
ZCBpcyBmYWRpbmcgYW5kIHlvdSB3YXkgd2FudCB0byBzYXZlIGEgZmV3IA0KY2VudHMgb24g
ZWxlY3RyaWNpdHkgYW5kL29yIG1haW50ZW5hbmNlLCBhbmQgc3RvcCB0aGF0IHNjcmlwdCA6
KQ0KDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0
cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------0bM0662K5LwzksxrUxskClHM--

--------------6iG7oiML3mv5twOZ6N25XBEU
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKatNEACgkQnowa+77/
2zLvbw/8DREUfbG5XPrQ0otRMReZTR18n5koMCmNwcYvHnZqnSCs+BD4NgHy8Yw8
/6DTH+mNTDq0FALSMmFgY/9q1QYVuFIcNldR/w5iZ/j2FjUTs4VvvaAC6/jnYdTF
oZ/CVpsmDEiFeNa55uCrjqnYhwptxDqhhVGxv/QCMF8BEQMiPOFKz6IvhkebuL/1
N7LdxuPVlna4s/Mn0d2ZmMZmEgs11quf8iGVlFOv5MvQgNF2AOfAKlHgqC9wxPEX
VgYkTM2GWx9oWdhSDRmSuFM1yRGj2glX4jeHfP7htCoWmbq/zz6VfywMkdAznF/k
GVbN/tYJr8y+ZfmN+TWJwetwLXc+JslVqQ4gkUYmZIC8Emlv9gWVqdIi3HRelB3X
+4BemEcKFLgKEcMAXBdRGIfmvb27UKNctz3AAYuDl+rrV1WGgH0qGrJEetYLA+ea
XSG3rb5z2wvAvUB3HK6nvY0MReUFTHSwgmUtcrgmZ+xBmGanlyGnDV72EK5khGAZ
eyD0+dCsMVRehhkJ5PC9Qisq+csHAb2pw80z7JfzYjIsWjQwX/lsUlI2hNnh18IC
NCN3/IkRQIM6AcDtoN3XGaGbRxs17QR5BAxUQdPEHRYySAmuLXqhGdPPrUsk2xNm
T4Q91invOvwhyvkY6Ueo1YcZLEw97LypVj4zTzP2446FDe4gAyA=
=aBMM
-----END PGP SIGNATURE-----

--------------6iG7oiML3mv5twOZ6N25XBEU--
