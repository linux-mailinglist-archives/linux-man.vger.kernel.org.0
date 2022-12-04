Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D747641C9E
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 12:25:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229913AbiLDLZD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 06:25:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229680AbiLDLZC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 06:25:02 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B318A1570B
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 03:25:00 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id q7so14633514wrr.8
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 03:25:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=880UTpowHo3ETDThrgLeytqZWuI7mYNmBylM+ni3qkQ=;
        b=oJ+p4Fb5NSkEg0dJHQDAHvfPLYGg9kR6YpXZkopinCsv4T4EkDyGnLAihZu8mS5XZI
         1RssaMOYrzdNIKXgrqddAOhP1W+becDzyX59hmyGaX6j8OhyfQuDyIVOBYTlhlNlKUam
         ITP98WjYRXklGXS3uq5i+3+Of8zRqwH1JwogOrYpRF2fmDSUF9j9rGnFlNphuIi6itbi
         R0QuMY59kE5S1QxtlEWKS6LSqkLeWTfXbZgaw9/dXkz4icfj8K2cQW4h3HbXNCOmKMgK
         qEIa11DSECALBP/Mi00fmptiCNXZxRRZaMpdF0vzAo/Hh+OLWmLCHJeWSSeTvbFbGoAE
         Iz0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=880UTpowHo3ETDThrgLeytqZWuI7mYNmBylM+ni3qkQ=;
        b=vrfDiWdELSDJ2XpAn+eh5R8LyrYJ2/E/SYWfMRHVNo4YuSB8hlQUcgyUz0OYyreQL5
         ZFQrA7bVLr5qkkOgSQKjEPeImH7iyt7xPTEXhG3qL53FTMbJcrLHEVZ7xbirlGpPuYBn
         3f+nE7iN+dow8Q3OWV10XyJ1A0UVjSDR4swkKRF8zelY7hlZINk0T3/XFM0h4Puag3Oq
         Js6R5GyslPzRXYIf2f9sfBbxkjIOo75RdPAaXy9wRZ4GCZf15JUx/fKrEBK094OvYfjT
         Y4H7AbNfNie989N8BZmdDktAlpOibg6Qp2KQzqTwXlKPWCiM0j74mk7+G4HRo7LCUktL
         aYQg==
X-Gm-Message-State: ANoB5plLiuvo2Gnn2TLzzhF/j2rzmhIoIE31QU0Qh76uX1MYGwJCzP9x
        Fq8fX3a3QI1+1hs586+5I6Y=
X-Google-Smtp-Source: AA0mqf5pYtUtmw4GT9ZnbaudoDJVNJYtJQim17ckkS4JK+g7LsOtzoTPgsDfMZ8YmdCC2uoYlsYFbQ==
X-Received: by 2002:a5d:628b:0:b0:242:26f0:d395 with SMTP id k11-20020a5d628b000000b0024226f0d395mr14468543wru.510.1670153099162;
        Sun, 04 Dec 2022 03:24:59 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b18-20020a05600010d200b002423a5d7cb1sm8603770wrx.113.2022.12.04.03.24.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 03:24:58 -0800 (PST)
Message-ID: <f3a2924c-fd3f-7dc2-2409-09b4631b81da@gmail.com>
Date:   Sun, 4 Dec 2022 12:24:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page dsp56k.4
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090708.GA32589@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090708.GA32589@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------CaFQF0HsRxL5AeFN00W0iZh9"
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
--------------CaFQF0HsRxL5AeFN00W0iZh9
Content-Type: multipart/mixed; boundary="------------Avy2fkUmuWSZcKTPMzbo15tX";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <f3a2924c-fd3f-7dc2-2409-09b4631b81da@gmail.com>
Subject: Re: Issue in man page dsp56k.4
References: <20221204090708.GA32589@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090708.GA32589@Debian-50-lenny-64-minimal>

--------------Avy2fkUmuWSZcKTPMzbo15tX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIEI8ZHNwNTZrPiDihpIgSTxkc3A1Nms+IChhcyBpbiBvdGhlciBwbGFj
ZXMgaW4gdGhpcyBmaWxlKQ0KPiANCj4gIlRoZSBCPGRzcDU2az4gZGV2aWNlIGlzIGEgY2hh
cmFjdGVyIGRldmljZSB3aXRoIG1ham9yIG51bWJlciA1NSBhbmQgbWlub3IiDQo+ICJudW1i
ZXIgMC4iDQoNCkZpeGVkLiAgVGhhbmtzIGZvciB0aGUgcmVwb3J0ISAgSSdtIHB1c2hpbmcg
dGhlc2UgY2hhbmdlcyB0byBhICd0cmFuc2xhdGlvbicgDQpicmFuY2ggaW4gdGhlIGdpdCBy
ZXBvc2l0b3J5LCBzbyB5b3UgY2FuIGhhdmUgYSBsb29rIGF0IHRoZSBjaGFuZ2VzIGJlZm9y
ZSBJIA0KYXBwbHkgdGhlbSB0byB0aGUgbWFzdGVyIGJyYW5jaC4gIEknbGwgYmUgY29uZmly
bWluZyB3aXRoIHNob3J0IG1lc3NhZ2VzIGFib3V0IA0KZWFjaCBpc3N1ZSB0aGF0IEkgZml4
Lg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29s
b21hci5lcy8+DQo=

--------------Avy2fkUmuWSZcKTPMzbo15tX--

--------------CaFQF0HsRxL5AeFN00W0iZh9
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMg4kACgkQnowa+77/
2zK/Gg//Wka4RFj2qZb3fsR4K5jEm43ktI8Y+57on/UDoKaa4g5V4AcI/bHXvO0k
4hrulrQefS8uDUaxWf0JGuJGPtmytDHkRgjO5gJOAvEvL8M2Yla1MQFauhFA/aFb
rEoGQMnLxwmbi83XF13Shoqqmj/JNBKRVOW4W2yXcv6aXpyGOE1X/KGSjble1G0Y
PxUUyM8+M1TclIb72O8f7xCLZJekAchhbCCfm3JTO1ys4/bmuNQRkDpkebor3+7w
4fckURyyWmTAhp5GU6w9CLqaLnkbtak7UsDPCF49i+y5Jq6Y0JYctYMounsLRAsX
pa2egEX2xUvC9Qo/DYptE4vnoRar0t9Mkvel7gwPPugyZdZwcB0hzBU+0QRewTQT
0aGjSN/fmTmGKAOxtmMhHnLiTugr3YrSp4Wbs5NrIL/kp5WoeSt6ZIsqbcxxFoA+
d5kMv1uAFWzhd0+N+VSsMme5Lxt50hz0FQ/zhP+Bw/b1dec4f8dvtN54Vu4h1DD+
r+Nde8xpQ2F8CZOKhR2r5otXawsZLr0E+kyDUzpTAX8DJwrc08DuUHHVdFdkxD54
LKXdZGAPmYQTj1P2RB29EhhQCMtnHkdN7isEDKmf30a8x2u2t18hShZBDgEo1Z9t
yFaEDRp24bshXwG10Y/d/+XPNqKNI5IJJQk2hkYJUqqwsjyuxLI=
=pDtY
-----END PGP SIGNATURE-----

--------------CaFQF0HsRxL5AeFN00W0iZh9--
