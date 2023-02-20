Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F23069D0BB
	for <lists+linux-man@lfdr.de>; Mon, 20 Feb 2023 16:35:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232261AbjBTPfd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Feb 2023 10:35:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232250AbjBTPfc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Feb 2023 10:35:32 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 870427696
        for <linux-man@vger.kernel.org>; Mon, 20 Feb 2023 07:35:20 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id l1so1360745wry.10
        for <linux-man@vger.kernel.org>; Mon, 20 Feb 2023 07:35:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dVTI/g05WPbc64qRw9GaiPI21Q1wF9ZJT+EMMCR278s=;
        b=fJ54oKOWE4nGsvbbpf7Zv2pDkspKo3zlBfftJvz9ej3oHYJUBrDB3AAKxrtLRULDg8
         8/8l2nPWhYq6CMzdEC+J9wUUAbR6danDX1sXY8oboVpW+NQXKORPiBZ2bDejrsXs6Mb6
         UGPbwrD5by0jGqTdhJSpMt2fGySAJlP2CXqtqw5ublyxkZoXg0nWtgOX0zOw/RluGo4V
         8ivkzN9xeXu1C/JJRRLoJmg5Iomnn9h0jkSCi/5nyJ8TUdXZJRIR7Jn7CQR6dbLkklAB
         F0D/rm4h/qf5NXO7obK3LtQhtea5hzKzuuru2KVem73rhMu3r7izzyT+pruVNCPJkkFe
         RmsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dVTI/g05WPbc64qRw9GaiPI21Q1wF9ZJT+EMMCR278s=;
        b=2Wuc7azYSEgKypgyJStfWO73xrjpVji6cfyIGbyOsGvHYYo7qkrVqRiExBkZr7XUYY
         Jtu+5dF72+lsGEyMQ2RKkZgE2q7DQJYj+1xx4vk16J0V6K9CATo+qEcW0C/h8AD9dg84
         +xTXeS1c5Kji7SjkfOQu5pkE9yVR2DFrsLiN19G8XHAAcAF4/WgMnMPqg4aDx3tPfwIL
         r+oZb0B1FERiQAexVPw8ADY49X1B9qg05mfQfEp0xrSwakqeykN4Ru2LD2W6E9E29RnF
         M25e7GehQ4xM+VB6QT56MaXwDmVyCWuunhDoRrE/d/p/Q4Jb286hzSjBOx8Tsz7CbXFP
         8mdw==
X-Gm-Message-State: AO0yUKU/BnbtPH5prQIjED4TK4ysdKxuxtiQQVCmzrEEoyu0As/Mryny
        l5OblhMzLzFTIgqk6Mv2m/E=
X-Google-Smtp-Source: AK7set9rlKj4dtNcAiLxIc5smlhf9eBBgVb0Nk4CHr4mnd420P/Bu2oofAoojeKhHGEm+NgM/0Yn/w==
X-Received: by 2002:a5d:48c6:0:b0:2c5:58fc:e1bb with SMTP id p6-20020a5d48c6000000b002c558fce1bbmr1516202wrs.10.1676907318855;
        Mon, 20 Feb 2023 07:35:18 -0800 (PST)
Received: from [192.168.43.80] ([46.222.156.230])
        by smtp.gmail.com with ESMTPSA id r13-20020adfdc8d000000b002c557f82e27sm30018wrj.99.2023.02.20.07.35.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Feb 2023 07:35:18 -0800 (PST)
Message-ID: <2c23a82f-4392-2e4d-7aaa-2e2d17264738@gmail.com>
Date:   Mon, 20 Feb 2023 16:35:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 1/6] man2/: use IEC or ISO multiples to clarify long
 numeric digit strings
To:     Stefan Puiu <stefan.puiu@gmail.com>, coreutils@gnu.org,
        Debian Install System Team <debian-boot@lists.debian.org>
Cc:     Brian Inglis <Brian.Inglis@shaw.ca>,
        Linux Man Pages <linux-man@vger.kernel.org>,
        1031275@bugs.debian.org
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4a3350ac873f45df96abf9045cfe1605839f490d.1676489381.git.Brian.Inglis@Shaw.ca>
 <CACKs7VB672Ka6GJQmVozS6n1kR+g8LoDuLtw1XuwSjKsttFBTg@mail.gmail.com>
 <cb47e19b-ba02-da3f-b253-ee8ddec28aa8@gmail.com>
 <CACKs7VDaAX=qZh9fhn9wa5L5c4xegF0q+ZDBbzE9KTY9pPN+mQ@mail.gmail.com>
 <ed3e2487-2b28-e205-b1aa-c65cb54843ce@gmail.com>
 <CACKs7VCWsF+Pvso-H0VhTr2HFWUBs5JJ=m6uCJ7yB_FPY9g5Bg@mail.gmail.com>
Content-Language: en-US
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <CACKs7VCWsF+Pvso-H0VhTr2HFWUBs5JJ=m6uCJ7yB_FPY9g5Bg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------fSRiYTfbLs6lEj5TmlmFCLfa"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------fSRiYTfbLs6lEj5TmlmFCLfa
Content-Type: multipart/mixed; boundary="------------WCsdpCbHhRGyNXvs4tuXK762";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Stefan Puiu <stefan.puiu@gmail.com>, coreutils@gnu.org,
 Debian Install System Team <debian-boot@lists.debian.org>
Cc: Brian Inglis <Brian.Inglis@shaw.ca>,
 Linux Man Pages <linux-man@vger.kernel.org>, 1031275@bugs.debian.org
Message-ID: <2c23a82f-4392-2e4d-7aaa-2e2d17264738@gmail.com>
Subject: Re: [PATCH v3 1/6] man2/: use IEC or ISO multiples to clarify long
 numeric digit strings
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4a3350ac873f45df96abf9045cfe1605839f490d.1676489381.git.Brian.Inglis@Shaw.ca>
 <CACKs7VB672Ka6GJQmVozS6n1kR+g8LoDuLtw1XuwSjKsttFBTg@mail.gmail.com>
 <cb47e19b-ba02-da3f-b253-ee8ddec28aa8@gmail.com>
 <CACKs7VDaAX=qZh9fhn9wa5L5c4xegF0q+ZDBbzE9KTY9pPN+mQ@mail.gmail.com>
 <ed3e2487-2b28-e205-b1aa-c65cb54843ce@gmail.com>
 <CACKs7VCWsF+Pvso-H0VhTr2HFWUBs5JJ=m6uCJ7yB_FPY9g5Bg@mail.gmail.com>
In-Reply-To: <CACKs7VCWsF+Pvso-H0VhTr2HFWUBs5JJ=m6uCJ7yB_FPY9g5Bg@mail.gmail.com>

--------------WCsdpCbHhRGyNXvs4tuXK762
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMi8yMC8yMyAxNToyOSwgU3RlZmFuIFB1aXUgd3JvdGU6DQo+IEhpIEFsZXgsDQoNCkhp
IFN0ZWZhbiwNCg0KPj4gNCBLaUIgaXMgbm90IHRoYXQgbXVjaCBiZXR0ZXIgdGhhbiA0MDk2
LCBzaW5jZSA0MDk2IGlzIGVhc3kgdG8gcmVhZC4NCj4+IEZvciBoaWdoZXIgbnVtYmVycyBz
dWNoIGFzIDMzNTU0NDMyLCBpdCBiZWNvbWVzIG1vcmUgaW1wb3J0YW50IHRvIHVzZSAzMiBL
aUIuDQo+PiBGb3IgY29uc2lzdGVuY3ksIHVzaW5nIDQgS2lCIHNlZW1zIHJlYXNvbmFibGUu
DQo+IA0KPiBIb3cgYWJvdXQgdXNpbmcgS2lCIC8gTWlCIG92ZXIgYSBjZXJ0YWluIG51bWJl
ciBvZiBkaWdpdHM/IEl0IHNlZW1zDQo+IGV4Y2Vzc2l2ZSB0byB1c2UgdGhlbSBldmVyeXdo
ZXJlLg0KDQpXZSBtaWdodCBkbyB0aGF0LiAgU28gZmFyLCBJIHByZWZlciBoYXZpbmcgdGhl
IHBhdGNoZXMgY2hhbmdlIA0KZXZlcnl0aGluZywgYW5kIHRoZW4gd2UgY2FuIGxhdGVyIGRp
c2N1c3MgYWJvdXQgZGlzY2FyZGluZyBwYXJ0IG9mIHRoZW0uDQoNCj4gDQo+IEFsc28sIGZv
ciB0aGUgcmVjb3JkLCBJIGhhZCBubyBpZGVhIHdoYXQgS2lCIC8gTWlCIG1lYW5zIGFuZCBo
b3cgaXQncw0KPiBkaWZmZXJlbnQgZnJvbSBLQi9NQiB1bnRpbCB0aGlzIGRpc2N1c3Npb24u
IEkgZ29vZ2xlZCBpdCBiZWZvcmUNCj4gd3JpdGluZyB0aGlzIHJlcGx5LCBhbmQgZm91bmQg
dGhpcyBhbW9uZyB0aGUgZmlyc3QgaGl0czoNCj4gaHR0cHM6Ly91eC5zdGFja2V4Y2hhbmdl
LmNvbS9hLzEzODUwLg0KDQpUaGF0IGFuc3dlciB3YXMgd3JpdHRlbiBtb3JlIHRoYW4gYSBk
ZWNhZGUgYWdvLiAgVGhlc2UgZGF5cywgYmluYXJ5IA0KcHJlZml4ZXMgYXJlIG1vcmUgY29t
bW9uLiAgSW4gZmFjdCwgSSdkIHNheSBtb3N0IEdOVS9MaW51eCBjb21tYW5kcyANCnJlc3Bl
Y3QgdGhlbSAoYW4gaW1wb3J0YW50IGV4Y2VwdGlvbiBiZWluZyBHTlUgY29yZXV0aWxzIChm
b3IgZXhhbXBsZSANCmxzKDEpKS4gIEJ1dCBtYW55IHByb2dyYW1zIHVzZSBwcmVmaXhlcyBh
Y2N1cmF0ZWx5LCBzdWNoIGFzIGZkaXNrKDgpLg0KDQpJbiB0aGUgTGludXggbWFuLXBhZ2Vz
IHdlIGhhdmUgdW5pdHMoNyksIHdoaWNoIGRvY3VtZW50cyB0aGVzZS4gIE1heWJlIA0KdGhh
dCBwYWdlIHNob3VsZCBiZSBtb3JlIGtub3duLg0KDQpCVFcsIHRoYXQgYW5zd2VyIGlzIGlu
YWNjdXJhdGUgKGF0IGxlYXN0IHRvZGF5KTogZHJpdmUgbWFudWZhY3R1cmVycyANCmhhdmUg
dGhlIGRpc3RpbmN0aW9uIHByZXR0eSBjbGVhciwgYW5kIHVzZSBpdCBwcmVjaXNlbHkgKHdp
dGggbGF3c3VpdHMgDQp3b24gdGhhbmtzIHRvIHRoaXMpOyB0aGV5IHVzZSBtZXRyaWMgcHJl
Zml4ZXMsIGJlY2F1c2UgdGhleSBtZWFuIGl0LiANClRoZXkgY2FuIHNlbGwgeW91IDEgVEIg
aW5zdGVhZCBvZiAxIFRpQiwgYW5kIG1vc3QgcGVvcGxlIHdvbid0IGV2ZW4gDQprbm93LCBi
dXQgdGhvc2Ugd2hvIGtub3csIHdpbGwga25vdyB0aGF0IDEgVEIgaXMgMScwMDAnMDAwJzAw
MCcwMDAgQiwgDQp3aGljaCBpcyB3aGF0IHlvdSBnZXQuICBUaGV5IGhhdmUgbm8gaW5jZW50
aXZlcyB0byBzZWxsIDEgVGlCIGRyaXZlcywgDQpiZWNhdXNlIHRoZXkgYXJlIHZpc3VhbGx5
IGFsbW9zdCB0aGUgc2FtZSwgYnV0IHRoZXJlJ3MgYXJvdW5kIDkuOTUlIG1vcmUgDQpieXRl
cywgc28gaXQncyBtb3JlIGV4cGVuc2l2ZSB0byBwcm9kdWNlLiAgSXQncyBub3Qgd29ydGgg
aXQgZm9yIHRoZW0uDQoNCj4gDQo+IEkgd291bGQgc2F5IG1ha2luZyB0aGUgZG9jcyBlYXN5
IHRvIHVuZGVyc3RhbmQgZm9yIHVzZXJzIGlzIG1vcmUNCj4gaW1wb3J0YW50IHRoYW4gYWRo
ZXJpbmcgdG8gc29tZSBzcGVjcyB1c2VycyBtaWdodCBub3QgYmUgZmFtaWxpYXINCj4gd2l0
aC4NCg0KV2VsbCwgdXNpbmcgTWlCIHByb21wdHMgcmVhZGVycyB0byB1c2UgdGhlaXIgc2Vh
cmNoIGVuZ2luZSB0byBsZWFybiB3aGF0IA0KdGhhdCBpcyAodGhhdCdzIGhvdyBJIGxlYXJu
dCBpdCB0aGUgZmlyc3QgdGltZTsgYW5kIHRoYXQncyB3aGF0IG9uZSBkb2VzIA0Kd2hlbiBy
ZWFkaW5nIGEgYm9vayBhbmQgZmluZGluZyBhIG5ldyB3b3JkKS4gIEkgdGhpbmsgdGhhdCBz
aG91bGRuJ3QgYmUgDQpjb25zaWRlcmVkIGFuIGltcGVkaW1lbnQsIGJ1dCBhbiBvcHBvcnR1
bml0eSB0byBsZWFybiBzb21ldGhpbmcgbmV3Lg0KDQpPbmNlIHlvdSBrbm93IHRoZSBkaWZm
ZXJlbmNlLCB5b3UgYXBwcmVjaWF0ZSB0aGUgcHJlY2lzZW5lc3MuICBJIGhhdGUgDQp3aGVu
IEkgc2VlIHNvbWUgc29mdHdhcmUgdGhhdCB1c2VzIHRoZSBtZXRyaWMgcHJlZml4ZXMgZm9y
IG1lYW5pbmcgDQpiaW5hcnkgbXVsdGlwbGllcnMuICBJIGFsc28gaGF0ZSBzb2Z0d2FyZSB0
aGF0IG9wZXJhdGVzIG9uIGJ5dGVzLCB3aGVuIA0KeW91IGFsbW9zdCBhbHdheXMgd2FudCBi
aW5hcnkgbXVsdGlwbGllcnMgYnV0IG9ubHkgaGF2ZSBtZXRyaWMgDQptdWx0aXBsaWVycyAo
aGV5IHBhcnRtYW4sIEkgbWVhbiB5b3UhKS4gIEkgcmVwb3J0ZWQgYSBidWcgdG8gdGhlIERl
YmlhbiANCmluc3RhbGxlciByZWNlbnRseSBiZWNhdXNlIGl0J3MgdmVyeSBwYWluZnVsIHRv
IHBhcnRpdGlvbiBhIGRyaXZlIGZyb20gaXQuDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSAN
CjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCkdQRyBrZXkgZmluZ2VycHJp
bnQ6IEE5MzQ4NTk0Q0UzMTI4M0E4MjZGQkREOEQ1NzYzM0Q0NDFFMjVCQjUNCg0K

--------------WCsdpCbHhRGyNXvs4tuXK762--

--------------fSRiYTfbLs6lEj5TmlmFCLfa
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPzkysACgkQnowa+77/
2zJD/g//cUR6ayLeDTw34wfmCxgrJceWII+6goB+C6lpmcPuS/idOtMofeW7iujj
bN1vN93PUjVGB/HXoxx4xxOciYlBpwNh+0rgqDsZoeLPu7JKNqazX3Ox0wo77JSz
GYrzLJcoHnG4BDeJMECPFL4P8U1ORf6yisMB0RlQXDJQZwwO4o3uCQrzs/IpHgzu
zouy+kqzvNm1lKUBD4c6UnSJyX6KXzx6Q/hie386SeRK6x1vd0Fl3AGSPOlmCvBJ
hOrwKkHncCxFSewWN4BoPHR3x5DB1tvZirof6kzISHI9LPB/DUM/hl0qXbo3A3Zo
qaUgqOzuk6TaPOF/qpJV5ndCaXaGCymP8J2+dDWsqF2ZocSUnZnFXv5X5J/keg7E
C251Z3Acxf1C8V/vtwbIMtvg3jZZMGkyFK7oWpIxpBDY/0Ss9lJNgo4a2I40zS9V
kdwSkMG1BmCGcGSmAkG5N8EZkmpnFU8np4YVcelHt4qCWx7vlJJemFKF+PwxO1QP
1oaBw3KE68HyoUE5r1sTn7MSFACNDOeH63rwh1Pb8WIaONv3ZkrML61IYmo7zA/5
txOn7kR+PCAlevIF6TPAdQ41lWldiZul72Y9EeG4H3ix6Tz5u3iptUziCDBPCsKi
H2q6hrrnRt1DbCcF1Ls97SajGw+sm8opD550wx6Gduuy4E6LlBs=
=5idb
-----END PGP SIGNATURE-----

--------------fSRiYTfbLs6lEj5TmlmFCLfa--
