Return-Path: <linux-man+bounces-3102-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2C4ACEB0D
	for <lists+linux-man@lfdr.de>; Thu,  5 Jun 2025 09:45:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88CE83A337C
	for <lists+linux-man@lfdr.de>; Thu,  5 Jun 2025 07:44:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EBFF1FECDD;
	Thu,  5 Jun 2025 07:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bfs.de header.i=@bfs.de header.b="X8Y3WiKK"
X-Original-To: linux-man@vger.kernel.org
Received: from mxdmz01-sz.bfs.de (mxdmz01-sz.bfs.de [194.94.69.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2662C1F3FEC
	for <linux-man@vger.kernel.org>; Thu,  5 Jun 2025 07:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.94.69.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749109510; cv=none; b=fBXJwgmj0VeLqCOY003uiNzu31WO84SM+hei1DVx0vLFBUnyETfD8p7IV7BC7mY/+oqlpDzi523OQ/p7WnzDzgUS/ksN4XEgrnhHuXL3iH2bbYXSaIZu5l3CfsHyTmC1f2mb32C7Sp0se2tJcmZ6XkSfCWuZxpekPvewO8xmN6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749109510; c=relaxed/simple;
	bh=0+e+oc9W0BKgPFUUlzDlHUwb5hcbTlKPzUc7WN+XD+4=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=ImD3caVaziPD8ggXM6W2MvyqqImwN9nU9746fTYbe66Nze4xBs6IxPUljgg1mHJySBgjyc1/75YpDtu3mreWFl0U3y8305qRGjvA4lrhgBrYeYGTrROmo3kpwGldKp2+a5czWtgwNFn9Q1atTkH1QPEFDi/uFKjNcRGhHgbqTW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bfs.de; spf=pass smtp.mailfrom=bfs.de; dkim=pass (2048-bit key) header.d=bfs.de header.i=@bfs.de header.b=X8Y3WiKK; arc=none smtp.client-ip=194.94.69.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bfs.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bfs.de
Received: from mxint01-sz.bfs.intern (unknown [127.0.0.1])
	by mxdmz01-sz.bfs.de (Postfix) with ESMTPS id 94BC2301AB8D;
	Thu,  5 Jun 2025 09:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
	t=1749109001;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0+e+oc9W0BKgPFUUlzDlHUwb5hcbTlKPzUc7WN+XD+4=;
	b=X8Y3WiKKXfIURfPdXnn/78fsJq0b0rcJvjRONlkLqPSyuDWqYlq/il+ISMBTrgTk/wELFK
	loApvpes4Rut3Rh6ax5sA+QCCVgOoJUvDJridPo2dJT/ovhAMSsYOo4OdAsustZ31k3M12
	2+1hxv+SvuFAer6+BmXfJ4qlkYvbyJ7OHMsYUuDYKIDOa5VsDpXYua+cgWEcRPyX++uu5I
	Jj/IfM6snJ7ob/ProW1fhLhuDei689ROZw+MtqJf5Z+6NwKItnL34I7o6CAHJph/63yvkP
	5Hy3jtryhv6yDq7zQk0d4QXdaEjwaMxvbFlAPPsWIJwusOVz3yLFaOo4k+ZpMg==
Received: from SRVEX01-MUC.bfs.intern (SRVEX01-MUC.bfs.intern [127.0.0.1])
	by mxint01-sz.bfs.intern (Postfix) with ESMTP id 6C8604E0;
	Thu,  5 Jun 2025 09:36:41 +0200 (CEST)
Received: from SRVEX01-MUC.bfs.intern (127.0.0.1) by SRVEX01-MUC.bfs.intern
 (127.0.0.1) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.44; Thu, 5 Jun
 2025 09:36:40 +0200
Received: from SRVEX01-MUC.bfs.intern ([fe80::e8ba:5ab1:557f:4aad]) by
 SRVEX01-MUC.bfs.intern ([fe80::e8ba:5ab1:557f:4aad%5]) with mapi id
 15.01.2507.044; Thu, 5 Jun 2025 09:36:40 +0200
From: Walter Harms <wharms@bfs.de>
To: Alejandro Colomar <alx@kernel.org>
CC: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
	"bugzilla-daemon@kernel.org" <bugzilla-daemon@kernel.org>
Subject: =?utf-8?B?QVc6IEFXOiBbQnVnIDIyMDExOF0gTmV3OiBM4bqtcCB04bupYw==?=
Thread-Topic: =?utf-8?B?QVc6IFtCdWcgMjIwMTE4XSBOZXc6IEzhuq1wIHThu6lj?=
Thread-Index: AQHbxH6FY1D9oK97B0ujU/7JxOZclbPn0XzN///xYICADIvQ6w==
Date: Thu, 5 Jun 2025 07:36:40 +0000
Message-ID: <0b18cb6e571d4ac28b8e38a1bf40db02@bfs.de>
References: <bug-220118-11311@https.bugzilla.kernel.org/>
 <3b0a1af1121f498b816715bc4ce04170@bfs.de>,<rry23vclpqpekjoffa2frotdoi7h6cftrb6mfgjiim53y2hido@qhgxipwqqbi4>
In-Reply-To: <rry23vclpqpekjoffa2frotdoi7h6cftrb6mfgjiim53y2hido@qhgxipwqqbi4>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-tm-as-product-ver: SMEX-14.0.0.3223-9.1.2019-29034.000
x-tm-as-result: No-10--27.496700-5.000000
x-tmase-matchedrid: TxbrEr7oi5x3vIGb4JF4peZcuYJz1PU5N0X64jGy2dZJTOxleK2tZkgQ
	yD+ZV6wvVofZbDmaDud67zysor31ptOripiBMzsKiu6u4shZ+fFqtDQ+5oGtJyvC8vN7zcoC360
	EGcl/med5TZfvNLlUwAsQ7uNy9ie55w73VsSL+gmxfhoVgAwhg5Fx8VBGp0H2BGgRaIYNPOI85K
	vkWauwrPUJdczim8NcROMHi8E06opukx1H7yIoSRZu3Ax5Ngq8PxJEhTV2jO3lbwjdfEVENAyC5
	7dFBdJHNqF+Cdsb8pgL5Jr9/pZodCHtIJ+FxVMI6x+Q+uPsJqqN2R96lFY2Pu/zB9NnNB1Z3q4O
	UNar8C8DmyMy7NxgFhIIN3MAx5f9TvOSXKE9MP0lDyqtIommxr/a0nd+hIFCwPd9fpjXfbAWefv
	Mt+drgg==
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--27.496700-5.000000
x-tmase-version: SMEX-14.0.0.3223-9.1.2019-29034.000
x-tm-snts-smtp: B921F21C158E79B29807B83343657DAD96328301D74F1D3442378CA59D1E0AC42000:9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

RXZlbiBpZiB0aGlzIGlzIHNwYW0sIHRoZSBtZXNzYWdlIGlzIGNvbmZ1c2luZy4gSXQgdGhhdCBj
YXNlIGl0IHNob3VsZCByZWFkICJyZW1vdmVkIiAiYmFubmVkIiBvciB5b3UgbmFtZSBpdC4NCg0K
TlRMIGkgdHJpZWQgYnVnIDIyMDExOSB3aXRoIHRoZSBzYW1lIHJlc3VsdC4NCg0KIEZvciBub3cg
aSB3b3VsZCBzYXkgaXQgaXMgbm90IHBvc3NpYmxlIHRvIHJlYWQgYSBidWcvbXNnIHdpdGhvdXQg
YSBsb2dpbi4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NClZvbjog
QWxlamFuZHJvIENvbG9tYXIgPGFseEBrZXJuZWwub3JnPg0KR2VzZW5kZXQ6IE1pdHR3b2NoLCAy
OC4gTWFpIDIwMjUgMTE6NTU6NDkNCkFuOiBXYWx0ZXIgSGFybXMNCkNjOiBsaW51eC1tYW5Admdl
ci5rZXJuZWwub3JnOyBidWd6aWxsYS1kYWVtb25Aa2VybmVsLm9yZw0KQmV0cmVmZjogUmU6IEFX
OiBbQnVnIDIyMDExOF0gTmV3OiBM4bqtcCB04bupYw0KDQpIaSBXYWx0ZXIsDQoNCk9uIFdlZCwg
TWF5IDI4LCAyMDI1IGF0IDA4OjUyOjE5QU0gKzAwMDAsIFdhbHRlciBIYXJtcyB3cm90ZToNCj4g
SGksDQo+IGkgd2FzIGN1cmlvdXNhYm91dCB0aGF0IGJ1ZyBhbmQgZ290IGFuIEFjY2VzcyBEZW5p
ZWQganVzdCByZWFkaW5nIHRoZSBwYWdlLg0KPiBJcyBpcyBwb3NzaWJsZSB0byBnZXQgaW5mbyB3
aXRob3V0IGhhdmluZyBhIGxvZ2luID8NCj4NCj4gZnVsbCBtc2cgaGVyZToNCj4gIllvdSBhcmUg
bm90IGF1dGhvcml6ZWQgdG8gYWNjZXNzIGJ1ZyAjMjIwMTE4LiBUbyBzZWUgdGhpcyBidWcsIHlv
dSBtdXN0IGZpcnN0IGxvZyBpbiB0byBhbiBhY2NvdW50IHdpdGggdGhlIGFwcHJvcHJpYXRlIHBl
cm1pc3Npb25zLiAiDQoNCkl0IHdhcyBzcGFtLCBzbyBJIGd1ZXNzIHRoZSBhZG1pbnMgbWFkZSBp
dCBoaWRkZW4uICBXaGVuIEkgbG9nIGluLCBJIHNlZQ0KDQogICAgICAgIFlvdSBhcmUgbm90IGF1
dGhvcml6ZWQgdG8gYWNjZXNzIGJ1ZyAjMjIwMTE4Lg0KDQoNCkhhdmUgYSBsb3ZlbHkgZGF5IQ0K
QWxleA0KDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVm9u
OiBidWd6aWxsYS1kYWVtb25Aa2VybmVsLm9yZyA8YnVnemlsbGEtZGFlbW9uQGtlcm5lbC5vcmc+
DQo+IEdlc2VuZGV0OiBNaXR0d29jaCwgMTQuIE1haSAyMDI1IDA1OjE1OjU2DQo+IEFuOiBsaW51
eC1tYW5Admdlci5rZXJuZWwub3JnDQo+IEJldHJlZmY6IFtCdWcgMjIwMTE4XSBOZXc6IEzhuq1w
IHThu6ljDQo+DQo+IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MjIwMTE4DQo+DQo+ICAgICAgICAgICAgIEJ1ZyBJRDogMjIwMTE4DQo+ICAgICAgICAgICAgU3Vt
bWFyeTogTOG6rXAgdOG7qWMNCj4gICAgICAgICAgICBQcm9kdWN0OiBEb2N1bWVudGF0aW9uDQo+
ICAgICAgICAgICAgVmVyc2lvbjogdW5zcGVjaWZpZWQNCj4gICAgICAgICAgIEhhcmR3YXJlOiBJ
bnRlbA0KPiAgICAgICAgICAgICAgICAgT1M6IExpbnV4DQo+ICAgICAgICAgICAgIFN0YXR1czog
TkVXDQo+ICAgICAgICAgICBTZXZlcml0eTogbm9ybWFsDQo+ICAgICAgICAgICBQcmlvcml0eTog
UDMNCj4gICAgICAgICAgQ29tcG9uZW50OiBtYW4tcGFnZXMNCj4gICAgICAgICAgIEFzc2lnbmVl
OiBkb2N1bWVudGF0aW9uX21hbi1wYWdlc0BrZXJuZWwtYnVncy5vc2RsLm9yZw0KPiAgICAgICAg
ICAgUmVwb3J0ZXI6IHRyYWNwaGFtMjIxMEBnbWFpbC5jb20NCj4gICAgICAgICBSZWdyZXNzaW9u
OiBObw0KPg0KPiBM4buXaSBnw6wgxJHDsw0KPg0KPiAtLQ0KPiBZb3UgbWF5IHJlcGx5IHRvIHRo
aXMgZW1haWwgdG8gYWRkIGEgY29tbWVudC4NCj4NCj4gWW91IGFyZSByZWNlaXZpbmcgdGhpcyBt
YWlsIGJlY2F1c2U6DQo+IFlvdSBhcmUgd2F0Y2hpbmcgdGhlIGFzc2lnbmVlIG9mIHRoZSBidWcu
DQoNCi0tDQo8aHR0cHM6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

