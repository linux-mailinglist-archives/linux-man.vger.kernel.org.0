Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 063A62813FD
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 15:26:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726386AbgJBN0k (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 09:26:40 -0400
Received: from eu-smtp-delivery-151.mimecast.com ([185.58.86.151]:60358 "EHLO
        eu-smtp-delivery-151.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726017AbgJBN0j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 09:26:39 -0400
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-151-BQ346DrXNiO_-pdI0jz1dQ-1; Fri, 02 Oct 2020 14:26:36 +0100
X-MC-Unique: BQ346DrXNiO_-pdI0jz1dQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 2 Oct 2020 14:26:35 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Fri, 2 Oct 2020 14:26:35 +0100
From:   David Laight <David.Laight@ACULAB.COM>
To:     'Jonathan Wakely' <jwakely.gcc@gmail.com>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
CC:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        gcc-patches <gcc-patches@gcc.gnu.org>,
        "GNU C Library" <libc-alpha@sourceware.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "eggert@cs.ucla.edu" <eggert@cs.ucla.edu>
Subject: RE: [PATCH 1/2] system_data_types.7: Add 'void *'
Thread-Topic: [PATCH 1/2] system_data_types.7: Add 'void *'
Thread-Index: AQHWmL4r/NIun6B3n0m5AaW7KwTTx6mESyQw
Date:   Fri, 2 Oct 2020 13:26:35 +0000
Message-ID: <46f6a94a518e468c82f19c5250878529@AcuMS.aculab.com>
References: <20201002121645.23646-1-colomar.6.4.3@gmail.com>
 <20201002121645.23646-2-colomar.6.4.3@gmail.com>
 <CAH6eHdQD+4g4ne9akZ5TDbhfq9TR0JSSBQ5H+W+Fab=5dy7O+g@mail.gmail.com>
In-Reply-To: <CAH6eHdQD+4g4ne9akZ5TDbhfq9TR0JSSBQ5H+W+Fab=5dy7O+g@mail.gmail.com>
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

PiA+ICsuSSB2b2lkICoNCj4gPiArLlJTDQo+ID4gK0FjY29yZGluZyB0byB0aGUgQyBsYW5ndWFn
ZSBzdGFuZGFyZCwNCj4gPiArYSBwb2ludGVyIHRvIGFueSBvYmplY3QgdHlwZSBtYXkgYmUgY29u
dmVydGVkIHRvIGEgcG9pbnRlciB0bw0KPiA+ICsuSSB2b2lkDQo+ID4gK2FuZCBiYWNrLg0KPiA+
ICtQT1NJWCBmdXJ0aGVyIHJlcXVpcmVzIHRoYXQgYW55IHBvaW50ZXIsDQo+ID4gK2luY2x1ZGlu
ZyBwb2ludGVycyB0byBmdW5jdGlvbnMsDQo+ID4gK21heSBiZSBjb252ZXJ0ZWQgdG8gYSBwb2lu
dGVyIHRvDQo+ID4gKy5JIHZvaWQNCj4gPiArYW5kIGJhY2suDQo+ID4gKy5QUA0KPiA+ICtDb252
ZXJzaW9ucyBmcm9tIGFuZCB0byBhbnkgb3RoZXIgcG9pbnRlciB0eXBlIGFyZSBkb25lIGltcGxp
Y2l0bHksDQo+ID4gK25vdCByZXF1aXJpbmcgY2FzdHMgYXQgYWxsLg0KPiA+ICtOb3RlIHRoYXQg
dGhpcyBmZWF0dXJlIHByZXZlbnRzIGFueSBraW5kIG9mIHR5cGUgY2hlY2tpbmc6DQo+ID4gK3Ro
ZSBwcm9ncmFtbWVyIHNob3VsZCBiZSBjYXJlZnVsIG5vdCB0byBjYXN0IGENCj4gPiArLkkgdm9p
ZCAqDQo+ID4gK3ZhbHVlIHRvIGEgdHlwZSBpbmNvbXBhdGlibGUgdG8gdGhhdCBvZiB0aGUgdW5k
ZXJseWluZyBkYXRhLA0KPiA+ICtiZWNhdXNlIHRoYXQgd291bGQgcmVzdWx0IGluIHVuZGVmaW5l
ZCBiZWhhdmlvci4NCj4gPiArLlBQDQo+ID4gK1RoaXMgdHlwZSBpcyB1c2VmdWwgaW4gZnVuY3Rp
b24gcGFyYW1ldGVycyBhbmQgcmV0dXJuIHZhbHVlDQo+ID4gK3RvIGFsbG93IHBhc3NpbmcgdmFs
dWVzIG9mIGFueSB0eXBlLg0KPiA+ICtUaGUgZnVuY3Rpb24gd2lsbCB1c3VhbGx5IHVzZSBzb21l
IG1lY2hhbmlzbSB0byBrbm93DQo+ID4gK29mIHdoaWNoIHR5cGUgdGhlIHVuZGVybHlpbmcgZGF0
YSBwYXNzZWQgdG8gdGhlIGZ1bmN0aW9uIHJlYWxseSBpcy4NCj4gDQo+IFRoaXMgc2VudGVuY2Ug
c2VlbXMgY2x1bmt5Lg0KPiANCj4gSG93IGFib3V0ICJUaGUgZnVuY3Rpb24gd2lsbCB0eXBpY2Fs
bHkgdXNlIHNvbWUgbWVjaGFuaXNtIHRvIGtub3cgdGhlDQo+IHJlYWwgdHlwZSBvZiB0aGUgZGF0
YSBiZWluZyBwYXNzZWQgdmlhIGEgcG9pbnRlciB0byB2b2lkLiINCj4gDQo+IEFuIGV4YW1wbGUg
b2YgInNvbWUgbWVjaGFuaXNtIiBtaWdodCBiZSB1c2VmdWwsIHRob3VnaCBJIGRvbid0IGhhdmUN
Cj4gb25lIHRvIG9mZmVyLg0KDQpJdCdzIGFsc28gYm9sbG9ja3MuDQoNClRoZXJlIGFyZSB0d28g
bWFpbiBwbGFjZXMgJ3ZvaWQgKicgaXMgdXNlZDoNCjEpIGJ1ZmZlcnMgKGVnIGZ1bmN0aW9ucyBs
aWtlIHJlYWQoKSBhbmQgd3JpdGUoKSkgd2hlbiB0aGUNCiAgIGFzc29jaWF0ZWQgYnl0ZSBsZW5n
dGggaXMgYWxzbyBwYXNzZWQuDQogICBUaGlzIChzb3J0IG9mKSBpbmNsdWRlcyBtZW1vcnkgYWxs
b2NhdGlvbiBmdW5jdGlvbnMuDQoyKSBQYXNzaW5nIGEgcGFyYW1ldGVyIGZvciBhIGNhbGxiYWNr
IGZ1bmN0aW9uLg0KICAgSW4gdGhpcyBjYXNlIHRoZSBwb2ludGVyIGlzIGFsd2F5cyBjYXN0IGJh
Y2sgdG8NCiAgIHRoZSBvcmlnaW5hbCB0eXBlIGJlZm9yZSBiZWluZyB1c2VkLg0KICAgDQpXaGF0
IGl0IHNob3VsZG4ndCBiZSB1c2VkIGZvciBpcyBzdHJ1Y3R1cmVzIHlvdSBkb24ndA0Kd2FudCBv
dGhlciBjb2RlIHRvIGxvb2sgaW5zaWRlIC0gdXNlIGluY29tcGxldGUgc3RydWN0cy4NCg0KCURh
dmlkDQoNCi0NClJlZ2lzdGVyZWQgQWRkcmVzcyBMYWtlc2lkZSwgQnJhbWxleSBSb2FkLCBNb3Vu
dCBGYXJtLCBNaWx0b24gS2V5bmVzLCBNSzEgMVBULCBVSw0KUmVnaXN0cmF0aW9uIE5vOiAxMzk3
Mzg2IChXYWxlcykNCg==

