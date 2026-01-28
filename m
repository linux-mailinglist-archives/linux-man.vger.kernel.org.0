Return-Path: <linux-man+bounces-4971-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEgKE1WUeWmOxgEAu9opvQ
	(envelope-from <linux-man+bounces-4971-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 05:45:09 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D2F9D111
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 05:45:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 85695300A509
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 04:45:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFE4119E99F;
	Wed, 28 Jan 2026 04:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="DpcZNY+1"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-10629.protonmail.ch (mail-10629.protonmail.ch [79.135.106.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A5E3203AB
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 04:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.29
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769575506; cv=none; b=MNoNqWYQMBjyS51Z/g5d9OjFoPGCP6P5ecDCFF/1hdJoFkXz670NZJVLVaiHOm4JdfgEui7rEONY2sx886t/pnfcRE/XUn3heZEmGSM48EDEeuf2Y5QKGOA41fg9m7tUxNCWNLSJd2nSZxKeMcCm7507YvjxIfmBCM1eEiKAqcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769575506; c=relaxed/simple;
	bh=O/lmULqKsY2r4CBK9cCWyGyJIdxfqx+eMnhgG+/BnOw=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=a5lv/Tj2JcetO9EPhQ1Ddp3bu4txWBk4ZrJn9jhdzPQhxZLQuXVJRHzkM9/PF79pbZRR4vKHLW90BnUxXvkdIN7xWWHF08XZGcRXdPSocLUactDhJZdGtpCG2ay4K3gdv0pM1xMI5SMik6fWfJpDdeocHQQZ0ZCiacRO6D48Ohs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=DpcZNY+1; arc=none smtp.client-ip=79.135.106.29
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769575496; x=1769834696;
	bh=VnK3nMKfAq3p43phAaVT05yt/vubS3nNVJbSdyyQfa8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=DpcZNY+1F1KklEkbuK1t7uZoAsbymqal8VcjKIOgew/E1IBOQNSepJt3zOFA3zqAx
	 HFH20RBBdbz9kZ2y7qoNsqmGb9zNHQ2l+VaiaQoI8HHwwVn3nzCyjYpizLyogCNtiC
	 WDQswZUa5EjC6/SqUcFdozED2LO5oYgXdOHd66pVdpVW+AD5kZ0xEU7Lpc2evfvL1+
	 tJIbktwtiXQW9DLTk1KnbaPfEPormoK3jA8XyZoKABOT5HwDZBTMehSLoInBIAbMWJ
	 Ji3JT2xlPU3apADXBt6nRyNhNUh4wxSrEvJ2HrAZYq5yutrKC4eK1+k682dJN+6uDT
	 3sJW0F9onhRlQ==
Date: Wed, 28 Jan 2026 04:44:53 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org, Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, "G. Branden Robinson" <branden@debian.org>, =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [RFC PATCH v1 0/2] New sman(1) script
Message-ID: <aXmUPal6Owzv8eDr@McDaDebianPC>
In-Reply-To: <aXixqbsZcY-tbCJ4@devuan>
References: <cover.1769497513.git.sethmcmail@pm.me> <aXixqbsZcY-tbCJ4@devuan>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: b92be6abf5df0e753a41a7a41bb3938f4b54b089
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------2364b68bc344882ea7c07e68a8db1993fdc7a2b8841265cd88d9970399861b3f"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.66 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-4971-lists,linux-man=lfdr.de];
	DKIM_TRACE(0.00)[pm.me:+];
	RCPT_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sethmcmail@pm.me,linux-man@vger.kernel.org];
	HAS_ATTACHMENT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,pm.me:dkim]
X-Rspamd-Queue-Id: A0D2F9D111
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------2364b68bc344882ea7c07e68a8db1993fdc7a2b8841265cd88d9970399861b3f
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Date: Wed, 28 Jan 2026 14:44:45 +1000
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
	"G. Branden Robinson" <branden@debian.org>,
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [RFC PATCH v1 0/2] New sman(1) script
Message-ID: <aXmUPal6Owzv8eDr@McDaDebianPC>
Mail-Followup-To: Seth McDonald <sethmcmail@pm.me>,
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
	"G. Branden Robinson" <branden@debian.org>,
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <2wYrV1iQnQBEn4vYwqATUSBCrhsaKa7oJMqda_IsoN0UiNTruIJvoqW3pPcElGQV6ykVfME0tvkXSr8DMhcLqA==@protonmail.internalid>
 <aXixqbsZcY-tbCJ4@devuan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aXixqbsZcY-tbCJ4@devuan>
User-Agent: Mutt/2.2.13 (2024-03-09)

SGkgQWxleCwNCg0KT24gVHVlLCAyNyBKYW4gMjAyNiBhdCAxNDo0Nzo0MCArMDEwMCwgQWxlamFu
ZHJvIENvbG9tYXIgd3JvdGU6DQo+IFtDQyArPSBEb3VnLCBCcmFuZGVuLCDQvdCw0LFdDQo+IA0K
PiBIaSBTZXRoIQ0KPiANCj4gT24gMjAyNi0wMS0yN1QwOToyMDoyNiswMDAwLCBTZXRoIE1jRG9u
YWxkIHdyb3RlOg0KPiA+IEcnZGF5LA0KPiA+IA0KPiA+IFdoZW4gcGFyc2luZyBtYW4gcGFnZXMs
IEkndmUgbm90aWNlZCBJJ20gb2Z0ZW4gb25seSBpbnRlcmVzdGVkIGluIGENCj4gPiBwYXJ0aWN1
bGFyIHNldCBvZiBzZWN0aW9ucyB3aXRoaW4gdGhlIHBhZ2UgKGUuZy4gU1lOT1BTSVMsIEhJU1RP
UlkpLg0KPiA+IEFuZCBzaW5jZSBza2ltbWluZyB0aHJvdWdoIHRoZSBwYWdlIHRvIGdldCB0byB0
aGVzZSBzZWN0aW9ucyBjYW4gZ2V0DQo+ID4gbW9ub3Rvbm91cywgSSB3cm90ZSB1cCBhIHNtYWxs
IGJhc2ggc2NyaXB0IHRvIGF1dG9tYXRlIHRoZSBwcm9jZXNzLg0KPiANCj4gQWdyZWUuICBJIHdy
b3RlIG1hbnNlY3QoMSkgZm9yIHRoZSBzYW1lIGV4YWN0IHJlYXNvbi4NCj4gDQo+ID4gQXMgZmFy
IGFzIEkgY2FuIHRlbGwsIG5vIHByb2dyYW0gaW4gc3JjL2Jpbi8gY2FuIGN1cnJlbnRseSBkbyB0
aGlzLiAgVGhlDQo+ID4gY2xvc2VzdCBpcyBtYW5zZWN0KDEpLCBidXQgdGhhdCBvdXRwdXRzIHRo
ZSBzb3VyY2UgY29kZSByYXRoZXIgdGhhbiB0aGUNCj4gPiByZW5kZXJlZCBwYWdlLg0KPiANCj4g
WW91IGNvdWxkIHVzZSBtYW5zZWN0KDEpIGZvciB0aGF0LCBhbmQgcGlwZSBpdCB0byBtYW4oMSkg
KG9yIGdyb2ZmKDEpKS4NCg0KSSBob25lc3RseSBoYXZlIG5vIGlkZWEgaG93IHRoYXQgbmV2ZXIg
Y3Jvc3NlZCBteSBtaW5kLiAgU2VlbXMgc28NCm9idmlvdXMgaW4gcmV0cm9zcGVjdCBsb2wuDQoN
ClsuLi5dDQo+ID4gIFNvIEkndmUgaW1wcm92ZWQgdGhlIHNjcmlwdCBzb21ld2hhdCBhbmQgd3Jp
dHRlbiBhIGJyaWVmDQo+ID4gbWFuIHBhZ2UgZm9yIGl0LCBhcyBpbmNsdWRlZCBpbiB0aGlzIHBh
dGNoIHNldC4NCj4gDQo+IFRoYXQgY292ZXJzIHRoZSBtYWluIHVzZSBjYXNlIG9mIG1hbnNlY3Qo
MSksIHNvIEkgdGhpbmsgdGhpcyBzcGVjaWFsaXplZA0KPiB3cmFwcGVyIGNvdWxkIGJlIHVzZWZ1
bC4NCg0KQWdyZWVkLiAgTGVzcyB0eXBpbmcgPSBiZXR0ZXIsIGFmdGVyIGFsbCAoYWZhaXUpLiAg
QW5kIGl0IGNhbiBjZXJ0YWlubHkNCmJlIG1vcmUgYXBwcm9wcmlhdGVseSB3cml0dGVuIGFzIGFu
IGV4cGxpY3Qgd3JhcHBlciBvdmVyIG1hbnNlY3QoMSksDQpyYXRoZXIgdGhhbiBpdHMgb3duIHNl
bGYtY29udGFpbmVkIHNjcmlwdC4NCg0KWy4uLl0NCj4gQmFjayB0aGVuIEkgYWxzbyBvcHRlZCBm
b3IgdGhlIHNpbXBsaWNpdHkgb2YgYWxsb3dpbmcgdXNlcnMgdG8gZGVjaWRlDQo+IHRoZSBmb3Jt
YXR0ZXIgd2l0aCB3aGljaCB0byBmb3JtYXQgdGhlIG1hbnVhbCBwYWdlLCB3aGljaCBCVFcgaXMg
dXNlZnVsDQo+IHRvIHRlc3QgZGlmZmVyZW50IG9uZXMgKG1hbmRvYygxKSwgZ3JvZmYoMSkpLiAg
SG93ZXZlciwgaGF2aW5nIGEgd3JhcHBlcg0KPiB0aGF0IGNhbGxzIG1hbigxKSBzZWVtcyB1c2Vm
dWwuDQoNClRoYXQgbWFrZXMgc2Vuc2UsIGFuZCBJIGFncmVlIHdpdGggdGhpcyByZWFzb25pbmcg
Zm9yIG1hbnNlY3QoMSkuDQpUaG91Z2ggSSBkbyB0aGluayBhIHNpbXBsZSB3cmFwcGVyIHdpdGgg
YSByZWFzb25hYmxlIGRlZmF1bHQgY2FuIGJlIGdvb2QNCmZvciB3aGVuIHlvdSdyZSBub3QgaW50
ZXJlc3RlZCBpbiB0aGUgZGlmZmVyZW5jZS4NCg0KPiA+IEFzIGFuIGV4YW1wbGUsIHRoZSBzY3Jp
cHQgY3VycmVudGx5IHJlLXJlbmRlcnMgdGhlIHdob2xlIG1hbiBwYWdlIGZvcg0KPiA+IGVhY2gg
c2VjdGlvbiBpbiBhIGZvciBsb29wLCByYXRoZXIgdGhhbiBwcmludGluZyBlYWNoIHNlY3Rpb24g
ZnJvbSB0aGUNCj4gPiBzYW1lIHJlbmRlcmVkIHBhZ2UsIHdoaWNoIHdvdWxkIGxpa2VseSBiZSBt
b3JlIHBlcmZvcm1hbnQuDQo+IA0KPiBJIGhvbmVzdGx5IGNhbid0IHJlYWQgdGhhdCBzY3JpcHQu
ICBNeSBhYmlsaXR5IHRvIHJlYWQgb3RoZXIgcGVvcGxlJ3MNCj4gYmFzaCgxKSBzY3JpcHRzIGlz
IHF1aXRlIGxpbWl0ZWQuICA6KQ0KDQpWZXJ5IGZhaXIuICBUaGVyZSdzIGp1c3Qgc29tZXRoaW5n
IGFib3V0IHNoZWxsIHNjcmlwdHMgdGhhdCBtYWtlIHRoZW0NCnBhcnRpY3VsYXJseSBkaWZmaWN1
bHQgdG8gcGFyc2UgaW1vLg0KDQo+IEFib3V0IHRoZSBpbnRlcmZhY2UsIEkgdGhpbmsgSSBsaWtl
IG1vcmUgdGhlIGludGVyZmFjZSBvZiBtYW5zZWN0KDEpLA0KPiB3aGljaCBpcw0KPiANCj4gCW1h
bnNlY3Qgc2VjdGlvbiBbZmlsZSAuLi5dDQo+IA0KPiBJIHRoaW5rIHRoYXQncyBpZGVhbC4gIFdl
IGRvbid0IG5lZWQgYW4gYXJndW1lbnQgbGlrZSBtYW4oMSkncyAtcywNCj4gYmVjYXVzZSB0aGF0
IHdvdWxkIGJlIG1vcmUgZWFzaWx5IHNwZWNpZmllZCBhcw0KPiANCj4gCW1hbnNlY3RmIExJQlJB
UlkgcHJpbnRmLjM7DQo+IA0KPiBUaGUgLjMgZGlzYW1iaWd1YXRlcyB3aXRob3V0IG5lZWRpbmcg
YSBzZXBhcmF0ZSBhcmd1bWVudC4gIEhvd2V2ZXIsDQo+IEkgZG9uJ3QgdGhpbmsgd2Ugd2FudCB0
byBkbyBsaWJyYXJpYW4gd29yayBoZXJlLCBhbmQgdGhpbmsgd2Ugc2hvdWxkDQo+IGVudGlyZWx5
IHJlZnJhaW4gZnJvbSBhY2NlcHRpbmcgbWFudWFsIHBhZ2UgbmFtZXMgbGlrZSBtYW4oMSkuICBJ
IHRoaW5rDQo+IHdlIHNob3VsZCBvbmx5IGFjY2VwdCBmaWxlIG5hbWVzLg0KDQpJIG1vZGVsbGVk
IHRoZSBpbnRlcmZhY2UgYWZ0ZXIgbWFuKDEpIGJlY2F1c2UgSSBhc3N1bWVkIHRoYXQgd291bGQg
YmUNCm1vcmUgZmFtaWxpYXIuICBCdXQgSSdkIGNlcnRhaW5seSBiZSBkb3duIGZvciBhbiBpbnRl
cmZhY2UgbGlrZQ0KbWFuc2VjdCgxKSdzIGlmIHRoYXQncyBwcmVmZXJhYmxlLg0KDQpbLi4uXQ0K
PiBUaGVuLCBhYm91dCB0aGUgaW1wbGVtZW50YXRpb24sIGl0IGNoZWNrcyB0aGUgZXhpc3RlbmNl
IG9mIGNvbW1hbmRzLA0KPiB3aGljaCBpcyB1bm5lY2Vzc2FyeTogdGhlIHNoZWxsIHdpbGwgY29t
cGxhaW4gZm9yIHVzIGlmIHRoZXkgZG9uJ3QNCj4gZXhpc3QuDQo+IA0KPiAJJCBmb28NCj4gCWJh
c2g6IGZvbzogY29tbWFuZCBub3QgZm91bmQNCj4gDQo+IEtlZXAgaXQgc2ltcGxlLg0KPiANCj4g
VGhlbiB5b3UgZXhwb3J0IGEgZmV3IHRoaW5nczoNCj4gDQo+ICtbWyAkTUFOX0tFRVBfRk9STUFU
VElORyBdXSAmJiBleHBvcnQgTUFOX0tFRVBfRk9STUFUVElORz0xDQo+ICtbWyAkTUFOV0lEVEgg
XV0gJiYgZXhwb3J0IE1BTldJRFRIDQo+IA0KPiBUaGF0IHNlZW1zIHJlZHVuZGFudC4gIElmIGl0
IGlzIGFscmVhZHkgZXhwb3J0ZWQsIHRoZSBjaGlsZHMgd2lsbA0KPiBpbmhlcml0IHRoYXQuDQoN
ClRoZXNlIGFyZSBib3RoIGp1c3QgdGhpbmdzIEkgc29tZXRpbWVzIGFkZCBpbiBteSBsb2NhbCBz
Y3JpcHRzIGZvcg0KZWFzaWVyIGRlYnVnZ2luZy4gIFByb2JhYmx5IHNob3VsZCBoYXZlIHJlbW92
ZWQgdGhlbSBmb3IgdGhlIHBhdGNoLg0KDQo+IEFuZCB0aGVuIGFib3V0IHRoZSBtYWluIHdvcmss
IGl0IGNhbiBiZSBkb25lIGJ5IGNhbGxpbmcgbWFuc2VjdCgxKSBpbg0KPiBhIHBpcGVsaW5lLg0K
PiANCj4gV2l0aCB0aGF0IGluIG1pbmQsIEkndmUgd3JpdHRlbiBteSBvd24gYXBwcm9hY2gsIHdo
aWNoIEkndmUgY2FsbGVkDQo+IG1hbnNlY3RmLg0KPiANCj4gCSQgY2F0IHNyYy9iaW4vbWFuc2Vj
dGY7DQo+IAkjIS9iaW4vYmFzaA0KPiAJIw0KPiAJIyBDb3B5cmlnaHQsIHRoZSBhdXRob3JzIG9m
IHRoZSBMaW51eCBtYW4tcGFnZXMgcHJvamVjdA0KPiAJIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogR1BMLTMuMC1vci1sYXRlcg0KPiANCj4gCXNldCAtRWVmdW8gcGlwZWZhaWw7DQo+IA0KPiAJ
bWFuc2VjdCAiJEAiIFwNCj4gCXwgbWFuIC9kZXYvc3RkaW47DQo+IA0KPiBEb2VzIHRoaXMgd29y
ayBmb3IgeW91PyAgSSBsb29rIGF0IGl0IGFuZCB3b25kZXIgaWYgaXQncyB3b3J0aA0KPiBhIHNl
cGFyYXRlIHNjcmlwdCwgYnV0IHRoZW4gaXQgbWlnaHQgYmUgdXNlZnVsIGZvciBwZW9wbGUgd2hv
IGFyZSBsZXNzDQo+IGV4cGVyaWVuY2VkIHdpdGggbWFuKDEpLiAgVG8gYmUgZmFpciwgZmV3IHBl
b3BsZSBrbm93IHRoYXQgbWFuKDEpIGNhbg0KPiBhY2NlcHQgc3RkaW4sIGFuZCBldmVuIGlmIHRo
ZXkga25vdywgc29tZXRpbWVzIGNvbnZlbmllbmNlIHdyYXBwZXJzDQo+IGltcHJvdmUgcmVhZGFi
aWxpdHk6IGZvciBleGFtcGxlLCBwcmludGYoMSkgaXMgdW5uZWNlc3NhcnkgZ2l2ZW4gdGhhdA0K
PiBmcHJpbnRmKDMpIGV4aXN0cywgeWV0IGl0J3MgdGhvcm91Z2hseSB1c2VkIGFuZCBJIGZpbmQg
aXQgZXNzZW50aWFsLg0KPiANCj4gCXByaW50ZigiZm9vIik7DQo+IAlmcHJpbnRmKHN0ZG91dCwg
ImZvbyIpOw0KPiANCj4gU28sIEkgdGhpbmsgc3VjaCBhIHRoaW4gd3JhcHBlciBjYW4gaGF2ZSBp
dHMgcGxhY2UsIGFzIGl0J3MgdGhlIG1haW4gdXNlDQo+IGNhc2Ugb2YgbWFuc2VjdCgxKS4NCg0K
VGhpcyB3b3VsZCBiZSBwZXJmZWN0bHkgc3VpdGFibGUsIGF0IGxlYXN0IGZvciBteSB1c2UgY2Fz
ZXMuICBJIGFsc28NCnRoaW5rIG1hbnNlY3RmIGlzIGEgKm11Y2gqIG1vcmUgYXB0IG5hbWUuDQoN
CkFsbCBpbiBhbGwsIEkgYWxzbyB0aGluayB0aGUgYmVzdCBvcHRpb24gaGVyZSBpcyBhIHRoaW4g
d3JhcHBlciBvdmVyDQptYW5zZWN0KDEpLiAgVGhlIG1haW4gYmVuZWZpdCBiZWluZyB0aGF0IGl0
IHdvdWxkIHNpbXBsaWZ5IG1hbnkgdXNlDQpjYXNlcyBvZiBtYW5zZWN0KDEpIHdpdGhvdXQgYWRk
aW5nIGFuIHVucmVhc29uYWJsZSBhbW91bnQgb2YgY29tcGxleGl0eS4NCg0KQWxzbywgaWYgd2Ug
d2VyZSB0byBhZGQgbWFuc2VjdGYsIEkgd291bGQgcHJvYmFibHkgb3B0IGZvciBhZGRpbmcgaXQg
dG8NCm1hbnNlY3QoMSkncyBtYW4gcGFnZSwgcmF0aGVyIHRoYW4gZ2l2aW5nIGl0IGl0cyBvd24g
cGFnZS4NCg0KKFAuUy4gV2hpbGUgSSdtIG5vd2hlcmUgbmVhciBhbiBleHBlcnQgb24gVW5peCBz
aGVsbHMsIEkgaG9uZXN0bHkgZmVlbA0KbGlrZSBJJ3ZlIGxlYXJudCBtb3JlIGFib3V0IHRoZWly
IHVzZSBmcm9tIHRoZXNlIGVtYWlsIGV4Y2hhbmdlcyB0aGFuDQptb3N0IG90aGVyIHNvdXJjZXMu
ICBTbyB0aGFua3MgZm9yIHRoYXQuIDopICkNCg0KLS0gDQpUYWtlIGNhcmUsDQoJU2V0aCBNY0Rv
bmFsZC4NCg0KT24tbGlzdDogIDIzMzYgRThEMiBGRUIxIDUzMDAgNjkyQyAgNjJBOSA1ODM5IDZB
RDggOTI0MyBEMzY5DQpPZmYtbGlzdDogODJCOSA2MjBFIDUzRDAgQTFBRSAyRDY5ICA2MTExIEMy
NjcgQjAwMiAwQTkwIDAyODkNCg==
--------2364b68bc344882ea7c07e68a8db1993fdc7a2b8841265cd88d9970399861b3f
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml5lEQJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfUPnEeIDIKk0KtMBaNNV5TFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAOOxAP4+1pJCBxSvWpk0skyxI3HChXC9Y8LieIiDgumX
tQVF1wEA1Bn1KYXC5mIc3C66oTvqMWz4evyVD+iYII75XgGpggg=
=Lj1R
-----END PGP SIGNATURE-----


--------2364b68bc344882ea7c07e68a8db1993fdc7a2b8841265cd88d9970399861b3f--


