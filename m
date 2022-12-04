Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7A96641F70
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:15:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230292AbiLDUPj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:15:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229960AbiLDUPi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:15:38 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2B6C60F6
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:15:37 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id w15so15805683wrl.9
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:15:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NF6iFppiDiz1OTTDZZwbOo+CkaY4tLP95vb2r2V7opI=;
        b=R5Sq/BYMuf12uOTk30uWY5ZYj5MOAE1c/DwIHrVqNaaXvf8WSbCHxPve12o0yjREL+
         wfFnNVwVYrqiE7s+kVgfOYJ+4bebbXEQ8BbQdXJvCM6AYLj50fHqiTY1BJ9d5jXkppZD
         jB/+FhZx8ApIhJ0HGPugXcPVfeeA836xEYiqVEj+EHKScd39F7aFoE9qhMbORBFQdheU
         f7sIceh8gl7dXml6z7pWUqaJwJOjqIbKM2UhjWyhz7/IujEVEv7F3m95GQy2I72VEbPR
         xM+Y9j65lZbCYRgcj222CGokflUGs/miLwjmqZJmxCucZhmGgYYS3oXpE3X+an4Cu7pL
         rcLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NF6iFppiDiz1OTTDZZwbOo+CkaY4tLP95vb2r2V7opI=;
        b=Taqysx7NJZwsy80Bl32y5YOIuF+33kNH+JMbfoEr0WWv1qBzSx6GuT9jtFqCxm/WHk
         p3FJkiGl2sR0SyyUegjkw2HT92mZ3u4isjcFjKZp+DPJdxsFDlY0tcpUfsniP3MbgzEQ
         5G/KWXSISCCA5T4ozPEiH3g72XCwkw9KsjxXZRBr3CdlZfqBv/ogPnMvzj6yRdKNPFHa
         Z7xF90sehiEYfxhYZziGeRTJmJk7r9syoREAzeeP4O+R7YBsR8k1oSIW1550NDemJovw
         37+iKk529WvTexZNj+H802DNtYTcCPeuLLi7cxFXr3J7vn4W33ZSVxjuhdgWBpX4jT2e
         0phA==
X-Gm-Message-State: ANoB5pl1/WxReCC4V3p1FWQBGbMnmvUzi0fErnV6o7gobki0dCEqsPW6
        i7r9G1PxvbQBT18dUhBBLEE=
X-Google-Smtp-Source: AA0mqf473Vgp0Cz/Mz/aUDMfu+oZ+Bw5t1R6kBMgzyonuOH3fbejkygKXHZRaMha0Jbodz5GuWp5Vg==
X-Received: by 2002:adf:ea8f:0:b0:242:5afd:bc5d with SMTP id s15-20020adfea8f000000b002425afdbc5dmr2752692wrm.305.1670184936381;
        Sun, 04 Dec 2022 12:15:36 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id co16-20020a0560000a1000b00241b6d27ef1sm12783837wrb.104.2022.12.04.12.15.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:15:36 -0800 (PST)
Message-ID: <afe79215-3601-e984-cad4-d84661cdaf11@gmail.com>
Date:   Sun, 4 Dec 2022 21:15:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page user_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090720.GA1002@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090720.GA1002@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------noSjGVGkVO4Ln1eXVjEqsEVY"
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
--------------noSjGVGkVO4Ln1eXVjEqsEVY
Content-Type: multipart/mixed; boundary="------------6mRci6qdk7Gif0TpAR4BMefn";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <afe79215-3601-e984-cad4-d84661cdaf11@gmail.com>
Subject: Re: Issue in man page user_namespaces.7
References: <20221204090720.GA1002@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090720.GA1002@Debian-50-lenny-64-minimal>

--------------6mRci6qdk7Gif0TpAR4BMefn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIEk8dXNhZ2UoKT4gIOKGkiBJPHVzYWdlPigpDQo+IA0KPiAiVGhlIHByb2dyYW0gYmVs
b3cgaXMgZGVzaWduZWQgdG8gYWxsb3cgZXhwZXJpbWVudGluZyB3aXRoIHVzZXIgbmFtZXNw
YWNlcywiDQo+ICJhcyB3ZWxsIGFzIG90aGVyIHR5cGVzIG9mIG5hbWVzcGFjZXMuICBJdCBj
cmVhdGVzIG5hbWVzcGFjZXMgYXMgc3BlY2lmaWVkIGJ5Ig0KPiAiY29tbWFuZC1saW5lIG9w
dGlvbnMgYW5kIHRoZW4gZXhlY3V0ZXMgYSBjb21tYW5kIGluc2lkZSB0aG9zZSBuYW1lc3Bh
Y2VzLiINCj4gIlRoZSBjb21tZW50cyBhbmQgSTx1c2FnZSgpPiBmdW5jdGlvbiBpbnNpZGUg
dGhlIHByb2dyYW0gcHJvdmlkZSBhIGZ1bGwiDQo+ICJleHBsYW5hdGlvbiBvZiB0aGUgcHJv
Z3JhbS4gIFRoZSBmb2xsb3dpbmcgc2hlbGwgc2Vzc2lvbiBkZW1vbnN0cmF0ZXMgaXRzIg0K
PiAidXNlLiINCg0KRml4ZWQuICBUaGFua3MuDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFu
ZHJvLWNvbG9tYXIuZXMvPg0K

--------------6mRci6qdk7Gif0TpAR4BMefn--

--------------noSjGVGkVO4Ln1eXVjEqsEVY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOM/+YACgkQnowa+77/
2zLtmxAApXi0KfAH4Q9JSyR8Afacka9C14ukpIwZbz95Gyh1m50rrfWnNFeEoFnA
jmNnz7zV3i1uI7xTl6pVmBwFlQlWx1lhYWwPucURsf/bxuPtfUldsTBYVQh5uH4l
0HsfOKZc9btEVJyJ/0PSovNuKCFrkMX4lzYVuR/aA6EAsWmZfMsu0G08HFzz6uu8
Zd/hoFeKHzZDAlldcHelEl4KDtjE9sLAzstA0y0H6m/jwW9F1r1Zl2puJKjVsLJ1
+/0S+w4lLJdTSdNAeHCbaox16heLRTjCY0LUNWCZ5cMR+KQhkVMM6YgboVS81HgR
mFovfBxKFoNuHmxXplv9Wzg1a7E4KwpQ6kvUBWS6Iov6fJyjo9udrtjOGsxANcvV
ZehPERoj4tGPnlVsU7kFmsBYgLRg3Msoc1ghrwe1FInwT2ghh+EebJZCtzT/6Gp0
wlkw6ahBkECLR3JAde7r/Ksvh3mdA4iwNvqUqDdhxFqQXO+mro/8NQm3wtq7jAYw
8x52oLXvSey7lfItz/jKOJMv4kE7VmdDv/pKLwRoEz9bYfs/S4oshuyA2OYnWpn3
vLfeGVGplBsFuPWlRYMOu72T6I08N4oZ3foNpwmhimvPIABOg1PvRIaqNYLPFRge
GTia7YkYhG+a+R4f9SPwjuIbF/JYLxzaRhAP2WVa9HoKJOu8P6Q=
=U/Gh
-----END PGP SIGNATURE-----

--------------noSjGVGkVO4Ln1eXVjEqsEVY--
