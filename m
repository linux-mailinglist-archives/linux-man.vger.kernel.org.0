Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8162063C395
	for <lists+linux-man@lfdr.de>; Tue, 29 Nov 2022 16:22:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235974AbiK2PWE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Nov 2022 10:22:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235201AbiK2PVk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Nov 2022 10:21:40 -0500
X-Greylist: delayed 126 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 29 Nov 2022 07:20:01 PST
Received: from mail1.med.uni-goettingen.de (mail1.med.uni-goettingen.de [134.76.103.230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD55556D43
        for <linux-man@vger.kernel.org>; Tue, 29 Nov 2022 07:20:01 -0800 (PST)
Received: from umg-exc-02.ads.local.med.uni-goettingen.de ([10.76.100.75]:53129)
        by mail1.med.uni-goettingen.de with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.95)
        (envelope-from <Martin.Uecker@med.uni-goettingen.de>)
        id 1p02Mp-0005Ph-02;
        Tue, 29 Nov 2022 16:17:51 +0100
Received: from umg-exc-03.ads.local.med.uni-goettingen.de (10.76.100.76) by
 umg-exc-02.ads.local.med.uni-goettingen.de (10.76.100.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.32; Tue, 29 Nov 2022 16:17:51 +0100
Received: from umg-exc-03.ads.local.med.uni-goettingen.de
 ([fe80::69e9:cdcf:4c5a:baa8]) by umg-exc-03.ads.local.med.uni-goettingen.de
 ([fe80::69e9:cdcf:4c5a:baa8%5]) with mapi id 15.01.2375.032; Tue, 29 Nov 2022
 16:17:51 +0100
From:   "Uecker, Martin" <Martin.Uecker@med.uni-goettingen.de>
To:     "alx.manpages@gmail.com" <alx.manpages@gmail.com>,
        "matz@suse.de" <matz@suse.de>
CC:     "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "joseph@codesourcery.com" <joseph@codesourcery.com>,
        "schwarze@usta.de" <schwarze@usta.de>,
        "wg14@soasis.org" <wg14@soasis.org>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Thread-Topic: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Thread-Index: AQHZBAW/esuleps9k0iLq1N/0GGA4A==
Date:   Tue, 29 Nov 2022 15:17:51 +0000
Message-ID: <5ccbf8ed11bd542477980f58aa277bf4335f1281.camel@med.uni-goettingen.de>
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
In-Reply-To: <alpine.LSU.2.20.2211291450280.24878@wotan.suse.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.76.100.67]
Content-Type: text/plain; charset="utf-8"
Content-ID: <344F132E3AFBC64990950E67A66E470A@med.uni-goettingen.de>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

QW0gRGllbnN0YWcsIGRlbSAyOS4xMS4yMDIyIHVtIDE0OjU4ICswMDAwIHNjaHJpZWIgTWljaGFl
bCBNYXR6Og0KPiBIZXksDQo+IA0KPiBPbiBUdWUsIDI5IE5vdiAyMDIyLCBBbGV4IENvbG9tYXIg
dmlhIEdjYyB3cm90ZToNCj4gDQo+ID4gSG93IGFib3V0IHRoZSBjb21waWxlciBwYXJzaW5nIHRo
ZSBwYXJhbWV0ZXIgbGlzdCB0d2ljZT8NCj4gDQo+IFRoaXMgX2lzXyB1bmJvdW5kZWQgbG9vay1h
aGVhZC7CoCBZb3UgY291bGQgYXZvaWQgdGhpcyBieSB1c2luZyAiLiINCj4gZm9yIA0KPiB5b3Vy
IG5ldyBzeW50YXguwqAgVXNlIHNvbWV0aGluZyB1bmFtYmlndW91cyB0aGF0IGNhbid0IGJlIGNv
bmZ1c2VkDQo+IHdpdGggDQo+IG90aGVyIHN5bnRhY3RpYyBlbGVtZW50cywgZS5nLiB3aXRoIGEg
ZGlmZmVyZW50IHB1bmN0dWF0b3IgbGlrZSAnQCcNCj4gb3IgdGhlIA0KPiBsaWtlLsKgIEJ1dCBJ
J20gZ2VuZXJhbGx5IGRvdWJ0ZnVsIG9mIHRoaXMgd2hvbGUgZmVhdHVyZSB3aXRoaW4gQw0KPiBp
dHNlbGYuwqAgDQo+IEl0IHNlcnZlcyBhIHB1cnBvc2UgaW4gZG9jdW1lbnRhdGlvbiwgc28gaW4g
bWFuLXBhZ2VzIGl0IHNlZW1zIGZpbmUNCj4gZW5vdWdoIA0KPiAoYnV0IHRoZW4gc3RpbGwgY291
bGQgdXNlIGEgZGlmZmVyZW50IHB1bmN1YXRvciB0byBub3QgYmUgY29uZnVzYWJsZQ0KPiB3aXRo
IA0KPiBDIHN5bnRheCkuDQo+IA0KPiBCdXQgd2l0aGluIEMgaXQgc3RpbGwgY2FuIG9ubHkgc2Vy
dmUgYSBkb2N1bWVudGF0aW9uIHB1cnBvc2UgYXMgbm8gDQo+IGNoZWNraW5nIGNvdWxkIGJlIHBl
cmZvcm1lZCB3aXRob3V0IGFsc28gY2hhbmdlcyBpbiBob3cgZS5nLiBhcnJheXMNCj4gYXJlIA0K
PiByZXByZXNlbnRlZCAodGhleSBhbHdheXMgd291bGQgbmVlZCB0byBjb21lIHdpdGggYSBzaXpl
KS7CoMKgDQoNCg0KSXQgZG9lcyBub3QgcmVxdWlyZSBhbnkgY2hhbmdlcyBvbiBob3cgYXJyYXlz
IGFyZSByZXByZXNlbnRlZC4NCg0KQXMgcGFydCBvZiBWTS10eXBlcyB0aGUgc2l6ZSBiZWNvbWVz
IHBhcnQgb2YgdGhlIHR5cGUgYW5kIHRoaXMNCmNhbiBiZSB1c2VkIGZvciBzdGF0aWMgb3IgZHlu
YW1pYyBhbmFseXNpcywgZS5nLiB5b3UgY2FuwqANCi0gdG9kYXkgLSBnZXQgYSBydW4tdGltZSBi
b3VuZHMgdmlvbGF0aW9uIHdpdGggdGhlIHNhbml0aXplcjoNCg0Kdm9pZCBmb28oaW50IG4sIGNo
YXIgKCpidWYpW25dKQ0Kew0KICAoKmJ1Zilbbl0gPSAxOw0KfQ0KDQoNCmludCBtYWluKCkNCnsN
CiAgICBjaGFyIGJ1ZlsxMF07DQogICAgZm9vKDEwLCAmYnVmKTsNCn0NCg0KaHR0cHM6Ly9nb2Ri
b2x0Lm9yZy96L1dXRWRlWWNocw0KDQpJIHBlcnNvbmFsbHkgZmluZCB0aGlzIGFscmVhZHkgZXh0
cmVtZWx5IHVzZWZ1bC4NCg0KDQpGb3INCg0Kdm9pZCBmb28oaW50IG4sIGNoYXIgYnVmW25dKTsN
Cg0KaXQgc2VtYW50aWNhbGx5IGhhcyBubyBtZWFuaW5nIGFjY29yZGluZyB0byB0aGUgQyBzdGFu
ZGFyZCwNCmJ1dCBhIGNvbXBpbGVyIGNvdWxkIHN0aWxsIHdhcm4uIA0KDQpJdCBjb3VsZCBhbHNv
IHdhcm4gZm9yDQoNCnZvaWQgZm9vKGludCBuLCBjaGFyIGJ1ZltuXSk7DQoNCmludCBtYWluKCkN
CnsNCiAgICBjaGFyIGJ1Zls5XTsNCiAgICBmb28oYnVmKTsNCn0NCg0KaWYgdGhlIHBhc3NlZCBi
dWZmZXIgaXMgdG9vIHNob3J0LiBBbmQgaGVyZSwgR0NDIGFuZCBDbGFuZw0KYWxyZWFkeSBkbyB0
aGlzISAoYWx0aG91Z2ggLSBzbyBmYXIgLSBvbmx5IGZvciBzdGF0aWMNCmJvdW5kcyBJIHRoaW5r
KQ0KDQpodHRwczovL2dvZGJvbHQub3JnL3ovYWZQaG54Znp4DQoNCldpdGggInN0YXRpYyIgDQoN
CnZvaWQgZm9vKGludCBuLCBjaGFyIGJ1ZltzdGF0aWMgbl0pOw0KDQp0aGlzIHdvdWxkIGFsc28g
YmUgVUIgYWNjb3JkaW5nIHRvIEMuDQoNCg0KV2UgbWlzcyBzb21lIGZlYXR1cmVzIGluIEdDQyB0
byBtYWtlIHRoaXMgbW9yZSB1c2VmdWwgKGFuZA0KSSBmaWxlZCBidWdzIGEgd2hpbGUgYWdvKS4g
Rm9yIGV4YW1wbGUsIFVCIHNhbml0emVyIHNob3VsZCBkZXRlY3QNCmFkZGl0aW9uYWwgY2FzZXMg
d2hpY2ggYXJlIFVCLg0KDQpCdXQgaW4gZ2VuZXJhbDogVGhpcyBmZWF0dXJlIGlzIHVzZWZ1bCBu
b3Qgb25seSBmb3IgZG9jdW1lbnRhdGlvbg0KYnV0IGFsc28gZm9yIGFuYWx5c2lzLiAgWW91IGNh
biBnZXQgYm91bmRzIGNoZWNraW5nIGluIEMgd2hpY2gNCndvcmtzIHRvZGF5IGFuZCB3aXRoIGFk
ZGl0aW9uYWwgY29tcGlsZXIgZmVhdHVyZXMgdGhpcyB3b3VsZA0KYmUgdmVyeSB1c2VmdWwhDQoN
Cg0KTWFydGluDQoNCg0KDQo+IEl0IHNlZW1zIA0KPiBkb3VidGZ1bCB0byBpbnRyb2R1Y2UgY29t
cGxldGVseSBuZXcgYW5kIGFtYmlndW91cyBzeW50YXggd2l0aCBhbGwNCj4gdGhlIA0KPiBwcm9i
bGVtcyBKb3NlcGggbGlzdHMganVzdCBpbiBvcmRlciB0byBiZSBhYmxlIHRvIHdyaXRlIGRvY3Vt
ZW50YXRpb24NCj4gd2hlbiANCj4gdGhlcmUncyBhIHBlcmZlY3RseSBmaW5lIG1ldGhvZCB0byBk
byBzbzogY29tbWVudHMuDQo=
