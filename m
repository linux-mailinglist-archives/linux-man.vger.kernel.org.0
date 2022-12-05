Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F066642896
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 13:37:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231829AbiLEMhp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 07:37:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231830AbiLEMhn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 07:37:43 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA59855B8
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 04:37:41 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id n16-20020a05600c3b9000b003d08febff59so4915859wms.3
        for <linux-man@vger.kernel.org>; Mon, 05 Dec 2022 04:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oJ/0IMEdWyqRnT6J/P5sFfM+AhzWgf7qDU8Iij+ZWdw=;
        b=PWitQN9G8J8Bf0tkNgbYA984DB2RAI/6yG6c7qpi+TFIbh/ndQR43bT3PTkoAg1iBw
         cb0+cmGGvaxobnejRdxcZxq0pdXgw5hIO+v7awuE/2u9PjWeXqmLCwAZAi/tkZ0ZgA54
         Q7eVdqlSepMI/KHr9MYtfnZet0Bx9GL0SuZM8bcefpeDz0+PDEo6XSU+5cBeg2iWa9Yz
         wMDfPzztTwE2JeRH30bOkTdA6gfOak7hg4CjcV5uyCqVZZLOaxe9/bqg9XNUw1Ukj38Q
         IyXdKsY/m0BhXhxb2RLWUs2IZguyQfidQRorfOBM3j2GDNOPnx1eX7uwArxq3fTSloLK
         ACsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oJ/0IMEdWyqRnT6J/P5sFfM+AhzWgf7qDU8Iij+ZWdw=;
        b=ZDQRubV3zvnVat5Khr3lGB/8VaRKgLkNJ3mMepBUZER9RVJiR475I40i4c4+UByuDq
         bsPpJrapPVJC3k0LsFO/vEthE+3d+4Fuz8J51kYubXF9p91rrSj8OgLznKYWHCoO8UWc
         xiSYGHZSfBt4hl/s4Ww/P0NkYA7lWt1D28A7moEyMkUUfO6P6rXYSsXF/GCNsjioHt2T
         57KFrJxSCuhQNBwVX4dvDRoVGcvrGvhVBq4UapB/QsQ8SnIioJ0tSBDV149P6ZF95jIo
         dhijAh0SiLVtStDRytE2p06VEC/+PktGtmX/5zV0ikxuTerQyIwWJXCvELfLN5hF5CK8
         o9YA==
X-Gm-Message-State: ANoB5pkQmtDWkPr6JWHhSnP7A0Wmjq/esZba6fT9bzRxH7BBGteQFJOq
        MbwOF74PHC9Vv59S/8Wg+HU=
X-Google-Smtp-Source: AA0mqf5TlHweEM5GspGAGsvDlog+pXv7yUzJ4M2W/yipTsc6S2cakJMd8PTTjpQ071g95O1c+xaz4g==
X-Received: by 2002:a05:600c:47cf:b0:3cf:6f77:375 with SMTP id l15-20020a05600c47cf00b003cf6f770375mr47873753wmo.102.1670243860284;
        Mon, 05 Dec 2022 04:37:40 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k10-20020a056000004a00b002365730eae8sm14153622wrx.55.2022.12.05.04.37.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 04:37:39 -0800 (PST)
Message-ID: <61229f29-5baa-0b7f-c673-1c87c807f3cd@gmail.com>
Date:   Mon, 5 Dec 2022 13:37:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page mount_namespaces.7
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
        linux-man@vger.kernel.org
References: <20221204090710.GA324@Debian-50-lenny-64-minimal>
 <20221205120305.htc2sd7r5qtvte5m@jwilk.net>
 <20221205123641.3ctrtk7cnyzkotyn@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221205123641.3ctrtk7cnyzkotyn@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------K46T1pRcv7ZPTMD67uG0apBl"
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
--------------K46T1pRcv7ZPTMD67uG0apBl
Content-Type: multipart/mixed; boundary="------------8VbhHSmOiuqXkDbe2JCVJkQ0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Jakub Wilk <jwilk@jwilk.net>
Cc: Helge Kreutzmann <debian@helgefjell.de>,
 =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <61229f29-5baa-0b7f-c673-1c87c807f3cd@gmail.com>
Subject: Re: Issue in man page mount_namespaces.7
References: <20221204090710.GA324@Debian-50-lenny-64-minimal>
 <20221205120305.htc2sd7r5qtvte5m@jwilk.net>
 <20221205123641.3ctrtk7cnyzkotyn@illithid>
In-Reply-To: <20221205123641.3ctrtk7cnyzkotyn@illithid>

--------------8VbhHSmOiuqXkDbe2JCVJkQ0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTIvNS8yMiAxMzozNiwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3cm90ZToNCj4gQXQgMjAy
Mi0xMi0wNVQxMzowMzowNSswMTAwLCBKYWt1YiBXaWxrIHdyb3RlOg0KPj4gKiBIZWxnZSBL
cmV1dHptYW5uIDxkZWJpYW5AaGVsZ2VmamVsbC5kZT4sIDIwMjItMTItMDQgMTA6MDc6DQo+
Pj4gSXNzdWU6ICAgIG1vdW50IG9yIHVubW91bnQg4oaSIG1vdW50IG9yIHVtb3VudA0KPj4N
Cj4+IFRoZSBzeXN0ZW0gY2FsbCBhbmQgdGhlIGNvbW1hbmQgbGluZSB0b29sIGFyZSB3cml0
dGVuIHdpdGhvdXQgIm4iIGZvcg0KPj4gaGlzdG9yaWNhbCByZWFzb25zLCBidXQgaXQncyBz
cGVsbGVkICJ1bm1vdW50IiBvdGhlcndpc2UuDQo+Pg0KPj4+ICJUaGlzIG1vdW50IHNoYXJl
cyBldmVudHMgd2l0aCBtZW1iZXJzIG9mIGEgcGVlciBncm91cC4gIE1vdW50IGFuZCB1bm1v
dW50Ig0KPj4+ICJldmVudHMgaW1tZWRpYXRlbHkgdW5kZXIgdGhpcyBtb3VudCB3aWxsIHBy
b3BhZ2F0ZSB0byB0aGUgb3RoZXIgbW91bnRzIHRoYXQiDQo+Pj4gImFyZSBtZW1iZXJzIG9m
IHRoZSBwZWVyIGdyb3VwLiAgSTxQcm9wYWdhdGlvbj4gaGVyZSBtZWFucyB0aGF0IHRoZSBz
YW1lIg0KPj4+ICJtb3VudCBvciB1bm1vdW50IHdpbGwgYXV0b21hdGljYWxseSBvY2N1ciB1
bmRlciBhbGwgb2YgdGhlIG90aGVyIG1vdW50cyBpbiINCj4+PiAidGhlIHBlZXIgZ3JvdXAu
ICBDb252ZXJzZWx5LCBtb3VudCBhbmQgdW5tb3VudCBldmVudHMgdGhhdCB0YWtlIHBsYWNl
IHVuZGVyIg0KPj4+ICJwZWVyIG1vdW50cyB3aWxsIHByb3BhZ2F0ZSB0byB0aGlzIG1vdW50
LiINCj4gDQo+IFllcywgbGV0IHVzIHBsZWFzZSBub3QgZW50cmVuY2ggVGhvbXBzb24gc3Bl
bGxpbmcgcmVmb3JtcyB0byBFbmdsaXNoIGluDQo+IG9yZGluYXJ5IHByb3NlLCBsZXN0IHdl
IGNyZWF0IG1vcmUgcHJvYmxlbXMgdGhhbiB3ZSBzb2x2ZS4NCg0KRGlkIHlvdSBtZWFuIHJl
c29sdj8gIEkgZGlkbid0IGtub3cgc29sdmUgaXMgYSB3b3JkIDpQDQoNCj4gDQo+IFJlZ2Fy
ZHMsDQo+IEJyYW5kZW4NCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5l
cy8+DQo=

--------------8VbhHSmOiuqXkDbe2JCVJkQ0--

--------------K46T1pRcv7ZPTMD67uG0apBl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmON5hIACgkQnowa+77/
2zLvlhAAnGF1Gjld44+3GWqa2RcuR0OaA/1IL9c6JIxVgRs36BmoD+1NmAPNK2aL
hUPjAVT5zspyW7vvs1RHemfz4w9mDZ4Q7kt9pUJ/hnVktVXfC9iW7I2ZQo2Gmvgv
YFlAM+3+LF+UexCSKa/aaoZcNQwqEaBBMMXlk2RdL3SMIbacbl9zAsTp3OBCZqsz
boPGtGSxn3ZKWURb3y1ktXC6TCltXw1upefJaNVwigvLEEuFT/qwbTKK/VfyfxIu
hWLkSaWNP3Us9BnQjNJHrbolXv8xMPy7cJ+O04BvV11VHeOt5aYyLVzGwjxrQhRi
KjuM4HiheUQUHEkODIKbk4gwdUMvq7+7n9kM/KDfBo24wDjm50u/mlf4wb7lCfkh
T0EIxMz1Sxv7HECfbTjVNDO1m/2x76i+mko2pBsiUFMxswZ2CBf1O3wPr6YGtrpi
zUCeJGBoFm7F230tE9bVRGVvY85/94P3OXDPbFrYeKGAVU0iEGohTBmLsdJZXjpx
6jGsztK32LktQTaNSa7UeIYmI5GwY9Q20zrDppPrhMbWc0uCeiv24W82GIwG2H5L
4NWrb7Ik+IxhT2poVrV39p+IRUvrox73+tbTl55hA4EpR57SlzhWBlG2WrC4vL4p
yNHr9IQpyaMnMkj4+EN3DroeHOcH7j6RuVxVv0gbVuNHxOBb2x4=
=/uuj
-----END PGP SIGNATURE-----

--------------K46T1pRcv7ZPTMD67uG0apBl--
