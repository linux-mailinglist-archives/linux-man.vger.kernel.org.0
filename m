Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39FB0658BE6
	for <lists+linux-man@lfdr.de>; Thu, 29 Dec 2022 11:47:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229685AbiL2Krc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Dec 2022 05:47:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233108AbiL2KrQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Dec 2022 05:47:16 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2FA512A8D
        for <linux-man@vger.kernel.org>; Thu, 29 Dec 2022 02:47:15 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id j17so11700136wrr.7
        for <linux-man@vger.kernel.org>; Thu, 29 Dec 2022 02:47:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lWbRrIAwxJgXuhNviMSL6HeVYMFumwK09xDtKyJ7HZ8=;
        b=UdfF+i+HU5ID6U/SP6Yq4ENxzkwkBzsg+RXNP1A7cEQwGlZGpp7sV4b1JzVpk59jGT
         8XB+xd4acOKSkjfIvqDqb/GL+reV7Gm9kWseYx0RSpLUW5E0LtYgUPYUxw26xqxB9Nvc
         sk5G23i8HPjxKe3Jr68e/lPZaBMs7NpK+HWjpnYtGHPXdPI2h98vyfmjcIvQx9l44oLm
         a3Ce7LLpZU0P3iGlvyaxwCa0jxwlMMtlYPBZZMvGEWRpxEva6juCIEkIvvPxNJcBMYdg
         Q0JDmyK2imlEiK8FH5LZupL0bsvVN6HHEtEzLu4wbBG4RGPewf1cMUtBo3cZD97UtaQA
         8jww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lWbRrIAwxJgXuhNviMSL6HeVYMFumwK09xDtKyJ7HZ8=;
        b=uiAXeMattlgoOfahoYhQX85rLVC03GAGVNG9mQwzJr1xLh/2hbW+UPJfXJreCxdchO
         g9SLDR1tdqjCF52k/qpkac3mMIz1GZYxJ0W5WJrD92dHaI5LkncoocexfLixJ9jFbnlK
         xulb6/5CQ/j2JCLC9+x08KFJE4IAF3w0JfRFsogl+ZHuHWVTH+JyT1kWkYggVUXbM6MW
         Z/4L+ZJ/+2y86O1oWGaLEfksCTy13mqy9m8VXSqKBAI55eSXGVEbiKu0hnfdZaEkvYJt
         viz6IabPy3G+dgRD8owhhBEGEENINCPOrYR17cenkotQkV9Un/7EZF6+OC02fq2hn/Wq
         PB4A==
X-Gm-Message-State: AFqh2krDsTCznSezME3YlPA8MRc5roOwTh0QuHIR3yeI0oPdt6r1WnAL
        9YwRGM/SjlKnxDe1KKKuVVA=
X-Google-Smtp-Source: AMrXdXsrKU2e5NN9T9tUZjzvBDxlE1L1pK/VyURHUKbTHQcRvY28BekQ41ZXFCWpsZaJCz5zRdB/rw==
X-Received: by 2002:adf:f646:0:b0:27a:4d96:3a7b with SMTP id x6-20020adff646000000b0027a4d963a7bmr9999858wrp.34.1672310834154;
        Thu, 29 Dec 2022 02:47:14 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f14-20020adfe90e000000b002365730eae8sm17801772wrm.55.2022.12.29.02.47.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 02:47:13 -0800 (PST)
Message-ID: <c5b7ba41-4c18-5d78-43c2-fc9f088298db@gmail.com>
Date:   Thu, 29 Dec 2022 11:47:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
Content-Language: en-US
To:     Zack Weinberg <zack@owlfolio.org>
Cc:     libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>,
        Ian Abbott <abbotti@mev.co.uk>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
 <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
 <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
 <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
 <ypikk02xv09c.fsf@owlfolio.org>
 <a7a60a45-afb2-2fae-f6b0-a26db649c09c@gmail.com>
 <ypikwn6uag11.fsf@owlfolio.org>
 <4fe9ed93-8fb9-64d0-26f1-a9560387d108@gmail.com>
 <ypikv8luogqp.wl-zack@owlfolio.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ypikv8luogqp.wl-zack@owlfolio.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------970gfBIZfcwJ0fnzJGJHWjEZ"
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
--------------970gfBIZfcwJ0fnzJGJHWjEZ
Content-Type: multipart/mixed; boundary="------------Onj7Tkf7MeJQxdSZZmVrZKnE";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zack Weinberg <zack@owlfolio.org>
Cc: libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>,
 Ian Abbott <abbotti@mev.co.uk>
Message-ID: <c5b7ba41-4c18-5d78-43c2-fc9f088298db@gmail.com>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
 <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
 <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
 <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
 <ypikk02xv09c.fsf@owlfolio.org>
 <a7a60a45-afb2-2fae-f6b0-a26db649c09c@gmail.com>
 <ypikwn6uag11.fsf@owlfolio.org>
 <4fe9ed93-8fb9-64d0-26f1-a9560387d108@gmail.com>
 <ypikv8luogqp.wl-zack@owlfolio.org>
In-Reply-To: <ypikv8luogqp.wl-zack@owlfolio.org>

--------------Onj7Tkf7MeJQxdSZZmVrZKnE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmFjaywNCg0KT24gMTIvMjkvMjIgMDc6MzksIFphY2sgV2VpbmJlcmcgd3JvdGU6DQo+
PiBZZWFoLCBpZiB5b3UgaGF2ZSBwbGFucyB0byBmaXggaXQsIEknbSBmaW5lIHJlbW92aW5n
IHRoZSBkZXByZWNhdGlvbiBub3cuIDopDQo+IA0KPiBUbyBiZSBjbGVhciwgSSBwZXJzb25h
bGx5IGRvbuKAmXQgaGF2ZSBwbGFucyB0byBkbyBhbnkgb2YgdGhlIGFjdHVhbA0KPiBwcm9n
cmFtbWluZyBvciBzdGFuZGFyZC1jaGFuZ2luZyB3b3JrIGludm9sdmVkIGhlcmUuICA6LSkN
Cg0KQWgsIG5vLCBJIG1lYW50IG1vcmUgdGhhdCB0aGUgd2hvbGUgc2V0IG9mIGdsaWJjIG1h
aW50YWluZXJzIGhhZCB0aGF0IGluIG1pbmQsIA0KYXMgYSBsb25nIHRlcm0gcGxhbiAobGlr
ZSAxMCB5ZWFycyBtYXliZT8pLiAgSWYgeW91IGRvbid0IHRoaW5rIHRoZXNlIGZ1bmN0aW9u
cyANCndpbGwgYmUgc2F2ZWQgKGV2ZW4gaWYgd2UgY2FuKSBiZWNhdXNlIGl0J3Mgbm90IHdv
cnRoIGl0LCBtYXliZSB3ZSBjYW4ganVzdCBraWxsIA0KdGhlbS4gIEJ1dCBJJ2xsIGRlZmVy
IHRoYXQgZGVjaXNzaW9uIHRvIGFmdGVyIHNvbWUgZml4ZXMgdG8gdGhlIGRvY3VtZW50YXRp
b24uDQoNCj4+IFBsZWFzZSBjbGFyaWZ5OyBkbyB5b3UgY29uc2lkZXIgW3ZdW2Zdc2NhbmYg
c29tZXRoaW5nIHRoYXQgIndlIHRoaW5rDQo+PiB3ZSBzaG91bGQgbmV2ZXIgaGF2ZSBhZGRl
ZCB0aGlzIGluIHRoZSBmaXJzdCBwbGFjZSwgdGhlcmXigJlzIG5vDQo+PiBwbGF1c2libGUg
d2F5IHRvIGZpeCBpdCwgYnV0IHdlIGhhdmUgdG8ga2VlcCBpdCBhcm91bmQgZm9yIGJhY2t3
YXJkDQo+PiBjb21wYXRpYmlsaXR5Ij8NCj4gDQo+IF9JXyB3b3VsZG7igJl0IGhhdmUgYWRk
ZWQgdGhlbSBpbiB0aGUgZmlyc3QgcGxhY2UsIGJ1dCBJIGNhcmUgbW9yZSB0aGFuDQo+IHRo
ZSBhdmVyYWdlIGFib3V0IHJvYnVzdG5lc3MgaW4gdGhlIGZhY2Ugb2YgdW5leHBlY3RlZCBp
bnB1dCwgZXZlbiBmb3INCj4g4oCcdGhyb3dhd2F54oCdIHByb2dyYW1zLiAgSSBkb3VidCB0
aGUgQyBjb21taXR0ZWUgd291bGQgYmUgcHJlcGFyZWQgdG8NCj4gc2F5IHRoZSBzYW1lIHRo
aW5nLg0KDQpJIHNoYXJlIHlvdXIgY29uY2VybnMgYWJvdXQgcm9idXN0bmVzcyBvZiBjb2Rl
LCBhbmQgYW0gcHJlcGFyZWQgdG8gZGVmZW5kIGF0IA0KbGVhc3Qgc29tZSBwYXJ0aWFsL3Vu
b2ZmaWNpYWwgZGVwcmVjYXRpb24uICBJJ2xsIGNsYXJpZnkgYmVsb3cuDQoNCj4gVGhleSBf
Y2FuXyBiZSB1c2VkIGxlZ2l0aW1hdGVseSwgYW5kIHRoZXkgY2FuDQo+IGV2ZW4gYmUgdXNl
ZCBpbiB3YXlzIHRoYXQgbWVldCBteSByb2J1c3RuZXNzIHN0YW5kYXJkcyBpZiB5b3UgZ28N
Cj4gdG8gZW5vdWdoIHRyb3VibGUuDQoNClRoYXQncyBub3Qgc28gY2xlYXIgdG8gbWUuDQoN
Cj4gIEl04oCZcyBqdXN0IHRoYXQgKElNTlNITykgdGhlcmUgYXJlIGJldHRlciB3YXlzIHRv
DQo+IHJlYWNoIHRob3NlIHN0YW5kYXJkcy4NCj4gDQo+IEluIHRlcm1zIG9mIHRleHQgZm9y
IHRoZSBbdl1bZl1zY2FuZiBtYW5wYWdlLCBtYXliZSBzb21ldGhpbmcgbGlrZQ0KPiANCj4g
W05PVEVTPyBCVUdTP10NCj4gICAgICBXaGVuIHNjYW5mKCkgb3IgZnNjYW5mKCkgcmVwb3J0
IGEgX21hdGNoaW5nIGZhaWx1cmVfLCBhbGwgb2YgdGhlDQo+ICAgICAgdGV4dCB0aGF0IHdh
cyBtYXRjaGVkIHN1Y2Nlc3NmdWxseSBoYXMgc3RpbGwgYmVlbiByZWFkIGZyb20NCj4gICAg
ICBfc3RkaW5fIG9yIHRoZSBfc3RyZWFtXyAocmVzcGVjdGl2ZWx5KSwgYW5kIHNvIGhhdmUg
YW4NCj4gICAgICB1bnByZWRpY3RhYmxlIG51bWJlciBvZiBjaGFyYWN0ZXJzIGFzc29jaWF0
ZWQgd2l0aCB0aGUgY29udmVyc2lvbg0KPiAgICAgIHRoYXQgZmFpbGVkIHRvIG1hdGNoLiAg
VGhlIGxhdHRlciBjaGFyYWN0ZXJzIGFyZSBsb3N0LiAgVGhpcyBtYXkNCj4gICAgICBtYWtl
IGl0IGRpZmZpY3VsdCB0byByZWNvdmVyIGZyb20gaW52YWxpZCBpbnB1dC4NCj4gDQo+ICAg
ICAgT25lIHdheSB0byBtYWtlIHJlY292ZXJ5IGVhc2llciBpcyB0byBzZXBhcmF0ZSByZWFk
aW5nIGZyb20NCj4gICAgICBwYXJzaW5nOiB1c2UgZmdldHMoKSBvciBnZXRsaW5lKCkgdG8g
cmVhZCBhbiBlbnRpcmUgbGluZSBvZiB0ZXh0DQo+ICAgICAgaW50byBhIHN0cmluZywgdGhl
biB1c2Ugc3NjYW5mKCkgdG8gcGFyc2UgdGhlIHN0cmluZy4gIElmIGENCj4gICAgICBfbWF0
Y2hpbmcgZmFpbHVyZV8gb2NjdXJzLCB5b3UgY2FuIHRyeSBzc2NhbmYoKSBhZ2FpbiB3aXRo
IGENCj4gICAgICBkaWZmZXJlbnQgX2Zvcm1hdF87IHRoZSBlcXVpdmFsZW50IGlzIG5vdCBw
b3NzaWJsZSB1c2luZyBmc2NhbmYoKS4NCg0KVGhpcyByZWFkcyBtb3JlIG9yIGxlc3MgYXM6
ICJ0aGUgb25seSB3YXkgdG8gdXNlIHNjYW5mKDMpIGlzIG5vdCB0byB1c2UgaXQ7IHVzZSAN
CmZnZXRzKDMpL2dldGxpbmUoMykgKyBzc2NhbmYoMykgaW5zdGVhZCIuDQoNCj4gDQo+ICAg
ICAgX1N1Y2Nlc3NmdWxfIGNhbGxzIHRvIHNjYW5mKCkgYW5kIGZzY2FuZigpIGZyZXF1ZW50
bHkgY29uc3VtZQ0KPiAgICAgIGVpdGhlciBtb3JlLCBvciBmZXdlciwgY2hhcmFjdGVycyBm
cm9tIHRoZSBpbnB1dCB0aGFuIHdhcw0KPiAgICAgIGV4cGVjdGVkLiAgRm9yIGV4YW1wbGUs
IGFzc3VtaW5nIHRoZSBuZXh0IHNpeCBjaGFyYWN0ZXJzIHJlYWRhYmxlDQo+ICAgICAgZnJv
bSBgc3RkaW5gIGFyZSBgIjEyM1xuIGEi4oCYLCBgc2NhbmYoIiVkIiwgJnZhbClgIHdpbGwg
Y29uc3VtZSB0aGUNCj4gICAgICBkaWdpdHMgYnV0IF9ub3RfIHRoZSBuZXdsaW5lLCBhbmQg
YHNjYW5mKCIlZFxuIiwgJnZhbCnigJggd2lsbA0KPiAgICAgIGNvbnN1bWUgdGhlIGRpZ2l0
cywgdGhlIG5ld2xpbmUsIF9hbmRfIHRoZSBzcGFjZS4gIEVpdGhlciBvZiB0aGVzZQ0KPiAg
ICAgIGlzIGxpa2VseSB0byBjYXVzZSB0cm91YmxlIHdoZW4gbWl4aW5nIGNhbGxzIHRvIHNj
YW5mKCkgd2l0aCBjYWxscw0KPiAgICAgIHRvIGZnZXRzKCkgb3IgZmdldGMoKS4gIEFzIGFi
b3ZlLCBpdCBoZWxwcyB0byByZWFkIGVudGlyZSBsaW5lcyBvZg0KPiAgICAgIHRleHQgd2l0
aCBmZ2V0cygpIG9yIGdldGxpbmUoKSBhbmQgdGhlbiBwYXJzZSB0aGVtIHdpdGggc3NjYW5m
KCkuDQoNCkFuZCB0aGlzIHJlYWRzIGFzICJldmVuIFwic3VjY2Vzc2Z1bFwiIGNhbGxzIHRv
IHNjYW5mKDMpIGFyZSBkb29tZWQ7IHJlYWxseSwgDQpuZXZlciB1c2UgaXQiLiAgOikNCg0K
PiANCj4+IEluIHNob3J0Og0KPj4NCj4+ICgxKSAgTnVtZXJpYyBjb252ZXJzaW9uIHNwZWNp
ZmllcnMgYXJlIGJyb2tlbiBidXQgY2FuIGJlIGZpeGVk4oCmDQo+IA0KPiBZZXMuDQo+IA0K
Pj4g4oCmYW5kIHlvdSBwbGFuIHRvIGZpeCB0aGVtLg0KPiANCj4gTm8gOikNCj4gDQo+PiAg
ICAgICAoMS4xKSAgSSdsbCByZXZlcnQgdGhlIGRlcHJlY2F0aW9uIHdhcm5pbmcgbm93OyBz
aW5jZSB0aGV5IGFyZQ0KPj4gb25seSBicm9rZW4gYmVjYXVzZSB0aGUgX2N1cnJlbnRfIHN0
YW5kYXJkIGFuZCBpbXBsZW1lbnRhdGlvbnMgYXJlDQo+PiBicm9rZW4sIGJ1dCBub3QgYnkg
aW5oZXJlbnQgZGVzaWduIHByb2JsZW1zLg0KPiANCj4gT0suDQo+IA0KPj4gICAgICAgKDEu
MikgV2hlbiBbc29tZW9uZSBmaXhlc10gdGhlIGltcGxlbWVudGF0aW9uIHRvIG5vdCBiZSBV
Qg0KPj4gYW55bW9yZSwgaXQgd2lsbCBhbHNvIG1ha2Ugc2Vuc2UgdG8gcmV2ZXJ0IHRoZSBw
YXRjaCB0aGF0IHJlbW92ZWQNCj4+IHRoZSBFUkFOR0UgZXJyb3IsIHNpbmNlIHlvdSdsbCBu
ZWVkIHRvIHJlcG9ydCBpdC4NCj4gDQo+IFllcy4NCj4gDQo+PiAoMikgIEZvciB0aGUgc3Ry
aW5nIGNvbnZlcnNpb24gc3BlY2lmaWVycywgdGhlcmUgYXJlIHdheXMgdG8gdXNlIHRoZW0N
Cj4+IHNhZmVseS4NCj4gDQo+IFllcy4NCj4gDQo+PiBhbmQgeW91IHBsYW4gdG8gYWRkIGEg
d2F5IHRvIHNwZWNpZnkgYSBzaXplIGF0IHJ1bnRpbWUgdG8gdGhlDQo+PiBmdW5jdGlvbiwN
Cj4gDQo+IE5vIGFnYWluIDopDQo+IA0KPj4gc28gaXQgd2lsbCBiZSBldmVuIGJldHRlciBp
biB0aGUgZnV0dXJlLiAgTm8gYWN0aW9uIHJlcXVpcmVkLg0KPiANCj4gQ29uY3VyLg0KPiAN
Cj4+ICgzKSAgW3ZdW2Zdc2NhbmYgc2VlbSB0byBiZSByZWFsbHkgYnJva2VuIGJ5IGRlc2ln
bi4gIFBsZWFzZSBjb25maXJtLg0KPiANCj4gU2VlIGFib3ZlLg0KDQpCZWZvcmUgeW91IHN0
YXJ0IHdyaXRpbmcgcGF0Y2hlcywgSSdtIGNvbnNpZGVyaW5nIHRoZSBmb2xsb3dpbmcsIHdo
aWNoIGlzIG15IHdheSANCnRvIHNheSBkb24ndCB1c2UgdGhlc2UgZnVuY3Rpb25zIHdpdGhv
dXQgZGVwcmVjYXRpbmcgdGhlbToNCg0KU3BsaXQgRklMRSBhbmQgY2hhciogZnVuY3Rpb25z
IGludG8gc2VwYXJhdGUgbWFudWFsIHBhZ2VzLiAgSW4gdGhlIG9uZSBmb3IgDQpbdl1zc2Nh
bmYoMyksIEknZCBrZWVwIHRoZSBjdXJyZW50IGRvY3VtZW50YXRpb24uICBJbiB0aGUgb25l
IGZvciBGSUxFIA0KZnVuY3Rpb25zLCBJJ2Qga2VlcCBpdCB2ZXJ5IHNob3J0LCBkZWZlcmlu
ZyB0byBzc2NhbmYoMykgZm9yIGRvY3VtZW50YXRpb24gb2YgDQp0aGluZ3MgbGlrZSBjb252
ZXJzaW9uIHNwZWNpZmllcnMsIGFuZCB0aGF0IHBhZ2Ugd291bGQgb25seSBjb3ZlciB0aGUg
DQpidWdzXldkaWZmZXJlbmNlcyB0aGF0IGFwcGx5IG9ubHkgdG8gRklMRSBmdW5jdGlvbnMu
DQoNCkknbGwgcHJlcGFyZSBzb21lIHBhdGNoZXMgYW5kIHNob3cgdGhlbSBmb3IgZGlzY3Vz
c2lvbiBpbiBsaW51eC1tYW5ALg0KDQo+IA0KPiBJZiB5b3UgcmVtaW5kIG1lIHdoZXJlIHRv
IGZpbmQgdGhlIGdpdCByZXBvIGZvciB0aGUgbWFucGFnZXMsIEkgX21heV8NCj4gaGF2ZSB0
aW1lIHRvIHdyaXRlIGEgcGF0Y2ggZm9yIGFsbCB0aGlzIHNvbWV0aW1lIG5leHQgd2Vlay4N
Cg0KbWFuLXBhZ2VzJyBSRUFETUU6DQoNClZlcnNpb25zDQogICAgICAgIFRhcmJhbGxzIG9m
IHJlbGVhc2VzIHN0YXJ0aW5nIGZyb20gMi4wMCBhcmUgYXZhaWxhYmxlIGF0DQogICAgICAg
IDxodHRwczovL21pcnJvcnMuZWRnZS5rZXJuZWwub3JnL3B1Yi9saW51eC9kb2NzL21hbi1w
YWdlcy8+Lg0KDQogICAgICAgIFRoZSBnaXQoMSkgcmVwb3NpdG9yeSBjYW4gYmUgZm91bmQg
YXQ6DQogICAgICAgIDxnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2RvY3MvbWFuLXBh
Z2VzL21hbi1wYWdlcy5naXQ+DQoNCiAgICAgICAgQSBzZWNvbmRhcnkgZ2l0KDEpIHJlcG9z
aXRvcnkgY2FuIGJlIGZvdW5kIGF0Og0KICAgICAgICA8Z2l0Oi8vd3d3LmFsZWphbmRyby1j
b2xvbWFyLmVzL3NyYy9hbHgvbGludXgvbWFuLXBhZ2VzL21hbi1wYWdlcy5naXQ+DQoNClNl
ZSBhbHNvDQogICAgICAgIG1hbi1wYWdlcyg3KQ0KDQogICAgV2Vic2l0ZQ0KICAgICAgICA8
aHR0cDovL3d3dy5rZXJuZWwub3JnL2RvYy9tYW4tcGFnZXMvaW5kZXguaHRtbD4uDQoNCg0K
PiANCj4gencNCg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVq
YW5kcm8tY29sb21hci5lcy8+DQo=

--------------Onj7Tkf7MeJQxdSZZmVrZKnE--

--------------970gfBIZfcwJ0fnzJGJHWjEZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOtcCoACgkQnowa+77/
2zIRNhAAgR93BZrVCXtEbb75JiutKtrOatTA+7pxkdOoeysPLeaziIxT4zte0H4s
XaLlYS8z3Lde1WW70BJxpa9NGsRFtN+S/lb+AcwBrdk5BD/seYEvnH6O0gSGc4o5
+CFHwv0BpwlJMvhhTvMhvt73QFViwWv9G46U9KH1nB0JVkANvYopiThbmZX/do3/
vxsh4+Oq1pWTVni3V+/02y5dGSBe/Dduc1PxHujg8A6ra854A8zsBHqd7OvBnsMF
X0h3OroYPmqU4zR163lfo0hm2IG/sLdmJwzk4a/cdultgiI/wUK5gpotBr9S+zsO
3RCx3pxBbi0OeBSwRoYehOBD26Bwwb8VrTon1zV63lwVI0sdaEfOik31Rl/Meta+
ZRHnXQn96DSQ41RrjCozLbYKwh93ljMjVSn0LU04H5ms9/3n72kR4VnsuSt7zKJK
9YZWKHmwMFP6bJfYG1ZZtoJcVUzvUMOL/53haYtYXbxoQSeNXFnMvmUwv/wYIvwW
akEgNkTxq4kOp48fxHiRniVRjO9EsZeYsbaZEjcML9Rn8X4OZlW6H+sJJrWcuYgk
jvCXDVNVPsS5N3vYneZFqKEzhwSlZ2oTZl77k3QjwBXSdAhAyYIechPolRGQ2Ysv
Yb38DPScj9OLUWY7eutetp5Te09uvwJ4PQKi9ckslsrABnnBP9M=
=FODn
-----END PGP SIGNATURE-----

--------------970gfBIZfcwJ0fnzJGJHWjEZ--
