Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 429D76A2683
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 02:29:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229582AbjBYB3S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 20:29:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229507AbjBYB3Q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 20:29:16 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36D19CDFB
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 17:29:15 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id bt28so977185wrb.8
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 17:29:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q6OmJTNDHLHFQ0AxEnyTIghyfr6AfYhIMDZjQRk9Sho=;
        b=dJkP+MIqnC6iDbNC37unxvsR+VW8oroevOI7a37I6U1AE/Xn6fWJyjd6SL1HBNZx2C
         r7SjIloe8m3aV194TtaQWl0Y9JBfIi+X+a3XOrYTgBIhYiBI9pNW9PGZALWZH0XY9LZw
         Om9FANg7RTOcs0RUrvbda1CGiAswdt0jG6p6mUb1y/FwrgOwwR7rAS88gwNFrkCPWCG8
         U2DHaehFqmP23C8nm0OJC6yK1PdZa0VSpon/dE18pQJ1LYmIs/mS/gEUEkxtXtV0wW31
         2PpiD1Bs1eTU9Og+HK/ApQybkuy5rrYZtllgvnRvXSOJeXyaLjxIrakt3nSYRk5JhdOa
         E8Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=q6OmJTNDHLHFQ0AxEnyTIghyfr6AfYhIMDZjQRk9Sho=;
        b=oveI+4GN7N+coOoFKZ8Z8zksbyqVwPcw60UKaQ4UVfLNtVknlhTLGvxYTTYCjbckHk
         FGrFDaDedCjb8HyinaxOJgKmdZI0vEuzxFT4AJ7KF/yN/wWMrADqMZ9eYjJiPVUIvhlo
         v4Oqwke07DDXxC1H1ZMSXVfR2zifybp5rLOdG9I1fg5FwEMdXUwWWTOoSVKrs0RBiWxm
         mZy66GvyW8pz3IrFWW/mMNqOrHKljJf1MCVxIPXyK9WlFg2SS5uno2TJm2KeU9dMeiqG
         Z4YtUQ52xLKE12/xbB3FQ7UiqmAIrjrljXxKDEVQ48LO7mM1JlHkgi/heNZSPWZLkF0e
         abWQ==
X-Gm-Message-State: AO0yUKVn7mvn9Iucm2P+2EncnexRUuR67mqg66TMKVbQlUA/guazJ+d9
        Uwg27WX1t3NizeeMvOedCFE=
X-Google-Smtp-Source: AK7set8PYC+NCn28bvMOTE3ZufyNXwPaeilu/T13aoYKiGclJFBj/ZoeOwObXU1bEHL1UwRMj0wz/g==
X-Received: by 2002:a05:6000:3cf:b0:2c6:825d:ed13 with SMTP id b15-20020a05600003cf00b002c6825ded13mr963236wrg.25.1677288553691;
        Fri, 24 Feb 2023 17:29:13 -0800 (PST)
Received: from [172.26.3.7] (240.red-88-26-240.staticip.rima-tde.net. [88.26.240.240])
        by smtp.gmail.com with ESMTPSA id a4-20020adff7c4000000b002c4084d3472sm306453wrq.58.2023.02.24.17.29.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 17:29:13 -0800 (PST)
Message-ID: <17e144f2-b857-5639-0961-3003fc8228a5@gmail.com>
Date:   Sat, 25 Feb 2023 02:29:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/3] landlock.7: Document Landlock ABI v2 (file
 reparenting; kernel 5.19)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, Groff <groff@gnu.org>
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-2-gnoack3000@gmail.com>
 <5495bf9a0580a049bbe5a874c57202ba@mail.infomaniak.com>
 <Y/coag7XQRIRDK0h@galopp> <d6b21981-71bc-4906-2adf-79b00df38b73@gmail.com>
 <20230225011917.o4hkprqg4c2gqd7u@illithid>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230225011917.o4hkprqg4c2gqd7u@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------LqZCq6q0VuZf10touYCqByi6"
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
--------------LqZCq6q0VuZf10touYCqByi6
Content-Type: multipart/mixed; boundary="------------TXVZCeacEuQyXxfilrTOrcrm";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
 =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
 Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org,
 Groff <groff@gnu.org>
Message-ID: <17e144f2-b857-5639-0961-3003fc8228a5@gmail.com>
Subject: Re: [PATCH 2/3] landlock.7: Document Landlock ABI v2 (file
 reparenting; kernel 5.19)
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-2-gnoack3000@gmail.com>
 <5495bf9a0580a049bbe5a874c57202ba@mail.infomaniak.com>
 <Y/coag7XQRIRDK0h@galopp> <d6b21981-71bc-4906-2adf-79b00df38b73@gmail.com>
 <20230225011917.o4hkprqg4c2gqd7u@illithid>
In-Reply-To: <20230225011917.o4hkprqg4c2gqd7u@illithid>

--------------TXVZCeacEuQyXxfilrTOrcrm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMi8yNS8yMyAwMjoxOSwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNCj4gSGkgQWxleCwNCj4gDQo+IEF0IDIwMjMtMDItMjVUMDI6MTA6MjIrMDEwMCwg
QWxleCBDb2xvbWFyIHdyb3RlOg0KPj4gT24gMi8yMy8yMyAwOTo0OCwgR8O8bnRoZXIgTm9h
Y2sgd3JvdGU6DQo+Pj4gT24gV2VkLCBGZWIgMjIsIDIwMjMgYXQgMDg6MzY6MzdBTSArMDEw
MCwgTWlja2HDq2wgU2FsYcO8biB3cm90ZToNCj4+Pj4gT24gMjAyMy0wMi0yMVQyMTo1MDoy
Mi4wMDArMDE6MDAsIEfDvG50aGVyIE5vYWNrIHdyb3RlOg0KPj4+Pj4gK1RoZSBhdmFpbGFi
aWxpdHkgb2YgaW5kaXZpZHVhbCBMYW5kbG9jayBmZWF0dXJlcyBpcyB2ZXJzaW9uZWQgdGhy
b3VnaA0KPj4+Pj4gK0FCSSBsZXZlbHM6DQo+Pj4+PiArLlRTDQo+Pj4+PiArYm94Ow0KPj4+
Pj4gK250YnwgbnRifCBsYngNCj4+Pj4+ICtudHwgbnR8IGxieC4NCj4+Pj4+ICtBQkkJS2Vy
bmVsCU5ld2x5IGludHJvZHVjZWQgYWNjZXNzIHJpZ2h0cw0KPj4+Pj4gK18JXwlfDQo+Pj4+
PiArMQk1LjEzCUxBTkRMT0NLX0FDQ0VTU19GU19FWEVDVVRFDQo+Pj4+PiArXF4JXF4JTEFO
RExPQ0tfQUNDRVNTX0ZTX1dSSVRFX0ZJTEUNCj4+Pj4+ICtcXglcXglMQU5ETE9DS19BQ0NF
U1NfRlNfUkVBRF9GSUxFDQo+Pj4+PiArXF4JXF4JTEFORExPQ0tfQUNDRVNTX0ZTX1JFQURf
RElSDQo+Pj4+PiArXF4JXF4JTEFORExPQ0tfQUNDRVNTX0ZTX1JFTU9WRV9ESVINCj4+Pj4+
ICtcXglcXglMQU5ETE9DS19BQ0NFU1NfRlNfUkVNT1ZFX0ZJTEUNCj4+Pj4+ICtcXglcXglM
QU5ETE9DS19BQ0NFU1NfRlNfTUFLRV9DSEFSDQo+Pj4+PiArXF4JXF4JTEFORExPQ0tfQUND
RVNTX0ZTX01BS0VfRElSDQo+Pj4+PiArXF4JXF4JTEFORExPQ0tfQUNDRVNTX0ZTX01BS0Vf
UkVHDQo+Pj4+PiArXF4JXF4JTEFORExPQ0tfQUNDRVNTX0ZTX01BS0VfU09DSw0KPj4+Pj4g
K1xeCVxeCUxBTkRMT0NLX0FDQ0VTU19GU19NQUtFX0ZJRk8NCj4+Pj4+ICtcXglcXglMQU5E
TE9DS19BQ0NFU1NfRlNfTUFLRV9CTE9DSw0KPj4+Pj4gK1xeCVxeCUxBTkRMT0NLX0FDQ0VT
U19GU19NQUtFX1NZTQ0KPj4+Pj4gK18JXwlfDQo+Pj4+PiArMgk1LjE5CUxBTkRMT0NLX0FD
Q0VTU19GU19SRUZFUg0KPj4+Pj4gKy5URQ0KPj4+Pj4gKy5QUA0KPj4+Pg0KPj4+PiBBIGxp
bmUgYnJlYWsgd291bGQgYmUgbmljZSBoZXJlLg0KPj4+DQo+Pj4gQWRkZWQuIChVc2VkIC5z
cCAxIGZvciB0aGF0LCBhcyBpdCBpcyBhbHJlYWR5IHVzZWQgaW4gdGhlDQo+Pj4gbW91bnRf
bmFtZXNwYWNlcy43LCBpcC43IGFuZCBvdGhlciBtYW4gcGFnZXMuKQ0KPj4NCj4gW3Jlb3Jn
YW5pemVkXQ0KPj4gSSBzZWU6DQo+Pg0KPj4gICAgICAgICBUaGUgIGF2YWlsYWJpbGl0eSAg
b2YgaW5kaXZpZHVhbCBMYW5kbG9jayBmZWF0dXJlcyBpcyB2ZXJzaW9uZWQNCj4+ICAgICAg
ICAgdGhyb3VnaCBBQkkgbGV2ZWxzOg0KPj4NCj4+ICAgICAgICAg4pSM4pSA4pSA4pSA4pSA
4pSs4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSs4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSQDQo+PiAgICAgICAgIOKUgkFCSSDilIIgS2VybmVsIOKUgiBOZXds
eSBpbnRyb2R1Y2VkIGFjY2VzcyByaWdodHMgICAgICAgICAgICAgICAgIOKUgg0KPj4gICAg
ICAgICDilJzilIDilIDilIDilIDilLzilIDilIDilIDilIDilIDilIDilIDilIDilLzilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKQNCj4+ICAgICAgICAg4pSCIDEg
IOKUgiAgNS4xMyAg4pSCIExBTkRMT0NLX0FDQ0VTU19GU19FWEVDVVRFICAgICAgICAgICAg
ICAgICAgICAg4pSCDQo+PiAgICAgICAgIOKUgiAgICDilIIgICAgICAgIOKUgiBMQU5ETE9D
S19BQ0NFU1NfRlNfV1JJVEVfRklMRSAgICAgICAgICAgICAgICAgIOKUgg0KPj4gICAgICAg
ICDilIIgICAg4pSCICAgICAgICDilIIgTEFORExPQ0tfQUNDRVNTX0ZTX1JFQURfRklMRSAg
ICAgICAgICAgICAgICAgICDilIINCj4+ICAgICAgICAg4pSCICAgIOKUgiAgICAgICAg4pSC
IExBTkRMT0NLX0FDQ0VTU19GU19SRUFEX0RJUiAgICAgICAgICAgICAgICAgICAg4pSCDQo+
PiAgICAgICAgIOKUgiAgICDilIIgICAgICAgIOKUgiBMQU5ETE9DS19BQ0NFU1NfRlNfUkVN
T1ZFX0RJUiAgICAgICAgICAgICAgICAgIOKUgg0KPj4gICAgICAgICDilIIgICAg4pSCICAg
ICAgICDilIIgTEFORExPQ0tfQUNDRVNTX0ZTX1JFTU9WRV9GSUxFICAgICAgICAgICAgICAg
ICDilIINCj4+ICAgICAgICAg4pSCICAgIOKUgiAgICAgICAg4pSCIExBTkRMT0NLX0FDQ0VT
U19GU19NQUtFX0NIQVIgICAgICAgICAgICAgICAgICAg4pSCDQo+PiAgICAgICAgIOKUgiAg
ICDilIIgICAgICAgIOKUgiBMQU5ETE9DS19BQ0NFU1NfRlNfTUFLRV9ESVIgICAgICAgICAg
ICAgICAgICAgIOKUgg0KPj4gICAgICAgICDilIIgICAg4pSCICAgICAgICDilIIgTEFORExP
Q0tfQUNDRVNTX0ZTX01BS0VfUkVHICAgICAgICAgICAgICAgICAgICDilIINCj4+ICAgICAg
ICAg4pSCICAgIOKUgiAgICAgICAg4pSCIExBTkRMT0NLX0FDQ0VTU19GU19NQUtFX1NPQ0sg
ICAgICAgICAgICAgICAgICAg4pSCDQo+PiAgICAgICAgIOKUgiAgICDilIIgICAgICAgIOKU
giBMQU5ETE9DS19BQ0NFU1NfRlNfTUFLRV9GSUZPICAgICAgICAgICAgICAgICAgIOKUgg0K
Pj4gICAgICAgICDilIIgICAg4pSCICAgICAgICDilIIgTEFORExPQ0tfQUNDRVNTX0ZTX01B
S0VfQkxPQ0sgICAgICAgICAgICAgICAgICDilIINCj4+ICAgICAgICAg4pSCICAgIOKUgiAg
ICAgICAg4pSCIExBTkRMT0NLX0FDQ0VTU19GU19NQUtFX1NZTSAgICAgICAgICAgICAgICAg
ICAg4pSCDQo+PiAgICAgICAgIOKUnOKUgOKUgOKUgOKUgOKUvOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUvOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpA0KPj4g
ICAgICAgICDilIIgMiAg4pSCICA1LjE5ICDilIIgTEFORExPQ0tfQUNDRVNTX0ZTX1JFRkVS
ICAgICAgICAgICAgICAgICAgICAgICDilIINCj4+ICAgICAgICAg4pSU4pSA4pSA4pSA4pSA
4pS04pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pS04pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSYDQo+PiAgICAgICAgIFRvIHF1ZXJ5IHRoZSBydW5uaW5nIGtlcm5l
bCdzIExhbmRsb2NrIEFCSSBsZXZlbCwgcHJvZ3JhbXMgIG1heQ0KPj4gICAgICAgICBwYXNz
ICB0aGUgTEFORExPQ0tfQ1JFQVRFX1JVTEVTRVRfVkVSU0lPTiBmbGFnIHRvIGxhbmRsb2Nr
X2NyZeKAkA0KPj4gICAgICAgICBhdGVfcnVsZXNldCgyKS4NCj4gW3Jlb3JnYW5pemVkXQ0K
Pj4gVGhpcyBzb3VuZHMgd2VpcmQsIGJ1dCB0aGV5IGFyZSByaWdodCB0aGF0IHRoZXJlIHNl
ZW1zIHRvIGJlIGEgbWlzc2luZw0KPj4gYmxhbmsgbGluZS4NCj4gDQo+IFllcywgdGhleSBh
cmUuDQo+IA0KPj4gQ291bGQgeW91IGV4cGxhaW4gd2h5IGl0J3MgaGFwcGVuaW5nPw0KPiAN
Cj4gVGhpcyBpcyBTYXZhbm5haCAjNDkzOTAuDQo+IA0KPiBodHRwczovL3NhdmFubmFoLmdu
dS5vcmcvYnVncy8/NDkzOTANCj4gDQo+IEl0IGlzIGZpeGVkIGluIGdyb2ZmIDEuMjMuMC4g
IFdoaWNoLCBieSB0aGUgd2F5LCBpcyBhdCByZWxlYXNlIGNhbmRpZGF0ZQ0KPiAzIG5vdy4N
Cg0KQWhoLCBJIGZvcmdvdCB0aGF0IGluIG15IGxhcHRvcCBJIHN0aWxsIGhhdmUgMS4yMi40
IDopDQpHb29kIHRvIGtub3cgdGhhdCBpdCdzIGFscmVhZHkgZml4ZWQuICBUaGFua3MhDQoN
Cj4gIEZpbmFsIHJlbGVhc2UgbWF5IGJlIHRoaXMgd2Vla2VuZCwgZGVwZW5kaW5nIG9uIEJl
cnRyYW5kJ3MNCj4gb3BpbmlvbiBvZiB0aGUgY2hhbmdlcyBJJ3ZlIG1hZGUgdGhpcyB3ZWVr
LlsxXQ0KDQpOaWNlLCB3ZSdsbCBob3BlZnVsbHkgaGF2ZSBpdCBiZWZvcmUgSSB0dXJuIDMw
ICh3aGljaCBCVFcgY29pbmNpZGVzIHdpdGggDQp0aGUgZGVhZGxpbmUgZm9yIGhhdmluZyBp
dCBpbiBCb29rd29ybSwgQUZBSUsgOnApDQoNCj4gDQo+PiBJJ2QgZXhwZWN0IHRoZSAuUFAg
dG8gc2VwYXJhdGUgcGFyYWdyYXBocyB3aXRoIGEgYmxhbmssIHJpZ2h0Pw0KPiANCj4gSXQg
ZG9lcywgYW5kIGl0IGlzLCBidXQgeW91IGNhbid0IHNlZSBpdCBiZWNhdXNlIGdyb2ZmIDEu
MjIuNCBhbmQNCj4gZWFybGllciB0YWJsZSBkaWQgbm90IG1vdmUgdGhlIGRyYXdpbmcgcG9z
aXRpb24gYmVsb3cgdGhlIGJvdHRvbSBib3gNCj4gYm9yZGVyIG9uIG5yb2ZmIGRldmljZXMu
DQo+IA0KPiBUaGUgJy5zcCAxJyB3b3JrYXJvdW5kICh3aGljaCBpcyBzeW5vbnltb3VzIHdp
dGggcGxhaW4gJy5zcCcpIGNhbiBiZQ0KPiByZW1vdmVkIHdoZW4geW91IGZlZWwgZ3JvZmYg
MS4yMy4wIGhhcyBzcHJlYWQgc3VmZmljaWVudGx5Lg0KDQpTaW5jZSB0aGUgYnVnIGlzIHNv
IG1pbm9yLCBJJ20gaW4gZmF2b3Igb2YgcmVtb3ZpbmcgaXQgYXMgc29vbiBhcyB5b3UgDQpy
ZWxlYXNlLiAgQSBsaXR0bGUgYml0IG9mIGxhY2stb2YtYmxhbmstbGluZSBpbmNvbnZlbmll
bmNlIGlzIG5vdCBzbyBiYWQuDQoNCkNoZWVycywNCg0KQWxleA0KDQo+IA0KPiBSZWdhcmRz
LA0KPiBCcmFuZGVuDQo+IA0KPiBbMV0gaHR0cHM6Ly9naXQuc2F2YW5uYWguZ251Lm9yZy9j
Z2l0L2dyb2ZmLmdpdC9sb2cvDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9t
YXIuZXMvPg0KR1BHIGtleSBmaW5nZXJwcmludDogQTkzNDg1OTRDRTMxMjgzQTgyNkZCREQ4
RDU3NjMzRDQ0MUUyNUJCNQ0KDQo=

--------------TXVZCeacEuQyXxfilrTOrcrm--

--------------LqZCq6q0VuZf10touYCqByi6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP5ZGgACgkQnowa+77/
2zJy/w/+MdiTwATLXx2r0WcIr2iLWnD1T4EiINMPM24nJFA4z6OKHT211UQf3a5H
XjRLb1nwcJlxzxufQVE0vK3d/Fp2xgWGMNW4YnYKPtOorz+Afs39kKe6bjfoqh0x
acPAUDFp8npzpQlGFGOa+mwcuGO0sfFNkSw1f+ox2WTN2u7zw0YDRqnOR4LQSVQj
rcq5FdEm7qVHEmpb2EfbR3MBRq7mw9d4yeIOXMX+Ows4eaC2MfOabEyNwmctkVNR
Ob+bAt8SARfzP1P53GMmhaWxKmrqgWepVISwt3174r1x3HPlCaQWYhH9KNL6Gn3E
PKtgh7n6dqkjPfU/EJ0Vknjk/BQqF9S3rMB/4saZLE0O/dzf/cfC4rXaG5IwV4NZ
ypLMKpALSCmvsrPenrcPgeN1w2MnIq3Qx7u7pvcridQPUibewYEItrpJZch4N5K0
BFISFGsFk1hPVkonMAzhdpxnl5EC1PdcWDX0Rc9P/lsjsSTb/fCixqr1Ce81Sqvw
5BVXvt/omrHAShrJgbuyJmLIoOtdmS1eGbBdqrQ6fCu6yAdy4e9Dm76A2Zq1lLqM
WoYQFVSt2N2xiyDIWEnHdtyVGiZrdCnNk5XEGyNc9qkqtJMkMX2/0zOkgLCVisjF
ni3fcY6RMZBObIr0le4+WQ6HjeMsbUOK/mCkDA/BzR+f9XsRnzQ=
=qe6o
-----END PGP SIGNATURE-----

--------------LqZCq6q0VuZf10touYCqByi6--
