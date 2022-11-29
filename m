Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD61263C601
	for <lists+linux-man@lfdr.de>; Tue, 29 Nov 2022 18:01:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236583AbiK2RBm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Nov 2022 12:01:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236156AbiK2RBF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Nov 2022 12:01:05 -0500
Received: from mail1.med.uni-goettingen.de (mail1.med.uni-goettingen.de [134.76.103.230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26B9B229
        for <linux-man@vger.kernel.org>; Tue, 29 Nov 2022 08:58:40 -0800 (PST)
Received: from umg-exc-03.ads.local.med.uni-goettingen.de ([10.76.100.76]:57811)
        by mail1.med.uni-goettingen.de with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.95)
        (envelope-from <Martin.Uecker@med.uni-goettingen.de>)
        id 1p03wJ-0005uo-0z;
        Tue, 29 Nov 2022 17:58:35 +0100
Received: from umg-exc-03.ads.local.med.uni-goettingen.de (10.76.100.76) by
 umg-exc-03.ads.local.med.uni-goettingen.de (10.76.100.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.32; Tue, 29 Nov 2022 17:58:35 +0100
Received: from umg-exc-03.ads.local.med.uni-goettingen.de
 ([fe80::69e9:cdcf:4c5a:baa8]) by umg-exc-03.ads.local.med.uni-goettingen.de
 ([fe80::69e9:cdcf:4c5a:baa8%5]) with mapi id 15.01.2375.032; Tue, 29 Nov 2022
 17:58:35 +0100
From:   "Uecker, Martin" <Martin.Uecker@med.uni-goettingen.de>
To:     "matz@suse.de" <matz@suse.de>
CC:     "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>,
        "alx.manpages@gmail.com" <alx.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "joseph@codesourcery.com" <joseph@codesourcery.com>,
        "schwarze@usta.de" <schwarze@usta.de>,
        "wg14@soasis.org" <wg14@soasis.org>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Thread-Topic: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Thread-Index: AQHZBAW/esuleps9k0iLq1N/0GGA4K5V+f8AgAAU0wA=
Date:   Tue, 29 Nov 2022 16:58:35 +0000
Message-ID: <6aa43dfb80210f62be70fd1fd076c72260423c38.camel@med.uni-goettingen.de>
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
In-Reply-To: <alpine.LSU.2.20.2211291519160.24878@wotan.suse.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.76.100.67]
Content-Type: text/plain; charset="utf-8"
Content-ID: <1FC8EDE3B9A397498E9BC8DE8519F756@med.uni-goettingen.de>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

DQpIaSwNCg0KQW0gRGllbnN0YWcsIGRlbSAyOS4xMS4yMDIyIHVtIDE1OjQ0ICswMDAwIHNjaHJp
ZWIgTWljaGFlbCBNYXR6Og0KPiBIZXksDQo+IA0KPiBPbiBUdWUsIDI5IE5vdiAyMDIyLCBVZWNr
ZXIsIE1hcnRpbiB3cm90ZToNCj4gDQo+ID4gSXQgZG9lcyBub3QgcmVxdWlyZSBhbnkgY2hhbmdl
cyBvbiBob3cgYXJyYXlzIGFyZSByZXByZXNlbnRlZC4NCj4gPiANCj4gPiBBcyBwYXJ0IG9mIFZN
LXR5cGVzIHRoZSBzaXplIGJlY29tZXMgcGFydCBvZiB0aGUgdHlwZSBhbmQgdGhpcw0KPiA+IGNh
biBiZSB1c2VkIGZvciBzdGF0aWMgb3IgZHluYW1pYyBhbmFseXNpcywgZS5nLiB5b3UgY2FuwqAN
Cj4gPiAtIHRvZGF5IC0gZ2V0IGEgcnVuLXRpbWUgYm91bmRzIHZpb2xhdGlvbiB3aXRoIHRoZSBz
YW5pdGl6ZXI6DQo+ID4gDQo+ID4gdm9pZCBmb28oaW50IG4sIGNoYXIgKCpidWYpW25dKQ0KPiA+
IHsNCj4gPiDCoCAoKmJ1Zilbbl0gPSAxOw0KPiA+IH0NCj4gDQo+IFRoaXMgY2FuIGFscmVhZHkg
c3RhdGljYWxseSBhbmFseXplZCBhcyBiZWluZyB3cm9uZywgbm8gbmVlZCBmb3INCj4gZHluYW1p
YyBjaGVja2luZy7CoMKgDQoNCkluIHRoaXMgdG95IGV4YW1wbGUsIGJ1dCBpbiBnZW5lcmFsIGlu
IGNhbiBiZSBjaGVja2VkDQpvbmx5IGF0IHJ1bi10aW1lIGJ5IHVzaW5nIHRoZSBpbmZvcm1hdGlv
biBhYm91dCB0aGUNCmR5bmFtaWMgYm91bmQuDQoNCj4gV2hhdCBJIG1lYW4gaXMgdGhlIGNoZWNr
aW5nIG9mIHRoZSBjbGFpbWVkIGNvbnRyYWN0LsKgDQo+IEFib3ZlIHlvdSBhc3N1cmUgZm9yIHRo
ZSBmdW5jdGlvbiBib2R5IHRoYXQgYnVmIGhhcyBuIGVsZW1lbnRzLg0KDQpZZXMuDQoNCj4gVGhp
cyBpcyBhbHNvIGEgcHJlLWNvbmRpdGlvbiBmb3IgY2FsbGluZyB0aGlzIGZ1bmN0aW9uIGFuZA0K
PiBfdGhhdF8gY2FuJ3QgYmUgY2hlY2tlZCBpbiBhbGwgIGNhc2VzIGJlY2F1c2U6DQo+IA0KPiDC
oCB2b2lkIGZvbyAoaW50IG4sIGNoYXIgKCpidWYpW25dKSB7ICgqYnVmKVtuLTFdID0gMTsgfQ0K
PiDCoCB2b2lkIGNhbGxmb28oY2hhciAqIGJ1ZikgeyBmb28oMTAsIGJ1Zik7IH0NCj4gDQo+IGJ1
ZiBkb2Vzbid0IGhhdmUgYSBrbm93biBzaXplLsKgDQoNClRoaXMgZG9lcyBub3QgdHlwZSBjaGVj
ay4NCg0KPiAgQW5kIGEgcHJlLWNvbmRpdGlvbiB0aGF0IGNhbid0IGJlIGNoZWNrZWQgDQo+IGlz
IG5vIHByZS1jb25kaXRpb24gYXQgYWxsLCBhcyBvbmx5IHRoZW4gaXQgY2FuIGJlY29tZSBhIGd1
YXJhbnRlZQ0KPiBmb3IgdGhlIGJvZHkuDQoNClRoZSBleGFtcGxlIGFib3ZlIHNob3VsZCBsb29r
IGxpa2U6DQoNCnZvaWQgZm9vKGludCBuLCBjaGFyICgqYnVmKVtuXSk7DQoNCnZvaWQgY2FsbGZv
byhjaGFyICgqYnVmKVsxMl0pIHsgZm9vKDEwLCBidWYpOyB9DQoNClRoaXMgY291bGQgYmUgY2hl
Y2tlZCBieSBhbiBVQiBzYW5pdGl6ZXIgYXMgY2FsbGluZw0KdGhlIGZ1bmN0aW9uIHdpdGggYW4g
YXJndW1lbnQgb2YgaW5jb21wYXRpYmxlIHR5cGXCoA0KaXMgVUIgKGJ1dCB3ZSBjdXJyZW50bHkg
ZG8gbm90IGRvIHRoaXMpDQoNCg0KSWYgeW91IHRoaW5rIGFib3V0DQoNCnZvaWQgZm9vKGludCBu
LCBjaGFyIGJ1ZltuXSk7DQoNCnZvaWQgY2FsbGZvbyhjaGFyICpidWYpIHsgZm9vKDEwLCBidWYp
OyB9DQoNCg0KVGhlbiB5b3UgYXJlIHJpZ2h0IHRoYXQgdGhpcyBjYW4gbm90IGJlIGNoZWNrZWQg
YXQgdGhpcw0KdGltZS4gQnV0IHRoaXMgIGRvZXMgbm90IG1lYW4gaXQgaXMgdXNlbGVzcyBiZWNh
dXNlIHdlDQpzdGlsbCBjYW4gZGV0ZWN0IGluY29uc2lzdGVuY2llcyBpbiBvdGhlciBjYXNlczoN
Cg0Kdm9pZCBjYWxsZm9vKGludCBuLCBjaGFyIGJ1ZltuIC0gMV0pIHsgZm9vKG4sIGJ1Zik7IH0N
Cg0KV2UgY291bGQgYWxzbyAtIGluIHRoZSBmdXR1cmUgLSBoYXZlIGEgd2FybmluZyBhYm91dCBh
bGwNCnNpdHVhdGlvbnMgd2hlcmUgYm91bmQgaW5mb3JtYXRpb24gaXMgbG9zdCwgbWFraW5nIHN1
cmUNCnRoYXQgcHJlY29uZGl0aW9ucyBhcmUgYWx3YXlzIGNoZWNrZWQgZm9yIHBlb3BsZSB3aG8N
CmNvbnNpc3RlbnRseSB1c2UgdGhlc2UgYW5ub3RhdGlvbnMuDQoNCg0KPiBUaGUgY29tcGlsZXIg
aGFzIG5vIGNob2ljZSB0aGFuIHRvIHRydXN0IHRoZSB1c2VyIHRoYXQgdGhlIHByZS0NCj4gY29u
ZGl0aW9uICBmb3IgY2FsbGluZyBmb28gaXMgZnVsZmlsbGVkLsKgIEkgY2FuIHNlZSBob3cNCj4g
YmVpbmcgYWJsZSB0byBqdXN0IGNoZWNrIGhhbGYgIG9mIHRoZSBjb250cmFjdCBtaWdodCBiZQ0K
PiB1c2VmdWwsIGJ1dCBpZiBpdCBkb2Vzbid0IGdpdmUgZnVsbCBjaGVja2luZyB0aGVuIA0KPiBh
bnkgcHJvcG9zYWwgZm9yIHN5bnRheCBzaG91bGQgYmUgZXZlbiBtb3JlIG9idmlvdXNseQ0KPiBv
cnRob2dvbmFsIHRoYW4gdGhlIGN1cnJlbnQgb25lLg0KDQpZb3VyIGFyZ3VtZW50IGlzIG5vdCBj
bGVhciB0byBtZS4NCg0KDQo+ID4gRm9yDQo+ID4gDQo+ID4gdm9pZCBmb28oaW50IG4sIGNoYXIg
YnVmW25dKTsNCj4gPiANCj4gPiBpdCBzZW1hbnRpY2FsbHkgaGFzIG5vIG1lYW5pbmcgYWNjb3Jk
aW5nIHRvIHRoZSBDIHN0YW5kYXJkLA0KPiA+IGJ1dCBhIGNvbXBpbGVyIGNvdWxkIHN0aWxsIHdh
cm4uIA0KPiANCj4gSG1tP8KgIFdhcm4gYWJvdXQgd2hhdCBpbiB0aGlzIGRlY2w/DQoNCkkgbWVh
bnQsIHdlIGNvdWxkIHdhcm4gYWJvdXQgc29tZXRoaW5nIGxpa2UgdGhpcw0KYmVjYXVzZSBpdCBp
cyBsaWtlbHkgYW4gZXJyb3I6DQoNCnZvaWQgZm9vKGludCBuLCBjaGFyIGJ1ZltuXSkNCnsNCiAg
YnVmW25dID0gMTsNCn0NCg0KDQo+ID4gSXQgY291bGQgYWxzbyB3YXJuIGZvcg0KPiA+IA0KPiA+
IHZvaWQgZm9vKGludCBuLCBjaGFyIGJ1ZltuXSk7DQo+ID4gDQo+ID4gaW50IG1haW4oKQ0KPiA+
IHsNCj4gPiDCoMKgwqAgY2hhciBidWZbOV07DQo+ID4gwqDCoMKgIGZvbyhidWYpOw0KPiA+IH0N
Cj4gDQo+IFlvdSBtZWFuIGlmIHlvdSB3cml0ZSAnZm9vKDEwLGJ1ZiknICh0aGUgYWJvdmUsIGFz
IGlzLCBpcyBzaW1wbHkgYQ0KPiBzeW50YXggZXJyb3IgZm9yIG5vbi1tYXRjaGluZyBudW1iZXIg
b2YgYXJncykuwqAgT3Igd2FzIGl0IGEgbWlzcGFzdGUNCj4gYW5kIHlvdSBtZWFuICB0aGUgb25l
IGZyb20gdGhlIGdvZGJvbHQgbGluaywgaS5lLjoNCg0KSSBtZWFudDoNCg0KY2hhciBidWZbOV07
DQpmb28oMTAsIGJ1Zik7DQoNCkluIGZhY3QsIGl0IHR1cm5zIG91dCB3ZSB3YXJuIGFscmVhZHk6
DQoNCmh0dHBzOi8vZ29kYm9sdC5vcmcvei9xY3Zzdjg3RXYNCg0KPiB2b2lkIGZvbyhjaGFyIGJ1
ZlsxMF0peyBidWZbOV0gPSAxOyB9DQo+IGludCBtYWluKCkNCj4gew0KPiDCoMKgwqAgY2hhciBi
dWZbOV07DQo+IMKgwqDCoCBmb28oYnVmKTsNCj4gfQ0KPiANCj4gP8KgIElmIHNvLCB5ZWFoLCB3
ZSB3YXJuIGFscmVhZHkuwqAgSSBkb24ndCB0aGluayB0aGlzIGlzIGFuIGFyZ3VtZW50DQo+IGZv
ciAob3IgYWdhaW5zdCkgaW50cm9kdWNpbmcgbmV3IHN5bnRheC4NCj4gLi4uDQoNCkl0IGlzIGFy
Z3VtZW50IGZvciBoYXZpbmcgdGhpcyBzeW50YXgsIGJlY2F1c2Ugd2UgY291bGTCoA0KZXh0ZW5k
IHN1Y2ggd2FybmluZyAodGhvc2Ugd2UgYWxyZWFkeSBoYXZlIGFuZCB0aG9zZSB3ZQ0KY291bGQg
c3RpbGwgYWRkKSB0byBtb3JlIGNvbW1vbiBjYXNlcyBzdWNoIGFzDQoNCnZvaWQgZm9vKGNoYXIg
YnVmWy5uXSwgc2l6ZV90IG4pOw0KDQpJbiBteSBvcGluaW9uLCB0aGlzIHdvdWxkIGEgaHVnZSBz
dGVwIGZvcndhcmQgZm9yDQpzYWZldHkgb2YgQyBwcm9ncmFtcyBhcyB3ZSBhbHJlYWR5IGhhdmUg
YSBsb3Qgb2YNCmluZnJhc3RydWN0dXJlIGZvciBjaGVja2luZyBib3VuZHMuDQoNCk9mIGNvdXJz
ZSwgdGhlIGV4aXN0aW5nIEdOVSBleHRlbnNpb24gd291bGQgYWNoaWV2ZQ0KdGhlIHNhbWUgdGhp
bmc6DQoNCnZvaWQgZm9vKHNpemVfdCBuOyBjaGFyIGJ1ZltuXSwgc2l6ZV90IG4pOw0KDQoNCg0K
PiA+IEJ1dCBpbiBnZW5lcmFsOiBUaGlzIGZlYXR1cmUgaXMgdXNlZnVsIG5vdCBvbmx5IGZvciBk
b2N1bWVudGF0aW9uDQo+ID4gYnV0IGFsc28gZm9yIGFuYWx5c2lzLg0KPiANCj4gV2hpY2ggZmVh
dHVyZSB3ZSdyZSB0YWxraW5nIGFib3V0IG5vdz/CoCBUaGUgb25lcyB5b3UgdXNlZCBhbGwgd29y
aw0KPiB0b2RheSwgDQo+IGFzIHlvdSBkZW1vbnN0cmF0ZWQuwqAgSSB0aG91Z2h0IHdlIHdvdWxk
IGJlIHRhbGtpbmcgYWJvdXQgdGhhdA0KPiAiLndoYXRldmVyIiANCj4gc3ludGF4IHRvIHJlZmVy
IHRvIGFyYml0cmFyeSBwYXJhbWV0ZXJzLCBldmVuIGZvbGxvd2luZyBvbmVzP8KgIEkNCj4gdGhp
bmsgYSANCj4gZGlzcnVwdGluZyBzeW50YXggY2hhbmdlIGxpa2UgdGhhdCBzaG91bGQgaGF2ZSBh
IGhpZ2hlciBiYXIgdGhhbiAiaW4NCj4gc29tZSANCj4gY2FzZXMsIGRlcGVuZGluZyBvbiBjaXJj
dW1zdGFuY2UsIHdlIG1pZ2h0IGV2ZW4gYmUgYWJsZSB0byB3YXJuIi4NCg0KV2UgY2FuIHVzZSBv
dXIgZXhpc3RpbmcgZmVhdHVyZXMgYW5kIHRoZW4gYXBwbHkgdGhlbQ0KdG8gY2FzZXMgd2hlcmUg
dGhlIGJvdW5kIGlzIHNwZWNpZmllZCBhZnRlciB0aGUgcG9pbnRlciwNCndoaWNoIGlzIG1vcmUg
Y29tbW9uIGluIHByYWN0aWNlLg0KDQoNCk1hcnRpbg0KDQo=
