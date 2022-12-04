Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F713641F82
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:27:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230117AbiLDU1K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:27:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230115AbiLDU1J (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:27:09 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC960B1C0
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:27:08 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id m14so15824371wrh.7
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:27:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Q2p67wmSfppOLTR0IJi3q+om3G18MRovAh4TGxmH8Q=;
        b=ZnJC4W6WdQQo00Qxnhw/N2oG3jVaAaayXqOq2MUb1oNBXSZjAxtS7d/0oF/6RGR5Hj
         N33SZiec7VLNJVRX41sCnyYUAvdTRRmeOgSdVCKW3wX7wPr8I/hBG9bKZ+qPOnoNHItW
         n9wo5F86Vt/b9IaE5+vpb+mgFK/HyJB1nQIr6VvUSODW297tEtqMWsJQUfvH5xUDwFZm
         bcw/8cqhmRgN4Q45SUVOPUzcG8/aEEWQ5zuh76DmW7EY/1WCZKnHigd1zleHcgguSCfJ
         3GNJzkMTEL4czZKesgN/EyVyM69gOJ6KoLeOafnJLxgCdh+BNQANwqETAru1KgGiiHJr
         BV5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9Q2p67wmSfppOLTR0IJi3q+om3G18MRovAh4TGxmH8Q=;
        b=J7mtypHPKX4UG0OWcl2BSFjZ6zx8b52FMA59YS5h3SlfKNETNsZAKJepCbX6PwekWg
         5wse0uGSuF+a4UO2u3eIIL2Sama0+M5y5IQgdWH8WeTFU30pBnusz59PQId5Y4Z0Np3N
         8Ey0WfuL7wA21fiTZXwP6dvLo/sGRcdTR0RKmbc6X8opn4c7u/7z7iJaRM5C2iMv/09P
         /qLjkTVHYnPQC1g56s3y7Zw6s/c+o+6oSKd4Ocs55orkVjjdnj4Kc8qvW8XYvX97EhU9
         8I0WsoQRPNPQTk3101+irqbgVH0Qutf2E4ynFMvHzPuqsLQFbrnYseHRw2NfYFCtBZDQ
         Bpvg==
X-Gm-Message-State: ANoB5pn6+56WqytYmYohq/nwwTvT1Z7fMnnunVADFKGvfQuvHHiY6XJk
        KwSyy3qhyYo8useydp+H3+I=
X-Google-Smtp-Source: AA0mqf4E235GkpFgfgtis5Lz8FPBzq3+aZ+mX0l2nTkSiqEKZV8suwinBMi0NYhyl+Qaqwucdmwa5g==
X-Received: by 2002:a5d:6745:0:b0:242:7e6:a0a0 with SMTP id l5-20020a5d6745000000b0024207e6a0a0mr26436185wrw.512.1670185627191;
        Sun, 04 Dec 2022 12:27:07 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a3-20020adffac3000000b0024245e543absm7211015wrs.88.2022.12.04.12.27.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:27:06 -0800 (PST)
Message-ID: <0cfe8177-6671-c006-efb8-7634bd3b2cd7@gmail.com>
Date:   Sun, 4 Dec 2022 21:27:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page wcscspn.3
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090723.GA1178@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090723.GA1178@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Ebvs8brbG5wdSU6PcRPVuzG0"
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
--------------Ebvs8brbG5wdSU6PcRPVuzG0
Content-Type: multipart/mixed; boundary="------------ZYd5vbDXP5CxZ7ZPyA9q0KD0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <0cfe8177-6671-c006-efb8-7634bd3b2cd7@gmail.com>
Subject: Re: Issue in man page wcscspn.3
References: <20221204090723.GA1178@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090723.GA1178@Debian-50-lenny-64-minimal>

--------------ZYd5vbDXP5CxZ7ZPyA9q0KD0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIGxvbmdlc3QgaW5pdGlhbCDihpIgaW5pdGlhbA0KDQpXaHk/ICBJIGJlbGlldmUgImxv
bmdlc3QgaW5pdGlhbCIgaXMgZmluZS4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gDQo+ICJU
aGUgQjx3Y3Njc3BuPigpICBmdW5jdGlvbiBpcyB0aGUgd2lkZS1jaGFyYWN0ZXIgZXF1aXZh
bGVudCBvZiB0aGUiDQo+ICJCPHN0cmNzcG4+KDMpICBmdW5jdGlvbi4gIEl0IGRldGVybWlu
ZXMgdGhlIGxlbmd0aCBvZiB0aGUgbG9uZ2VzdCBpbml0aWFsIg0KPiAic2VnbWVudCBvZiBJ
PHdjcz4gd2hpY2ggY29uc2lzdHMgZW50aXJlbHkgb2Ygd2lkZS1jaGFyYWN0ZXJzIG5vdCBs
aXN0ZWQgaW4iDQo+ICJJPHJlamVjdD4uICBJbiBvdGhlciB3b3JkcywgaXQgc2VhcmNoZXMg
Zm9yIHRoZSBmaXJzdCBvY2N1cnJlbmNlIGluIHRoZSB3aWRlLSINCj4gImNoYXJhY3RlciBz
dHJpbmcgSTx3Y3M+IG9mIGFueSBvZiB0aGUgY2hhcmFjdGVycyBpbiB0aGUgd2lkZS1jaGFy
YWN0ZXIiDQo+ICJzdHJpbmcgSTxyZWplY3Q+LiINCj4gDQo+ICJUaGUgQjx3Y3Njc3BuPigp
ICBmdW5jdGlvbiByZXR1cm5zIHRoZSBudW1iZXIgb2Ygd2lkZSBjaGFyYWN0ZXJzIGluIHRo
ZSINCj4gImxvbmdlc3QgaW5pdGlhbCBzZWdtZW50IG9mIEk8d2NzPiB3aGljaCBjb25zaXN0
cyBlbnRpcmVseSBvZiB3aWRlLWNoYXJhY3RlcnMiDQo+ICJub3QgbGlzdGVkIGluIEk8cmVq
ZWN0Pi4gIEluIG90aGVyIHdvcmRzLCBpdCByZXR1cm5zIHRoZSBwb3NpdGlvbiBvZiB0aGUi
DQo+ICJmaXJzdCBvY2N1cnJlbmNlIGluIHRoZSB3aWRlLWNoYXJhY3RlciBzdHJpbmcgSTx3
Y3M+IG9mIGFueSBvZiB0aGUiDQo+ICJjaGFyYWN0ZXJzIGluIHRoZSB3aWRlLWNoYXJhY3Rl
ciBzdHJpbmcgSTxyZWplY3Q+LCBvciBJPHdjc2xlbih3Y3MpPiBpZiINCj4gInRoZXJlIGlz
IG5vbmUuIg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==


--------------ZYd5vbDXP5CxZ7ZPyA9q0KD0--

--------------Ebvs8brbG5wdSU6PcRPVuzG0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONApkACgkQnowa+77/
2zJbkhAAk7NAWEtQdmTGFQ367RTdRAEtTwy0EITGZ1jxyp9g3g6sL2mz5UERo1UR
idd4Cq0uEpLYB/g3HS6UR0qjM2SYLZsOaH6SvkH2aAJBO7RUi1JMe4ZqkRKTwYQo
Q4/hJLO3YWBQUuJdVpRaYxSY4VrcwkdiM9nuWfi4W1OeGzfuMapuFvasj2BcqoWE
QDPc4+aItsC87cyMqKrFvxfiY1qlr74UTCy49eOmuaVyUe2+DKdl5NXUP+r6Xvzk
p2UDbk5XP2t7/0EuAVeUPJY6paGbfv2nqMADEbx97tFRzUBgVCDqedphFLi9y4+Z
Ja53NQWs9rRPSkESU9YFon0KtcMV1GNmV/7H70ORt+dioJWhYGD8AaMeiLQNy8Zx
LcNI2O/lorNjnHxj+oNBOW/p54Yr6g4kPKH/ohQ+LztcizmucxFw6KefOZb4yr3V
QguViAp4tvpoOH6sjIZJWq+frH5zDn6arMxi/Kmn2jgM8OofPTGKvwW3qmh7/0BI
EThl9FEfQNaKTV2hpvNyKE0Zxvvyn3gAwGrvj479HzOz1S8DV4Zd3ODtgGM35XIH
jwA89mbOEx1/AD+x6tk2HVu/Pfzc7sIhZTULhCQXxsKpQcX7mWsdbKh1F9K5q5gr
uWXPB7TuL6Gr6yBZp28he9j2cjPtz5oPP5j0LKvhWrZHQdlZ+O8=
=sBPf
-----END PGP SIGNATURE-----

--------------Ebvs8brbG5wdSU6PcRPVuzG0--
