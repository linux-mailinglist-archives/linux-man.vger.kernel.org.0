Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7FBD63C64E
	for <lists+linux-man@lfdr.de>; Tue, 29 Nov 2022 18:19:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235150AbiK2RT0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Nov 2022 12:19:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233918AbiK2RT0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Nov 2022 12:19:26 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2699F5CD13
        for <linux-man@vger.kernel.org>; Tue, 29 Nov 2022 09:19:25 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id f18so1125129wrj.5
        for <linux-man@vger.kernel.org>; Tue, 29 Nov 2022 09:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i3fGncUV4UcKRVGIMtmNYk2lLdykWwJo56LOdbvxuuY=;
        b=N3oVVvjGyqzUHp/eHGzH48NRr991OrTPidBHpjs9BTWcMOPXRU8uDPfuSOLzAMWOYO
         RwdlW7D2Jg7GG9mcv3YU9I6YUDiqjTttGbKqY6ZVu/3WvkKapWwZXsVkMyd8m2pmw0aB
         UWqFtt5N/F+rhMD8/NiaXFNTtDIuarQo+aQpn2MhECy+svceiNbwn6g7fp/ej0sHUHAZ
         ldcVLYqpiLlMeU1DE5AhR9geaikE7YjHdOwriwSiPdvcmDVYP447dqJE32UUn2FyoXlX
         8L6OMu2AXhlFe7I2Oqwk2m5VPRkXHNhVqkFQPT848BSpGeavy6fGzkaU3XSknkD3f7i1
         1vsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=i3fGncUV4UcKRVGIMtmNYk2lLdykWwJo56LOdbvxuuY=;
        b=s42cm81AuBJsbxrXvoBpVujEIfqhPyIWKas3f8j+mI7oVw/d2PxS7cBNirPJcQFLuC
         01+zZ5pfVubuTRvFH0wk59SSov2G6Sj+A/zipu/NSEo2z9gEVkyxdjzySe4P2YbODWwL
         QNjC44ZJ0Y2UStbjSzT4jl5/r/bSjCkSqP+jJqoOjiWNiyFX/uuPY0GL01idXeXWJ1lA
         VypUOm7V8E74EBdgC0G0zGJ3G82NJcKnHIr5sEBmLAMSsr5anmj5harGT9o1BNAdrh0J
         sgtiLVwOAJMHhLj/PVgT084BUjcpnhO0KEDY8JtRGQY+2+RLlk5ftYDWHG6Sqzc0gN+v
         wMPw==
X-Gm-Message-State: ANoB5pk6I7H5/hJNOGeRKwLSKA5R/XLj6IS5pTltHPZFzaFxOeAWoyNJ
        2/w1O39rO+tl1qNcQXTi4nQ=
X-Google-Smtp-Source: AA0mqf5nEj6Kg6dNQjmeNDKIgfx8aEuBQJD82EN4GGHlYwMc4kaR1VF43/U3KeKPKPEayFxsq0hKQQ==
X-Received: by 2002:adf:fe05:0:b0:241:fe4c:535e with SMTP id n5-20020adffe05000000b00241fe4c535emr16798240wrr.478.1669742363280;
        Tue, 29 Nov 2022 09:19:23 -0800 (PST)
Received: from [192.168.43.80] ([46.222.52.112])
        by smtp.gmail.com with ESMTPSA id s16-20020adff810000000b002368a6deaf8sm14017828wrp.57.2022.11.29.09.19.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Nov 2022 09:19:22 -0800 (PST)
Message-ID: <457bac3a-b83a-fe97-c5e1-f4efd2376821@gmail.com>
Date:   Tue, 29 Nov 2022 18:19:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
To:     Martin Uecker <uecker@tugraz.at>,
        Jonathan Wakely <jwakely.gcc@gmail.com>,
        Joseph Myers <joseph@codesourcery.com>
Cc:     Michael Matz <matz@suse.de>, Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
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
 <dd877a1-9eb4-28e-eccc-b663f5ce7df4@codesourcery.com>
 <CAH6eHdRy3dsEb9Ta=jUKVUfROOgLgQ5BdPukgRRaPS6yyHczJw@mail.gmail.com>
 <8aeb958eee2e084ea34d027878428a59a77b196d.camel@tugraz.at>
Content-Language: en-US
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <8aeb958eee2e084ea34d027878428a59a77b196d.camel@tugraz.at>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------hyALmmOZbMlRXviNQCHA3UhM"
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
--------------hyALmmOZbMlRXviNQCHA3UhM
Content-Type: multipart/mixed; boundary="------------qxVhbpPRtEVH02R5JmHOf0LC";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>, Jonathan Wakely
 <jwakely.gcc@gmail.com>, Joseph Myers <joseph@codesourcery.com>
Cc: Michael Matz <matz@suse.de>, Ingo Schwarze <schwarze@usta.de>,
 JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
 gcc@gcc.gnu.org
Message-ID: <457bac3a-b83a-fe97-c5e1-f4efd2376821@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
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
 <dd877a1-9eb4-28e-eccc-b663f5ce7df4@codesourcery.com>
 <CAH6eHdRy3dsEb9Ta=jUKVUfROOgLgQ5BdPukgRRaPS6yyHczJw@mail.gmail.com>
 <8aeb958eee2e084ea34d027878428a59a77b196d.camel@tugraz.at>
In-Reply-To: <8aeb958eee2e084ea34d027878428a59a77b196d.camel@tugraz.at>

--------------qxVhbpPRtEVH02R5JmHOf0LC
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWFydGluLCBKb3NlcGgsDQoNCk9uIDExLzI5LzIyIDE4OjAwLCBNYXJ0aW4gVWVja2Vy
IHdyb3RlOg0KPiBBbSBEaWVuc3RhZywgZGVtIDI5LjExLjIwMjIgdW0gMTY6NTMgKzAwMDAg
c2NocmllYiBKb25hdGhhbiBXYWtlbHk6DQo+PiBPbiBUdWUsIDI5IE5vdiAyMDIyIGF0IDE2
OjQ5LCBKb3NlcGggTXllcnMgd3JvdGU6DQo+Pj4NCj4+PiBPbiBUdWUsIDI5IE5vdiAyMDIy
LCBNaWNoYWVsIE1hdHogdmlhIEdjYyB3cm90ZToNCj4+Pg0KPj4+PiBsaWtlLsKgIEJ1dCBJ
J20gZ2VuZXJhbGx5IGRvdWJ0ZnVsIG9mIHRoaXMgd2hvbGUgZmVhdHVyZSB3aXRoaW4gQw0K
Pj4+PiBpdHNlbGYuDQo+Pj4+IEl0IHNlcnZlcyBhIHB1cnBvc2UgaW4gZG9jdW1lbnRhdGlv
biwgc28gaW4gbWFuLXBhZ2VzIGl0IHNlZW1zDQo+Pj4+IGZpbmUgZW5vdWdoDQo+Pj4+IChi
dXQgdGhlbiBzdGlsbCBjb3VsZCB1c2UgYSBkaWZmZXJlbnQgcHVuY3VhdG9yIHRvIG5vdCBi
ZQ0KPj4+PiBjb25mdXNhYmxlIHdpdGgNCj4+Pj4gQyBzeW50YXgpLg0KPj4+DQo+Pj4gSW4g
bWFuLXBhZ2VzIHlvdSBkb24ndCBuZWVkIHRvIGludmVudCBzeW50YXggYXQgYWxsLsKgIFlv
dSBjYW4gd3JpdGUNCj4+Pg0KPj4+IGludCBmKGNoYXIgYnVmW25dLCBpbnQgbik7DQo+Pj4N
Cj4+PiBhbmQgaW4gdGhlIGNvbnRleHQgb2YgYSBtYW4gcGFnZSBpdCB3aWxsIGJlIGNsZWFy
IHRvIHJlYWRlcnMgd2hhdA0KPj4+IGlzDQo+Pj4gbWVhbnQsDQo+Pg0KPj4gQ29uc2lkZXJh
Ymx5IG1vcmUgY2xlYXIgdGhhbiBuZXcgaW52ZW50ZWQgc3ludGF4IElNSE8uDQo+IA0KPiBU
cnVlLCBidXQgSSB0aGluayBpdCB3b3VsZCBiZSBhIG1pc3Rha2UgdG8gdXNlIGNvZGUgaW4N
Cj4gbWFuIHBhZ2VzIHdoaWNoIHRoZW4gZG9lcyBub3Qgd29yayBhcyBleHBlY3RlZCAob3Ig
ZXZlbg0KPiBpcyBzdWJ0bGUgd3JvbmcpIGluIGFjdHVhbCBjb2RlLg0KDQpFeGFjdGx5LiAg
VXNpbmcgeW91ciBwcm9wb3NlZCBzeW50YXggKHdoaWNoIHdhcyBteSBmaXJzdCBkcmFmdCkg
d291bGQgDQpoYXZlIHByb2JhYmx5IGJlZW4gdGhlIHNvdXJjZSBvZiBoaWRkZW4gYnVncywg
c2luY2UgaXQgbWlnaHQgd29yayAocmVhZCANCmNvbXBpbGUpIGluIHNvbWUgY2FzZXMsIGJ1
dCB3aXRoIHdyb25nIHJlc3VsdHMuDQoNCkkgcHJlZmVyIHRoaXMgaHlwb3RoZXRpY2FsIHN5
bnRheCwgd2hpY2ggYXQgbW9zdCB3aWxsIGNhdXNlIGNvbXBpbGUgZXJyb3JzLg0KDQpDaGVl
cnMsDQoNCkFsZXgNCg0KPiANCj4gTWFydGluDQo+IA0KPiANCj4gDQoNCi0tIA0KPGh0dHA6
Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KDQo=

--------------qxVhbpPRtEVH02R5JmHOf0LC--

--------------hyALmmOZbMlRXviNQCHA3UhM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOGPxEACgkQnowa+77/
2zLB4g//Witl4RzP7g20yPayfMh5yNpkF6GhwfBrL/AI5cE5TU8UgGG0iozv2P2W
iRk1BFu9YlgTcuB6TcarXOfg4jrx8oYzr2ilZUXjwbH7LVbHZaLN70tDHF4aJv2K
TF4/shMrKUoVBLtNO8dGJ4uwQvTjdL3qGadsbxnNn/d7xV63KXOQTMXxa8X6jPNO
CgBqbBXd8CMPLGGR7biQARpDg3CC9ts1ll6fePp8g7IM5a1fq4uug3IuMrTy/snp
si2MYnZh8m8z4NELso2AiVBu4etLu55StldjDYuDuW8TfxYScXyyIcK7t6sD8MH0
0g2JJdyfvtBy9HGGPvGllUDWrH0TEeKNVP2s9FwHhYzks8tVWRgEocCr0jyyc2pR
KbgGo+qXuHTOcGA5YlWk6xElwptZu6AhCZc7+Fc0qRawitSWuDt0kSXYwp0avEXn
VhB3mKQqhqrWu9yZzKDgc1LhqP+D1ObhPP6n0aQgGkr06X7AY5v/v6GFdW3ISBCA
hLCN2ByWKp0Yae04DxKYCVG6x2st4M4JIN5LhQ2wsX56YbWHpk84cPKpbPQzo3yP
rCJe42eoFQBKvm4oRPPsFwNOLlW2GqJtLA+nTUJVNJR2uDRLhSvFXagMhFPndR2k
B+KclVmZLh9sQ+/SYaFqr3jqLR+lDWvYDrzpdtnJH55HV2bSi4g=
=RJvi
-----END PGP SIGNATURE-----

--------------hyALmmOZbMlRXviNQCHA3UhM--
