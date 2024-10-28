Return-Path: <linux-man+bounces-1803-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A375A9B2E51
	for <lists+linux-man@lfdr.de>; Mon, 28 Oct 2024 12:14:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D56C51C21141
	for <lists+linux-man@lfdr.de>; Mon, 28 Oct 2024 11:14:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 755C51D9A52;
	Mon, 28 Oct 2024 11:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bfs.de header.i=@bfs.de header.b="mkzQiqWx"
X-Original-To: linux-man@vger.kernel.org
Received: from mxdmz01-muc.bfs.de (mxdmz01-muc.bfs.de [193.174.230.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD221D6191;
	Mon, 28 Oct 2024 11:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.174.230.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730113459; cv=none; b=TiU59A0XVlUyXuEnt74AHaDivnFqIXF6NgKBqUaGEzFWLcAf+yNIr9X15pWJgbqUk93SXDipeFItc7J7i+P7rmQcJMdy7J5AjDjWM5lgziXKsjxGqNbm7xmffz/zXPmDKIPSrF/DPIWoFOBdpAWtrMu+d9BKcnJ1Erl4ObXiLFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730113459; c=relaxed/simple;
	bh=QmlUvMqA+sOKktJ9K/nU4F2jHihqNwUBY58epILBHuw=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=nHqeAUrHh0lrnVepkRCy7iBDTGFqXoRAYYkYh6ce8WRX1rKHG+teBGX2XSrJvCf4sNLnUTxkzJuAus8ljplJ2QDfljdfkfSgroHyaBgNEMUz+0cx/EPEmDfnqgcpX+3ZSsrdjDSurTUtCvOJnpRuoIMNQRrVV/+OBk3WfS6T9Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bfs.de; spf=pass smtp.mailfrom=bfs.de; dkim=pass (2048-bit key) header.d=bfs.de header.i=@bfs.de header.b=mkzQiqWx; arc=none smtp.client-ip=193.174.230.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bfs.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bfs.de
Received: from mxint01-sz.bfs.intern (unknown [10.175.16.17])
	by mxdmz01-muc.bfs.de (Postfix) with ESMTPS id 20A9E200B41E;
	Mon, 28 Oct 2024 11:58:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
	t=1730113088;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QmlUvMqA+sOKktJ9K/nU4F2jHihqNwUBY58epILBHuw=;
	b=mkzQiqWx88PkHYKkeuCB/EbxeQZFfygKOocRnEFinpgi15OpTOMg3HCaiYGOoJ20L8iH7y
	+HNRyfMk5M0boGzi0FiGYt5zJmakmHi4OZoUXF4I3Y8gWGOeVjy/Rzp8AOmS5UmQXldNnd
	HhUWWoM/yYbX6mjvnLDtcomuz/c/u+ZqGtG6v9suk21u0+rKAW/DSn0sCTKNuGpHGUUaLX
	rC7R4Kqb8vnk3WEH27saG5RADTud/RVaQd7UM7B83WKmRBexRGeqLElBPsBdKo0hqeRHbp
	FTuNuoeTYQ/Cm4+z9q2c/4kLzxj8AfvxY1l19FHOIRiHGrLg7dCtPC51iC06PQ==
Received: from SRVEX01-MUC.bfs.intern (SRVEX01-MUC.bfs.intern [10.161.90.31])
	by mxint01-sz.bfs.intern (Postfix) with ESMTP id E368A121E9;
	Mon, 28 Oct 2024 11:58:07 +0100 (CET)
Received: from SRVEX01-MUC.bfs.intern (10.161.90.31) by SRVEX01-MUC.bfs.intern
 (10.161.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.39; Mon, 28 Oct
 2024 11:58:07 +0100
Received: from SRVEX01-MUC.bfs.intern ([fe80::e8ba:5ab1:557f:4aad]) by
 SRVEX01-MUC.bfs.intern ([fe80::e8ba:5ab1:557f:4aad%5]) with mapi id
 15.01.2507.039; Mon, 28 Oct 2024 11:58:07 +0100
From: Walter Harms <wharms@bfs.de>
To: Alejandro Colomar <alx@kernel.org>
CC: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Subject: AW: Linux man-pages project maintenance
Thread-Topic: Linux man-pages project maintenance
Thread-Index: AQHbAF0LU22OOupWbUqeh2kqDP3GT7JPAh8AgE1MSS8=
Date: Mon, 28 Oct 2024 10:58:06 +0000
Message-ID: <9b278997317141558aff37afeaff153e@bfs.de>
References: <4d7tq6a7febsoru3wjium4ekttuw2ouocv6jstdkthnacmzr6x@f2zfbe5hs7h5>,<CACKs7VB_GEt_u463R4JvWveghBBscQeqaWtKrMmxNSQ2mn+-VA@mail.gmail.com>
In-Reply-To: <CACKs7VB_GEt_u463R4JvWveghBBscQeqaWtKrMmxNSQ2mn+-VA@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-tm-as-product-ver: SMEX-14.0.0.3197-9.1.2019-28758.007
x-tm-as-result: No-10--12.807400-5.000000
x-tmase-matchedrid: zwpC2WOSP9V3vIGb4JF4peZcuYJz1PU5N0X64jGy2dZJTOxleK2tZvTh
	5ZG51qRLtxo6Bb+iP2/IuNKfYHvw6VkLLUsH7hZSwrtF+y9i1an6hXFsBGSLz4cBR6etkh29rcF
	NuDgWZ83ACjBe8fI4NQ9HVZG0CfkMzPvigSWE1EEhPK2mn+OsTGnTqal/GlimMNBqjpGQEyCFlr
	BwBrGB/sb6oVhOl7WulD0yNK/lHn+FUp9a5vCd5DSI4WraM54/ZrTG9WaiuOD1cpbEcVEOoLfaM
	gQ7+FGaRH8WZZlSEHxX099pNHuCkqY9Pv8gh/n0ju2XlcEx9HRV0rSepB3ZeNshC9xp7YwHr54J
	Ix46I6T3t3pfLmJRU9vIAMT/07OiB73xunbyKrq0QRlrBF3eZY7k0IXv+jygF7gkeTtWM1OsBCV
	XXb1XzwZCcOD0tvCT7oAAJpC+qWE=
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--12.807400-5.000000
x-tmase-version: SMEX-14.0.0.3197-9.1.2019-28758.007
x-tm-snts-smtp: 4FAC0822D45D150C43447CF595E1615B7326BED2DEFE659E58EF041E7E362BE32000:9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

SGVsbG8gQWxleCwNCg0KMS4gdGh4IGZvciBhbGxsIHlvdXIgd29yaw0KMi4gaSBjYW4gZnVsbCB1
bmRlcnN0YW5kLCBpIGFsc28gaGFkIHRvIHJlZHVjZSB0aGUgdGltZSBpIHNwZW5kIHdpdGggc2V2
ZXJhbCBPUyBwcm9qZWN0cw0KMy4gaXMgdGhlcmUgYSBwbGFuIGhvdyB0byBnbyBmb3J3YXJkIChi
ZXNpZGUgYSB3aGl0ZSBrbmlnaHQpID8NCg0KQ1UNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18NClZvbjogU3RlZmFuIFB1aXUgPHN0ZWZhbi5wdWl1QGdtYWlsLmNvbT4N
Ckdlc2VuZGV0OiBNb250YWcsIDkuIFNlcHRlbWJlciAyMDI0IDEwOjI4DQpBbjogQWxlamFuZHJv
IENvbG9tYXINCkNjOiBsaW51eC1tYW5Admdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdl
ci5rZXJuZWwub3JnOyBsaWJjLWFscGhhQHNvdXJjZXdhcmUub3JnDQpCZXRyZWZmOiBSZTogTGlu
dXggbWFuLXBhZ2VzIHByb2plY3QgbWFpbnRlbmFuY2UNCg0KSGkgQWxleCwNCg0KT24gRnJpLCBT
ZXAgNiwgMjAyNCBhdCA0OjA24oCvUE0gQWxlamFuZHJvIENvbG9tYXIgPGFseEBrZXJuZWwub3Jn
PiB3cm90ZToNCj4NCj4gSGkgYWxsLA0KPg0KPiBBcyB5b3Uga25vdywgSSd2ZSBiZWVuIG1haW50
YWluaW5nIHRoZSBMaW51eCBtYW4tcGFnZXMgcHJvamVjdCBmb3IgdGhlDQo+IGxhc3QgNCB5ZWFy
cyBhcyBhIHZvbHVudGFyeS4gIEkndmUgYmVlbiBkb2luZyBpdCBpbiBteSBmcmVlIHRpbWUsIGFu
ZCBubw0KPiBjb21wYW55IGhhcyBzcG9uc29yZWQgdGhhdCB3b3JrIGF0IGFsbC4gIEF0IHRoZSBt
b21lbnQsIEkgY2Fubm90IHN1c3RhaW4NCj4gdGhpcyB3b3JrIGVjb25vbWljYWxseSBhbnkgbW9y
ZSwgYW5kIHdpbGwgdGVtcG9yYXJpbHkgYW5kIGluZGVmaW5pdGVseQ0KPiBzdG9wIHdvcmtpbmcg
b24gdGhpcyBwcm9qZWN0LiAgSWYgYW55IGNvbXBhbnkgaGFzIGludGVyZXN0cyBpbiB0aGUNCj4g
ZnV0dXJlIG9mIHRoZSBwcm9qZWN0LCBJJ2Qgd2VsY29tZSBhbiBvZmZlciB0byBzcG9uc29yIG15
IHdvcmsgaGVyZTsgaWYNCj4gc28sIHBsZWFzZSBsZXQgbWUga25vdy4NCg0KVGhhbmtzIGZvciBh
bGwgdGhlIHdvcmsgeW91IHB1dCBpbi4gSXQncyB0cnVlLCBvZnRlbnRpbWVzIGluIHRoZSBMaW51
eA0Kd29ybGQgZG9jdW1lbnRhdGlvbiBkb2VzIG5vdCBnZXQgdGhlIGF0dGVudGlvbiBpdCBkZXNl
cnZlcywgc28ga3Vkb3MNCnRvIHlvdSAoYW5kIE1pY2hhZWwgYmVmb3JlIHlvdSkgZm9yIHRha2lu
ZyB1cCB0aGlzIHVuZGVyYXBwcmVjaWF0ZWQNCnRhc2shDQoNClN0ZWZhbi4NCg0KPg0KPiBIYXZl
IGEgbG92ZWx5IGRheSENCj4gQWxleA0KPg0KPiAtLQ0KPiA8aHR0cHM6Ly93d3cuYWxlamFuZHJv
LWNvbG9tYXIuZXMvPg0KDQo=

