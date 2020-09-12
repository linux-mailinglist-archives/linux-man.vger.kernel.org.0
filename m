Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30602267C6E
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 23:08:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725913AbgILVIL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Sep 2020 17:08:11 -0400
Received: from eu-smtp-delivery-151.mimecast.com ([207.82.80.151]:39807 "EHLO
        eu-smtp-delivery-151.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725884AbgILVIK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Sep 2020 17:08:10 -0400
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-152-zrJDEg8gOCS9olL-jujjvg-1; Sat, 12 Sep 2020 22:07:38 +0100
X-MC-Unique: zrJDEg8gOCS9olL-jujjvg-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Sat, 12 Sep 2020 22:07:38 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Sat, 12 Sep 2020 22:07:38 +0100
From:   David Laight <David.Laight@ACULAB.COM>
To:     "'Michael Kerrisk (man-pages)'" <mtk.manpages@gmail.com>,
        "Alejandro Colomar" <colomar.6.4.3@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 01/24] inet_net_pton.3: Use 'PRIx32' rather than "%x" when
 printing 'uint32_t' values
Thread-Topic: [PATCH 01/24] inet_net_pton.3: Use 'PRIx32' rather than "%x"
 when printing 'uint32_t' values
Thread-Index: AQHWiB5QTRM4xYy+JEuo3yfg2blY96llf04A
Date:   Sat, 12 Sep 2020 21:07:38 +0000
Message-ID: <8ed10b6c63df4ff095f1341648405f03@AcuMS.aculab.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-2-colomar.6.4.3@gmail.com>
 <928d25b7-7f97-f9b9-80ce-0550c18131c2@gmail.com>
In-Reply-To: <928d25b7-7f97-f9b9-80ce-0550c18131c2@gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
        auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: aculab.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64
Content-Language: en-US
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

RnJvbTogTWljaGFlbCBLZXJyaXNrDQo+IFNlbnQ6IDExIFNlcHRlbWJlciAyMDIwIDEwOjMxDQo+
IA0KPiBIaSBBbGV4LA0KPiANCj4gT24gOS8xMC8yMCAxMToxMyBQTSwgQWxlamFuZHJvIENvbG9t
YXIgd3JvdGU6DQo+ID4gU2lnbmVkLW9mZi1ieTogQWxlamFuZHJvIENvbG9tYXIgPGNvbG9tYXIu
Ni40LjNAZ21haWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBtYW4zL2luZXRfbmV0X3B0b24uMyB8IDMg
KystDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkN
Cj4gPg0KPiA+IGRpZmYgLS1naXQgYS9tYW4zL2luZXRfbmV0X3B0b24uMyBiL21hbjMvaW5ldF9u
ZXRfcHRvbi4zDQo+ID4gaW5kZXggMDBmOTRiOWQ0Li5kNzRhMzNkNzQgMTAwNjQ0DQo+ID4gLS0t
IGEvbWFuMy9pbmV0X25ldF9wdG9uLjMNCj4gPiArKysgYi9tYW4zL2luZXRfbmV0X3B0b24uMw0K
PiA+IEBAIC0zMzIsNiArMzMyLDcgQEAgUmF3IGFkZHJlc3M6ICAgICAgICAgICAgICBjMWE4MDE4
MA0KPiA+ICAvKiBMaW5rIHdpdGggIlwtbHJlc29sdiIgKi8NCj4gPg0KPiA+ICAjaW5jbHVkZSA8
YXJwYS9pbmV0Lmg+DQo+ID4gKyNpbmNsdWRlIDxpbnR0eXBlcy5oPg0KPiA+ICAjaW5jbHVkZSA8
c3RkaW8uaD4NCj4gPiAgI2luY2x1ZGUgPHN0ZGxpYi5oPg0KPiA+DQo+ID4gQEAgLTM4MSw3ICsz
ODIsNyBAQCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2W10pDQo+ID4gICAgICAgICBtYXkgbm90
IGhhdmUgYmVlbiB0b3VjaGVkIGJ5IGluZXRfbmV0X250b3AoKSwgYW5kIHNvIHdpbGwgc3RpbGwN
Cj4gPiAgICAgICAgIGhhdmUgYW55IGluaXRpYWwgdmFsdWUgdGhhdCB3YXMgc3BlY2lmaWVkIGlu
IGFyZ3ZbMl0uICovDQo+ID4NCj4gPiAtICAgIHByaW50ZigiUmF3IGFkZHJlc3M6ICAgICAgICAg
ICAgICAleFxlbiIsIGh0b25sKGFkZHIuc19hZGRyKSk7DQo+ID4gKyAgICBwcmludGYoIlJhdyBh
ZGRyZXNzOiAgICAgICAgICAgICAgJSJQUkl4MzIiXGVuIiwgaHRvbmwoYWRkci5zX2FkZHIpKTsN
Cj4gPg0KPiA+ICAgICAgZXhpdChFWElUX1NVQ0NFU1MpOw0KPiA+ICB9DQo+IA0KPiBTbywgSSdt
IGluIGEgbGl0dGxlIGJpdCBvZiBkb3VidCBhYm91dCBwYXRjaGVzIDAxIGFuZCAwMi4gRG9lcw0K
PiB0aGlzIHJlYWxseSB3aW4gdXMgYW55dGhpbmc/IE9uIHRoZSBvbmUgaGFuZCwgJSJQUkl4MzIi
IGlzIG1vcmUNCj4gZGlmZmljdWx0IHRvIHJlYWQgdGhhbiAleC4gT24gdGhlIG90aGVyLCBkb2Vz
IGl0IHdpbiB1cyBhbnl0aGluZw0KPiBpbiB0ZXJtcyBvZiBwb3J0YWJpbGl0eT8gQXQgZmlyc3Qg
Z2xhbmNlLCB0aGUgYW5zd2VycyBzZWVtcyB0byBtZQ0KPiB0byBiZSAibm8iLiBZb3VyIHRob3Vn
aHRzPw0KDQpPbiAzMmJpdCBzeXN0ZW1zIHVpbnQzMl90IG1pZ2h0IGJlIGVpdGhlciAnaW50JyBv
ciAnbG9uZycuDQpTbyB0aGUgZm9ybWF0IGhhcyB0byBtYXRjaCAtIGV2ZW4gdGhvdWdoIHRoZSBB
QkkgaXMgcHJvYmFibHkNCnRoZSBzYW1lIGluIGJvdGggY2FzZXMuDQoNCk1pbmQgeW91LCBodG9u
bCgpIGl0c2VsZiBjb3VsZCBiZSBwcm9ibGVtYXRpYy4NCk9uIEJFIHN5c3RlbXMgaXQgaXMgbGlr
ZWx5IHRvIGJlICNkZWZpbmUgaHRvbmwoeCkgKHgpDQpzbyB0aGUgdHlwZSBpcyB3aGF0ZXZlciB3
YXMgcGFzc2VkLg0KT24gTEUgc3lzdGVtcyBpdCBtaWdodCBldmVuIGJlIGxvbmcgaHRvbmwobG9u
ZykNCiAtIHdoaWNoIGlzIGl0cyBoaXN0b3JpYyBwcm90b3R5cGUuDQoNCglEYXZpZA0KDQotDQpS
ZWdpc3RlcmVkIEFkZHJlc3MgTGFrZXNpZGUsIEJyYW1sZXkgUm9hZCwgTW91bnQgRmFybSwgTWls
dG9uIEtleW5lcywgTUsxIDFQVCwgVUsNClJlZ2lzdHJhdGlvbiBObzogMTM5NzM4NiAoV2FsZXMp
DQo=

