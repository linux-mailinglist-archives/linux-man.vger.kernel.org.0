Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D923A6488A8
	for <lists+linux-man@lfdr.de>; Fri,  9 Dec 2022 19:54:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229807AbiLISx6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Dec 2022 13:53:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229512AbiLISx5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Dec 2022 13:53:57 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDF5C7B57F
        for <linux-man@vger.kernel.org>; Fri,  9 Dec 2022 10:53:54 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id n7so494526wms.3
        for <linux-man@vger.kernel.org>; Fri, 09 Dec 2022 10:53:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m6l5sLOKYWfO1vpFJrDzo/60BavepcDXE7fyC4topAY=;
        b=qX4Kgq3Kf8rmXKDr3mrWrrPF0U73aH7wJppxz8OBFxUNdlCIDmq3KC90pajRRI9AXj
         JHLbr4do85On1M39lQNLmRv/FhC9yj6npyvZqy5MxPRzXlIolPoZ+p3uZVBdF0y3ke6I
         5C7UUrm3agJ8YfAjtJmbyY7t9afV2i02hyQP+VmP1Ok37cdZaAI7eU3zQmJSmNjRUtw2
         9/t+TTSjAfXFcFA0+a9uhScLlFM/dcZ+dv9OmT410J47pecevtEDE7YQClpNBztIkank
         iAnKqBxhdyEH7HlaIP1RJEDatVUNPkhvVKmy5rRUDZFxtMV5Z1DTvDpMAZu6o6aRyKFY
         7mTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=m6l5sLOKYWfO1vpFJrDzo/60BavepcDXE7fyC4topAY=;
        b=sHyc1iuRFkmxtIIqaPH/9CthlxL8r/mL6SeKVLq5mMSSxl+dOengEnzF2aFkbo+BA/
         W6xENN1LjV7qmMo52UdYMoCJ0nFV5dWdp3W6QgR4ksgd+flot1bP5+h4gW8dH9q1QkiZ
         7/J1rGbKuXhP/9DAyZAaWBadOZO6krBpIS8jXeqFjknUB6alGB4Ra0nL0o1Cwy9VysSd
         wSjDcn7LQOgktwu1e2+BZQWRgnfbcx6LTUuHdstVuKne4TKGnYe4GRfXOUAjl4JRi+YE
         fBnohaGGvMBJELXF4Htazr/gMohKn0DNdfhHoL3RYCa1kxDLslUza12sZFx7j7sydwrC
         lo9A==
X-Gm-Message-State: ANoB5pmf3+TPH1wvqw4PSXTOrGMTd5CcJjjPbK+EZMZUE+UX5q12cHM+
        I4WXLpOr54rdWeQAgtLB7ntt0/0DJP8=
X-Google-Smtp-Source: AA0mqf69XYz05b6AS1rv6awKqHRE8eolFjPg0XoPyvQm+s6IRF6Rz9ku52CTNALaXuA+1PrDWDWcZQ==
X-Received: by 2002:a05:600c:2101:b0:3cf:e850:4451 with SMTP id u1-20020a05600c210100b003cfe8504451mr5698428wml.9.1670612033338;
        Fri, 09 Dec 2022 10:53:53 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s21-20020a7bc395000000b003d1cc0464a2sm529664wmj.8.2022.12.09.10.53.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Dec 2022 10:53:52 -0800 (PST)
Message-ID: <4aaf7fb4-8d4b-e050-b376-9120d8c328ac@gmail.com>
Date:   Fri, 9 Dec 2022 19:53:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Conflicting alias for some man pages
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>,
        Colin Watson <cjwatson@debian.org>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
        Marcos Fouces <marcos@debian.org>,
        "Dr. Tobias Quathamer" <toddy@debian.org>,
        Helge Kreutzmann <debian@helgefjell.de>
References: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
 <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
In-Reply-To: <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------OI7j3ps08e3qSsqxa6SCEtev"
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
--------------OI7j3ps08e3qSsqxa6SCEtev
Content-Type: multipart/mixed; boundary="------------6ojiRVAa5rzojRu5eGmlX3LU";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Ingo Schwarze <schwarze@usta.de>, Colin Watson <cjwatson@debian.org>
Cc: linux-man@vger.kernel.org,
 =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
 Marcos Fouces <marcos@debian.org>, "Dr. Tobias Quathamer"
 <toddy@debian.org>, Helge Kreutzmann <debian@helgefjell.de>
Message-ID: <4aaf7fb4-8d4b-e050-b376-9120d8c328ac@gmail.com>
Subject: Re: Conflicting alias for some man pages
References: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
 <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
In-Reply-To: <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>

--------------6ojiRVAa5rzojRu5eGmlX3LU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwgSW5nbywgYW5kIENvbGluLA0KDQpPbiAxMi8zLzIyIDE3OjM2LCBBbGVq
YW5kcm8gQ29sb21hciB3cm90ZToNCj4gSGkgSGVsZ2UhDQo+IA0KPiBPbiAxMi8zLzIyIDE1
OjAxLCBIZWxnZSBLcmV1dHptYW5uIHdyb3RlOg0KPj4gSGVsbG8gQWxlamFuZHJvLA0KPj4g
aGVsbG8gTWljaGFlbCwNCj4+IHNob3J0IGRlc2NyaXB0aW9uOg0KPj4gUGxlYXNlIHJlbW92
ZSBkdXBsaWNhdGVzIGluIHRoZSBhbGlhcyAoYWx0ZXJuYXRpdmUpIG5hbWVzIG9mIG1hbg0K
Pj4gcGFnZXMuIChMaXN0IG9mIGtub3duIGV4YW1wbGVzIGF0IHRoZSBlbmQpLg0KPj4NCj4+
IExvbmcgZGVzY3JpcHRpb246DQo+Pg0KPj4gSSBzdXBwb3J0IE1hcmlvIGluIG1haW50YWlu
aW5nIHRoZSB0cmFuc2xhdGlvbiBvZiBtYW5wYWdlcw0KPj4gKG1hbnBhZ2VzLWwxMG4pIGFu
ZCBJJ20gYWxzbyB0aGUgRGViaWFuIG1haW50YWluZXIgb2YgbWFucGFnZXMtbDEwbi4NCj4+
DQo+PiBTb21lIG1hbiBwYWdlcyBkZXNjcmliZSBtdWx0aXBsZSwgcmVsYXRlZCBjb21tYW5k
cywgZnVuY3Rpb25zLA0KPj4gaW50ZXJmYWNlcywg4oCmLiBJbiB0aGUgZW5nbGlzaCBjYXNl
LCBtYW4gYXV0b21hdGljYWxseSBmaWd1cmVzIHRoaXMNCj4+IG91dCwgc28gdGhhdCB5b3Ug
Y2FuIGNhbGwgdGhlIG1hbiBwYWdlIHVuZGVyIGVhY2ggbmFtZSB3aXRob3V0IGFueQ0KPj4g
ZnVydGhlciBtYW51YWwgY29uZmlndXJhdGlvbiAoYXQgbGVhc3QgaW4gRGViaWFuLCB3aGVy
ZSBJIHRyaWVkIGl0KS4NCj4+DQo+PiBVcCB0byByZWNlbnRseSwgbWFucGFnZXMtbDEwbiBz
aGlwcGVkIHRoZSB0cmFuc2xhdGVkIG1haW4gbWFuIHBhZ2UsDQo+PiBlLmcuIGlmDQo+PiBj
b21tYW5kMS4xDQo+PiBjb250YWlucw0KPj4NCj4+IE5BTUUNCj4+IGNvbW1tYW5kMSwgY29t
bWFuZDIgLSBEZXNjcmlwdGlvbg0KPj4NCj4+IG1hbnBhZ2VzLWwxMG4gc2hpcHBlZCBlLmcu
IGRlL21hbjEvY29tbWFuZDEuMQ0KPj4NCj4+IFVuZGVyIERlYmlhbiB0aGVuIHRoZSBmb2xs
b3dpbmcgaGFwcGVuZDoNCj4+IElmIEkgcmFuDQo+PiBtYW4gY29tbWFuZDENCj4+IEkgc2F3
IHRoZSBHZXJtYW4gdmVyc2lvbiwgaG93ZXZlciwgd2l0aA0KPj4gbWFuIGNvbW1hbmQyDQo+
PiBJIGdvdCB0aGUgZW5nbGlzaCB2ZXJzaW9uLCBpZiBpdCBleGlzdHMsIG90aGVyd2lzZSB0
aGUgR2VybWFuIHZlcnNpb24uDQo+Pg0KPj4gVGhlIG1haW50YWluZXIgb2YgbWFuIHJlcXVl
c3RlZCB0aGF0IEkgcHJvdmlkZSBleHBsaWNpdCBzeW1saW5rcyBmb3INCj4+IHRoZXNlIG1h
biBwYWdlc1sxXSwgd2hpY2ggSSBpbXBsZW1lbnRlZCBmb3IgdGhlIGxhc3QgdXBsb2FkIG9m
DQo+PiBtYW5wYWdlcy1sMTBuIHRvIERlYmlhbi4NCj4+DQo+PiBXaGlsZSBkb2luZyB0aGlz
LCBJIG5vdGljZWQgdGhhdCBzb21lIGFsdGVybmF0aXZlIG5hbWVzIChhbGlhc2VzKQ0KPj4g
d2hlcmUgdXNlZCBtdWx0aXBsZSB0aW1lcy4gVGhpcyBjYXVzZWQgbGluayBjcmVhdGlvbiB0
byBmYWlsIChmb3IgdGhlDQo+PiBzZWNvbmQgYW5kIGZ1cnRoZXIgb2NjdXJlbmNlcykgYW5k
IHNob3VsZCBhbHNvIGNhdXNlICJyYW5kb20iDQo+PiBiZWhhdmlvdXIgZm9yIHRoZSBlbmds
aXNoIHBhZ2VzIChhcyBtYW4gY291bGQgc2VsZWN0IGZyb20gc2V2ZXJhbA0KPj4gcGFnZXMp
Lg0KPj4NCj4+IENvdWxkIHlvdSByZW1vdmUgdGhlc2UgZHVwbGljYXRlcyBpbiB5b3VyIG5l
eHQgdXBsb2FkPw0KPj4NCj4+IEkgZm91bmQgdGhlIGZvbGxvd2luZyBkdXBsaWNhdGVzLCBJ
IGRpZCBub3QgZG8gYW4gZXh0ZW5zaXZlIHNlYXJjaDoNCj4+ID09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4+
IHJpbmRleCAtIEJvdGggaW4gaW5kZXguMyBhbmQgaW4gc3RyaW5nLjMNCj4+IHN0cm5jYXNl
Y21wIC0gQm90aCBpbiBzdHJjYXNlY21wLjMgYW5kIGluIHN0cmluZy4zDQo+PiBzdHJuY2F0
IC0gQm90aCBpbiBzdHJjYXQuMyBhbmQgaW4gc3RyaW5nLjMNCj4+IHN0cm5jbXAgLSBCb3Ro
IGluIHN0cmNtcC4zIGFuZCBpbiBzdHJpbmcuMw0KPj4gc3RybmNweSAtIEJvdGggaW4gc3Ry
Y3B5LjMgYW5kIGluIHN0cmluZy4zDQo+PiBfX2ZwdXJnZSAtIEJvdGggaW4gZnB1cmdlLjMg
YW5kIGluIHN0ZGlvX2V4dC4zDQo+PiBzdHJjc3BuIC0gQm90aCBpbiBzdHJzcG4uMyBhbmQg
aW4gc3RyaW5nLjMNCj4+IHN0cnJjaHIgLSBCb3RoIGluIHN0cmNoci4zIGFuZCBpbiBzdHJp
bmcuMw0KPj4gcHNlbGVjdCAtIEJvdGggaW4gc2VsZWN0LjIgYW5kIGluIHNlbGVjdF90dXQu
Mg0KDQpDb3VsZCB5b3UgcGxlYXNlIGNvbmZpcm0gaWYgdGhpcyBpcyBhIGJ1ZyBpbiB0aGUg
TGludXggbWFuLXBhZ2VzLCBvciBpcyBpdCANCnNvbWV0aGluZyBkZXNpcmFibGU/ICBJIGZp
bmQgaXQgYSBiaXQgd2VpcmQgdGhhdCB3ZSBuZWVkIHRvIHNwZWNpZnkgYSBOQU1FIG9ubHkg
DQpvbmNlLiAgVGhlbiB3aGF0aXMoMSkgd2lsbCBub3QgZmluZCB0aGUgb3RoZXIgcGFnZXMg
dGhhdCBhbHNvIHRhbGsgYWJvdXQgYW4gDQppbnRlcmZhY2UgKG9mIGNvdXJzZSwgaWRlYWxs
eSwgb25seSBhIHBhZ2Ugd291bGQgZGVzY3JpYmUgYW4gaW50ZXJmYWNlLCBidXQgd2UgDQpr
bm93IHRoYXQncyBub3QgcmVhbGl0eSkuDQoNCkNoZWVycywNCg0KQWxleA0KDQo+Pg0KPj4g
VGhhbmtzIQ0KPj4NCj4+IEdyZWV0aW5ncw0KPj4NCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBIZWxnZQ0KPj4NCj4+IFsxXSBodHRwczovL2J1Z3MuZGViaWFuLm9yZy9jZ2ktYmlu
L2J1Z3JlcG9ydC5jZ2k/YnVnPTEwMjA3NDINCj4gDQo+IFNvLCBpZiBJIHVuZGVyc3RhbmQg
Y29ycmVjdGx5LCBzcGVjaWZ5aW5nIHRoZSBzYW1lIG5hbWUgaW4gdGhlIC5TSCBOQU1FIHNl
Y3Rpb24gDQo+IGluIG1vcmUgdGhhbiBvbmUgcGFnZSBpcyBwcm9ibGVtYXRpYywgcmlnaHQ/
wqAgSXQgbWFrZXMgc2Vuc2UgdG8gbWUuwqAgSSdtIGEgYml0IA0KPiBzdXJwcmlzZWQgdGhh
dCB0aGlzIGJ1ZyBoYXNuJ3QgYmVlbiByZXBvcnRlZCB0aG91Z2gsIGJ1dCBvdGhlcndpc2Ug
SSdtIGZpbmUgDQo+IGZpeGluZyBpdC4NCj4gDQo+IEkgQ0NlZCBhIGZldyBwZW9wbGUgdGhh
dCBoYXZlIGEgbG90IG1vcmUgZXhwZXJpZW5jZSB0aGFuIEkgZG8sIGFuZCB3aWxsIHByb2Jh
Ymx5IA0KPiBiZSBhYmxlIHRvIHRlbGwgaWYgSSB1bmRlcnN0b29kIHRoZSBwcm9ibGVtIGNv
cnJlY3RseS4NCj4gDQo+IFNvLCBzaW5jZSB3ZSdyZSBzdGlsbCBvbiB0aW1lIGZvciB0aGUg
RGViaWFuIGZyZWV6ZSwgaWYgeW91IGNvbmZpcm0gdGhhdCB0aGlzIGlzIA0KPiB0aGUgaXNz
dWUgYW5kIHRoZSBmb2xsb3dpbmcgZml4IGlzIGNvcnJlY3QsIEknbGwgaW1wbGVtZW50IGl0
IGFuZCByZWxlYXNlIA0KPiBtYW4tcGFnZXMtNi4wMiBsYXRlciB0aGlzIG1vbnRoOyB0aGUg
c29sc3RpY2Ugc2VlbXMgYSBwcm9wZXIgZGF5IGZvciBhIHJlbGVhc2UsIA0KPiBjZWxlYnJh
dGluZyB0aGUgbmV3IFN1bi7CoCBUaGFua3MgZm9yIHRoZSByZXBvcnQhDQo+IA0KPiBTbywg
SSdsbCB0cnkgdG8gZmluZCBhIGNvbXBsZXRlIGxpc3Qgb2YgZHVwbGljYXRlIE5BTUVzLCBh
bmQga2VlcCBvbmx5IG9uZSBvZiB0aGVtLg0KPiANCj4gDQo+IENoZWVycywNCj4gDQo+IEFs
ZXgNCj4gDQo+IA0KPiBQLlMuOiBUaGUgYmlnZ2VzdCBpbXBsaWNhdGlvbiBvZiBmaXhpbmcg
dGhpcyBiZWZvcmUgdGhlIGZyZWV6ZSBpcyB0aGF0IEknbGwgDQo+IHJlbGVhc2UgVkxBIHN5
bnRheCBmb3IgZnVuY3Rpb24gcGFyYW1ldGVycywgc29tZXRoaW5nIHdoaWNoIEkgd2Fzbid0
IGV4cGVjdGluZyANCj4gdG8gZG8gc28gc29vbi7CoCBJdCBzZWVtcyB0aGF0IE1vbHRrZSB3
YXMgcmlnaHRbMV0uwqAgSSdtIHN0aWxsIGNvbnZpbmNlZCB0aGF0IA0KPiBpdCdzIGEgZ29v
ZCBjaGFuZ2UsIHNvIGxldCdzIHNlZSBob3cgdGhlc2UgcmFkaWNhbCBjaGFuZ2VzIGFyZSBy
ZWNlaXZlZC7CoCA7KQ0KPiANCj4gDQo+IFsxXTogPGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2xpbnV4LW1hbi8yMDIyMTExMDA5NDAzMy5wdHBmc3FwdnZ4MnlkNXhzQGlsbGl0aGlkLz4N
Cj4gDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------6ojiRVAa5rzojRu5eGmlX3LU--

--------------OI7j3ps08e3qSsqxa6SCEtev
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOThDkACgkQnowa+77/
2zJ/WQ//YXnW2ESRjuomlDcpt18lscDmo8qrDWyquqRrngfH8k11it02VSDmlNK+
yIFQYM4On2iHwLUi86m308m8aBUT5vVwa0pS7d1M8XExCktkTTpGNCNVIaMbYm5Q
hK9s7kbMOIdNlKVmiOZrYKQEQDBm9eLqAJqrOqs1GqC07EG4lqae4QDS8PY4+g4v
4AgF0WQr6DJ7W6kvxmFwI1fISKaXOg7i027/azx0B2XqETGN8nQXj6lXvdVoER98
3LzyJ/KD9lG790lerjqBLmqRCFg732Wth8RCVlhUjd4hm2F5LvlpW/o5luWX6OzH
cSRcUQXXv/4PcIZvAPHt9g6Tes1VwnDBIyStMVYgjcxeZllSNXeoGqRtMtwz7WKx
xspyVfryDO3Qh716vY8sBKMlmGzTVxSEeUR/GGaxrg8pj4F3qFS3AvGj1jrIyWfI
8DY5uCv+eU4/pdoNDAXXCZobHvotncXMf8i2H0eb7IZWy7RHYozUlwv5+zAmtxFe
pAXxD8vqsrMMz0GMLp4HvELYE4uBrqOc+KU7N0GC6MH6S03QKY0yZMnKcqKEWUEt
8F85ncAMFp1FdKYQ+/r1T648zkeSRRRZW8hw3O6BcpQqS5kbiokp6dABCkDl6fFV
8ofhl1OAeUJqryP5VftE6w62ekO2B/86PUUdFNQrAmBObGHSW+8=
=6Erh
-----END PGP SIGNATURE-----

--------------OI7j3ps08e3qSsqxa6SCEtev--
