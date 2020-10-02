Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF6F8280F94
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 11:10:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726238AbgJBJKg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 05:10:36 -0400
Received: from eu-smtp-delivery-151.mimecast.com ([207.82.80.151]:30530 "EHLO
        eu-smtp-delivery-151.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726017AbgJBJKf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 05:10:35 -0400
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-224-aKI4CW-XN6iMcneJYcNyew-1; Fri, 02 Oct 2020 10:10:31 +0100
X-MC-Unique: aKI4CW-XN6iMcneJYcNyew-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 2 Oct 2020 10:10:28 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Fri, 2 Oct 2020 10:10:28 +0100
From:   David Laight <David.Laight@ACULAB.COM>
To:     'Alejandro Colomar' <colomar.6.4.3@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>
CC:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v2 1/2] system_data_types.7: Add 'void *'
Thread-Topic: [PATCH v2 1/2] system_data_types.7: Add 'void *'
Thread-Index: AQHWmJV8uvKm+YDY8kuGOueiBeQ7uKmEBB/Q
Date:   Fri, 2 Oct 2020 09:10:28 +0000
Message-ID: <a2c3ceecca7648b3bb33f1c8bf8e7893@AcuMS.aculab.com>
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com>
 <538b683f-01d2-6148-4f1d-1b293eb5cd6b@cs.ucla.edu>
 <4b86f6e9-0d8a-f14a-73ce-ebbdc9d9edba@gmail.com>
In-Reply-To: <4b86f6e9-0d8a-f14a-73ce-ebbdc9d9edba@gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
        auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

RnJvbTogQWxlamFuZHJvIENvbG9tYXINCj4gU2VudDogMDIgT2N0b2JlciAyMDIwIDA5OjI1DQo+
ICA+IEZvciAndm9pZCAqJyB5b3Ugc2hvdWxkIGFsc28gbWVudGlvbiB0aGF0IG9uZSBjYW5ub3Qg
dXNlIGFyaXRobWV0aWMgb24NCj4gID4gdm9pZCAqIHBvaW50ZXJzLCBzbyB0aGV5J3JlIHNwZWNp
YWwgaW4gdGhhdCB3YXkgdG9vLg0KPiANCj4gR29vZCBzdWdnZXN0aW9uIQ0KDQpFeGNlcHQgdGhh
dCBpcyBhIGdjYyBleHRlbnNpb24gdGhhdCBpcyBhbGxvd2VkIGluIHRoZSBrZXJuZWwuDQoNCj4g
ID4gQWxzbywgeW91IHNob3VsZA0KPiAgPiB3YXJuIHRoYXQgYmVjYXVzZSBvbmUgY2FuIGNvbnZl
cnQgZnJvbSBhbnkgcG9pbnRlciB0eXBlIHRvIHZvaWQgKiBhbmQNCj4gID4gdGhlbiB0byBhbnkg
b3RoZXIgcG9pbnRlciB0eXBlLCBpdCdzIGEgZGVsaWJlcmF0ZSBob2xlIGluIEMncw0KPiAgPiB0
eXBlLWNoZWNraW5nLg0KPiANCj4gQWxzbyBnb29kLiAgSSdsbCB0YWxrIGFib3V0IGdlbmVyaWMg
ZnVuY3Rpb24gcGFyYW1ldGVycyBmb3IgdGhpcy4NCg0KVGhhdCBpc24ndCB3aGF0IHRoZSBDIHN0
YW5kYXJkIHNheXMgYXQgYWxsLg0KV2hhdCBpcyBzYXlzIGlzIHRoYXQgeW91IGNhbiBjYXN0IGFu
eSBkYXRhIHBvaW50ZXIgdG8gJ3ZvaWQgKicNCmFuZCB0aGVuIGNhc3QgaXQgYmFjayB0byB0aGUg
c2FtZSB0eXBlLg0KDQpUaGlzIG1hdHRlcnMgYmVjYXVzZSB0aGUgY29tcGlsZXIgd2lsbCAncmVt
ZW1iZXInIHN0cnVjdHVyZQ0KYWxpZ25tZW50IHRocm91Z2ggJ3ZvaWQgKicgY2FzdHMuDQpTbyB5
b3UgY2FuJ3QgdXNlIG1lbWNweSgpIHRvIGNvcHkgZnJvbSBhIHBvdGVudGlhbGx5IG1pc2FsaWdu
ZWQNCih0eXBlZCkgcG9pbnRlci4NCg0KJ3ZvaWQgKicgc2hvdWxkIG9ubHkgYmUgdXNlZCBmb3Ig
c3RydWN0dXJlcyB0aGF0IGFyZSAnYSBzZXF1ZW5jZSBvZiBieXRlcycuDQooZWcgdGhpbmdzIHRo
YXQgbG9vayBhIGJpdCBsaWtlIHJlYWQoKSBvciB3cml0ZSgpKS4NCg0KCURhdmlkDQoNCi0NClJl
Z2lzdGVyZWQgQWRkcmVzcyBMYWtlc2lkZSwgQnJhbWxleSBSb2FkLCBNb3VudCBGYXJtLCBNaWx0
b24gS2V5bmVzLCBNSzEgMVBULCBVSw0KUmVnaXN0cmF0aW9uIE5vOiAxMzk3Mzg2IChXYWxlcykN
Cg==

