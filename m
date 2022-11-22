Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47560634A19
	for <lists+linux-man@lfdr.de>; Tue, 22 Nov 2022 23:35:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234023AbiKVWeI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Nov 2022 17:34:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232734AbiKVWeG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Nov 2022 17:34:06 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A3DDA84CA
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 14:34:05 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id z4so12371046wrr.3
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 14:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E5TzdG7+MpxmIVH0pAoCfYfG+zdkzWCUZ2nhaWsm/mM=;
        b=DNQ2ym9vbWSUEcpGGzbHKt7pQz7YHjT5nc59GiHKA+FxZrm+5CCS4+2a5FhmxIJs20
         n49Hn7LHusl/BuM73zr0YWfGtz7O/GM2oXIVFc6Yqj+Ole8rGwA6SS/Ts2sRFY8z9WEl
         5wJX62cU1Vq+vNPlCXBhn4pHQg5mPsilpE5vj6kB0n4t1+GWuiZ6BQ8s821FEANfImJ1
         hGoQvSurZD21gF7eiyPiWtvZd0nEd+1QW/sw3TqPTHpbl/evL7XPmJbzUxdb2CJ4go0b
         NPS2hmlY248QvoKsSFlz0Ep4y/upAnwfY6pqXkdLySEYroB2g9wAAxHxESE3sM2dBYY5
         Yv4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=E5TzdG7+MpxmIVH0pAoCfYfG+zdkzWCUZ2nhaWsm/mM=;
        b=fxxvH0k3jl1R+XyDI8VuAiHJnQ+u32sfNkuR/UhKeKq437nzct52mmxohfNNyDgjcs
         c00EX0Lf37+BdETYn5JOldTx5VWGS2pUYvLaofT4jaPS+aBncfY4X5aIDmfk+OgcTZOi
         8iaGeSprLK2iJxMZMLQ97V+JobsxRV4bGN0whVq8Xbyn2FZqt1ZaEFzg31t0N64buhPk
         zP5JSxObEsFzrORooTZ1VBQ3raqoUw3w27JxpqHTtAN/4KPjgc/DEK0bdIuafn//oDoT
         150sahugHfbK5B9XZbGkMAzbZo6yBXMYVx2A3VMiR+Hjc3eDOJ7tyQu7Wq1q7V8eruyx
         GJbg==
X-Gm-Message-State: ANoB5pk90LjfzGIaqZSzhANr0vgHMZegliXxeBJZi4oSAqA2Aj/fxsEt
        AAp28ykkHluICQry7CuCSAU=
X-Google-Smtp-Source: AA0mqf4ZRd3+wb1DbgL0KorH44W231WMRNYGbRL1XBrurrBg78f4QjFouyFjNtapG6mw8zQt/2N3/A==
X-Received: by 2002:a5d:4f06:0:b0:241:cb38:3f71 with SMTP id c6-20020a5d4f06000000b00241cb383f71mr10283741wru.513.1669156443874;
        Tue, 22 Nov 2022 14:34:03 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j14-20020a05600c190e00b003b47e75b401sm107463wmq.37.2022.11.22.14.34.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 14:34:03 -0800 (PST)
Message-ID: <d9f158b0-6607-bda7-2e49-a1d968d05656@gmail.com>
Date:   Tue, 22 Nov 2022 23:33:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: Garbled text in zic(8) man page
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Jonathan Wakely <jwakely@redhat.com>,
        Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <CACb0b4=Qs4oQ6LWxOveU2cc=eNzrqT7dg=cQsg41vGF84=9LiA@mail.gmail.com>
 <CACb0b4nsGQzyQ+rQf_SMMdyN1R3WSsc6grfgGUhT+fjgM2QFOg@mail.gmail.com>
 <CACb0b4=LO+jcwwrirp3iVdu2k0Y8H0PEWwdzs+Jch+D4gJxiog@mail.gmail.com>
 <dfb539ad-4a72-00a0-c75d-ead317b9ed46@gmail.com>
 <CACb0b4kD50c35XYZVX9OKgJ6n6-fPk2_Jo+-yvOOeiE1XVpVBQ@mail.gmail.com>
 <9bd0af40-a7b3-cb16-27e8-c39c620acda3@gmail.com>
 <20221122210046.ve2rugkz7pkicjta@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221122210046.ve2rugkz7pkicjta@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------N8S09e3aa9ddWWVMBlokE8c6"
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
--------------N8S09e3aa9ddWWVMBlokE8c6
Content-Type: multipart/mixed; boundary="------------aVWb8AVyBfER2kGtP6T5qJd6";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: Jonathan Wakely <jwakely@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>,
 linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <d9f158b0-6607-bda7-2e49-a1d968d05656@gmail.com>
Subject: Re: Garbled text in zic(8) man page
References: <CACb0b4=Qs4oQ6LWxOveU2cc=eNzrqT7dg=cQsg41vGF84=9LiA@mail.gmail.com>
 <CACb0b4nsGQzyQ+rQf_SMMdyN1R3WSsc6grfgGUhT+fjgM2QFOg@mail.gmail.com>
 <CACb0b4=LO+jcwwrirp3iVdu2k0Y8H0PEWwdzs+Jch+D4gJxiog@mail.gmail.com>
 <dfb539ad-4a72-00a0-c75d-ead317b9ed46@gmail.com>
 <CACb0b4kD50c35XYZVX9OKgJ6n6-fPk2_Jo+-yvOOeiE1XVpVBQ@mail.gmail.com>
 <9bd0af40-a7b3-cb16-27e8-c39c620acda3@gmail.com>
 <20221122210046.ve2rugkz7pkicjta@jwilk.net>
In-Reply-To: <20221122210046.ve2rugkz7pkicjta@jwilk.net>

--------------aVWb8AVyBfER2kGtP6T5qJd6
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsDQoNCk9uIDExLzIyLzIyIDIyOjAwLCBKYWt1YiBXaWxrIHdyb3RlOg0KPiAq
IEFsZWphbmRybyBDb2xvbWFyIDxhbHgubWFucGFnZXNAZ21haWwuY29tPiwgMjAyMi0xMS0y
MiAyMTozNzoNCj4+PiBVcHN0cmVhbSBpcyBodHRwczovL3d3dy5pYW5hLm9yZy90aW1lLXpv
bmVzDQo+Pg0KPj4gQWhoLCBJIHJlbWVtYmVyIGxhc3QgdGltZSBJIHdhbnRlZCB0byBjaGVj
ayB0aGUgc291cmNlIGNvZGUgSSBkZXNpc3RlZCBiZWNhdXNlIA0KPj4gdGhlcmUncyBubyBn
aXQgcmVwb3NpdG9yeSwgYW5kIEkgZGlkbid0IHdhbnQgdG8gYmUgbWVzc2luZyB3aXRoIHRh
cmJhbGxzLsKgIEJ1dCANCj4+IGdldHRpbmcgdGhlIHBhZ2VzIGZyb20gdGhlIHRhcmJhbGwg
c2VlbXMgZWFzeSwgc28gSSdsbCBkbyB0aGF0Lg0KPj4NCj4+IFBhdWwsIGRvIHlvdSBoYXZl
IGEgcHVibGljIGdpdCAob3Igd2hhdGV2ZXIpIHJlcG9zaXRvcnkgdGhhdCBJIGNhbiBjaGVj
ayBvdXQ/DQo+IA0KPiBUaGUgaG9tZSBwYWdlIHBvaW50cyB0byA8aHR0cHM6Ly9kYXRhLmlh
bmEub3JnL3RpbWUtem9uZXMvdHotbGluay5odG1sPiwgd2hpY2ggDQo+IHNheXM6DQo+IA0K
PiAgwqDCoMKgIGdpdCBjbG9uZSBodHRwczovL2dpdGh1Yi5jb20vZWdnZXJ0L3R6DQoNClRo
YW5rcyENCg0KSSBzZW50IGEgZmV3IHBhdGNoZXMuDQoNCkNoZWVycywNCg0KQWxleA0KDQoN
Ci0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------aVWb8AVyBfER2kGtP6T5qJd6--

--------------N8S09e3aa9ddWWVMBlokE8c6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN9TlMACgkQnowa+77/
2zKXQA/+JP0CFSW1fp2kTmK22FKfJB0Cwrvg3APUef3hE+zwQHBKa6vi0wpIvAK2
CUlaq6Ro6hGJOXctFOg6sXWw+PHZw7hyAComy+det4D3JskkYOX1Ten1rFZ7kGUy
Y2hXeNrXan5wAPpuRKEzc+URWGrHuqsa1E2OhUDzf3HuZVfaiR6WkyueFEz9M775
O9E+hOQLCTaSawS0gzOxO0VTK25BCrZTDtz0PlTo6sgSkpmcx8QSL62n04aw9EY4
LT3abGGPnZpNDuS6L1vS/mVw5xJlTskLmHbKh6cafojogaTFun1/U/AocOXJXmsz
T7LRCiMR0NEd8DkUYc/TJyhzfKzfjNgvtMiI2Mc8jT38o/GG1cmYeg1mTnTq54EZ
mKZTzaM78TGLnCr3MNDIkOqkZU2j8dqBUiXIQIpOPc9XWynZAt+2UdYMiKC3TFkY
nvBI3NbGzRj7xsjPgDwGsjFelqbZGMT6f+MLwwOIJJp7jfYnbirMjos61rcouuhr
VsQ8dXYMF7Or3Mrc+2UBcz2+27ZhvfWYJcExv3nQPgjkFE63kECmwTPDomX2K9Ev
qITVxJEqGkejDaF2qldfdV6dOM3GSc4tiInGsadXCiIjN5qBZVy8Yt3/asnPnn7q
/PlIxHivQbjvTeTh4Qc+T676VnUoS5YXO1J90AnjExgDJVLZ86Q=
=0xQi
-----END PGP SIGNATURE-----

--------------N8S09e3aa9ddWWVMBlokE8c6--
