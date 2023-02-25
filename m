Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A21076A25D8
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 01:40:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229547AbjBYAkV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 19:40:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229464AbjBYAkV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 19:40:21 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B62BF63A1E
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 16:40:19 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id m14-20020a7bce0e000000b003e00c739ce4so565385wmc.5
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 16:40:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=37c/adSt6IA0FSmMdvqffmQ9irNUHgW8SUCbA8DGmKs=;
        b=LvIgY7S570OTz9yqJPwv8kqLyvbI1brG27M3rmt1Co9JWlfB8SLJns+scfsXWMPwkG
         pDYdU7zZ/qvJZWgo4f94b7TU329XuiZehjw70F8NCYsKBpAuRJUjUU5udvKK4Ke+0Lx0
         czeQRX8m13qQhzliArtqoAauadJGHgW3YTewDoEIoKRAYf7HmfBQip7Uazv5p6q3mE5e
         qZ1NZ15m19gYNFnJbluzbd02yLiHFvhI7hI+cMDQvWHO1I9PzgJ6dixtj9sEOvzKof1i
         cWl2Igw4DDvaPefk+Mj9KYUk2jgbxgyMk48FXSV4Bu6SdxDnu2cOR5tmAA4XVgGFxS+/
         nKpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=37c/adSt6IA0FSmMdvqffmQ9irNUHgW8SUCbA8DGmKs=;
        b=S7+3/00lBh1UX+hdVvJMzR1S+UC6boYK4ijbDdRbbpOd8ZUhpMRilF1F/qD4738t57
         MsiZ5G/yIw1g+Fh2RLBnKR1MaDFMbGnVWYV979Mvn6C5DuF6mbqrPf7lfe12pLipiQ5G
         0ETnSuHZIxPDZEP+ujCgxWZDbtakc8NfVEq3o4n5maPXG6mkB13LoJafVuMxX9gaj4So
         I2Kgmj2aMKjol48NbCW3eDavMoT+3I3LllpxqGx8otB6kwCFjyI9ziQc0uwRfPlrVDUE
         XIF/XXlPZDNiscC1sPQbzKdS+or8sBcy6bWxxtsex3JA0T1CHiBTSCwtTbFT1fYvEqxK
         Utvg==
X-Gm-Message-State: AO0yUKU6yfqx5A9BmE6MnabgVQiZV+opvtDuYOm6fUFcmpN7WFyx4t4i
        erKoM5rBmT6DaaXUghx5iLQ=
X-Google-Smtp-Source: AK7set/owmxCVY7CpwE99uhI28HwcFAz9TkeltLrpaTAEhRXAVhPwNx9Z8pzFfexUcrfxulw+GkQiw==
X-Received: by 2002:a05:600c:502b:b0:3ea:e7e7:95da with SMTP id n43-20020a05600c502b00b003eae7e795damr5043838wmr.8.1677285618198;
        Fri, 24 Feb 2023 16:40:18 -0800 (PST)
Received: from [172.26.3.7] (240.red-88-26-240.staticip.rima-tde.net. [88.26.240.240])
        by smtp.gmail.com with ESMTPSA id bd12-20020a05600c1f0c00b003e0015c8618sm4529325wmb.6.2023.02.24.16.40.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 16:40:17 -0800 (PST)
Message-ID: <7803b627-9fbb-44be-bd41-04611c43ee2e@gmail.com>
Date:   Sat, 25 Feb 2023 01:40:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: %z and %Z in strftime man page require clarification
Content-Language: en-US
To:     Almaz Mingaleev <mingaleev@google.com>
Cc:     enh <enh@google.com>, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org, Paul Eggert <eggert@cs.ucla.edu>
References: <CAJ0cOr-v1GDCqsU86w-rZVvejtppOAW56FxApFPnfPwRmAd47w@mail.gmail.com>
 <CAJ0cOr-x+hg5cH_wHH+uJ4co69qYZN425d-nFdoqFtuM79Kxzg@mail.gmail.com>
 <CAJgzZooiJVgKDH9KkW_FKZJThDVLJjqGLQ3RB1NnHVQVbA-QjQ@mail.gmail.com>
 <2d8c77b3-ba32-1494-037b-ad609e1c263a@gmail.com>
 <CAJ0cOr_+tgOp4VRvHkPa6o10sTBpM8+T6-DJK2a1JkUBvrHFmA@mail.gmail.com>
 <CAJ0cOr_4QjacU1miDEZGjgkLtVaLk8f-KHVsB_J=c=-C+DTXBA@mail.gmail.com>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAJ0cOr_4QjacU1miDEZGjgkLtVaLk8f-KHVsB_J=c=-C+DTXBA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------G0jA1A2Z7iSALowZFSLZufSr"
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
--------------G0jA1A2Z7iSALowZFSLZufSr
Content-Type: multipart/mixed; boundary="------------qlJV0Ogdb6WiKUV05Rzuj04p";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Almaz Mingaleev <mingaleev@google.com>
Cc: enh <enh@google.com>, mtk.manpages@gmail.com, linux-man@vger.kernel.org,
 Paul Eggert <eggert@cs.ucla.edu>
Message-ID: <7803b627-9fbb-44be-bd41-04611c43ee2e@gmail.com>
Subject: Re: %z and %Z in strftime man page require clarification
References: <CAJ0cOr-v1GDCqsU86w-rZVvejtppOAW56FxApFPnfPwRmAd47w@mail.gmail.com>
 <CAJ0cOr-x+hg5cH_wHH+uJ4co69qYZN425d-nFdoqFtuM79Kxzg@mail.gmail.com>
 <CAJgzZooiJVgKDH9KkW_FKZJThDVLJjqGLQ3RB1NnHVQVbA-QjQ@mail.gmail.com>
 <2d8c77b3-ba32-1494-037b-ad609e1c263a@gmail.com>
 <CAJ0cOr_+tgOp4VRvHkPa6o10sTBpM8+T6-DJK2a1JkUBvrHFmA@mail.gmail.com>
 <CAJ0cOr_4QjacU1miDEZGjgkLtVaLk8f-KHVsB_J=c=-C+DTXBA@mail.gmail.com>
In-Reply-To: <CAJ0cOr_4QjacU1miDEZGjgkLtVaLk8f-KHVsB_J=c=-C+DTXBA@mail.gmail.com>

--------------qlJV0Ogdb6WiKUV05Rzuj04p
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQWxtYXosDQoNCk9uIDIvMjQvMjMgMTc6NDAsIEFsbWF6IE1pbmdhbGVldiB3cm90ZToN
Cj4gSSd2ZSBzdGFydGVkIGEgbmV3IHRocmVhZCwgYnV0IGNhbid0IHNlZSBpdCBpbiB0aGUg
bWFpbGluZyBsaXN0IGFyY2hpdmVzLg0KPiBQbGVhc2Ugc2VlIHRoZSBwYXRjaCBhdHRhY2hl
ZC4NCg0KVGhhbmtzIQ0KDQpDb3VsZCB5b3UgcGxlYXNlIHNlbmQgdGhlIHBhdGNoIGlubGlu
ZSAoaWYgeW91IHVzZSBnaXQtZm9ybWF0LXBhdGNoKDEpLCANCnRoYXQgd291bGQgYmUgLS1u
by1hdHRhY2ggKG9yIC0taW5saW5lLCBidXQgSSBwcmVmZXIgLS1uby1hdHRhY2gpKSwgc28g
SSANCmNhbiBxdW90ZSByZXBseSBvbiBpdD8NCg0KSWYgeW91IGZlYXIgdGhhdCB5b3VyIG1h
aWxlciB3aWxsIGRvIGhhcm1mdWwgc3R1ZmYsIHBsZWFzZSBzZW5kIGl0IGJvdGggDQphdHRh
Y2hlZCBhbmQgaW5saW5lLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCj4gDQo+IE9uIFdl
ZCwgMTUgRmViIDIwMjMgYXQgMTc6MzQsIEFsbWF6IE1pbmdhbGVldiA8bWluZ2FsZWV2QGdv
b2dsZS5jb20+IHdyb3RlOg0KPj4NCj4+IEhpIEFsZXgsDQo+Pg0KPj4gUGF0Y2ggaXMgc29t
ZXdoYXQgcmVhZHksIEkgd2lsbCBzZW5kIGl0IG9uY2UgYSB0ZWFtbWF0ZSByZXZpZXdzIGl0
Lg0KPj4gU2hvdWxkIGJlIHJlYWR5IGJ5IHRvbW9ycm93Lg0KPj4NCj4+IEknZCBkZWZpbml0
ZWx5IGFwcHJlY2lhdGUgaWYgUGF1bCBjaGVja3MgaXQgdG9vIDopDQo+Pg0KPj4NCj4+IE9u
IFdlZCwgMTUgRmViIDIwMjMgYXQgMTc6MjEsIEFsZWphbmRybyBDb2xvbWFyIDxhbHgubWFu
cGFnZXNAZ21haWwuY29tPiB3cm90ZToNCj4+Pg0KPj4+IEhpIEVsbGlvdHQsIEFsbWF6LA0K
Pj4+DQo+Pj4gT24gMi8xMy8yMyAxNzozMSwgZW5oIHdyb3RlOg0KPj4+PiAoZ2l2ZW4gaG93
IGNvbXBsZXggYSB0b3BpYyB0aGlzIGlzIC0tIGJhc2VkIG9uIHRoZSBkaXNjdXNzaW9uIG9u
IHRoZQ0KPj4+PiB0eiBtYWlsaW5nIGxpc3QgLS0geW91IG1pZ2h0IHdhbnQgdG8gc2VuZCBh
IHNwZWNpZmljIHN1Z2dlc3Rpb24gaW4gdGhlDQo+Pj4+IGZvcm0gb2YgYSBwYXRjaC4uLikN
Cj4+Pg0KPj4+IFRoYW5rcywgSSBhZ3JlZS4gIFRoaXMgaXMgdG9vIGNvbXBsZXgsIGFuZCBp
dCB3b3VsZCBiZSBuaWNlIHRvDQo+Pj4gc2VlIGEgbW9yZSBzcGVjaWZpYyBzdWdnZXN0aW9u
IGluIHRoZSBmb3JtIG9mIGEgcGF0Y2guDQo+Pj4gSSBDQ2VkIFBhdWwsIGluIGNhc2UgaGUg
Y2FuIGhlbHAuDQo+Pj4NCj4+PiBDaGVlcnMsDQo+Pj4NCj4+PiBBbGV4DQo+Pj4NCj4+Pj4N
Cj4+Pj4gT24gTW9uLCBGZWIgMTMsIDIwMjMgYXQgMToxNSBBTSBBbG1heiBNaW5nYWxlZXYg
PG1pbmdhbGVldkBnb29nbGUuY29tPiB3cm90ZToNCj4+Pj4+DQo+Pj4+PiBGcmllbmRseSBw
aW5nLg0KPj4+Pj4NCj4+Pj4+DQo+Pj4+PiBPbiBUaHUsIDI4IEp1bCAyMDIyIGF0IDA5OjE2
LCBBbG1heiBNaW5nYWxlZXYgPG1pbmdhbGVldkBnb29nbGUuY29tPiB3cm90ZToNCj4+Pj4+
Pg0KPj4+Pj4+IEhpIE1pY2hhZWwsDQo+Pj4+Pj4gQ3VycmVudCBzdHJmdGltZSBzcGVjaWZp
Y2F0aW9uIGluIEMgbGFuZ3VhZ2Ugc3RhbmRhcmQgaXMgbm90IGFjY3VyYXRlLg0KPj4+Pj4+
IEl0IHRlbGxzIHRoYXQgdG1faXNkc3QgaXMgZW5vdWdoIHRvIGZpbmQgb3V0IHRpbWUgem9u
ZSdzIG9mZnNldC4gQnV0DQo+Pj4+Pj4gdGhhdCdzIG5vdCB0cnVlLCBmb3IgZXhhbXBsZSBF
dXJvcGUvTGlzYm9uIGhhcyBjaGFuZ2VkIFswXSBpdHMNCj4+Pj4+PiBzdGFuZGFyZCBvZmZz
ZXQgZnJvbSAwMDowMCB0byAwMTowMCBhbmQgYmFjayB0byAwMDowMCwgc28gYW4gZXhhY3QN
Cj4+Pj4+PiBkYXRlIGlzIG5lZWRlZCB0byBhbnN3ZXIgdGhhdC4NCj4+Pj4+Pg0KPj4+Pj4+
IFRvIGdldCBjb3JyZWN0IGFuc3dlciB3aXRoIHRoZSBjdXJyZW50IGdsaWJjIHRtIHN0cnVj
dCBzaG91bGQgZWl0aGVyDQo+Pj4+Pj4gY29tZSBmcm9tIGxvY2FsdGltZSBvciB0aGVyZSBz
aG91bGQgYmUgYSBta3RpbWUgY2FsbCBwcmlvciB0bw0KPj4+Pj4+IHN0cmZ0aW1lLiBZb3Ug
Y2FuIGZpbmQgYSByZXBybyBleGFtcGxlIGFuZCBkaXNjdXNzaW9uIGhlcmUgWzFdLiBQYXVs
DQo+Pj4+Pj4gRWdnZXJ0IGhhcyBwcm9wb3NlZCBhIGZpeCB0byBDIHN0YW5kYXJkIFsyXS4N
Cj4+Pj4+Pg0KPj4+Pj4+IFNob3VsZCBtYW4gcGFnZXMgcmVmbGVjdCB0aGF0IGkuZS4gbWVu
dGlvbiB0aGF0IHRoZXJlIHNob3VsZCBiZQ0KPj4+Pj4+IGxvY2FsdGltZS9ta3RpbWUgY2Fs
bHMgZm9yICV6IGFuZCAlWj8NCj4+Pj4+Pg0KPj4+Pj4+IFRoYW5rcywNCj4+Pj4+PiBBbG1h
eg0KPj4+Pj4+DQo+Pj4+Pj4gUC5TLiBJIGFtIHJlc2VuZGluZyB0aGUgZW1haWwuIE15IHBy
ZXZpb3VzIGF0dGVtcHQgd2FzIGJvdW5jZWQgYmFjayBhcw0KPj4+Pj4+IGl0IHdhc24ndCBU
RVhUL1BMQUlOLg0KPj4+Pj4+DQo+Pj4+Pj4gWzBdIGh0dHBzOi8vZ2l0aHViLmNvbS9lZ2dl
cnQvdHovYmxvYi9hMjQ5YTBjNjRiMmY4N2EyNGM3ZjFhYWI0MzA1NmZiNTk3Yzk1Yjk2L2V1
cm9wZSNMMjQwMA0KPj4+Pj4+IFsxXSBodHRwczovL21tLmljYW5uLm9yZy9waXBlcm1haWwv
dHovMjAyMi1KdWx5LzAzMTY2OC5odG1sDQo+Pj4+Pj4gWzJdIGh0dHBzOi8vbW0uaWNhbm4u
b3JnL3BpcGVybWFpbC90ei8yMDIyLUp1bHkvMDMxNjc0Lmh0bWwNCj4+Pg0KPj4+IC0tDQo+
Pj4gPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KPj4+IEdQRyBrZXkgZmlu
Z2VycHJpbnQ6IEE5MzQ4NTk0Q0UzMTI4M0E4MjZGQkREOEQ1NzYzM0Q0NDFFMjVCQjUNCg0K
LS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQpHUEcga2V5IGZpbmdl
cnByaW50OiBBOTM0ODU5NENFMzEyODNBODI2RkJERDhENTc2MzNENDQxRTI1QkI1DQoNCg==


--------------qlJV0Ogdb6WiKUV05Rzuj04p--

--------------G0jA1A2Z7iSALowZFSLZufSr
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP5WPAACgkQnowa+77/
2zJTURAAqa6KghwpCmmJzyH+l0a5cipT4XeMP6IIqCAq9VXdBam4buHkbyjbPTyW
Spg5HuzrswGOzaFgDZmvkve+Ke1cWobpTnLohddjYiMo4tS0VX0ybnMU5JWBX8Mq
qkQE0lEW5iGujR6DpWOnBnnMDxgpWFB6yb9i4CxeskVifQMmemAva1SZSf7qt+HK
w05fHq2dmRY4rThYDUVjphcU0xLpHI6n+YkKW8zGsTNzJFr4y/u4L6eb9E9ncDlc
VWYH2Bi31N6Jkur5XZ6e+05BecNpgKJC3tPydiZpNa+8D5B7RHNL6NFU1joL97xx
jtEna8o0wUIsCtqKdd+2MmZ6jZ7ciPQ80jD14nJ/Isx6fzNab2oVAkFlgsQH4f1A
4sXCngzZ6uNujoLuS7Utd7Jh3lD4wvtuCpgIo/Es7g1iqoAqWPmOZZEj9NgDzU3v
NRbXIYEEE4v1ISJy9WHG9HY/eDJFKC3eUXo8Y0t9rNEGFQuumdwZUSL6abvi8F2q
hZ0l9inOxEEUReLSswLa0kkaYSZRSv0JICCaQNBuqBI/eGbDKRBbknXoT39qc0CS
rMCk6qppv1zub/eHJIu/L3wCpKIswkhbdqhn60FVXUtTibkdSOqAK0eXzmdSq55V
S2xtfO4yfTOB+v0N+uWi2BcfpjAte3tJT0PxOzdkqmGegb8BxWc=
=4x4r
-----END PGP SIGNATURE-----

--------------G0jA1A2Z7iSALowZFSLZufSr--
