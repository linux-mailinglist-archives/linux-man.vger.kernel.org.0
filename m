Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD232641F98
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:44:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230108AbiLDUow (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:44:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbiLDUov (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:44:51 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E12F011C1C
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:44:50 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id u12so14913016wrr.11
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dSmupEMRzmd/s/hRn+kBLBVl544yqQkhTPXNNhC9zqM=;
        b=c9Jaac+wtHb2r+CMcWBGbsPpMPTfQ9VPjmRWH/uh8gT7Ef5SbK71IfxIfUoHRRf8lU
         NjlFUXe3cHp8Big9o6DQ0KNHGuhCOrpo57ZvGcFHi5Aa/zMqt/RVZriTf4fSBCHRdg1J
         iGLDdgdRQvdaVlbKAke305ROveRiKEtXQw4NLnxLdIluwTcIBpl+vPkGaU2QmZMvcjPr
         ZAgqP8ov9WTEueeNN67waKjWEB3uWm2Fn3kYhhZPTwNP4GLEzIKis7cfBZmXuBtf6Eqg
         lr8IlffMq6erlHuwWEAyfPF1OJpsk9poEUfSpuIUFdw37jrzoVr9OBRHj+pLb4u+DZ0q
         cCSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dSmupEMRzmd/s/hRn+kBLBVl544yqQkhTPXNNhC9zqM=;
        b=FxZp/j+1w/J1DsNR+zBuFJk6RCdLUOIVup2+UNowfcLLE//nAP9lwmvyXpAa+yGu8D
         p3tRkpfII6Mv0AF2yyG3mt4TSYXN5nhS4OGl7tNdkTyvW6mDEAXrDf209+JS4N3R0LIX
         e4gpdcig/O9IMf0eHjq2rQdAMg3CdQNKMwTD0xFxjB/M+uIO2LinVXRcO2XfI5niShXg
         sr6nbYPYmKqzSSgBZS3lCfaTCbs8R8kKMe6CKEFm1Mx1QGSb8GUqTCV96GavCNd2TTmk
         Kw8/7oZIWGoGCoMSjz3wvx/y+CuFYZrWyBrErPXmmynxVfgHdKVTLjvdv9gPwdld7Cj9
         HPoQ==
X-Gm-Message-State: ANoB5plXQe07Avy4ctezY9d+/uiKnVsidFWAqyFNLKhyGVex5Jy3vfF7
        ZzGfgmdg/7Bzww1PBlJ/cpYtfBmhslE=
X-Google-Smtp-Source: AA0mqf7/Cjl2GzOQUsKsc0dj++vGoUnrTFp7eB3V1/FqTZmPbAQdQLP1GLFVQmbtxGnqiuzdZw8bDg==
X-Received: by 2002:a5d:448c:0:b0:242:1f22:df20 with SMTP id j12-20020a5d448c000000b002421f22df20mr17158708wrq.173.1670186689515;
        Sun, 04 Dec 2022 12:44:49 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h16-20020a05600c2cb000b003c6bbe910fdsm23999893wmc.9.2022.12.04.12.44.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:44:49 -0800 (PST)
Message-ID: <e358f853-93e5-a30a-2d59-1115d64a61af@gmail.com>
Date:   Sun, 4 Dec 2022 21:44:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page wcsncpy.3
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090724.GA1249@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090724.GA1249@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------VN7ivUTw40TGhf3mTQQODkzY"
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
--------------VN7ivUTw40TGhf3mTQQODkzY
Content-Type: multipart/mixed; boundary="------------obd4YmFwvoqxGaPm2X90TYAa";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <e358f853-93e5-a30a-2d59-1115d64a61af@gmail.com>
Subject: Re: Issue in man page wcsncpy.3
References: <20221204090724.GA1249@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090724.GA1249@Debian-50-lenny-64-minimal>

--------------obd4YmFwvoqxGaPm2X90TYAa
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIElzIHRoZSAiTCIgaW4gdGhlIGJyYWNrZXQgKGZvciB0aGUgTlVMTCBj
aGFyYWN0ZXIpIGNvcnJlY3Q/DQoNCkFGQUlLLCB5ZXMuICBJIG5ldmVyIHVzZWQgaXQgbXlz
ZWxmLCBidXQgSSBiZWxpZXZlIEwnXDAnIGdlbmVyYXRlcyBhICJudWxsIHdpZGUgDQpjaGFy
YWN0ZXIiLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCj4gIlRoZSBCPHdjc25jcHk+KCkg
IGZ1bmN0aW9uIGlzIHRoZSB3aWRlLWNoYXJhY3RlciBlcXVpdmFsZW50IG9mIHRoZSINCj4g
IkI8c3RybmNweT4oMykgIGZ1bmN0aW9uLiAgSXQgY29waWVzIGF0IG1vc3QgSTxuPiB3aWRl
IGNoYXJhY3RlcnMgZnJvbSB0aGUiDQo+ICJ3aWRlLWNoYXJhY3RlciBzdHJpbmcgcG9pbnRl
ZCB0byBieSBJPHNyYz4sIGluY2x1ZGluZyB0aGUgdGVybWluYXRpbmcgbnVsbCINCj4gIndp
ZGUgY2hhcmFjdGVyIChMXFwoYXFcXGUwXFwoYXEpLCB0byB0aGUgYXJyYXkgcG9pbnRlZCB0
byBieSBJPGRlc3Q+LiINCj4gIkV4YWN0bHkgSTxuPiB3aWRlIGNoYXJhY3RlcnMgYXJlIHdy
aXR0ZW4gYXQgSTxkZXN0Pi4gIElmIHRoZSBsZW5ndGgiDQo+ICJJPHdjc2xlbihzcmMpPiBp
cyBzbWFsbGVyIHRoYW4gSTxuPiwgdGhlIHJlbWFpbmluZyB3aWRlIGNoYXJhY3RlcnMgaW4g
dGhlIg0KPiAiYXJyYXkgcG9pbnRlZCB0byBieSBJPGRlc3Q+IGFyZSBmaWxsZWQgd2l0aCBu
dWxsIHdpZGUgY2hhcmFjdGVycy4gIElmIHRoZSINCj4gImxlbmd0aCBJPHdjc2xlbihzcmMp
PiBpcyBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gSTxuPiwgdGhlIHN0cmluZyBwb2ludGVk
Ig0KPiAidG8gYnkgSTxkZXN0PiB3aWxsIG5vdCBiZSB0ZXJtaW5hdGVkIGJ5IGEgbnVsbCB3
aWRlIGNoYXJhY3Rlci4iDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIu
ZXMvPg0K

--------------obd4YmFwvoqxGaPm2X90TYAa--

--------------VN7ivUTw40TGhf3mTQQODkzY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONBr8ACgkQnowa+77/
2zJZvBAAn+IhbNlCTuwMwo5HX0LIBdqDYQTi1bggWbR+XMib4/SsnWq/IKjXfJf2
nZa+qSu5BoETBGZ2GCbffUcnBtCob6Da8cIEzL+GpuYW0GSi20Ixek1P1tiE9kX7
YDvbHE71dnCaVIs3+eKn7jvhuTgKya0SOGGSN9kHGMOj1PcGg12o8h5l31VZgnQ7
shW4dHSBOxokzrXuhzwQSAKyHW9EHKj4PProL6dSGoHWH8f9MxzsNWFVAuiUbHYo
lJSDcaGp/5M+V1SnnPVa/O3+UHXpwlLfdGILVIwEj7cCDJUnKGLDwhX6FwFxzZoP
K7qLEh28JIvswHO+ODx5EbT1V+9FyFxLGtpA7NRxoM2NfwTkP63C/lKjFfLltq71
pRFbtmNGa7o8M/NSqhY4u1szkHPLxRiIhycr3pdtOHs3JHkcTJlXFox2cF6d9T5m
NXhmhU6bGJTGPVZYh6SWXr3tnR3aVl797YxceIXQFFQRQvjNs2cT0/1BzRzlCyay
X3GYGJRtLQw7igjg59WKmCNA51ZuIfK4+DWvpzZRsalbuC0E2fIIsmORBYCaEI4d
QUV+I1uPJLdTAIfUcjrBOMeMpieyGZqqB/hV5PnecGDIC+JOMeWTj/T6o31R/zv4
aykBTeQp0zQ9WLEhgbcxhs0CFi6Oce1d5bcDtfk7AS8RH9hzpsg=
=Gg8E
-----END PGP SIGNATURE-----

--------------VN7ivUTw40TGhf3mTQQODkzY--
