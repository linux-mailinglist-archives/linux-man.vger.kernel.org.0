Return-Path: <linux-man+bounces-3280-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F225FB0A434
	for <lists+linux-man@lfdr.de>; Fri, 18 Jul 2025 14:27:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE8983BCB79
	for <lists+linux-man@lfdr.de>; Fri, 18 Jul 2025 12:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E60B29B78E;
	Fri, 18 Jul 2025 12:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bfs.de header.i=@bfs.de header.b="1tetzkV4"
X-Original-To: linux-man@vger.kernel.org
Received: from mxdmz01-sz.bfs.de (mxdmz01-sz.bfs.de [194.94.69.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 710D1EEBB
	for <linux-man@vger.kernel.org>; Fri, 18 Jul 2025 12:27:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.94.69.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752841672; cv=none; b=RMR1yBmaYOYG3vgtq30JW+FSqgkwoaUXrQ2myEIZfufERR7l20dif2oay+aOODGNPwYcC6Ai9iD+qISWE0fESTue9HMUVfZ7eV6yS0nlqF9ozg42KrcZ429LxZS5hjGOTcrtaVANkHt71l6HWCntUCcNoLG90xlWvOoHGGKKjfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752841672; c=relaxed/simple;
	bh=1et9Iuk2ByQTr7gBNp3wqFwZpCoJ6AEKAKK+R+conPM=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=HxzW7z0TTIDSKoIz81B914i0mH/9asbIkG/ySTxTmoVjDcuCXphMkDE77ev9LPvDiRYgcyuTe4R4XskF9ybQI3PNDozqDV8GHEa/uISVrFlDcvfiNv0VEygUV67xCCgOyl/Cbzc27lDbXcl0ELZl0YBZVVPcxL/iMtSbUlVahIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bfs.de; spf=pass smtp.mailfrom=bfs.de; dkim=pass (2048-bit key) header.d=bfs.de header.i=@bfs.de header.b=1tetzkV4; arc=none smtp.client-ip=194.94.69.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bfs.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bfs.de
Received: from mxint01-sz.bfs.intern (unknown [127.0.0.1])
	by mxdmz01-sz.bfs.de (Postfix) with ESMTPS id C23373010636;
	Fri, 18 Jul 2025 14:18:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
	t=1752841109;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1et9Iuk2ByQTr7gBNp3wqFwZpCoJ6AEKAKK+R+conPM=;
	b=1tetzkV4zMCVHT1Cgmx/YR1NulXQ1w+QiSQ9wSQTHI5qexYmsCF48NpQLclMO3xOyUsCFx
	F2gZAVF2X71fZhRdonD+04wJpr4HwvPF9j8PTGrU5pgA2ds7xDaSNMFChE09y3debtsZ1u
	OQmagiZuMTKmudmYAGD80qX1wd/Xqk+wVwcz7BufktW7cySoex89s3Xs7VNoTwWcfh+lTZ
	sbPmAlmtC02iiX6S8eo6Uuqcx4rbr9e/u4gcugl1dP9z2VoVia7AldusXpJ7kHUzwTZaoK
	2tTuS13xV6OI7FMCGhGtduczKuHNCizOgfMNZ5Cev4wvDifcgaguclX5wg0TMw==
Received: from SRVEX01-MUC.bfs.intern (SRVEX01-MUC.bfs.intern [127.0.0.1])
	by mxint01-sz.bfs.intern (Postfix) with ESMTP id 8C2E55E0;
	Fri, 18 Jul 2025 14:18:29 +0200 (CEST)
Received: from SRVEX01-MUC.bfs.intern (127.0.0.1) by SRVEX01-MUC.bfs.intern
 (127.0.0.1) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.44; Fri, 18 Jul
 2025 14:18:28 +0200
Received: from SRVEX01-MUC.bfs.intern ([fe80::e8ba:5ab1:557f:4aad]) by
 SRVEX01-MUC.bfs.intern ([fe80::e8ba:5ab1:557f:4aad%5]) with mapi id
 15.01.2507.044; Fri, 18 Jul 2025 14:18:28 +0200
From: Walter Harms <wharms@bfs.de>
To: Carlos O'Donell <carlos@redhat.com>, Eugene Syromyatnikov
	<evgsyr@gmail.com>
CC: enh <enh@google.com>, Alejandro Colomar <alx@kernel.org>, linux-man
	<linux-man@vger.kernel.org>
Subject: AW: drop ia64 from man pages?
Thread-Topic: drop ia64 from man pages?
Thread-Index: AQHb9m2uSmcNqZSRz0+6b5WSH0e53bQ0zmGAgAABAwCAABSJAIABGTIAgAAdBQCAAbJekQ==
Date: Fri, 18 Jul 2025 12:18:28 +0000
Message-ID: <8d01afa4fa094d0a9cd0d2d74e5c7325@bfs.de>
References: <CAJgzZor3iAMrE8y1gz0C5_v87qfYfZiLjm2xi-1qUscm8pT+TA@mail.gmail.com>
 <qg66hasjtm5tkk6dfp4em4fhx6wo567224l5egnfyvmb4ddp45@pgxwr2muteby>
 <CAJgzZoq91VceHKZWetjzr5gOQ=Sx=ReCFfY2erPo7_Dxra9=xA@mail.gmail.com>
 <d27ee305-708f-4733-b8ea-b9e5bac84087@redhat.com>
 <CACGkJdtNPkL3+nJmCNStv1mnDGERvzwfL0RH8xH6ocK_Jp90YQ@mail.gmail.com>,<1d5c8ce8-9ba0-4e3b-9866-95047741d5d2@redhat.com>
In-Reply-To: <1d5c8ce8-9ba0-4e3b-9866-95047741d5d2@redhat.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-tm-as-product-ver: SMEX-14.0.0.3223-9.1.2019-29034.000
x-tm-as-result: No-10--15.992400-5.000000
x-tmase-matchedrid: evCdRBh6a6B3vIGb4JF4peZcuYJz1PU5N0X64jGy2dZJTOxleK2tZjux
	dTwyRZ+zCwLE6VTwVOiytx0agEyi9xmX8wb2w/ULPIAEWj78ztZvJQwByUH6OMYkWeCEzaSp+lM
	UwG9Lqh7tn1kdBrv4E2/eDcdtNcbDGULBKrff8oNLviwaHYb1sTF4fM9R42mFQJvKrIufX42udC
	Mien0zg0560rh5NrKvO+OcXxJspJJuxPSQFk2uZSfehGUGyyNc10/soz7yB7FJFPBcgYmFIhgvD
	LMzLQnuVDy+2uzEe1P3pQxiJzKYa71xUBORK5qJCffN9El9NwN5LJbJd7M8bWFHYdhaPYOmLspf
	owzwlwFWn3PEtuC6CWqkXCvqPuSPc/bpgmbGM1zhYxxtCpHk4YxV70IDEa3lKrMWbVcJFOIFDeZ
	Cl3dhQeBLJM9hX4HJd8OfvDrBCRs/czpGG3mVieXp5Ieya85+WEAVr2HIu3b9LmF0wmtgQCOr4S
	UURpXyJiDNtEAd7zzxyBV9fUuyMKAZd7dxqRUXBgHUAUS9QRcERLRm4RqgYAA/vdvUA5FhDGKSo
	ZRHRbC1LZ4vUbRowlpi+DqJGI1BzH2pZUFRF5VsBBK+dj8Axe4HeUqhyIYyZRfocxpqKbgXBVXt
	60VSv9JgbuxFiJFeQM6R0vXgIeXwKwep2yrWF9D6xLvX4M4IEA4s0Z67fd2/2tJ3foSBQtCgcFa
	yVUiIB73xunbyKrrlXdnkMuZ1VmKHBk9EM5sF+WO+duj8Gsq9WoU2rEOL48WfpGIyX3ReAxOdL/
	KF50w=
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--15.992400-5.000000
x-tmase-version: SMEX-14.0.0.3223-9.1.2019-29034.000
x-tm-snts-smtp: EBF2B6C2859CFABEA00A4F96B99EBCC9F9E8F7FA7FFB398CFD9485250DAE35862000:9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

PldoYXQgbWFrZXMgYSB2YWxpZCB2YXJpYW50IHRob3VnaD8NCj5UaGVyZSBpcyBubyB1cHN0cmVh
bSBzdXBwb3J0ZWQgZ2xpYmMgb2xkZXIgdGhhbiAyLjMyLg0KPlRoZXJlIGlzIG5vIHVwc3RyZWFt
IHN1cHBvcnRlZCBMaW51eCBvbGRlciB0aGFuIDUuNCAoTFRTKS4NCg0KTWF5YmUsIGkgYW0gdXNp
bmcgYSBMT1Qgb2YgZW1iZWRkZWQgU3lzdGVtcyBhbmQgdGhleSBhcmUgdXNpbmcgc29tZXRpbWVz
DQpyZWFsbHkgb2xkIHN0dWZmLiBTbyBzb21ldGltZXMgaSBhbSB0aGFua2Z1bGwgZm9yIGluZm9y
bWF0aW9uIGFib3V0IG9sZGVyIHZhcmlhbnRzLg0KDQpyZW1pbmRlcjogbWFuIHBhZ2VzIGFyZSBu
b3QgZm9yIHNlcnZlciBzdHVmZiBvbmx5Lg0KU2FtZSBnb2VzIGZvciBvbGRlciBwcm9ncmFtbXMs
IHlvdSBjYW4gb25seSB1bmRlcnN0YW5kIHdoZW4geW91IGhhdmUgdGhlIG9sZCBkb2N1bWVudGF0
aW9uLg0KDQpTbyBhcyBsb25nIGFzIElBNjQgaXMgaW4gdXNlLCB0aGVyZSBpcyBhIGNoYW5jZSBz
b21lIG5lZWQgdGhhdCBpbmZvLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQpWb246IENhcmxvcyBPJ0RvbmVsbCA8Y2FybG9zQHJlZGhhdC5jb20+DQpHZXNlbmRl
dDogRG9ubmVyc3RhZywgMTcuIEp1bGkgMjAyNSAxNDoxMzo1NA0KQW46IEV1Z2VuZSBTeXJvbXlh
dG5pa292DQpDYzogZW5oOyBBbGVqYW5kcm8gQ29sb21hcjsgbGludXgtbWFuDQpCZXRyZWZmOiBS
ZTogZHJvcCBpYTY0IGZyb20gbWFuIHBhZ2VzPw0KDQpPbiA3LzE3LzI1IDY6MzAgQU0sIEV1Z2Vu
ZSBTeXJvbXlhdG5pa292IHdyb3RlOg0KPiBPbiBXZWQsIEp1bCAxNiwgMjAyNSBhdCA3OjQz4oCv
UE0gQ2FybG9zIE8nRG9uZWxsIDxjYXJsb3NAcmVkaGF0LmNvbT4gd3JvdGU6DQo+Pg0KPj4gT24g
Ny8xNi8yNSAxMjozMCBQTSwgZW5oIHdyb3RlOg0KPj4+IGkgZGlkbid0IGxvb2sgYXQgdGhlIG90
aGVyIHBhZ2VzLCBidXQgcXVpdGUgYSBsb3Qgb24gdGhlIGNsb25lKDIpIHBhZ2UNCj4+PiBpcyBh
Y3R1YWxseSBhYm91dCB3aGF0IGdsaWJjIGRvZXMgLi4uIGJ1dCBnbGliYyBhbHJlYWR5IHJlbW92
ZWQgYWxsDQo+Pj4gdGhpcyBzdHVmZi4gc28gaXQgc2hvdWxkIHByb2JhYmx5IG5vdCBiZSBtb3Jl
IHRoYW4gd2hhdCB3ZSBoYXZlIGZvciwNCj4+PiBzYXksIG02OGsgd2hpY2ggaXMganVzdCAicmVh
ZCB5b3VyIGtlcm5lbC9saWJjIHNvdXJjZSBmb3IgbW9yZSI/DQo+Pj4NCj4+PiBhIGNvcm9sbGFy
eSB0byAibXVzZXVtIGhhcmR3YXJlIHNob3VsZCBydW4gbXVzZXVtIHNvZnR3YXJlIiBtaWdodCBi
ZQ0KPj4+ICIuLi5hbmQgdXNlIG11c2V1bSBkb2N1bWVudGF0aW9uIiA6LSkNCj4+DQo+PiBBZ3Jl
ZWQuDQo+Pg0KPj4gVGhlcmUgaXMgYSBiYWxhbmNlIGhlcmUgYmV0d2VlbiBkb2N1bWVudGF0aW9u
IHRoYXQgY292ZXJzIGEgcmVhc29uYWJsZQ0KPj4gbnVtYmVyIG9mIHVzZSBjYXNlcywgZG9jdW1l
bnRhdGlvbiB0aGF0IGlzIGVhc3kgdG8gbWFpbnRhaW4sIGFuZA0KPj4gZG9jdW1lbnRhdGlvbiB0
aGF0IGlzIGVhc3kgdG8gcmVhZCAod2l0aG91dCBzdXBlcmZsdW91cyBpbmZvcm1hdGlvbiwNCj4+
IGVpdGhlciB0b28gbmV3IG9yIHRvbyBvbGQpLg0KPj4NCj4+IEl0IGhhcyBiZWVuIGFib3V0IDEu
NSB5ZWFycyBzaW5jZSBJQTY0IHN0YXJ0ZWQgYmVpbmcgZHJvcHBlZCwgYW5kIEkNCj4+IGRvbid0
IHNlZSBhbnkgcmVhc29uIHRvIGtlZXAgdmVyeSBzcGVjaWZpYyBkb2N1bWVudGF0aW9uIGFib3V0
IGl0DQo+PiBhcm91bmQgZXhjZXB0IGFzIHNtYWxsZXIgaW50ZXJlc3RpbmcgaGlzdG9yaWNhbCBu
b3Rlcy4NCj4NCj4gRGVwZW5kcyBvbiB3aGV0aGVyIG1hbiBwYWdlcyBsaW1pdCB0aGVtc2VsdmVz
IHRvIHJlZmxlY3Rpbmcgb25seSB0aGUNCj4gImN1cnJlbnQiIHZlcnNpb24gKHdoYXRldmVyIHRo
aXMgaXMsIGFzIG1hbi1wYWdlcyBpcyBub3QgcGFydCBvZg0KPiBlaXRoZXIgbGludXggb3IgZ2xp
YmMgc291cmNlIHRyZWUpLCBvciBzdHJpdmUgdG8gcHJvdmlkZSBhY3R1YWwgdXNlZnVsDQo+IHJl
ZmVyZW5jZSBmb3IgdXNlcnMgb2Ygc3lzdGVtcyB0aGF0IG1heSBoYXZlIGRpZmZlcmVudCB2YXJp
YW50cyBhbmQNCj4gdmVyc2lvbnMgb2YgdGhlIGtlcm5lbCBhbmQgbGliYy4gIElmIGl0IGlzIHRo
ZSBsYXR0ZXIsIG91dHJpZ2h0DQo+IHJlbW92YWwgKGluc3RlYWQgb2Yga2VlcGluZyBhbGwgdGhl
IHBlcnRpbmVudCBpbmZvcm1hdGlvbiBpbiB0aGUNCj4gaGlzdG9yeSBzZWN0aW9uKSBpcyBwcmV0
dHkgc2hvcnQtc2lnaHRlZC4NCg0KKDEpIENvLWV2b2x1dGlvbi4NCg0KVGhlIExpbnV4IG1hbi1w
YWdlcyBwcm9qZWN0LCBhbmQgbW9zdCBwcm9qZWN0cywgY28tZXZvbHZlIHdpdGggdGhlDQplY29z
eXN0ZW0uDQoNCkF0IGFueSBwb2ludCBpbiB0aW1lIHlvdSBjYW4gdGFrZSB0aGUgbW9zdCBwZXJ0
aW5lbnQgcmVsZWFzZSBvZiBhDQpwcm9qZWN0IGFuZCB1c2UgdGhhdC4gVkNTIGhpc3RvcnkgaXMg
YXZhaWxhYmxlIHRvIGV2ZXJ5b25lLg0KDQpUaGlzIGlzIGhvdyBkb3duc3RyZWFtIGRpc3RyaWJ1
dGlvbnMgaGF2ZSBiZWVuIGV2b2x2aW5nIGFuZCBzZXJ2aW5nDQp1c2Vycy4NCg0KKDIpIEEgbG9v
c2UgbWF0cml4IG9mICJzdXBwb3J0ZWQiIChub3QgImN1cnJlbnQiKQ0KDQpUaGUgcHJvamVjdCwg
YXMgSSBzZWUgaXQsIGhhcyBiZWVuIHByb3ZpZGluZyB1c2VmdWwgaW5mb3JtYXRpb24gZm9yIGEN
Cmxvb3NlIG1hdHJpeCBvZiBzdXBwb3J0ZWQga2VybmVscywgc3VwcG9ydGVkIEMgbGlicmFyaWVz
IChnbGliYywgbXVzbCwNCmJpb25pYyksIGFuZCBzdXBwb3J0ZWQgaW50ZXJuYXRpb25hbCBzdGFu
ZGFyZHMgZS5nLiBJU08gQywgUE9TSVggZXRjLg0KYWxvbmcgd2l0aCBvdGhlciBBUElzIGZyb20g
QlNEIGV0Yy4NCg0KKDMpIFdoYXQgaXMgYSB2YWxpZCB2YXJpYW50Pw0KDQpPbmNlIHNvbWV0aGlu
ZyBpcyBkZXByZWNhdGVkIG15IG9waW5pb24gaXMgdGhhdCB3ZSBoYXZlIGEgZHV0eSB0bw0Kb3Vy
IHVzZXJzIHRvIGF0dGVtcHQgdG8gY2xlYW51cCB0aGUgbWF0ZXJpYWwgYW5kIG1ha2UgaXQgZWFz
aWVyIHRvDQpjb25zdW1lIHdpdGggbGVzcyByZWxldmFudCBpbmZvcm1hdGlvbiBtb3ZlZCBhd2F5
IGZyb20gbWFpbiBzZWN0aW9ucw0Kb3IgcGFnZXMuDQoNCkF0IHRoaXMgcG9pbnQgaW4gdGltZSBJ
J2Qgc2F5IElBNjQgaXMgZGVwcmVjYXRlZCBpbiB0aGUgY3VycmVudA0KcmVsZWFzZXMgb2YgZ2xp
YmMgYW5kIGxpbnV4IGFuZCBzbyBtb3ZpbmcgdGhlIHJlbGF0ZWQgaW5mb3JtYXRpb24sDQpvciBj
bGVhbmluZyBpdCB1cCBzZWVtcyBhcHByb3ByaWF0ZS4gSG93IG11Y2ggb2YgdGhhdCB0byBkbyBJ
IGxlYXZlDQp1cCB0byBBbGVqYW5kcm8gYXMgZWRpdG9yIChvciBjb250cmlidXRvcnMgdG8gd29y
ayBvdXQpLg0KDQpXaGF0IG1ha2VzIGEgdmFsaWQgdmFyaWFudCB0aG91Z2g/DQoNClRoZXJlIGlz
IG5vIHVwc3RyZWFtIHN1cHBvcnRlZCBnbGliYyBvbGRlciB0aGFuIDIuMzIuDQoNClRoZXJlIGlz
IG5vIHVwc3RyZWFtIHN1cHBvcnRlZCBMaW51eCBvbGRlciB0aGFuIDUuNCAoTFRTKS4NCg0KU28g
YmV0d2VlbiB0aGUgdHdvLCB0aGVyZSBpcyBzdGlsbCBJQTY0IHN1cHBvcnQgcHJlc2VudC4NCg0K
U3VwcG9ydGVkIChhbGwgdXBzdHJlYW0gcHJvamVjdHMgc3VwcG9ydCBpdCkNCiAgLT4gRGVwcmVj
YXRlZCAoY3VycmVudCBwcm9qZWN0IHJlbGVhc2VzIGhhdmUgcmVtb3ZlZCBzdXBwb3J0KQ0KICAg
ICAtPiBFbmQgb2YgbGlmZSAobm8gYWN0aXZlbHkgbWFpbnRhaW5lZCBwcm9qZWN0IHN1cHBvcnQg
aXQpDQoNCkkgdGhpbmsgd2Ugc2hvdWxkIGNsZWFudXAgYW5kIG1vdmUgY29udGVudCBhdCB0aGUg
ImRlcHJlY2F0ZWQiDQpwaGFzZSwgd2hpY2ggaXMgd2hlcmUgd2UgZmluZCBJQTY0IHRvZGF5LCBh
bmQgd2hlbiB3ZSBnZXQgdG8NCkVPTCwgd2Ugc2hvdWxkIGJlIHJlbW92aW5nIGFsbCB0aGUgY29u
dGVudCByZWxhdGVkIHRvIGl0IGV4Y2VwdA0KZm9yIGhpc3RvcmljYWwgcmVmZXJlbmNlcyB0aGF0
IHNlcnZlIGFuIGVkdWNhdGlvbmFsIG9yDQplbHVjaWRhdGluZyBwdXJwb3NlLg0KDQotLQ0KQ2hl
ZXJzLA0KQ2FybG9zLg0KDQoNCg==

