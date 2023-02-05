Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4132E68B04A
	for <lists+linux-man@lfdr.de>; Sun,  5 Feb 2023 15:28:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229676AbjBEO2u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 09:28:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbjBEO2t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 09:28:49 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B1701DBA6
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 06:28:48 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so9090681wmb.2
        for <linux-man@vger.kernel.org>; Sun, 05 Feb 2023 06:28:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k4CStKdX8cCJFsVt6Ed6s1uwOjLAktRQT7QjBXmt8WM=;
        b=j0TbC/Oq2okLIEDrVWiVoX8cTY2iCI6ElE/SCtfzlzYwsSfoSdr6FeQSWIpWsyy5+x
         f9jBhVR7Y+34A6d9r6Pny9Geyl0lr19LBf67an1kdrRL9ZwfEq72tL87yHWTbKF7Zs2z
         yfinoBaN1Y3rG+5yA/zO5bEK7VJ8QWzJ6gBbCiRlvPIqY3DN5DNSW6YM2cZmDBRwvlWx
         VTZoCYDWuHxI+oBVLygVI3TTtc5cXgw8adirQoRjde0OGZD41HlOPOpTodU1tkK161/U
         Pl99hn3MEVRPU5dihcawLdTm8yaFkAOWxiSYPDugYJ8OjdPCu2ms3Y9PsT2gMlE7pJJr
         hxqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=k4CStKdX8cCJFsVt6Ed6s1uwOjLAktRQT7QjBXmt8WM=;
        b=JmmbuZbY1tYfMSWZ9+TpMk/Z2rwRuJNiG8aZeBx8iDCmGUZqzsHbQPfP86ad4gjdgR
         JkRWdib5H8u9cobARWRkvS5Mb4Nm16hzzaZxAewIobJQRTYXzJJXDCpT65FPqgxWGfcB
         00r75vqVDxgyEckNMnY82E5hSQH3l14Xbn5+SJFnz86AH7hiFN8Ml8K69LpylftfYlJx
         zLO8N4oLZXaUG3BIWLOd3Au7oJRClVpEx0eJ8QHNxWS7Q6iW5D46k5kXCQobDgRkjlWK
         uQugVQRJALZJ0JJX+aAesQJBZ3O1c6+uo74EP8cmJswXSimtQZ1WiTRbGbOdr6RJ2ZrM
         TPTA==
X-Gm-Message-State: AO0yUKUzQM9ftUn49sXEw+6vZYEnJgzxSmBn57skVlzt86dzGKY1U+73
        BRdoOt9yYNneUBfLHADxwkbIK0Ig7OY=
X-Google-Smtp-Source: AK7set9WEBOrZGiswFXyxbwt0eonX1onr6wYsooMiLnhNpO6rvCcP7s+e6t5ybhNTCJAn1a87OybFw==
X-Received: by 2002:a05:600c:3489:b0:3da:f670:a199 with SMTP id a9-20020a05600c348900b003daf670a199mr15982948wmq.36.1675607326772;
        Sun, 05 Feb 2023 06:28:46 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l4-20020a05600c2cc400b003dfefe115b9sm5297069wmc.0.2023.02.05.06.28.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Feb 2023 06:28:46 -0800 (PST)
Message-ID: <1482b0cf-cb89-76a3-ca33-ad9b29ef21f5@gmail.com>
Date:   Sun, 5 Feb 2023 15:28:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: Issue in man page charsets.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230122193133.GA29311@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230122193133.GA29311@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JBj98X50PYzgR3nTtdG936ep"
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
--------------JBj98X50PYzgR3nTtdG936ep
Content-Type: multipart/mixed; boundary="------------0KYlG0yF6Zz0RVQOFHJGYsyH";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <1482b0cf-cb89-76a3-ca33-ad9b29ef21f5@gmail.com>
Subject: Re: Issue in man page charsets.7
References: <20230122193133.GA29311@Debian-50-lenny-64-minimal>
In-Reply-To: <20230122193133.GA29311@Debian-50-lenny-64-minimal>

--------------0KYlG0yF6Zz0RVQOFHJGYsyH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEvMjIvMjMgMjA6MzEsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIElTTyDihpIgSVNPL0lFQw0KDQpQbGVhc2Ugc29tZW9uZSB3cml0ZSBh
IGRvY3VtZW50ZWQgcGF0Y2ggZm9yIHRoaXMgb25lLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0K
PiANCj4gIkFTQ0lJIChBbWVyaWNhbiBTdGFuZGFyZCBDb2RlIEZvciBJbmZvcm1hdGlvbiBJ
bnRlcmNoYW5nZSkgaXMgdGhlIG9yaWdpbmFsIDctIg0KPiAiYml0IGNoYXJhY3RlciBzZXQs
IG9yaWdpbmFsbHkgZGVzaWduZWQgZm9yIEFtZXJpY2FuIEVuZ2xpc2guICBBbHNvIGtub3du
IGFzIg0KPiAiVVMtQVNDSUkuICBJdCBpcyBjdXJyZW50bHkgZGVzY3JpYmVkIGJ5IHRoZSBJ
U08gNjQ2OjE5OTEgSVJWIChJbnRlcm5hdGlvbmFsIg0KPiAiUmVmZXJlbmNlIFZlcnNpb24p
IHN0YW5kYXJkLiINCj4gDQo+ICJUaGUgSVNPIDIwMjIgYW5kIDQ4NzMgc3RhbmRhcmRzIGRl
c2NyaWJlIGEgZm9udC1jb250cm9sIG1vZGVsIGJhc2VkIG9uIFZUMTAwIg0KPiAicHJhY3Rp
Y2UuICBUaGlzIG1vZGVsIGlzIChwYXJ0aWFsbHkpIHN1cHBvcnRlZCBieSB0aGUgTGludXgg
a2VybmVsIGFuZCBieSINCj4gIkI8eHRlcm0+KDEpLiAgU2V2ZXJhbCBJU08gMjAyMi1iYXNl
ZCBjaGFyYWN0ZXIgZW5jb2RpbmdzIGhhdmUgYmVlbiBkZWZpbmVkLCINCj4gImVzcGVjaWFs
bHkgZm9yIEphcGFuZXNlLiINCj4gDQo+ICJBIDk0LWNoYXJhY3RlciBzZXQgaXMgZGVzaWdu
YXRlZCBhcyBHSTxuPiBjaGFyYWN0ZXIgc2V0IGJ5IGFuIGVzY2FwZSINCj4gInNlcXVlbmNl
IEVTQyAoIHh4IChmb3IgRzApLCBFU0MgKSB4eCAoZm9yIEcxKSwgRVNDICogeHggKGZvciBH
MiksIEVTQyArIHh4Ig0KPiAiKGZvciBHMyksIHdoZXJlIHh4IGlzIGEgc3ltYm9sIG9yIGEg
cGFpciBvZiBzeW1ib2xzIGZvdW5kIGluIHRoZSBJU08gMjM3NSINCj4gIkludGVybmF0aW9u
YWwgUmVnaXN0ZXIgb2YgQ29kZWQgQ2hhcmFjdGVyIFNldHMuICBGb3IgZXhhbXBsZSwgRVND
ICggQCINCj4gInNlbGVjdHMgdGhlIElTTyA2NDYgY2hhcmFjdGVyIHNldCBhcyBHMCwgRVND
ICggQSBzZWxlY3RzIHRoZSBVSyBzdGFuZGFyZCINCj4gImNoYXJhY3RlciBzZXQgKHdpdGgg
cG91bmQgaW5zdGVhZCBvZiBudW1iZXIgc2lnbiksIEVTQyAoIEIgc2VsZWN0cyBBU0NJSSIN
Cj4gIih3aXRoIGRvbGxhciBpbnN0ZWFkIG9mIGN1cnJlbmN5IHNpZ24pLCBFU0MgKCBNIHNl
bGVjdHMgYSBjaGFyYWN0ZXIgc2V0IGZvciINCj4gIkFmcmljYW4gbGFuZ3VhZ2VzLCBFU0Mg
KCAhIEEgc2VsZWN0cyB0aGUgQ3ViYW4gY2hhcmFjdGVyIHNldCwgYW5kIHNvIG9uLiINCj4g
DQo+ICJJU08gNDg3MyBzdGlwdWxhdGVzIGEgbmFycm93ZXIgdXNlIG9mIGNoYXJhY3RlciBz
ZXRzLCB3aGVyZSBHMCBpcyBmaXhlZCINCj4gIihhbHdheXMgQVNDSUkpLCBzbyB0aGF0IEcx
LCBHMiwgYW5kIEczIGNhbiBiZSBpbnZva2VkIG9ubHkgZm9yIGNvZGVzIHdpdGgiDQo+ICJ0
aGUgaGlnaCBvcmRlciBiaXQgc2V0LiAgSW4gcGFydGljdWxhciwgQjxcXChoYU4+IGFuZCBC
PFxcKGhhTz4gYXJlIG5vdCB1c2VkIg0KPiAiYW55bW9yZSwgRVNDICggeHggY2FuIGJlIHVz
ZWQgb25seSB3aXRoIHh4PUIsIGFuZCBFU0MgKSB4eCwgRVNDICogeHgsIEVTQyArIg0KPiAi
eHggYXJlIGVxdWl2YWxlbnQgdG8gRVNDIC0geHgsIEVTQyAuIHh4LCBFU0MgLyB4eCwgcmVz
cGVjdGl2ZWx5LiINCj4gDQo+ICJVbmljb2RlIChJU08gMTA2NDYpIGlzIGEgc3RhbmRhcmQg
d2hpY2ggYWltcyB0byB1bmFtYmlndW91c2x5IHJlcHJlc2VudCINCj4gImV2ZXJ5IGNoYXJh
Y3RlciBpbiBldmVyeSBodW1hbiBsYW5ndWFnZS4gIFVuaWNvZGUncyBzdHJ1Y3R1cmUgcGVy
bWl0cyAyMC4xIg0KPiAiYml0cyB0byBlbmNvZGUgZXZlcnkgY2hhcmFjdGVyLiAgU2luY2Ug
bW9zdCBjb21wdXRlcnMgZG9uJ3QgaW5jbHVkZSAyMC4xLWJpdCINCj4gImludGVnZXJzLCBV
bmljb2RlIGlzIHVzdWFsbHkgZW5jb2RlZCBhcyAzMi1iaXQgaW50ZWdlcnMgaW50ZXJuYWxs
eSBhbmQiDQo+ICJlaXRoZXIgYSBzZXJpZXMgb2YgMTYtYml0IGludGVnZXJzIChVVEYtMTYp
IChuZWVkaW5nIHR3byAxNi1iaXQgaW50ZWdlcnMiDQo+ICJvbmx5IHdoZW4gZW5jb2Rpbmcg
Y2VydGFpbiByYXJlIGNoYXJhY3RlcnMpIG9yIGEgc2VyaWVzIG9mIDgtYml0IGJ5dGVzIg0K
PiAiKFVURi04KS4iDQo+IA0KPiAiQSBieXRlIDExMHh4eHh4IGlzIHRoZSBzdGFydCBvZiBh
IDItYnl0ZSBjb2RlLCBhbmQgMTEweHh4eHggMTB5eXl5eXkgaXMiDQo+ICJhc3NlbWJsZWQg
aW50byAwMDAwMHh4eCB4eHl5eXl5eS4gIEEgYnl0ZSAxMTEweHh4eCBpcyB0aGUgc3RhcnQg
b2YgYSAzLWJ5dGUiDQo+ICJjb2RlLCBhbmQgMTExMHh4eHggMTB5eXl5eXkgMTB6enp6enog
aXMgYXNzZW1ibGVkIGludG8geHh4eHl5eXkgeXl6enp6enouIg0KPiAiKFdoZW4gVVRGLTgg
aXMgdXNlZCB0byBjb2RlIHRoZSAzMS1iaXQgSVNPIDEwNjQ2IHRoZW4gdGhpcyBwcm9ncmVz
c2lvbiINCj4gImNvbnRpbnVlcyB1cCB0byA2LWJ5dGUgY29kZXMuKSINCj4gDQo+ICJGb3Ig
bW9zdCB0ZXh0cyBpbiBJU08gODg1OSBjaGFyYWN0ZXIgc2V0cywgdGhpcyBtZWFucyB0aGF0
IHRoZSBjaGFyYWN0ZXJzIg0KPiAib3V0c2lkZSBvZiBBU0NJSSBhcmUgbm93IGNvZGVkIHdp
dGggdHdvIGJ5dGVzLiAgVGhpcyB0ZW5kcyB0byBleHBhbmQiDQo+ICJvcmRpbmFyeSB0ZXh0
IGZpbGVzIGJ5IG9ubHkgb25lIG9yIHR3byBwZXJjZW50LiAgRm9yIFJ1c3NpYW4gb3IgR3Jl
ZWsgdGV4dHMsIg0KPiAidGhpcyBleHBhbmRzIG9yZGluYXJ5IHRleHQgZmlsZXMgYnkgMTAw
JSwgc2luY2UgdGV4dCBpbiB0aG9zZSBsYW5ndWFnZXMgaXMiDQo+ICJtb3N0bHkgb3V0c2lk
ZSBvZiBBU0NJSS4gIEZvciBKYXBhbmVzZSB1c2VycyB0aGlzIG1lYW5zIHRoYXQgdGhlIDE2
LWJpdCINCj4gImNvZGVzIG5vdyBpbiBjb21tb24gdXNlIHdpbGwgdGFrZSB0aHJlZSBieXRl
cy4gIFdoaWxlIHRoZXJlIGFyZSBhbGdvcml0aG1pYyINCj4gImNvbnZlcnNpb25zIGZyb20g
c29tZSBjaGFyYWN0ZXIgc2V0cyAoZXNwZWNpYWxseSBJU08gODg1OS0xKSB0byBVbmljb2Rl
LCINCj4gImdlbmVyYWwgY29udmVyc2lvbiByZXF1aXJlcyBjYXJyeWluZyBhcm91bmQgY29u
dmVyc2lvbiB0YWJsZXMsIHdoaWNoIGNhbiBiZSINCj4gInF1aXRlIGxhcmdlIGZvciAxNi1i
aXQgY29kZXMuIg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4N
CkdQRyBrZXkgZmluZ2VycHJpbnQ6IEE5MzQ4NTk0Q0UzMTI4M0E4MjZGQkREOEQ1NzYzM0Q0
NDFFMjVCQjUNCg==

--------------0KYlG0yF6Zz0RVQOFHJGYsyH--

--------------JBj98X50PYzgR3nTtdG936ep
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPfvR0ACgkQnowa+77/
2zJVTg/+Np+dQH6QX95Cf8eLt8ocnXQ/zPZA++EvC9BqUSSasQw7KtnCVMOJGmFn
YXlIXLfknUWamwyPr+S1fCLHnwciM2VEEKrTxDYWYrbvtkRYzLCoKcR7KqNyYP6y
ggwfZaP4G23B8CQuBg9zUBc/AE5SsjZKdX1Zm22S674P5j15Lune6/XTyDd30qeY
LCu/JZhWsl7jPfWLhAl7FwgpX1HxwkLp1vVIR8YWybmmQ+TUhuI2r/tetoASvf4g
M4sbzfDxrxO/5n1mul/NQfjj1vHo/CZHwc1aSqrFvY8R0YAwS6NgftcI01Cc0lF0
PGf/s2jIRrNYEX8OCy5lSLXUWJbfgxBZay0hTQaIith+M187N8yergQENLFJanOv
et1BjFOcT9O8fVYNS98buumOa6aPEqJhKPYeVs/VVD2UAwcAxn9pk54QUm2tWb8Q
ywFQaK9XZPlAobjBhQKAY3jTxj7kj1CgCySYMZ2rXJFVHN6py61YupWY8Oxp7T9G
1Z6Z8LrzAI/dCYt+xdJn548x3N+Rkm/KczVlC3HXRt2GjhepTcsVwqaxO8TarM4D
AqOc1U8owsFBJZtGZZjAtXmkpNQXsXu/GfSA4SKzXIJwqqZ1wiJJLHSashL0+Po/
8wmnYL5tQlGwZosiY5bXh76B6uQ30tZB+83PNj351GWBcI/91VI=
=5gqu
-----END PGP SIGNATURE-----

--------------JBj98X50PYzgR3nTtdG936ep--
