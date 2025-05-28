Return-Path: <linux-man+bounces-3041-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0D7AC64F5
	for <lists+linux-man@lfdr.de>; Wed, 28 May 2025 10:59:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C4C21BA41BA
	for <lists+linux-man@lfdr.de>; Wed, 28 May 2025 08:59:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D39027466C;
	Wed, 28 May 2025 08:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bfs.de header.i=@bfs.de header.b="K8tAnrLx"
X-Original-To: linux-man@vger.kernel.org
Received: from mxdmz01-muc.bfs.de (mxdmz01-muc.bfs.de [193.174.230.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DC5274642
	for <linux-man@vger.kernel.org>; Wed, 28 May 2025 08:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.174.230.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748422729; cv=none; b=Owk7xcWicxDyxL4tMJNkDlTGLHO8yDgSWdh2CIn5Qvm1j5vcrVRaIXI34u5XsqXHNd61yywEMXDk7LSvgKsK/TJYQv230Z6/+OcOOiqptDMG+QJTCF9JHe9EyMqNzqshzuMpxQl9GMzNwdjoYWyPAVz67lY/qZXUFfUO2VGcCPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748422729; c=relaxed/simple;
	bh=hoZuvzKDrJ5UBG3spDG0WCDpG3RzlrnHDeTm3nftF80=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=fla9lPynqRbJHcM1CSOH7vxffdahCN7W2b4f/oGIbe3cAZwUGgJBW2wgAHSzFVjMLr3PdAfDiLQOx1tnVzVH8SUoc7T3Mbk+H3HHUdsEHufE7dNYpTl6fczOX2K33xlgPHr4PRFen8OM4e8z5AnBmnT4QkEJRNyJePY7N7VSWmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bfs.de; spf=pass smtp.mailfrom=bfs.de; dkim=pass (2048-bit key) header.d=bfs.de header.i=@bfs.de header.b=K8tAnrLx; arc=none smtp.client-ip=193.174.230.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bfs.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bfs.de
Received: from mxint01-muc.bfs.intern (unknown [127.0.0.1])
	by mxdmz01-muc.bfs.de (Postfix) with ESMTPS id 4A04D200B430;
	Wed, 28 May 2025 10:52:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
	t=1748422340;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hoZuvzKDrJ5UBG3spDG0WCDpG3RzlrnHDeTm3nftF80=;
	b=K8tAnrLx7U5yFROZupqrSmFgEYs5VqRPNwBAdlvT5W/8AuHq/2RLfMJ64eAMaK1uGKiT/N
	v+wTd8RJPGJcdhxeaUIyn9G2XCHSpHCwJmVzis1M7I3gMGlUYJa/RB2hP/dKnPLjZIcH5/
	aWH0QK4SHFc05gAw4cXE3HDwSSVPy4LEijkhrQB0ljuIAPA6QA/KIU/evEbzHZGiO6rm3n
	DeR6VulsVS7VpJce0ml0gegiyhd3xA8SUDx5cdLx8cKCvZP/n1CdJZmO8B499x7zCsUABO
	zXq3kOb4LpuLDzZrmWVL2dPaQCuMCbBB7ZWT88wV2UIoo8bs3xw5Llrji/oxgw==
Received: from SRVEX01-MUC.bfs.intern (SRVEX01-MUC.bfs.intern [127.0.0.1])
	by mxint01-muc.bfs.intern (Postfix) with ESMTP id 2B264300FCC3;
	Wed, 28 May 2025 10:52:20 +0200 (CEST)
Received: from SRVEX01-MUC.bfs.intern (127.0.0.1) by SRVEX01-MUC.bfs.intern
 (127.0.0.1) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.44; Wed, 28 May
 2025 10:52:19 +0200
Received: from SRVEX01-MUC.bfs.intern ([fe80::e8ba:5ab1:557f:4aad]) by
 SRVEX01-MUC.bfs.intern ([fe80::e8ba:5ab1:557f:4aad%12]) with mapi id
 15.01.2507.044; Wed, 28 May 2025 10:52:19 +0200
From: Walter Harms <wharms@bfs.de>
To: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
CC: "bugzilla-daemon@kernel.org" <bugzilla-daemon@kernel.org>
Subject: =?utf-8?B?QVc6IFtCdWcgMjIwMTE4XSBOZXc6IEzhuq1wIHThu6lj?=
Thread-Topic: =?utf-8?B?W0J1ZyAyMjAxMThdIE5ldzogTOG6rXAgdOG7qWM=?=
Thread-Index: AQHbxH6FY1D9oK97B0ujU/7JxOZclbPn0XzN
Date: Wed, 28 May 2025 08:52:19 +0000
Message-ID: <3b0a1af1121f498b816715bc4ce04170@bfs.de>
References: <bug-220118-11311@https.bugzilla.kernel.org/>
In-Reply-To: <bug-220118-11311@https.bugzilla.kernel.org/>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-tm-as-product-ver: SMEX-14.0.0.3223-9.1.2019-29034.000
x-tm-as-result: No-10--17.721400-5.000000
x-tmase-matchedrid: k7uoLACGqMp3vIGb4JF4peZcuYJz1PU5N0X64jGy2dbsEpKlvft9ql46
	L6SnZqziY3MDN7dau5mk1CfgTt7I41MKeNWyMSMEMjlC8fIChHORcfFQRqdB9gRoEWiGDTzixlW
	3ea1yJXNkjoGF0ycDAXeFlmQR+Fp/I6ZFPBi1wybhwa1Hi3GNN9jZrAgOUOa60v4fQQeGfNNvHx
	EYQHoyYbaXoRHBTOj6leskPQzMd9X/71evzLaAeScOunEIf0eXB/zLDQkZ8pXury5XauZ2NGNz3
	0pjQR3yo4NJa7SjFsqk1CZgtfxYqYP7TmCH/ohF28gAxP/Ts6IH2l80MvY9heUo4N9PjSkTA/3R
	8k/14e0=
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--17.721400-5.000000
x-tmase-version: SMEX-14.0.0.3223-9.1.2019-29034.000
x-tm-snts-smtp: 0671F21FDF80891C3D9E0B97612D78BB3A3A6CD007D4B95A66B70226030B45522000:9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

SGksDQppIHdhcyBjdXJpb3VzYWJvdXQgdGhhdCBidWcgYW5kIGdvdCBhbiBBY2Nlc3MgRGVuaWVk
IGp1c3QgcmVhZGluZyB0aGUgcGFnZS4NCklzIGlzIHBvc3NpYmxlIHRvIGdldCBpbmZvIHdpdGhv
dXQgaGF2aW5nIGEgbG9naW4gPw0KDQpmdWxsIG1zZyBoZXJlOg0KIllvdSBhcmUgbm90IGF1dGhv
cml6ZWQgdG8gYWNjZXNzIGJ1ZyAjMjIwMTE4LiBUbyBzZWUgdGhpcyBidWcsIHlvdSBtdXN0IGZp
cnN0IGxvZyBpbiB0byBhbiBhY2NvdW50IHdpdGggdGhlIGFwcHJvcHJpYXRlIHBlcm1pc3Npb25z
LiAiDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpWb246IGJ1Z3pp
bGxhLWRhZW1vbkBrZXJuZWwub3JnIDxidWd6aWxsYS1kYWVtb25Aa2VybmVsLm9yZz4NCkdlc2Vu
ZGV0OiBNaXR0d29jaCwgMTQuIE1haSAyMDI1IDA1OjE1OjU2DQpBbjogbGludXgtbWFuQHZnZXIu
a2VybmVsLm9yZw0KQmV0cmVmZjogW0J1ZyAyMjAxMThdIE5ldzogTOG6rXAgdOG7qWMNCg0KaHR0
cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMjAxMTgNCg0KICAgICAg
ICAgICAgQnVnIElEOiAyMjAxMTgNCiAgICAgICAgICAgU3VtbWFyeTogTOG6rXAgdOG7qWMNCiAg
ICAgICAgICAgUHJvZHVjdDogRG9jdW1lbnRhdGlvbg0KICAgICAgICAgICBWZXJzaW9uOiB1bnNw
ZWNpZmllZA0KICAgICAgICAgIEhhcmR3YXJlOiBJbnRlbA0KICAgICAgICAgICAgICAgIE9TOiBM
aW51eA0KICAgICAgICAgICAgU3RhdHVzOiBORVcNCiAgICAgICAgICBTZXZlcml0eTogbm9ybWFs
DQogICAgICAgICAgUHJpb3JpdHk6IFAzDQogICAgICAgICBDb21wb25lbnQ6IG1hbi1wYWdlcw0K
ICAgICAgICAgIEFzc2lnbmVlOiBkb2N1bWVudGF0aW9uX21hbi1wYWdlc0BrZXJuZWwtYnVncy5v
c2RsLm9yZw0KICAgICAgICAgIFJlcG9ydGVyOiB0cmFjcGhhbTIyMTBAZ21haWwuY29tDQogICAg
ICAgIFJlZ3Jlc3Npb246IE5vDQoNCkzhu5dpIGfDrCDEkcOzDQoNCi0tDQpZb3UgbWF5IHJlcGx5
IHRvIHRoaXMgZW1haWwgdG8gYWRkIGEgY29tbWVudC4NCg0KWW91IGFyZSByZWNlaXZpbmcgdGhp
cyBtYWlsIGJlY2F1c2U6DQpZb3UgYXJlIHdhdGNoaW5nIHRoZSBhc3NpZ25lZSBvZiB0aGUgYnVn
Lg0K

