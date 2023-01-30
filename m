Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F73A680E32
	for <lists+linux-man@lfdr.de>; Mon, 30 Jan 2023 13:57:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237001AbjA3M5K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Jan 2023 07:57:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236968AbjA3M5E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Jan 2023 07:57:04 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97D6E37F35
        for <linux-man@vger.kernel.org>; Mon, 30 Jan 2023 04:56:55 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id h12so10951192wrv.10
        for <linux-man@vger.kernel.org>; Mon, 30 Jan 2023 04:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YwyANeB2ljI+dMQuLbH6FzhD7FTW8rqtHs7rFPWL8Pk=;
        b=BQC+0r36lKRa7I5OLThDq77jFe3LFXCpNGJPfplf8k0QD7wFSG1O9lE3+RfyU4jn0P
         /B/TIdNwtZz2T7aZB5oEkd6CjnFXpvBAlB3e9RnxuVgUj/qnpwPAdMmbdgoivyu7wdoa
         U651QvGB7tl+VHjfRkoDTWmixx761f3OPLR545v7hvhgWHlNWDMEQV6WFHvUL1yKQK9X
         DsMb+dBRS0RQOmIUxHtDTg0orww7dr2MlyxeSaaMQvPmy4bkdpFmB90ds3bnXJk6XTIp
         +ocbVu8HqDpNvqgzLGub0ZDQpmkNGsmnBdKdwmZ3Jb/HCBECUpnAMFWKnUL8O+KrQotn
         VAdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YwyANeB2ljI+dMQuLbH6FzhD7FTW8rqtHs7rFPWL8Pk=;
        b=6eTJweAzxUptilfphCEuwUvInPvk6w4bybutz+fmsCIV0fJTBySmBD7Asywo39uOw1
         yUtW4LwHB6l4cWpF+VX2e7iHFOmnwCcoFE9QFo6N+cgkJAb0/HFDDTktM68B5C0lBXmI
         FGompW0vJPSBBFAM2F6WcWFiJE1JvRofCBnvr0yWxL8LadOadA7ogw80PIRoD1SO6bU4
         jVJliUuRs0psuVLMSNrCNp5oDLkwuW/1hqEPSOLliPPMSJfBcRobLL+0IK0RCZz0j2UK
         +C03Dngl9jGipLA8XxEnQvJulEWEwWOio2pLPVQDCjJv/t3+6OeY/sUQwr9tgs7q7I0o
         158A==
X-Gm-Message-State: AFqh2kqpECPuZBSJ9059APvzpb+hRFoImoVmOEvGMll1Z6ytnF92rXME
        zv1u88mKCAAjp0b5sCsJnH/IMHmIVR4=
X-Google-Smtp-Source: AMrXdXvJnNgvdETwoj9bxKAMLqN5+CqikLCaei1hlONl+5InvRAmWk+0o6g5WIuq2z+TlXb6m2k84w==
X-Received: by 2002:a5d:6d41:0:b0:2bb:328b:a66d with SMTP id k1-20020a5d6d41000000b002bb328ba66dmr43528323wri.60.1675083413948;
        Mon, 30 Jan 2023 04:56:53 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m8-20020a5d56c8000000b002bf94527b9esm11631109wrw.85.2023.01.30.04.56.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jan 2023 04:56:53 -0800 (PST)
Message-ID: <055f6878-3684-3809-8229-800c2ca825bd@gmail.com>
Date:   Mon, 30 Jan 2023 13:56:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 1/3] timespec.3type: tv_nsec is impl-def-type, glibc
 llong not a bug
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20230129162944.353r46pnt6fbcqeg@tarta.nabijaczleweli.xyz>
 <dd82d5ab07d5a0aafee6a1166a757a22c39f52af.1675009892.git.nabijaczleweli@nabijaczleweli.xyz>
 <9962eefe-0125-d847-ae47-d25658a75610@gmail.com>
 <20230130020512.bces77ao7xty4iyy@tarta.nabijaczleweli.xyz>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230130020512.bces77ao7xty4iyy@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------rIK47eWsqV7WG0gJMtkK3JeX"
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
--------------rIK47eWsqV7WG0gJMtkK3JeX
Content-Type: multipart/mixed; boundary="------------xd07oBr0aJt91iDLi844vrN0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <055f6878-3684-3809-8229-800c2ca825bd@gmail.com>
Subject: Re: [PATCH v2 1/3] timespec.3type: tv_nsec is impl-def-type, glibc
 llong not a bug
References: <20230129162944.353r46pnt6fbcqeg@tarta.nabijaczleweli.xyz>
 <dd82d5ab07d5a0aafee6a1166a757a22c39f52af.1675009892.git.nabijaczleweli@nabijaczleweli.xyz>
 <9962eefe-0125-d847-ae47-d25658a75610@gmail.com>
 <20230130020512.bces77ao7xty4iyy@tarta.nabijaczleweli.xyz>
In-Reply-To: <20230130020512.bces77ao7xty4iyy@tarta.nabijaczleweli.xyz>

--------------xd07oBr0aJt91iDLi844vrN0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDEvMzAvMjMgMDM6MDUsINC90LDQsSB3cm90ZToNCj4gSGkhDQo+IA0KPiBP
biBTdW4sIEphbiAyOSwgMjAyMyBhdCAwNTo0MTo1NlBNICswMTAwLCBBbGVqYW5kcm8gQ29s
b21hciB3cm90ZToNCj4+IE9uIDEvMjkvMjMgMTc6MzEsINC90LDQsSB3cm90ZToNCj4+PiAr
LlBQDQo+Pj4gKy5JIHR2X25zZWMNCj4+PiAraXMgb2YgYW4gaW1wbGVtZW50YXRpb24tZGVm
aW5lZCBzaWduZWQgdHlwZSBjYXBhYmxlIG9mIGhvbGRpbmcgdGhlIHNwZWNpZmllZCByYW5n
ZS4NCj4+IFdvdWxkIHlvdSBtaW5kIHVzaW5nIGludGVydmFsIGhlcmU/DQo+IEkgZG9uJ3Qg
dGhpbmsgaXQgbWFrZXMgc2Vuc2UgaGVyZT8gU2luY2UgKGEpIHRoaXMgaXMgdGhlIHN0YW5k
YXJkcw0KPiBwaHJhc2luZyBhbmQgKGIpIHRoZSAvcmFuZ2UvIG9mIHZhbHVlcyBpcyByZXBy
ZXNlbnRlZCBieSBhbiBpbnRlcnZhbC4NCg0KTWFrZXMgc2Vuc2UuDQoNCj4gDQo+IFdlIGNv
dWxkIGp1c3QgYXMgd2VsbCBzYXkgImFsbCBpbnRlZ2VycyBiZXR3ZWVuIDAgYW5kIDk5OWA5
OTlgOTk5IiwNCj4gb3IgImludGVnZXJzIGF0IGxlYXN0IDAgYW5kIHNtYWxsZXIgMWU5Iiwg
d2hpY2ggYXJlIGJvdGggaWRlbnRpY2FsLA0KPiBidXQgYXJlbid0IGludGVydmFscyBwZXIg
c2UuIE9yIGNvbnNpZGVyIGEgc2ltaWxhciBjYXNlLA0KPiB3aGVyZSB0aGUgcmFuZ2Ugd291
bGQgYmUgIlswLCAyXjMxLTFdIOKIqiB7RU9GfSIg4oCSDQo+IHlvdSB3b3VsZG4ndCBjYWxs
IHRoYXQgYW4gaW50ZXJ2YWwsIGJ1dCBpdCdzIGEgdmFsaWQgc2V0IGV4cHJlc3Npb247DQo+
IHRpbWVzcGVjLjN0eXBlIGlzIGp1c3QgYSBkZWdlbmVyYXRlIGNhc2UuDQoNCkkganVzdCBj
aGVja2VkIGFnYWluLCBhbmQgSSB3YXMgY29uZnVzZWQgYnkgdGhlIHN0YXRpc3RpY3MgZGVm
aW5pdGlvbiBvZiByYW5nZSwgDQp3aGljaCBzZWVtcyB0byBiZSBtb3JlIGF2YWlsYWJsZSBp
biBCaWcgU2VhcmNoIEVuZ2luZS4NCg0KVGhlcmUncyBhIHNlY29uZCBkZWZpbml0aW9uIHdo
aWNoIG1hdGNoZXMgdGhpcywgd2hpY2ggSSBkaWRuJ3QgZmluZCBsYXN0IHRpbWUuDQoNCjxo
dHRwczovL3NjaWVuY2luZy5jb20vd2hhdC1yYW5nZS1tYXRoZW1hdGljcy00ODY1ODk3Lmh0
bWw+DQoNCj4gDQo+IEluIGdlbmVyYWwsIHdlJ3JlIGNvbmNlcm5lZCB3aXRoIHRoZSBsb2dp
Y2FsIG9iamVjdCBoZXJlDQo+ICgidGhlIGRvbWFpbiIgb3IsIHdlbGwgInJhbmdlIFtvZiB2
YWx1ZXNdIiksDQo+IG5vdCB0aGUgaW1wbGVtZW50YXRpb24gZGV0YWlsICgiaXQncyBzcGVs
bGVkIHdpdGggYW4gaW50ZXJ2YWwiKS4NCj4gDQo+IFBsdXMsIEknZCBuZXZlciBzZWFyY2gg
Zm9yICJpbnRlcnZhbCIsDQo+IGJ1dCBtb3N0IHBlb3BsZSB3b3VsZCBwcm9iYWJseSBncmVw
IGZvciAicmFuZ2UiLA0KPiBiZWNhdXNlIHRoYXQncyB0aGUgc2FuZXN0IHNwZWxsaW5nLg0K
DQo6KQ0KDQo+IA0KPj4+IC1UaGlzIGlzIGEgbG9uZy1zdGFuZGluZyBhbmQgbG9uZy1lbnNo
cmluZWQgZ2xpYmMgYnVnDQo+Pj4gLS5VUiBodHRwczovL3NvdXJjZXdhcmUub3JnL2J1Z3pp
bGxhL3Nob3dfYnVnLmNnaT9pZD0xNjQzNw0KPj4+IC0uSSAjMTY0MzcNCj4+PiAtLlVFICwN
Cj4+PiAtYW5kIGFuIGluY29tcGF0aWJsZSBleHRlbnNpb24gdG8gdGhlIHN0YW5kYXJkczsN
Cj4+PiAtaG93ZXZlciwgYXMgZXZlbiBhIDMyLWJpdA0KPj4+IC0uSSBsb25nDQo+Pj4gLWNh
biBob2xkIHRoZSBlbnRpcmUNCj4+PiAtLkkgdHZfbnNlYw0KPj4+IC1yYW5nZSwNCj4+PiAt
aXQncyBhbHdheXMgc2FmZSB0byBmb3JjaWJseSBkb3duLWNhc3QgaXQgdG8gdGhlIHN0YW5k
YXJkIHR5cGUuDQo+PiBJZiB0aGUgQyBzdGFuZGFyZHMgYW5kIFBPU0lYIGRvbid0IHdhbnQg
dG8gYWRkIGEgdHlwZSBmb3IgaXQsIGxldCB1cw0KPj4gZGlzYWdyZWUgd2l0aCB0aGVpciBk
ZWNpc3Npb24uDQo+IExldCdzIG5vdC4gVGhpcyBpcyB2YWxpZCAvcmlnaHQgbm93LyBpbiBu
by1mbGFnIChzbyAiZ251MTgiPykNCj4gQ2xhbmcgdHJ1bmsgYW5kIGJ1bGxzZXllIEdDQzoN
Cj4gLS0gPjggLS0NCj4gJCBjYyAtV2FsbCAtV2V4dHJhIGEuYw0KPiAkIGNhdCBhLmMNCj4g
I2luY2x1ZGUgPHRpbWUuaD4NCj4gDQo+IHN0YXRpYyB2b2lkIG5zZWNpZnkodHlwZW9mKChz
dHJ1Y3QgdGltZXNwZWMpe30udHZfbnNlYykgKiBuKSB7DQoNCklmIEkgc2VlIHN1Y2ggYSBm
dW5jdGlvbiBkZWNsYXJhdG9yLCBJJ21hIGNyeS4NCg0KPiAgICAgICAgICAqbiAqPSAyOw0K
PiB9DQo+IA0KPiBpbnQgbWFpbigpIHsNCj4gICAgICAgICAgc3RydWN0IHRpbWVzcGVjIHEg
PSB7fTsNCj4gICAgICAgICAgX19hdXRvX3R5cGUgdyA9ICZxLnR2X25zZWM7DQoNClBsZWFz
ZSB0YWtlIG9mZiBteSBleWVzLiA6UA0KDQpJIGxvdmUgYXV0bywgYnV0IGl0IGJlbG9uZ3Mg
dG8gdHlwZS1nZW5lcmljIG1hY3JvcywgSU1PLg0KDQo+ICAgICAgICAgIG5zZWNpZnkodyk7
DQo+IH0NCj4gLS0gPjggLS0NCj4gDQo+IEFuZCBpbiBDMjMgeW91J2xsIGJlIGFibGUgdG8g
cy9fX2F1dG9fdHlwZS9hdXRvLy4NCg0KSW4gdGhlIGVuZCB3ZSBnb3QgaXQhDQpJIGhvcGUg
R0NDIGFkZHJlc3NlcyB0aGlzLCBjYXVzZSBhdXRvIHN0aWxsIG1lYW5zIHRoZSBvbGQgdGhp
bmcgZXZlbiBpbiBnbnUyeCBtb2RlLg0KDQo+IA0KPj4gTGV0J3MgYWRkIGEgYnVnOg0KPj4N
Cj4+IFRoZXJlJ3Mgbm8gcG9ydGFibGUgd2F5IHRvIGRlY2xhcmUgdG8gcG9pbnRlciB0byB0
dl9uc2VjLCBzaW5jZSB5b3UgbmV2ZXINCj4+IGtub3cgZm9yIHN1cmUgaWYgaXQgd2lsbCBi
ZSBsb25nKiBvciBsbG9uZyouDQo+IA0KPiBBZ2FpbiwgQzIzIGhhcyB0eXBlb2YoKSAoa2lu
ZGEgbGlrZSBkZWNsdHlwZSgpKSwgYW5kIG9uIENsYW5nIHRydW5rDQo+ICAgICQgY2MgLVdh
bGwgLVdleHRyYSBhLmMgLXN0ZD1jMngNCj4gYWxyZWFkeSBjb21waWxlcyBjbGVhbmx5Ow0K
PiB0aGUgInBvcnRhYmxlIHdheSB0byBkZWNsYXJlIGEgcG9pbnRlciB0byB0dl9uc2VjIg0K
PiBpcyB0byBzcGVsbCBpdCBleGFjdGx5IGFzICJpIHdhbnQgYSBwb2ludGVyIHRvIHRpbWVz
cGVjOjp0dl9uc2VjIiwNCj4gd2hpY2ggaXMgZXZlbiBiZXR0ZXIgdGhhbiBhIHNpbmdsZS11
c2UgdHlwZWRlZi4NCg0KWW91IGdvdCBtZTsgaXQncyBwb3J0YWJsZS4gIEknZCBwb3J0IGl0
IHRvIGhlbGwsIGJ1dCwgaXQncyBwb3J0YWJsZS4NCg0KPiANCj4gQmVzdCwNCj4g0L3QsNCx
DQo+IA0KPiBodHRwczovL3R3aXR0ZXIuY29tL19fcGhhbnRvbWRlcnAvc3RhdHVzLzE2MTkw
Mjc1MjMyNTc2Njc1ODQNCj4gKHRoYXQncyB0aGUgQyBzdGFuZGFyZCBwcm9qZWN0IGVkaXRv
ciBzaGl0cG9zdGluZzsgaXQncyBhIGdsYW1vcm91cyBhZ2UpDQoNCk9oLCBzdWNoIGEgZ2xv
cmlvdXMgYWdlIGl0IGlzISA6KQ0KDQpJdCBzZWVtcyBteSBzaG90cyBhdCBudWxscHRyIGhh
dmUgZmFpbGVkIDooDQoNCj4gDQo+IGh0dHBzOi8vd3d3Lm9wZW4tc3RkLm9yZy9qdGMxL3Nj
MjIvd2cxNC93d3cvZG9jcy9uMzA1NC5wZGYNCj4gYWxyZWFkeSBoYXMgdHlwZW9mIGFuZA0K
PiBodHRwczovL3d3dy5vcGVuLXN0ZC5vcmcvanRjMS9zYzIyL3dnMTQvd3d3L2RvY3MvbjMw
NzkuaHRtDQo+IGhhcyB0aGUgbGF0ZXN0IG5vdGVzIG9uIGF1dG8sIHdoaWNoIG4zMDkxIG1h
cmtzIGFzICJBY2NlcHRlZCB3aXRoDQo+IGNvbW1lbnQ6IHdvcmRpbmcgZnJvbSBOMzA3OSB3
aXRoIGVkaXRvcmlhbCBjb3JyZWN0aW9ucy4iDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSAN
CjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------xd07oBr0aJt91iDLi844vrN0--

--------------rIK47eWsqV7WG0gJMtkK3JeX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPXvo0ACgkQnowa+77/
2zKTThAAgUzFnWC4qQqEEWzx1kFcRMqEA4nJIsDLQEVgc2Yqw3ALfjLm7ESteoIc
zY4zyxHG1loPWe1iwaX5Zed+m1WAFHB10o56M3tkqZ7K99qw8xogBBvoiXtsM+uJ
nXyj93gagreCDwsviR2YzqhT5ajsL1i15aicbBuTrtX6qdGge8zBJnmPrXhaa69+
EgX7F/o6dtc3qnZFBAXR70+fvYHoAx39dFFTfpaeKr/ODb083E3MUrDx5qVvTpNp
JFD4kEUlvLekhvd5eXyAnF4N17n5INUaUCz9InbBE7sHnJd9DGPU4aabHX2ag9hq
p5rG0+mltyycCWNE+attAtCu8p1bc68HU+FNrFs1wYlVFoWcs8HaqNMIe09lU2u3
mCVdoRaq/qnhPCP/pzR2H8mlcxAk3YR03mhAN6X3HTkciXUnOgQ/28nTdqoogehR
vej/tbOU5+S5OdxGItCQbvGYbE3pkfLO0PYwLDvJp9zQ9e+9XFarFm7aR8ICtY/2
838J7ubPMnDyI/wewv36/wwX8KJXsdJVEhLItx5uZVGDIEQlU37qrZ6woIEBdPxS
Us34CougsDCiAdnLqABATdX0HbHv/B2qI51u2vdIX+QsQDOrZdcFZ5i/FJwM6o9F
H1UVawz7mBDuadwV4SYUZrTYnfe6UwptriixhglnGLVaDdeWJ1c=
=EkXo
-----END PGP SIGNATURE-----

--------------rIK47eWsqV7WG0gJMtkK3JeX--
