Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9360363C666
	for <lists+linux-man@lfdr.de>; Tue, 29 Nov 2022 18:29:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236603AbiK2R26 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Nov 2022 12:28:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232491AbiK2R24 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Nov 2022 12:28:56 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E23323BF1
        for <linux-man@vger.kernel.org>; Tue, 29 Nov 2022 09:28:55 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id bx10so11166989wrb.0
        for <linux-man@vger.kernel.org>; Tue, 29 Nov 2022 09:28:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kFS5gfjEMNRIgzsassrwiBDTRamBUGKxupuK7M3bDNc=;
        b=Ekb+NGVDGYPGeL9I7n6c54TJRHhXt7tsowp5LjNuNY11Z2Q1375awoCKcv2YRLXSEF
         fwxTL4eax79dmjRLkJEh9p6Ta/8tfLE0uFMY6uNpDR2iDoKT8yadL33OHnMbQJ8QwFDj
         O2nJiZnkCFBGfZpetX+9W0yqkWmKDZdP+ln1ubIRe9yjB/K75ZPuQmJR6ehtKSH1YXv4
         RZNtJkH0vfPAYkP3kpfMz2HN77nms68xiHv4jA94Ctx0JLIEVgKSiNShnyqwujRcJFnW
         TsydJ07mPMHFbbnJlK9xfxwLseFC5VzJjDzTxucbIA1AZ8Hn0d57Z/h6IoowpyLw3W3O
         BRLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kFS5gfjEMNRIgzsassrwiBDTRamBUGKxupuK7M3bDNc=;
        b=gXfms6ykp4G68DEIVaJTWgFyvnykU+onZ/OHdx0ssnnSBNp03b77+wg+tIzFxU0Suz
         xUPE9PJoaQmiYf8X1aqDdAVs10jMS+KfuixUfHHFnHPtCx2jr0vvUCBoBl21cVjTDK+T
         F65pilVPsjr8xfnkzPVbrKes/4yZL4x1hwNFqJf6JzTyw0QMVwn7XNFH1c9t2zhqJwg+
         1yOmz0WQP7NxEVZNO4BzRBNxjFaFHbb3LhVQCBfWSxTLTjDi3boiYeMafftLI4yWDjAY
         gc9G4UVjd3Y/3G6Faug4b4c86Tq5uoO779apsZ3PXF0XX7spfvsWGsASq0/6DbA1ox8M
         AHJA==
X-Gm-Message-State: ANoB5pl9hEQmSF6/Ge/0R+ohJJjP0YfVVeBgkvMwpNLEIp2ebbOTcY2A
        woKjOiTtELJiU4iCUe+SBvs=
X-Google-Smtp-Source: AA0mqf4XdYF32TTqGpCNibrG9e5JF32oVpSxAkRvIDbsBEMsmkETNIzjL6yM3SossTGltzBr+hFAfg==
X-Received: by 2002:adf:fbc8:0:b0:236:c820:97d1 with SMTP id d8-20020adffbc8000000b00236c82097d1mr25439638wrs.201.1669742933486;
        Tue, 29 Nov 2022 09:28:53 -0800 (PST)
Received: from [192.168.43.80] ([46.222.52.112])
        by smtp.gmail.com with ESMTPSA id s30-20020adfa29e000000b00242246c2f7csm2003800wra.101.2022.11.29.09.28.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Nov 2022 09:28:52 -0800 (PST)
Message-ID: <7697ff60-aa2a-a41e-9d08-ab25423ee750@gmail.com>
Date:   Tue, 29 Nov 2022 18:28:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
To:     "Uecker, Martin" <Martin.Uecker@med.uni-goettingen.de>,
        "matz@suse.de" <matz@suse.de>
Cc:     "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "joseph@codesourcery.com" <joseph@codesourcery.com>,
        "schwarze@usta.de" <schwarze@usta.de>,
        "wg14@soasis.org" <wg14@soasis.org>
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
 <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
 <494309ce-c8ec-5219-f83e-b8dda5b9bcd1@gmail.com>
 <alpine.LSU.2.20.2211291450280.24878@wotan.suse.de>
 <5ccbf8ed11bd542477980f58aa277bf4335f1281.camel@med.uni-goettingen.de>
 <alpine.LSU.2.20.2211291519160.24878@wotan.suse.de>
 <6aa43dfb80210f62be70fd1fd076c72260423c38.camel@med.uni-goettingen.de>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <6aa43dfb80210f62be70fd1fd076c72260423c38.camel@med.uni-goettingen.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------McrPwLgeRihVgyLEl8srVHlH"
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
--------------McrPwLgeRihVgyLEl8srVHlH
Content-Type: multipart/mixed; boundary="------------DZxncJt4fYFFHe70ssTJkZ81";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: "Uecker, Martin" <Martin.Uecker@med.uni-goettingen.de>,
 "matz@suse.de" <matz@suse.de>
Cc: "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>,
 "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
 "joseph@codesourcery.com" <joseph@codesourcery.com>,
 "schwarze@usta.de" <schwarze@usta.de>, "wg14@soasis.org" <wg14@soasis.org>
Message-ID: <7697ff60-aa2a-a41e-9d08-ab25423ee750@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
 <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
 <494309ce-c8ec-5219-f83e-b8dda5b9bcd1@gmail.com>
 <alpine.LSU.2.20.2211291450280.24878@wotan.suse.de>
 <5ccbf8ed11bd542477980f58aa277bf4335f1281.camel@med.uni-goettingen.de>
 <alpine.LSU.2.20.2211291519160.24878@wotan.suse.de>
 <6aa43dfb80210f62be70fd1fd076c72260423c38.camel@med.uni-goettingen.de>
In-Reply-To: <6aa43dfb80210f62be70fd1fd076c72260423c38.camel@med.uni-goettingen.de>

--------------DZxncJt4fYFFHe70ssTJkZ81
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWFydGluIGFuZCBNaWNoYWVsLA0KDQpPbiAxMS8yOS8yMiAxNzo1OCwgVWVja2VyLCBN
YXJ0aW4gd3JvdGU6DQo+IA0KPiBIaSwNCj4gDQo+IEFtIERpZW5zdGFnLCBkZW0gMjkuMTEu
MjAyMiB1bSAxNTo0NCArMDAwMCBzY2hyaWViIE1pY2hhZWwgTWF0ejoNCj4+IEhleSwNCj4+
DQo+PiBPbiBUdWUsIDI5IE5vdiAyMDIyLCBVZWNrZXIsIE1hcnRpbiB3cm90ZToNCj4+DQo+
Pj4gSXQgZG9lcyBub3QgcmVxdWlyZSBhbnkgY2hhbmdlcyBvbiBob3cgYXJyYXlzIGFyZSBy
ZXByZXNlbnRlZC4NCj4+Pg0KPj4+IEFzIHBhcnQgb2YgVk0tdHlwZXMgdGhlIHNpemUgYmVj
b21lcyBwYXJ0IG9mIHRoZSB0eXBlIGFuZCB0aGlzDQo+Pj4gY2FuIGJlIHVzZWQgZm9yIHN0
YXRpYyBvciBkeW5hbWljIGFuYWx5c2lzLCBlLmcuIHlvdSBjYW4NCj4+PiAtIHRvZGF5IC0g
Z2V0IGEgcnVuLXRpbWUgYm91bmRzIHZpb2xhdGlvbiB3aXRoIHRoZSBzYW5pdGl6ZXI6DQo+
Pj4NCj4+PiB2b2lkIGZvbyhpbnQgbiwgY2hhciAoKmJ1Zilbbl0pDQo+Pj4gew0KPj4+ICDC
oCAoKmJ1Zilbbl0gPSAxOw0KPj4+IH0NCj4+DQo+PiBUaGlzIGNhbiBhbHJlYWR5IHN0YXRp
Y2FsbHkgYW5hbHl6ZWQgYXMgYmVpbmcgd3JvbmcsIG5vIG5lZWQgZm9yDQo+PiBkeW5hbWlj
IGNoZWNraW5nLg0KPiANCj4gSW4gdGhpcyB0b3kgZXhhbXBsZSwgYnV0IGluIGdlbmVyYWwg
aW4gY2FuIGJlIGNoZWNrZWQNCj4gb25seSBhdCBydW4tdGltZSBieSB1c2luZyB0aGUgaW5m
b3JtYXRpb24gYWJvdXQgdGhlDQo+IGR5bmFtaWMgYm91bmQuDQo+IA0KPj4gV2hhdCBJIG1l
YW4gaXMgdGhlIGNoZWNraW5nIG9mIHRoZSBjbGFpbWVkIGNvbnRyYWN0Lg0KPj4gQWJvdmUg
eW91IGFzc3VyZSBmb3IgdGhlIGZ1bmN0aW9uIGJvZHkgdGhhdCBidWYgaGFzIG4gZWxlbWVu
dHMuDQo+IA0KPiBZZXMuDQo+IA0KPj4gVGhpcyBpcyBhbHNvIGEgcHJlLWNvbmRpdGlvbiBm
b3IgY2FsbGluZyB0aGlzIGZ1bmN0aW9uIGFuZA0KPj4gX3RoYXRfIGNhbid0IGJlIGNoZWNr
ZWQgaW4gYWxsICBjYXNlcyBiZWNhdXNlOg0KPj4NCj4+ICDCoCB2b2lkIGZvbyAoaW50IG4s
IGNoYXIgKCpidWYpW25dKSB7ICgqYnVmKVtuLTFdID0gMTsgfQ0KPj4gIMKgIHZvaWQgY2Fs
bGZvbyhjaGFyICogYnVmKSB7IGZvbygxMCwgYnVmKTsgfQ0KPj4NCj4+IGJ1ZiBkb2Vzbid0
IGhhdmUgYSBrbm93biBzaXplLg0KPiANCj4gVGhpcyBkb2VzIG5vdCB0eXBlIGNoZWNrLg0K
PiANCj4+ICAgQW5kIGEgcHJlLWNvbmRpdGlvbiB0aGF0IGNhbid0IGJlIGNoZWNrZWQNCj4+
IGlzIG5vIHByZS1jb25kaXRpb24gYXQgYWxsLCBhcyBvbmx5IHRoZW4gaXQgY2FuIGJlY29t
ZSBhIGd1YXJhbnRlZQ0KPj4gZm9yIHRoZSBib2R5Lg0KPiANCj4gVGhlIGV4YW1wbGUgYWJv
dmUgc2hvdWxkIGxvb2sgbGlrZToNCj4gDQo+IHZvaWQgZm9vKGludCBuLCBjaGFyICgqYnVm
KVtuXSk7DQo+IA0KPiB2b2lkIGNhbGxmb28oY2hhciAoKmJ1ZilbMTJdKSB7IGZvbygxMCwg
YnVmKTsgfQ0KPiANCj4gVGhpcyBjb3VsZCBiZSBjaGVja2VkIGJ5IGFuIFVCIHNhbml0aXpl
ciBhcyBjYWxsaW5nDQo+IHRoZSBmdW5jdGlvbiB3aXRoIGFuIGFyZ3VtZW50IG9mIGluY29t
cGF0aWJsZSB0eXBlDQo+IGlzIFVCIChidXQgd2UgY3VycmVudGx5IGRvIG5vdCBkbyB0aGlz
KQ0KPiANCj4gDQo+IElmIHlvdSB0aGluayBhYm91dA0KPiANCj4gdm9pZCBmb28oaW50IG4s
IGNoYXIgYnVmW25dKTsNCj4gDQo+IHZvaWQgY2FsbGZvbyhjaGFyICpidWYpIHsgZm9vKDEw
LCBidWYpOyB9DQo+IA0KPiANCj4gVGhlbiB5b3UgYXJlIHJpZ2h0IHRoYXQgdGhpcyBjYW4g
bm90IGJlIGNoZWNrZWQgYXQgdGhpcw0KPiB0aW1lLiBCdXQgdGhpcyAgZG9lcyBub3QgbWVh
biBpdCBpcyB1c2VsZXNzIGJlY2F1c2Ugd2UNCj4gc3RpbGwgY2FuIGRldGVjdCBpbmNvbnNp
c3RlbmNpZXMgaW4gb3RoZXIgY2FzZXM6DQo+IA0KPiB2b2lkIGNhbGxmb28oaW50IG4sIGNo
YXIgYnVmW24gLSAxXSkgeyBmb28obiwgYnVmKTsgfQ0KPiANCj4gV2UgY291bGQgYWxzbyAt
IGluIHRoZSBmdXR1cmUgLSBoYXZlIGEgd2FybmluZyBhYm91dCBhbGwNCj4gc2l0dWF0aW9u
cyB3aGVyZSBib3VuZCBpbmZvcm1hdGlvbiBpcyBsb3N0LCBtYWtpbmcgc3VyZQ0KPiB0aGF0
IHByZWNvbmRpdGlvbnMgYXJlIGFsd2F5cyBjaGVja2VkIGZvciBwZW9wbGUgd2hvDQo+IGNv
bnNpc3RlbnRseSB1c2UgdGhlc2UgYW5ub3RhdGlvbnMuDQo+IA0KPiANCj4+IFRoZSBjb21w
aWxlciBoYXMgbm8gY2hvaWNlIHRoYW4gdG8gdHJ1c3QgdGhlIHVzZXIgdGhhdCB0aGUgcHJl
LQ0KPj4gY29uZGl0aW9uICBmb3IgY2FsbGluZyBmb28gaXMgZnVsZmlsbGVkLsKgIEkgY2Fu
IHNlZSBob3cNCj4+IGJlaW5nIGFibGUgdG8ganVzdCBjaGVjayBoYWxmICBvZiB0aGUgY29u
dHJhY3QgbWlnaHQgYmUNCj4+IHVzZWZ1bCwgYnV0IGlmIGl0IGRvZXNuJ3QgZ2l2ZSBmdWxs
IGNoZWNraW5nIHRoZW4NCj4+IGFueSBwcm9wb3NhbCBmb3Igc3ludGF4IHNob3VsZCBiZSBl
dmVuIG1vcmUgb2J2aW91c2x5DQo+PiBvcnRob2dvbmFsIHRoYW4gdGhlIGN1cnJlbnQgb25l
Lg0KPiANCj4gWW91ciBhcmd1bWVudCBpcyBub3QgY2xlYXIgdG8gbWUuDQo+IA0KPiANCj4+
PiBGb3INCj4+Pg0KPj4+IHZvaWQgZm9vKGludCBuLCBjaGFyIGJ1ZltuXSk7DQo+Pj4NCj4+
PiBpdCBzZW1hbnRpY2FsbHkgaGFzIG5vIG1lYW5pbmcgYWNjb3JkaW5nIHRvIHRoZSBDIHN0
YW5kYXJkLA0KPj4+IGJ1dCBhIGNvbXBpbGVyIGNvdWxkIHN0aWxsIHdhcm4uDQo+Pg0KPj4g
SG1tP8KgIFdhcm4gYWJvdXQgd2hhdCBpbiB0aGlzIGRlY2w/DQo+IA0KPiBJIG1lYW50LCB3
ZSBjb3VsZCB3YXJuIGFib3V0IHNvbWV0aGluZyBsaWtlIHRoaXMNCj4gYmVjYXVzZSBpdCBp
cyBsaWtlbHkgYW4gZXJyb3I6DQo+IA0KPiB2b2lkIGZvbyhpbnQgbiwgY2hhciBidWZbbl0p
DQo+IHsNCj4gICAgYnVmW25dID0gMTsNCj4gfQ0KPiANCj4gDQo+Pj4gSXQgY291bGQgYWxz
byB3YXJuIGZvcg0KPj4+DQo+Pj4gdm9pZCBmb28oaW50IG4sIGNoYXIgYnVmW25dKTsNCj4+
Pg0KPj4+IGludCBtYWluKCkNCj4+PiB7DQo+Pj4gIMKgwqDCoCBjaGFyIGJ1Zls5XTsNCj4+
PiAgwqDCoMKgIGZvbyhidWYpOw0KPj4+IH0NCj4+DQo+PiBZb3UgbWVhbiBpZiB5b3Ugd3Jp
dGUgJ2ZvbygxMCxidWYpJyAodGhlIGFib3ZlLCBhcyBpcywgaXMgc2ltcGx5IGENCj4+IHN5
bnRheCBlcnJvciBmb3Igbm9uLW1hdGNoaW5nIG51bWJlciBvZiBhcmdzKS7CoCBPciB3YXMg
aXQgYSBtaXNwYXN0ZQ0KPj4gYW5kIHlvdSBtZWFuICB0aGUgb25lIGZyb20gdGhlIGdvZGJv
bHQgbGluaywgaS5lLjoNCj4gDQo+IEkgbWVhbnQ6DQo+IA0KPiBjaGFyIGJ1Zls5XTsNCj4g
Zm9vKDEwLCBidWYpOw0KPiANCj4gSW4gZmFjdCwgaXQgdHVybnMgb3V0IHdlIHdhcm4gYWxy
ZWFkeToNCj4gDQo+IGh0dHBzOi8vZ29kYm9sdC5vcmcvei9xY3Zzdjg3RXYNCj4gDQo+PiB2
b2lkIGZvbyhjaGFyIGJ1ZlsxMF0peyBidWZbOV0gPSAxOyB9DQo+PiBpbnQgbWFpbigpDQo+
PiB7DQo+PiAgwqDCoMKgIGNoYXIgYnVmWzldOw0KPj4gIMKgwqDCoCBmb28oYnVmKTsNCj4+
IH0NCj4+DQo+PiA/wqAgSWYgc28sIHllYWgsIHdlIHdhcm4gYWxyZWFkeS7CoCBJIGRvbid0
IHRoaW5rIHRoaXMgaXMgYW4gYXJndW1lbnQNCj4+IGZvciAob3IgYWdhaW5zdCkgaW50cm9k
dWNpbmcgbmV3IHN5bnRheC4NCj4+IC4uLg0KPiANCj4gSXQgaXMgYXJndW1lbnQgZm9yIGhh
dmluZyB0aGlzIHN5bnRheCwgYmVjYXVzZSB3ZSBjb3VsZA0KPiBleHRlbmQgc3VjaCB3YXJu
aW5nICh0aG9zZSB3ZSBhbHJlYWR5IGhhdmUgYW5kIHRob3NlIHdlDQo+IGNvdWxkIHN0aWxs
IGFkZCkgdG8gbW9yZSBjb21tb24gY2FzZXMgc3VjaCBhcw0KPiANCj4gdm9pZCBmb28oY2hh
ciBidWZbLm5dLCBzaXplX3Qgbik7DQo+IA0KPiBJbiBteSBvcGluaW9uLCB0aGlzIHdvdWxk
IGEgaHVnZSBzdGVwIGZvcndhcmQgZm9yDQo+IHNhZmV0eSBvZiBDIHByb2dyYW1zIGFzIHdl
IGFscmVhZHkgaGF2ZSBhIGxvdCBvZg0KPiBpbmZyYXN0cnVjdHVyZSBmb3IgY2hlY2tpbmcg
Ym91bmRzLg0KPiANCj4gT2YgY291cnNlLCB0aGUgZXhpc3RpbmcgR05VIGV4dGVuc2lvbiB3
b3VsZCBhY2hpZXZlDQo+IHRoZSBzYW1lIHRoaW5nOg0KPiANCj4gdm9pZCBmb28oc2l6ZV90
IG47IGNoYXIgYnVmW25dLCBzaXplX3Qgbik7DQo+IA0KPiANCj4gDQo+Pj4gQnV0IGluIGdl
bmVyYWw6IFRoaXMgZmVhdHVyZSBpcyB1c2VmdWwgbm90IG9ubHkgZm9yIGRvY3VtZW50YXRp
b24NCj4+PiBidXQgYWxzbyBmb3IgYW5hbHlzaXMuDQo+Pg0KPj4gV2hpY2ggZmVhdHVyZSB3
ZSdyZSB0YWxraW5nIGFib3V0IG5vdz/CoCBUaGUgb25lcyB5b3UgdXNlZCBhbGwgd29yaw0K
Pj4gdG9kYXksDQo+PiBhcyB5b3UgZGVtb25zdHJhdGVkLsKgIEkgdGhvdWdodCB3ZSB3b3Vs
ZCBiZSB0YWxraW5nIGFib3V0IHRoYXQNCj4+ICIud2hhdGV2ZXIiDQo+PiBzeW50YXggdG8g
cmVmZXIgdG8gYXJiaXRyYXJ5IHBhcmFtZXRlcnMsIGV2ZW4gZm9sbG93aW5nIG9uZXM/wqAg
SQ0KPj4gdGhpbmsgYQ0KPj4gZGlzcnVwdGluZyBzeW50YXggY2hhbmdlIGxpa2UgdGhhdCBz
aG91bGQgaGF2ZSBhIGhpZ2hlciBiYXIgdGhhbiAiaW4NCj4+IHNvbWUNCj4+IGNhc2VzLCBk
ZXBlbmRpbmcgb24gY2lyY3Vtc3RhbmNlLCB3ZSBtaWdodCBldmVuIGJlIGFibGUgdG8gd2Fy
biIuDQo+IA0KPiBXZSBjYW4gdXNlIG91ciBleGlzdGluZyBmZWF0dXJlcyBhbmQgdGhlbiBh
cHBseSB0aGVtDQo+IHRvIGNhc2VzIHdoZXJlIHRoZSBib3VuZCBpcyBzcGVjaWZpZWQgYWZ0
ZXIgdGhlIHBvaW50ZXIsDQo+IHdoaWNoIGlzIG1vcmUgY29tbW9uIGluIHByYWN0aWNlLg0K
DQpZZXA7IGJhc2ljYWxseSBhZGRpbmcgc29tZSAobm90IHBlcmZlY3QsIGJ1dCBzb21lKSBz
dGF0aWMgYW5hbHlzaXMgdG8gDQptYW55IGxpYmMgZnVuY3Rpb24gY2FsbHMuDQoNCkFsc28s
IGNvbnNpZGVyaW5nIHRoZSBpc3N1ZXMgd2l0aCBzaXplb2YgYW5kIGFycmF5cywgYW5kIHRo
ZSBsYWNrIG9mIGEgDQpfTml0ZW1zKCkgW3Byb3Bvc2VkIGFzIF9MZW5ndGhvZigpXSBvcGVy
YXRvciwgdGhlcmUncyBhIGxvdCBvZiBtYW51YWwgDQp3b3JrIGluIGFycmF5IChyZWFkIHBv
aW50ZXIpIHBhcmFtZXRlcnMuDQoNCkhvd2V2ZXIsIGEgaHlwb3RoZXRpY2FsIF9OaXRlbXMo
KSBvcGVyYXRvciBjb3VsZCBtYWtlIHVzZSBvZiB0aGlzIA0Kc3ludGFjdGljIHN1Z2FyLCBh
bmQgYmUgbW9yZSB1c2VmdWwgdGhhbiBqdXN0IHByb3ZpZGluZyBzdGF0aWMgYW5hbHlzaXMu
IA0KICBVc2luZyBfTml0ZW1zKCkgb24gYSBWTVQgKGluY2x1ZGluZyBwb2ludGVyIHBhcmFt
ZXRlcnMpIGNvdWxkIGJlIA0Kc3BlY2lmaWVkIHRvIHJldHVybiB0aGUgbnVtYmVyIG9mIGVs
ZW1lbnRzLCBzbyBJIGZvcmVzZWUgY29kZSBsaWtlOg0KDQoNCnZvaWQgZm9vKGludCBhcnJb
bm1lbWJdLCBzaXplX3Qgbm1lbWIpDQp7DQogICAgICAgICAvLyBfTml0ZW1zKCkgZXZhbHVh
dGVzIHRvIG5tZW1iDQogICAgICAgICBmb3IgKHNpemVfdCBpID0gMDsgaSA8IF9OaXRlbXMo
YXJyKTsgaSsrKQ0KICAgICAgICAgICAgICAgICBhcnJbaV0gPSBpOw0KfQ0KDQoNCnZvaWQg
YmFyKGludCBhcnJbXSkNCnsNCiAgICAgICAgIC8vIENvbnN0cmFpbnQgdmlvbGF0aW9uDQog
ICAgICAgICBmb3IgKHNpemVfdCBpID0gMDsgaSA8IF9OaXRlbXMoYXJyKTsgaSsrKQ0KICAg
ICAgICAgICAgICAgICBhcnJbaV0gPSBpOw0KfQ0KDQoNClRoaXMgaXMgcHJvYmFibHkgdGhl
IG1vc3QgdXNlZnVsIHBhcnQgb2YgdGhpcyBmZWF0dXJlIChidXQgYWRtaXR0ZWRseSANCml0
J3Mgbm90IG9ubHkgYWJvdXQgdGhpcyBmZWF0dXJlLCBvciBldmVuIGNvdWxkIGJlIGFkZGVk
IHdpdGhvdXQgdGhpcyANCmZlYXR1cmUpLg0KDQo+IA0KPiANCj4gTWFydGluDQo+IA0KDQpD
aGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5l
cy8+DQoNCg==

--------------DZxncJt4fYFFHe70ssTJkZ81--

--------------McrPwLgeRihVgyLEl8srVHlH
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOGQVMACgkQnowa+77/
2zKDow//b2nFWddvMZUVrGbKijFvlnikQ3B+0u6MOJwv4BmT5OK65z9riNysnQBf
kSMXNRzNt261RuM1q11sCopRXfW2AmjdqLT//NylkqburzuIQnBmnkYAjmw5dxgY
0MlZ4z0WcNOZubVxjZF8oPgDLC4lddA1Ejw+XTNAndF5/LQo/cWnz+yZVIUDEcKl
cr2eusR7ROVFGX7MvOeY4cX7hnq62qBT2UKZ8j35oSHevbPJacklU5EMs68N8Vov
0m1nVf7w4WnzmdADQLWnzlF2DiaSyR1/vU2mv7imL/wkcchCO9rGAThulVZ1Mhxs
/kxDASh4LP46QfXok60GWf65tIJpUOF4Wzg+A4N1DmLv+oZMYiy1tenDjA1kkrvV
IRv9l4VoUa07LymO1FyxgESw/QHvG1whPr8r613FSuWfHUE18HJsbcc7vw+enWPS
j9ZZrjv9c6IX4VQp3wznXvlvlzN32dFntm+GmDKVZH18wU1ZcUHaf2IKwSHuGgap
M4P+AFiiMn8IkyZfQ1ZIqSWE5I1V1vMZaECaWWaCpXjOe6lwcw/syWhci2BT0Dhz
zWuVsAitdKLmgufubK/6CNmM+El0wF+tX9GfHm/vQI2ZHEEkWjAD4pOsCFC9o4w8
+KTRhCDNOlnLGMKkGTHRJj7qoHkFXzyjUTRkSthAD3t1RG3POak=
=sb8m
-----END PGP SIGNATURE-----

--------------McrPwLgeRihVgyLEl8srVHlH--
