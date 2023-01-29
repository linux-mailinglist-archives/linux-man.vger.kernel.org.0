Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23489680175
	for <lists+linux-man@lfdr.de>; Sun, 29 Jan 2023 22:20:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230392AbjA2VUH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Jan 2023 16:20:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229549AbjA2VUG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Jan 2023 16:20:06 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EFCB2684
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 13:20:05 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id d4-20020a05600c3ac400b003db1de2aef0so6941926wms.2
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 13:20:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oDG5/iZRSWb4ewL5uTMFjwneeubYt/tkqzXeeNFHrlo=;
        b=Ov45feDn62ryywwMeW0NJD7OuZpXgA2NZ2QUI0EekzJYiT9C+vl7CSEUoGlbX6nPSE
         cGuiUQnZqsAmr5FKismT3tfTxrlibfmcOjwkIHveIPUapIJ+REDLlJK50COuuEqA5kjp
         qAHxYiSxYFFChx6fQE+1Tkq8vaFu/bgf76K1PSxMgpNULpCVQ2eEl220DowzgitMd3e2
         4wkV2rQVfa/as6MZmXb2WEWPo9Lhj2sswxUeOKlmcywz9ucNyYWRwCbS1ld0bVvYGF9g
         amHHyFuYLosZin8gHdfCtThec0HnFs2imiym4VGqeqE6GGB7AlESgiaYx2ZTNKYwDQqJ
         ARfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oDG5/iZRSWb4ewL5uTMFjwneeubYt/tkqzXeeNFHrlo=;
        b=m8QC38HufyvjxB8wts5C14PgQDTo9xJzlH+qGCBf43RelC6pwgAy2JO8vpCCf2cFoQ
         BrM41XHJaHykLVJXFUHc3uYuZUv4CZWeUJngTXN9zxzYmzPlWByiRjeZO/RarJwn3e1u
         ShJIddFMsvai/2OfvjNS2butpZBdMZ/bSnBlhHR4KaMfjptYeXkn2X3LmSkcU2dY9SqG
         ZX89g9dlXI7oSzVHv1aEc0DU7JonTXIebp1nDVio6SHfggA2Zb7edPBFt1r4dC3qK1+x
         HW8mJUNqTmtub+a0Nt+0M9F7IBUWbX9ltJdtFj7YA3h1kxwU1CefNzjHFZ06NMhFesQT
         +ygg==
X-Gm-Message-State: AO0yUKVFQ62+vIgfPspAr6YLQ09oSxBX3hFUOg1yfTliGYHmZ/cBlJf0
        QQDdIpbBQn29VVnX5e9FzhGFPJHUgOY=
X-Google-Smtp-Source: AK7set+8puYt45U9lSN96li5sRsvowuXX9dYGe9k/29APpxYPlDWcp35v3bYsQqJSHbTxW2e744qjg==
X-Received: by 2002:a05:600c:25ca:b0:3dc:46f6:e602 with SMTP id 10-20020a05600c25ca00b003dc46f6e602mr6162137wml.5.1675027203587;
        Sun, 29 Jan 2023 13:20:03 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bi24-20020a05600c3d9800b003d1d5a83b2esm14014926wmb.35.2023.01.29.13.20.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Jan 2023 13:20:03 -0800 (PST)
Message-ID: <5c2be1e7-4c75-dc20-8d2e-a528edea7e32@gmail.com>
Date:   Sun, 29 Jan 2023 22:19:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Using C23 digit separators not locale digit grouping characters
Content-Language: en-US
To:     Linux Man-Pages <linux-man@vger.kernel.org>,
        Brian Inglis <Brian.Inglis@Shaw.ca>
Cc:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
 <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
 <aebef9ae-1bd0-b0e7-b333-7269dbaf50a2@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <aebef9ae-1bd0-b0e7-b333-7269dbaf50a2@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------yUtSemvQ0dXxoyfDikIpPZuX"
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
--------------yUtSemvQ0dXxoyfDikIpPZuX
Content-Type: multipart/mixed; boundary="------------03MrWYcicrOQogsKyikZOZO4";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Linux Man-Pages <linux-man@vger.kernel.org>,
 Brian Inglis <Brian.Inglis@Shaw.ca>
Cc: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <5c2be1e7-4c75-dc20-8d2e-a528edea7e32@gmail.com>
Subject: Re: Using C23 digit separators not locale digit grouping characters
References: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
 <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
 <aebef9ae-1bd0-b0e7-b333-7269dbaf50a2@Shaw.ca>
In-Reply-To: <aebef9ae-1bd0-b0e7-b333-7269dbaf50a2@Shaw.ca>

--------------03MrWYcicrOQogsKyikZOZO4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJpYW4sIEJyYW5kZW4sDQoNCk9uIDEvMjkvMjMgMjI6MDQsIEJyaWFuIEluZ2xpcyB3
cm90ZToNCj4gT24gMjAyMy0wMS0yOSAwNzozOCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6
DQo+PiBPbiAxLzI4LzIzIDIxOjQwLCBCcmlhbiBJbmdsaXMgd3JvdGU6DQo+Pj4gU2VlaW5n
IHRoZSByZWNlbnQgdHZfbnNlYyBwYXRjaGVzIGRyb3AgdGhlIHN0YW5kYXJkIGxvY2FsZSBk
aWdpdCBncm91cGluZyANCj4+PiBjaGFyYWN0ZXJzICIsIiBmcm9tIHRoZSBtZW1iZXIgcmFu
Z2UgWzAtOTk5LDk5OSw5OTldIG1hZGUgbWUgcmVncmV0IHRoZSBsb3NzIA0KPj4+IG9mIHRo
ZSBwdW5jdHVhdGlvbiB3aGljaCBwcm92aWRlcyBiZXR0ZXIgYW5kIHF1aWNrZXIgY29tcHJl
aGVuc2lvbiBvZiBsb25nIA0KPj4+IHN0cmluZ3Mgb2YgZGlnaXRzLg0KPiANCj4+IE5pY2Uh
IERpZG4ndCByZW1lbWJlciBhYm91dCB0aGF0IHNlcGFyYXRvci7CoCBJdCBtYWtlcyBhIGxv
dCBvZiBzZW5zZSB0byB1c2UgaXQgDQo+PiBpbiBjb21tZW50cyBhbmQgdGhlIGxpa2VzIGlu
IHRoZSBwYWdlcy7CoCBNYXliZSB3ZSBzaG91bGQgYmUgYSBiaXQgbW9yZSANCj4+IGNhdXRp
b3VzIGluIHNvdXJjZSBjb2RlIGV4YW1wbGVzLCBidXQgZGVmaW5pdGVseSBmb3IgYmlnIG51
bWJlcnMgb3V0c2lkZSBvZiANCj4+IHJ1bm5pbmcgY29kZSBzaG91bGQgaGF2ZSB0aGVtLg0K
PiBUaGUgbWFqb3IgY29tcGlsZXJzIHN1cHBvcnQgdGhlbSBmcm9tIGRyYWZ0IEMyMywgYW5k
IHRoZSBjb2RlIGlzIGluIGV4YW1wbGVzLCANCj4gbm90IHNvdXJjZSB0aGF0IGhhcyB0byBj
b21waWxlIG9uIG9sZGVyIGNvbXBpbGVycywgc28gbm90IG11Y2ggdG8gYmUgY29uY2VybmVk
IA0KPiBhYm91dCB0aGVyZSwgYWx0aG91Z2ggc29tZSBtb3JlIG9waW5pb25zIHdvdWxkIGJl
IGhlbHBmdWwuDQoNCk15IHZlcnNpb24gb2YgZ2NjIG9ubHkgc3VwcG9ydHMgaXQgaWYgeW91
IHNwZWNpZnkgLXN0ZD1jMnggb3IgLXN0ZD1nbnUyeC4gIEl0IA0KaGFzbid0IGJlZW4gYmFj
a3BvcnRlZCB0byAtc3RkPWdudTE3ICh0aGUgZGVmYXVsdCkgc28gZmFyLCBBRkFJQ1MuDQoN
CiQgY2MgLVdhbGwgLVdleHRyYSBxdW90ZS5jDQpxdW90ZS5jOiBJbiBmdW5jdGlvbiDigJht
YWlu4oCZOg0KcXVvdGUuYzo1OjE4OiB3YXJuaW5nOiBtdWx0aS1jaGFyYWN0ZXIgY2hhcmFj
dGVyIGNvbnN0YW50IFstV211bHRpY2hhcl0NCiAgICAgNSB8ICAgICAgICAgaW50IHggPSAx
JzIzJzQ7DQogICAgICAgfCAgICAgICAgICAgICAgICAgIF5+fn4NCnF1b3RlLmM6NToxODog
ZXJyb3I6IGV4cGVjdGVkIOKAmCzigJkgb3Ig4oCYO+KAmSBiZWZvcmUgJ1x4MzIzMycNCiQg
Y2MgLVdhbGwgLVdleHRyYSBxdW90ZS5jIC1zdGQ9Z251MngNCiQNCg0KDQpTaW5jZSBtb3N0
IHBlb3BsZSB3b3VsZCBiZSBjb21waWxpbmcgb24gZGVmYXVsdCBzZXR0aW5ncywgSSBwcmVm
ZXIgYXZvaWRpbmcgDQp0aGF0LiAgV2hlbiBjMjMgaXMgZmluYWxseSByZWxlYXNlZCwgYW5k
IEdDQyBzd2l0Y2hlcyB0byBnbnUyMyBieSBkZWZhdWx0LCBJJ2QgDQphbHNvIHVzZSBpdCBp
biBleGFtcGxlIHByb2dyYW1zLiAgRG9lcyBpdCBtYWtlIHNlbnNlIHRvIHlvdT8NCg0KPiAN
Cj4+INC90LDQsSwgd291bGQgeW91IHBsZWFzZSB1cGRhdGUgeW91ciBwYXRjaGVzIHdpdGgg
dGhhdD/CoCBJIGFsc28gaGF2ZSBhIGZldw0KPj4gY29tbWVudHMgdGhhdCBJJ2xsIHdyaXRl
IGluIGEgbW9tZW50IGluIGFuc3dlcnMgdG8geW91ciBwYXRjaGVzLg0KPj4+IEl0IG1heSBi
ZSB0aW1lIHRvIGNvbnNpZGVyIHVzaW5nIHRoZSBsb2NhbGUgaW5kZXBlbmRlbnQgQzIzIGRp
Z2l0DQo+Pj4gc2VwYXJhdG9yIGNoYXJhY3RlcnMgIiciIHdoZXJldmVyIG1vcmUgdGhhbiBh
IGhhbmRmdWwgb2YgZGlnaXRzIG9jY3VyLA0KPj4+IHBvc3NpYmx5IGNvbnZlcnQgZ3JvdXBp
bmcgY2hhcmFjdGVyIHVzZXMgaW4gZXhpc3RpbmcgbWFuIHBhZ2VzIGFzIHRoZXkgYXJlDQo+
Pj4gY2hhbmdlZCwgYW5kIHNwZWNpZnkgYSBmdXR1cmUgc3RhbmRhcmQgcG9saWN5IGFwcHJv
YWNoIHRvIHByb3ZpZGUgYmV0dGVyDQo+Pj4gYW5kIHF1aWNrZXIgY29tcHJlaGVuc2lvbiBv
ZiBsb25nIHN0cmluZ3Mgb2YgZGlnaXRzOiBwZXJoYXBzIHVzaW5nIGEgbmV3DQo+Pj4gZGln
aXQgc2VwYXJhdG9yIHJlZ2lzdGVyIGFuZCBnbHlwaCBlc2NhcGUgc2VxdWVuY2UgXCpkcyBc
Kltkc10gXFtkc10gXChkcw0KPj4+IGlmIG5vdCBpbiB1c2UgYnkgYmFzZSBncm9mZj8NCj4+
IFRoZSBzZXF1ZW5jZSBmb3IgdGhlIHVuc2xhbnRlZCBzaW5nbGUgcXVvdGUgaXMgXChhcS4N
Cj4gR3JhbnRlZCwgYnV0IHdvdWxkIGl0IG5vdCBiZSBiZXR0ZXIgdG8gY29uc2lkZXIgdXNp
bmcgYSBzZW1hbnRpYyBkaWdpdCBzZXBhcmF0b3IgDQo+IGdyb2ZmIG1hbiBlc2NhcGUgc2Vx
dWVuY2UsIGVzcGVjaWFsbHkgaW4gdGV4dCwgd2hvc2UgcmVuZGVyaW5nIGNvdWxkIGJlIHR3
ZWFrZWQsIA0KPiByYXRoZXIgdGhhbiBhIGdlbmVyaWMgbGl0ZXJhbCBhcG9zdHJvcGhlIHF1
b3RlIHVzZWQgZXZlcnl3aGVyZT8NCj4gSWYgbm90aGluZyBlbHNlIGlzIHByb3Bvc2VkIGFu
ZCBhY2NlcHRlZCwgSSB3aWxsIHVzZSB0aGUgZ2VuZXJpYyBcKGFxLCBhbmQgaWYgDQo+IGZ1
dHVyZSBjaGFuZ2VzIGFyZSByZXF1aXJlZCwgdGhleSBjYW4gYmUgdGFyZ2V0ZWQgYnkgZGln
aXQgY29udGV4dC4NCg0KV2UgaGF2ZSBsaXR0bGUgc2VtYW50aWMgdGhpbmdzIGluIG1hbig3
KSwgYXMgb3Bwb3NlZCB0byBtZG9jKDcpLiAgSSB0aGluayBpdCANCndpbGwgYmUgc2ltcGxl
ciB0byBqdXN0IHVzZSBcKGFxLg0KDQpCcmFuZGVuLCBhbnkgb3Bpbmlvbj8NCg0KPiANCj4+
IFdlIGNvdWxkIGFkZCBzb21ld2hlcmUgaW4gbWFuLXBhZ2VzKDcpIHRoYXQgZGVjaW1hbCBu
dW1iZXJzIHNob3VsZCB1c2UgYSANCj4+IHNlcGFyYXRvciBldmVyeSAzIGRpZ2l0cywgYW5k
IGhleCBhbmQgYmluYXJ5IHNob3VsZCB1c2UgaXQgZXZlcnkgNCBkaWdpdHMuDQo+IEFzIHdl
bGwgYXMgdGhlIDMgZGVjaW1hbCwgNCBiaW5hcnkvaGV4LCB3ZSBjb3VsZCB1c2UgeXl5eSdt
bVsnZGRdTCBmb3IgUE9TSVggYW5kIA0KPiBzaW1pbGFyIGRhdGUgZGlnaXQgc3RyaW5ncywg
YW5kIDB4MTAnZmZmZiBmb3IgVW5pY29kZSBjb2RlIHBvaW50cywgDQo+IGRpc3Rpbmd1aXNo
aW5nIGJldHdlZW4gdGhlIEJhc2ljIGFuZCBTdXBwbGVtZW50YXJ5IE11bHRpbGluZ3VhbCBQ
bGFuZSBpbmRpY2VzIA0KPiBhbmQgY29kZXMsIGp1c3QgYXMgZXhhbXBsZXMgZnJvbSB3aGF0
IEkndmUgc2VlbiBzbyBmYXIuDQo+IA0KPiBJJ3ZlIGFsc28gbm90aWNlZCBhIGxvdCBvZiBh
cHBhcmVudGx5IHJhbmRvbSBkZWNpbWFsIGRpZ2l0IHN0cmluZ3MgdGhhdCBhcmUgDQo+IGJp
bmFyeSBwb3dlcnMgb3IgY2xvc2UgZGVsdGFzOiB0aG9zZSB3b3VsZCBiZSBtb3JlIGNvbXBy
ZWhlbnNpYmxlIGlmIHJlbmRlcmVkIGluIA0KPiB0ZXh0IGFzIEtpL01pL0dpWysvLW5dLCBz
byB3b3VsZCB0aGF0IGJlIHByZWZlcmFibGUsIHVzaW5nIHRoZSBJRUMgaSBzdWZmaXggdG8g
DQo+IGF2b2lkIGFtYmlndWl0eT8NCg0KSW4gcnVubmluZyB0ZXh0LCBJJ2QgZG8gaXQgY2Fz
ZSBieSBjYXNlLiAgSW4gc29tZSBjYXNlcyBJIGd1ZXNzIHRoYXQnbGwgbWFrZSANCnNlbnNl
LiAgSW4gb3RoZXJzLCAyXjMyIHdpbGwgbWFrZSBtb3JlIHNlbnNlLi4uICBCdXQgeWVzLCBi
aWcgbWFnaWMgZmF0bnVtcyBhcmUgDQpub3QgbmljZS4NCg0KPiANCj4+PiBBcyB3ZWxsIGFz
IHRoZSByZWNlbnRseSBtb2RpZmllZCBwYWdlczoNCj4+Pg0KPiAgPj4gY2xvY2tfZ2V0cmVz
LjINCj4gID4+IHRpbWVyX3NldHRpbWUuMg0KPiAgPj4gdGltZXJmZF9jcmVhdGUuMg0KPiAg
Pj4gdXRpbWVuc2F0LjINCj4+Pg0KPj4+IHRoZXJlIGFwcGVhciB0byBiZSBvYnZpb3VzIG9j
Y3VycmVuY2VzIGluIG9ubHkgdGhlIGZvbGxvd2luZyBwYWdlczoNCj4+Pg0KPiAgPj4gZnV0
ZXguMg0KPiAgPj4gcmVhZC4yDQo+ICA+PiBzZW5kZmlsZS4yDQo+ICA+PiB3cml0ZS4yDQo+
ICA+PiBtYWxsb3B0LjMNCj4gID4+IGtleXJpbmdzLjcNCj4gID4+IG1xX292ZXJ2aWV3LjcN
Cj4gID4+IHNjaGVkLjcNCj4gID4+IHRpbWVfbmFtZXNwYWNlcy43DQo+Pj4NCj4+PiBidXQg
dGhlcmUgYXBwZWFyIHRvIGJlIGFib3V0IDQwMCBwYWdlcyB3aXRoIG1vcmUgdGhhbiA2IGRl
Y2ltYWwgZGlnaXQNCj4+PiBzdHJpbmdzIChzb21lIHNwdXJpb3VzIGdsaWJjIGhleCBjb21t
aXRzIGFuZCBhZGRyZXNzIG91dHB1dHMpIHdoZXJlIGl0DQo+Pj4gY291bGQgcGVyaGFwcyBo
ZWxwLCBzdWNoIGFzIGluIFBPU0lYIHZlcnNpb24gZGF0ZXMgZS5nLiAyMDAxJzEyTCwgYW5k
DQo+Pj4gdW5kb3VidGVkbHkgbW9yZSB3aXRoIGxvbmcgZGlnaXQgc3RyaW5ncyBpbiBvdGhl
ciByYWRpeGVzLg0KPj4gV291bGQgeW91IG1pbmQgcHJlcGFyaW5nIGEgcGF0Y2ggZm9yIGFs
bCBvZiB0aG9zZT/CoCBJZiB5b3UnbGwgZG8gaXQsIGJldHRlcg0KPj4gd2FpdCB1bnRpbCB3
ZSBtZXJnZSDQvdCw0LEncyBwYXRjaGVzLCB0byBhdm9pZCBjb25mbGljdHMuDQo+IEknbGwg
c3RhcnQgYW55d2F5LCBuZWVkIHRvIHJldmlldyBvdmVyIDMwMCBmaWxlcyB3aXRoIG92ZXIg
OTAwIGRpZ2l0IHN0cmluZ3MsIA0KPiBoYXZpbmcgY3V0IGEgYnVuY2ggbW9yZSBwYWdlcyB3
aXRoIG91dHB1dCBleGFtcGxlcy4NCg0KU3VyZS4NCg0KPiANCj4gQW55IHBhcnRpY3VsYXIg
c3ViZGl2aXNpb24gb2YgZmlsZXMgcGF0Y2hlZCBpbnRvIGdpdCBsb2dnZWQgcGF0Y2hlcywg
Ynkgc2VjdGlvbiwgDQo+IGJ5IHR5cGUgb2YgZWRpdCwgc2VwYXJhdGUgbG9nZ2VkIHBhdGNo
ZXMgZm9yIGZpbGVzIHdpdGggbWFueSBlZGl0cywgb3IuLi4/DQoNCldoYXRldmVyIHlvdSBw
cmVmZXIsIEkgZ3Vlc3MuICBJIHRoaW5rIHRoZSBmaXJzdCBkaXZpc2lvbiBJJ2QgZG8gaXMg
aW4gdGhlIGtpbmQgDQpvZiBjaGFuZ2UsIGFuZCB0aGVuIGluIHRoZSBzZWN0aW9uIHdpdGhp
biBhIHBhZ2Ugd2hlcmUgaXQgYXBwZWFycy4gIEJ1dCwgeW91IA0Kd3JpdGUgaXQsIHNvIEkg
Z3Vlc3MgeW91J2xsIGZpbmQgdGhlIGJlc3Qgc2VwYXJhdGlvbi4gIEFzIGxvbmcgYXMgcGF0
Y2hlcyBhcmUgDQpjb25zaXN0ZW50IGVub3VnaCB0byBub3QgaGF2ZSBtYW55IGNvbnRleHQg
c3dpdGNoZXMgd2hlbiByZXZpZXdpbmcsIGl0IHNob3VsZCBiZSANCmdvb2QuDQoNCj4gDQo+
IEZZSSBhbHRob3VnaCBtYW55IGhpdHMgYXJlIGxpa2VseSBvdXRwdXQsIHRoZSB0b3AgY2Fu
ZGlkYXRlcyBzbyBmYXIgYXJlOg0KPiANCj4gODAgbWFuNS9wcm9jLjUNCj4gNTUgbWFuMi9z
dGF0ZnMuMg0KPiAzNCBtYW43L2ZlYXR1cmVfdGVzdF9tYWNyb3MuNw0KPiAzMiBtYW4zL2Rs
X2l0ZXJhdGVfcGhkci4zDQo+IDMwIG1hbjcvdW5pdHMuNw0KPiAzMCBtYW41L3JwYy41DQo+
IDIzIG1hbjMvdGVybWlvcy4zDQo+IDIwIG1hbjMvbWFsbG9jX2luZm8uMw0KPiAxNyBtYW4y
L3VzZXJmYXVsdGZkLjINCj4gMTYgbWFuNy9rZXlyaW5ncy43DQo+IDE1IG1hbjcvdGltZV9u
YW1lc3BhY2VzLjcNCj4gMTQgbWFuNy9wb3NpeG9wdGlvbnMuNw0KPiAxNCBtYW4zL21hbGxv
cHQuMw0KPiAxMyBtYW43L3V0Zi04LjcNCj4gMTIgbWFuMi9yZWJvb3QuMg0KPiAxMiBtYW4y
L2tleWN0bC4yDQo+IA0KDQpDaGVlcnMsDQoNCkFsZXgNCi0tIA0KPGh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------03MrWYcicrOQogsKyikZOZO4--

--------------yUtSemvQ0dXxoyfDikIpPZuX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPW4vUACgkQnowa+77/
2zIa1hAAnsv3K+vofJkQ7aGT2HIJYViK7Y7OmL/+NWqgn186MwCng1HUOjsAsIHn
KDTs2NYbforPYE/mvjsa7xSqHlSGuXorahLzmlK5B1/GKmVA1vvFaj+eiOwBO11O
RKuCNZO41uRIiIcDsoaCxn2zLJWB4q5cDxzQnKqFzmGaO2j+/ZI4/oOrpB6tQdGH
ZboP3fn9gAFfJ4/N7hBXcj9Xd5idYKn8JYJKHY8P9WMWBLtOgAtPa9/qH2jHG7Co
kKd9ZsxQARZ4LIsUN7VydMjy0K3vOn3LXyDLsO21Tmpw93WKRSeh7Y7qAM2vyNka
YDrhN1RLlSOr7vpYwt8PQrGY3nar72/MWtPhuQiOnpo1Imiig+/XeHuYc2GINRsk
D1B6BX2u84j8rNpooc3ROshwAfPXpclf+qgLVAP2SNRF4hBeGWBMO3WMENIiIdeA
2gYbI+Fp+UY4SS6X7OzGn5k5c1FswoCdQhyBaVP/oPIyg8pvKbiyhm1jVaZraYxK
M1SkEjl/ExxyEK6N9fiq0LCm6jwSNOk7LiIcMu1J5h3rRKKcfCoQ9bOXte9xNSUd
nsqOnKoHGABuXvQVqdupKJ98iNdiGWHUQb8DZi2+t+7lVAxTZ0+PtBiOrKRX7/Xk
p2lrTBQX7KFflhJKQ9oZLL4u/Wwy7dRZMILyKvKTZKCE7X8Ok7Q=
=mjpl
-----END PGP SIGNATURE-----

--------------yUtSemvQ0dXxoyfDikIpPZuX--
