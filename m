Return-Path: <linux-man+bounces-4944-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sM8dKyted2n8eQEAu9opvQ
	(envelope-from <linux-man+bounces-4944-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:29:31 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD1A883CB
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:29:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2392B3004DA8
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:29:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED5222F83A2;
	Mon, 26 Jan 2026 12:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="b1w5Pn1e"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43103.protonmail.ch (mail-43103.protonmail.ch [185.70.43.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62CB5219319
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.103
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430566; cv=none; b=pl0EooYL7LusmLxOT/Xl5JrmEgcw/OyHnGbkrW7TQfs1L0kyTwel14V4+E5NqKSDE5aetpJYStVJtdGUyS6pSUKFT7ut90FqeAdmTycBt3ewrnhnMKDjQQDUNVXXLCfqmW7V8HvRqA8U+bkwEC1iRbwXCg5mIf+wxbO7ucmG4nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430566; c=relaxed/simple;
	bh=zpL1A1UHGKM2GRnVOx5ek679oPKHYK0cxxzTC0ZKBGQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rzZZzgnaTcpLSIm8WG2y/296FOsGSeq2CiF6pvIVLE7bwGo5rKVyRR48DuS+duf0aIU+BHpnViwxsAEBITFSluvGQKgq5MbsObIzAy1GUm1KwxsXz+ZQg09fQTIZMoN+3fB48Zba7piaOBdSLsHAY6+G98BE+Zu5zZBkYefTQ3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=b1w5Pn1e; arc=none smtp.client-ip=185.70.43.103
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430561; x=1769689761;
	bh=zpL1A1UHGKM2GRnVOx5ek679oPKHYK0cxxzTC0ZKBGQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=b1w5Pn1eBY8V+6hzy9ggRCTeK937+c+MuONk+kuCZNlTbu1tgNjXG4UYQhGStGCrq
	 052ddSYpa4/Q7iAK/lXIttrPAwwXPOdi47TH9Ir0c9sGGn6kiGP4MUcXuM1COiTlGS
	 0/ra+6yxx4hSP/TzLUYKab6dN4gw7t7cB76cfhpJpZhOtGtwh9RRMuupwEr69XKmKe
	 Km08msrqGAnyXEG+R8F/5MQrQib6jo+g/KB+RsH1sHt6iWt1alcu99STXZjS9ulSyI
	 vwtXKa5olhYlENlxGEWXqdP0tTEIskhcgQcxOzsv1+gx3ZalSQNITY95Ixc5xi9V8L
	 bX7Cz/2uSCGZw==
Date: Mon, 26 Jan 2026 12:29:17 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 08/21] man/man2/mincore.2: HISTORY: Update appearances of mincore(2)
Message-ID: <817af323707ec44ec1b78dedbb07a7c09ab0104d.1769429341.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 26ca158284072492755e6e793b891f6629c44bdc
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------a9fb5a9b881398a6eca863a0625d6b281d08e4f4a4d72cdbb7ecc98fee5757f9"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.16 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-4944-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sethmcmail@pm.me,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[netbsd.org:url,pm.me:email,pm.me:dkim,pm.me:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,openbsd.org:url]
X-Rspamd-Queue-Id: CBD1A883CB
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------a9fb5a9b881398a6eca863a0625d6b281d08e4f4a4d72cdbb7ecc98fee5757f9
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 08/21] man/man2/mincore.2: HISTORY: Update appearances of mincore(2)
Date: Mon, 26 Jan 2026 22:27:49 +1000
Message-ID: <817af323707ec44ec1b78dedbb07a7c09ab0104d.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0

bWluY29yZSgyKSB3YXMgaW1wbGVtZW50ZWQgaW4gRnJlZUJTRCBvbiAxOTk1LTEwLTIxLFsxXSB3
aGljaCB3YXMgZmlyc3QNCmluY2x1ZGVkIGluIHRoZSBGcmVlQlNEIDIuMiByZWxlYXNlIG9uIDE5
OTctMDMuWzJdDQoNCkl0IHdhcyBpbXBsZW1lbnRlZCBpbiBOZXRCU0Qgb24gMTk5OS0wNi0xNSxb
M10gd2hpY2ggd2FzIGZpcnN0IGluY2x1ZGVkDQppbiB0aGUgTmV0QlNEIDEuNSByZWxlYXNlIG9u
IDIwMDAtMTItMDYsWzRdIChkZXNwaXRlIHRoZSBjb21taXQgbWVzc2FnZQ0Kc3RhdGluZyBpdHMg
aW50ZW5kZWQgaW5jbHVzaW9uIGluIE5ldEJTRCAxLjQuMSkuDQoNCkl0IHdhcyBpbXBsZW1lbnRl
ZCBpbiBPcGVuQlNEIG9uIDIwMDEtMDMtMDksWzVdIHdoaWNoIHdhcyBmaXJzdCBpbmNsdWRlZA0K
aW4gdGhlIE9wZW5CU0QgMi45IHJlbGVhc2Ugb24gMjAwMS0wNi0wMS5bNl0NCg0KQWxsIG90aGVy
IGxpc3RlZCBzeXN0ZW1zIGFyZSB0YWtlbiBhdCBmYWNlIHZhbHVlIGFuZCByZWFycmFuZ2VkIGlu
DQpjaHJvbm9sb2dpY2FsLWlzaCBvcmRlci4NCg0KWzFdIER5c29uLCBKb2huICgyMSBPY3QgMTk5
NSkuICAiSW1wbGVtZW50IG1pbmNvcmUgc3lzdGVtIGNhbGwuIg0KRnJlZUJTRCBzb3VyY2UgdHJl
ZSAoR2l0IHJlcG9zaXRvcnkpLg0KPGh0dHBzOi8vY2dpdC5mcmVlYnNkLm9yZy9zcmMvY29tbWl0
Lz9pZD0wMmMwNGEyZjZjODNlZTI4ZWQ2MzdkMTIwMjk2ZDA0ZGE4ZjAzMzcyPg0KWzJdIFRoZSBG
cmVlQlNEIFByb2plY3QgKDI5IE5vdiAyMDI1KS4gICJQcmlvciBSZWxlYXNlcyDigJMgRU9MIi4N
CjxodHRwczovL3d3dy5mcmVlYnNkLm9yZy9yZWxlYXNlcz4NClszXSBUaG9ycGUsIEphc29uICgx
NSBKdW4gMTk5OSkuICAiU2V2ZXJhbCBjaGFuZ2VzLCBkZXZlbG9wZWQgYW5kIHRlc3RlZA0KY29u
Y3VycmVudGx5OiIuICBOZXRCU0Qgc3JjIChDVlMgcmVwb3NpdG9yeSkuDQo8aHR0cHM6Ly9jdnN3
ZWIubmV0YnNkLm9yZy9ic2R3ZWIuY2dpL3NyYy9zeXMvdXZtL3V2bV9tbWFwLmM/cmV2PTEuMjI+
DQpbNF0gVGhlIE5ldEJTRCBGb3VuZGF0aW9uICgyMDI2KS4gICJIaXN0b3J5IG9mIE5ldEJTRCBy
ZWxlYXNlcyIuDQo8aHR0cHM6Ly93d3cubmV0YnNkLm9yZy9yZWxlYXNlcy9mb3JtYWwuaHRtbD4N
Cls1XSBhcnQgKDkgTWFyIDIwMDEpLiAgIk1vcmUgc3luY2luZyB0byBOZXRCU0QuIiAgT3BlbkJT
RCBzcmMgKENWUw0KcmVwb3NpdG9yeSkuDQo8aHR0cHM6Ly9jdnN3ZWIub3BlbmJzZC5vcmcvc3Jj
L3N5cy91dm0vdXZtX21tYXAuYz9yZXY9MS43JmNvbnRlbnQtdHlwZT10ZXh0L3gtY3Zzd2ViLW1h
cmt1cD4NCls2XSBkZSBSYWFkdCwgVGhlbyAoMSBKdW4gMjAwMSkuICAiT3BlbkJTRCAyLjkiLg0K
PGh0dHBzOi8vd3d3Lm9wZW5ic2Qub3JnLzI5Lmh0bWw+DQoNClNpZ25lZC1vZmYtYnk6IFNldGgg
TWNEb25hbGQgPHNldGhtY21haWxAcG0ubWU+DQotLS0NCiBtYW4vbWFuMi9taW5jb3JlLjIgfCAx
MyArKysrKysrKy0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNSBkZWxl
dGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL21hbi9tYW4yL21pbmNvcmUuMiBiL21hbi9tYW4yL21p
bmNvcmUuMg0KaW5kZXggODU3NGVkMTkyMmQ5Li5hOWExOTc0NDY2YTYgMTAwNjQ0DQotLS0gYS9t
YW4vbWFuMi9taW5jb3JlLjINCisrKyBiL21hbi9tYW4yL21pbmNvcmUuMg0KQEAgLTExMiwxMyAr
MTEyLDE2IEBAIC5TSCBFUlJPUlMNCiAuU0ggU1RBTkRBUkRTDQogTm9uZS4NCiAuU0ggSElTVE9S
WQ0KK1N1bk9TIDQuMSwNCis0LjRCU0QsDQorRnJlZUJTRCAyLjIsDQorU29sYXJpcyA4LA0KIExp
bnV4IDIuMy45OXByZTEsDQotZ2xpYmMgMi4yLg0KK2dsaWJjIDIuMiwNCitOZXRCU0QgMS41LA0K
K09wZW5CU0QgMi45LA0KK0FJWCA1LjEuDQogLlANCi1GaXJzdCBhcHBlYXJlZCBpbiA0LjRCU0Qu
DQotLlANCi1OZXRCU0QsIEZyZWVCU0QsIE9wZW5CU0QsIFNvbGFyaXMgOCwNCi1BSVggNS4xLCBT
dW5PUyA0LjEuDQogLlNIIEJVR1MNCiBCZWZvcmUgTGludXggMi42LjIxLA0KIC5CUiBtaW5jb3Jl
ICgpDQotLSANCjIuNDcuMw0KDQo=
--------a9fb5a9b881398a6eca863a0625d6b281d08e4f4a4d72cdbb7ecc98fee5757f9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3XhwJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmf1en1JxFD1QD4gqxX+9FO/FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAACuXAQCOTCrPYf2gsl8pBrIvnSp1mZp21pcp0DQ7cu3t
iFYgEgEA1pmnnOacikRhudG3FtUAHXl4OGUs8F+4bGhIUV0nIA8=
=UMvo
-----END PGP SIGNATURE-----


--------a9fb5a9b881398a6eca863a0625d6b281d08e4f4a4d72cdbb7ecc98fee5757f9--


