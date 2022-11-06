Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29BB061E79D
	for <lists+linux-man@lfdr.de>; Mon,  7 Nov 2022 00:34:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230302AbiKFXed (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 6 Nov 2022 18:34:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230185AbiKFXeb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 6 Nov 2022 18:34:31 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68636D2DB
        for <linux-man@vger.kernel.org>; Sun,  6 Nov 2022 15:34:10 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id y16so13894126wrt.12
        for <linux-man@vger.kernel.org>; Sun, 06 Nov 2022 15:34:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AgAvIhqlPVW+Jpy2FveNbfGcBlJa5Zobs6nox3FIpXk=;
        b=qJQd4SeCRGnYAP14DgaiQyAN5r1epKltdHbuyQXUEM82xah+1Eqe99Q8kcUER8pZJu
         2KMPsZPlFDxzVKREWE+ZbFGU+6OGoutBHiSslD6mCTXYLzGeJktZwEE2Uf5a3lKdWyBg
         BEZ8+BW/PAr/yQQSmGvaqfb14bZB6fm584C0vPq9Ga8Larzy+0+y2XPBMdU6w3chij/R
         t0WoZ4MWA8SVlhNtxC3sus3jj6eTnAAviXZItNL07MsQLcL1+iIanaNj3Xoqrn7Su4Cx
         F18tBCqhGRjgeiswlTnigtVV06+RVOWo3Bqc3Mg9HIQxCMYR07cN/xvfN1oCQ07U8hk1
         QoFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AgAvIhqlPVW+Jpy2FveNbfGcBlJa5Zobs6nox3FIpXk=;
        b=a2i5h8UQsCtJnGzQ8zqQIENieOPIELcgvxOJwoeGdHDg2z9EW0q/4ffNv4YwrTTIRn
         5QL8A+bBSqMyCXMV1qyL6DBrn0ny2Rjl9nEXSw+mUopj7JURW7jpditKpsOjKC5WRjci
         U64yVKNmcwHrrKAAxxqfS+ol5jp3OHQcRMP5FUUhAA0WCePL7MpgNyBH6VBvLgCy1h7J
         IfnTYf/ATfZ5OeyU6XaH1vfxf0VQZ9x4TnhG2He5C/o5frCSTBMolLUprUcz/3D41eiF
         fuC/hbqSJ7AHN/895kzzhoqJdF+mKzVqxIs4bUBj5qZ4TgDjF1bJRn+dMqFFxAi9Wleb
         LnHA==
X-Gm-Message-State: ACrzQf1YTa3Uq3twRWtCoHF0SwOjKaq6o/rQ7zhMymr7LvW5IUSoqXje
        +ufMIS32g7RIWbTI5Eh19h2lQBWJteY=
X-Google-Smtp-Source: AMsMyM7OB5rzw41ENeWtgcJ4CeoTBeP9NzXRJXzilg1wTVZYtbE2xUGOgFg4SqU4Wkbwu+mntoK1vw==
X-Received: by 2002:a05:6000:152:b0:236:57dc:7dd7 with SMTP id r18-20020a056000015200b0023657dc7dd7mr28550983wrx.660.1667777648961;
        Sun, 06 Nov 2022 15:34:08 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bw14-20020a0560001f8e00b00240dcd4d1cesm1150123wrb.105.2022.11.06.15.34.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Nov 2022 15:34:08 -0800 (PST)
Message-ID: <07a7d4e7-79a6-b2c3-6892-1e39a0679f27@gmail.com>
Date:   Mon, 7 Nov 2022 00:33:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH] drop spurious t comment header
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <20200723215333.13779-1-vapier@gentoo.org>
 <20200724000315.yx5otylik6oqqy6d@localhost.localdomain>
 <CAKgNAkjwwxrM_ry-b1rtrVc8YjfNE=p4iAht85P+mBs6Eq0U-w@mail.gmail.com>
 <20220819202103.potxyqmj5axhjzye@jwilk.net>
 <f18330a6-cbb1-c7cd-8e30-a79fe9203bcc@gmail.com>
 <20221105182620.wvi25miqwl2m3q72@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221105182620.wvi25miqwl2m3q72@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------zDPpog2mXbqgBe9XEh1CX4sA"
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
--------------zDPpog2mXbqgBe9XEh1CX4sA
Content-Type: multipart/mixed; boundary="------------1HDSIP0fwT0zBfXeORgHAn8Y";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <07a7d4e7-79a6-b2c3-6892-1e39a0679f27@gmail.com>
Subject: Re: [PATCH] drop spurious t comment header
References: <20200723215333.13779-1-vapier@gentoo.org>
 <20200724000315.yx5otylik6oqqy6d@localhost.localdomain>
 <CAKgNAkjwwxrM_ry-b1rtrVc8YjfNE=p4iAht85P+mBs6Eq0U-w@mail.gmail.com>
 <20220819202103.potxyqmj5axhjzye@jwilk.net>
 <f18330a6-cbb1-c7cd-8e30-a79fe9203bcc@gmail.com>
 <20221105182620.wvi25miqwl2m3q72@jwilk.net>
In-Reply-To: <20221105182620.wvi25miqwl2m3q72@jwilk.net>

--------------1HDSIP0fwT0zBfXeORgHAn8Y
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIhDQoNCk9uIDExLzUvMjIgMTk6MjYsIEpha3ViIFdpbGsgd3JvdGU6DQo+ICog
QWxlamFuZHJvIENvbG9tYXIgPGFseC5tYW5wYWdlc0BnbWFpbC5jb20+LCAyMDIyLTA4LTIw
IDAxOjUwOg0KPj4+IExpbnRpYW4sIHRoZSBEZWJpYW4gcGFja2FnZSBjaGVja2VyLCBzZXRz
IHRoZSBNQU5ST0ZGU0VRIGVudmlyb25tZW50IHZhcmlhYmxlIA0KPj4+IHRvIGVtcHR5IHN0
cmluZyBhcyBhIHNwZWVkIG9wdGltaXphdGlvbi4gVGhpcyB0dXJucyBvZmYgbG9hZGluZyBw
cmVwcm9jZXNzb3JzIA0KPj4+IHRoYXQgd2VyZW4ndCBleHBsaWNpdGx5IGRlY2xhcmVkIGlu
IHRoZSBzb3VyY2UuIFRoZSBsYWNrIG9mICdcIiBjb21tZW50cyBjYW4gDQo+Pj4gY2F1c2Ug
ZmFsc2UgcG9zaXRpdmVzIChhbmQgbWF5YmUgYWxzbyBmYWxzZSBuZWdhdGl2ZXM/KSBpbiBM
aW50aWFuLg0KPj4+DQo+Pj4gVGhlIHVzZSBvZiAkTUFOUk9GRlNFUSBmb3IgTGludGlhbiB3
YXMgcHJvcG9zZWQgaGVyZTogDQo+Pj4gaHR0cHM6Ly9idWdzLmRlYmlhbi5vcmcvNjc3ODc0
DQo+Pj4NCj4+PiBCZXdhcmUgdGhhdCB0aGUgbWFuKDEpIG1hbiBwYWdlIGRvZXMgbm90IGNv
cnJlY3RseSBleHBsYWluIHdoYXQgJE1BTlJPRkZTRVEgDQo+Pj4gZG9lczogaHR0cHM6Ly9i
dWdzLmRlYmlhbi5vcmcvOTcxMDA5DQo+Pg0KPj4gSWYgd2UgY2FuIGhhdmUgYSB0ZXN0IHRo
YXQgbWFrZXMgc3VyZSB0aGUgY29tbWVudCBpcyBhY2N1cmF0ZSwgSSB3b3VsZG4ndCBtaW5k
IA0KPj4gcmVpbnRyb2R1Y2luZyBpdC7CoCBJZiB5b3Ugd291bGQgbGlrZSB0byBhZGQgYSBs
aW50LSogdGFyZ2V0IHRoYXQgdGVzdHMgcGFnZXMgDQo+PiB0byBjaGVjayB0aGF0IHRoZXkg
aGF2ZSB0aGUgY29tbWVudCBpZmYgdGhleSBuZWVkIGl0LCBJJ2xsIGFjY2VwdCBpdC4NCj4+
DQo+PiBJIGd1ZXNzIHRoYXQgbWF5IGJlIGFza2luZyB0b28gbXVjaCB3b3JrLsKgIE1heWJl
IHNob3dpbmcgaG93IHRvIHJlbGlhYmx5IHRlc3QgDQo+PiBpdCBmb3IgYSBwYWdlIHdvdWxk
IGJlIGVub3VnaCAoSSBjb3VsZCB0cmFuc2Zvcm0gaXQgaW50byBhIE1ha2VmaWxlIHRlc3Qp
LsKgIEkgDQo+PiBjYW4gdGhpbmsgb2YgYSBzbWFsbCBzaCgxKSBzY3JpcHQgdGhhdCBjb3Vs
ZCBkbyBpdCwgYnV0IGlzIHRoZXJlIGFueSB0b29sIHRoYXQgDQo+PiBhbHJlYWR5IGRvZXMg
aXQ/DQo+IA0KPiBJJ20gbm90IGF3YXJlIG9mIGFueXRoaW5nIGxpa2UgdGhhdCwgc28gSSBo
YWNrZWQgdXAgYSBzY3JpcHQgdGhhdCBydW5zIG1hbiANCj4gdHdpY2UsIHdpdGggYW5kIHdp
dGhvdXQgZW1wdHkgTUFOUk9GRlNFUSwgYW5kIGNvbXBhcmVzIHRoZSByZXN1bHRzLiBTZWUg
dGhlIA0KPiBhdHRhY2htZW50Lg0KPiANCj4gSXQgbG9va3MgbGlrZSBpbiBvdXIgY2FzZSBh
bGwgdGhlIG1pc3NpbmcgcHJlcHJvY2Vzc29yIGRlY2xhcmF0aW9ucyBjYW4gYmUgYWRkZWQg
DQo+IHdpdGggdGhpczoNCj4gDQo+ICDCoMKgwqAgZ3JlcCAtbCAteCAnXlsuXVRTJCcgbWFu
Ki8qIHwgc29ydCAtdSB8IHhhcmdzIHNlZCAtaSAtZSAiMWknXFxcXFwiIHQiDQpIbW0sIGdy
ZWF0IQ0KDQpGb3IgYWRkaW5nIGl0IHRvIHRoZSBtYWtlZmlsZXMgc28gaXQgY2FuIGxpbnQg
ZnV0dXJlIHBhZ2VzIGlmIHRoZXkgYWRkIG9yIHJlbW92ZSANCnNvbWUgdGFibGVzLCBJJ2xs
IGFkZCBzb21ldGhpbmcgbGlrZToNCg0KZm9vOiBiYXINCgkhIGdyZXAgJ15cLlRTJCQnICQ8
ID4vZGV2L251bGwgfHwgaGVhZCAtbjEgJDwgfCBncmVwICdcXCIgdCQkJz4vZGV2L251bGwN
CgkhIGhlYWQgLW4xICQ8IHwgZ3JlcCAnXFwiIHQkJCcgPi9kZXYvbnVsbCB8fCBncmVwICde
XC5UUyQkJyAkPD4vZGV2L251bGwNCg0KSS5lLiwgaWYgd2UgZmluZCAuVFMsIHdlIGJldHRl
ciBmaW5kICBcIiB0LCBhbmQgaWYgd2UgZmluZCBcIiB0LCB3ZSBiZXR0ZXIgZmluZCAuVFMu
DQoNCkRvZXMgaXQgbG9vayBnb29kIHRvIHlvdT8NCg0KDQpUaGFua3MsDQoNCkFsZXgNCg0K
LS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------1HDSIP0fwT0zBfXeORgHAn8Y--

--------------zDPpog2mXbqgBe9XEh1CX4sA
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNoRF8ACgkQnowa+77/
2zJ2OxAAqlu25ySGDOGf0wQ2yOVvlnL18cS6tPjDWtbRR1+ZJlP5H9NbwsxmeDMM
5UgbI+x+EmEbG+q5ORnLHuiOktnpfFlz+pHmXUzSaXpP2NlfD7FRLYxo7wdkzHTB
HgcooiFzZaLMT2nApOQFdrnTx1P0hQYQJxVs/Ike9WoTUdg/I7ccswbTKm97CY08
tM4h5m4fDfOi2Fbd5CBG8dbMVODXmRt3pa2IcrMX+S+WUxYz60f+FwceM1HLe1Xd
GGyxUi3rwrVBQwl3vA9+g3+HiY7IZEkG40BS8vm77Y0iCY3poohOLjIj0glp+hb7
q3rd/JVz7nUBQyaqtwf3WbNBt54+glmfezwxWj4v4vPdnIXP73zm1RHMDPIJhtG7
Y6TsE2KNSbkjQZpygJaJ/GFCyBjk/knRAKqV7HuLHyR/gyzt1IT9C1xx5J1Pz33L
CKRV+vi9LdTH6mkPe8S8d61ugmQ+bkrnERXqYVWaUobonDd1z58AmuhwGOtXw5ea
8FOX3ZXZ2Y4DdNJ0PhKwjkclm2wqhHS2z4VmL6g6VbhF75OxZg4NtSZ1wkBfpv0Q
PkOjSyrdFrMVz8R3jujZ1G6/NBhY3W5+qBbqqYfxwjshV1YM5NzEWMpiXsbD1QGH
FrSFCPPsR0CgirBcehN6mUU5eDjm2+n9HS8ZwOY0FmWdcozDnNU=
=E5ae
-----END PGP SIGNATURE-----

--------------zDPpog2mXbqgBe9XEh1CX4sA--
