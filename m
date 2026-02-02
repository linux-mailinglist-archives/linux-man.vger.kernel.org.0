Return-Path: <linux-man+bounces-5017-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGI0CQGPgGkl+wIAu9opvQ
	(envelope-from <linux-man+bounces-5017-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 02 Feb 2026 12:48:17 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D73FCBE6B
	for <lists+linux-man@lfdr.de>; Mon, 02 Feb 2026 12:48:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 549463012BFD
	for <lists+linux-man@lfdr.de>; Mon,  2 Feb 2026 11:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7967361DD9;
	Mon,  2 Feb 2026 11:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=b1-systems.de header.i=@b1-systems.de header.b="lOWad5+P"
X-Original-To: linux-man@vger.kernel.org
Received: from mx1.b1-systems.de (mx1.b1-systems.de [159.69.135.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230D435BDBF
	for <linux-man@vger.kernel.org>; Mon,  2 Feb 2026 11:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.69.135.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770032892; cv=none; b=GnaE+qdWXCtLJ6o/fZBhLzWMQRbxsHUTRFwOudEngUBBZzUeBmvMv5w2m0BAdefGmV8ScLIlxTvBNNFUDtCh/vFcuOxmmiELFHzjyKJyFQjWanigZzbJGh8kd8p/G4EVcsm9hIhZrsFd+GBZ/RFvz4gKZz/xudoTzsv9Hk4yyZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770032892; c=relaxed/simple;
	bh=KrZiabA1Ujiut9apFlMkdUvTpjEnOP87Zzfa4OLu/wc=;
	h=Date:From:To:cc:Subject:Message-ID:MIME-Version:Content-Type; b=WNJig8q3lG5WzNrx42dUB0R6LHhvFxd8oeW0vVxUcaJuVLDWbgHN/uX4W0zqLy76TwvW2s+555QLauR5YDZjskXgmAjUycpg1gj5cko8aqsUxOGdKGWJuuu4pFyvtyN2589h2BKuf2JbOu8i5NdyfmFQldFn0WSStAwu7+0itno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=b1-systems.de; spf=pass smtp.mailfrom=b1-systems.de; dkim=pass (1024-bit key) header.d=b1-systems.de header.i=@b1-systems.de header.b=lOWad5+P; arc=none smtp.client-ip=159.69.135.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=b1-systems.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=b1-systems.de
Date: Mon, 2 Feb 2026 12:39:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=b1-systems.de;
	s=default; t=1770032341;
	bh=KrZiabA1Ujiut9apFlMkdUvTpjEnOP87Zzfa4OLu/wc=;
	h=Date:From:To:cc:Subject:From;
	b=lOWad5+PLnwx/OCrv4j0EDwEdd2LetYbclk0f2OSpgXxLMiPoDiMiU3s4n0ahv/HN
	 0nz4KSvOgkm01ZtZ2j4LkvoW7qIQJuGFKRXxBi9umFMSWLx0VCltmCBq/1cX3YPP9R
	 GeI2CMCtgDI45a2ZjwXfC6Y1m5cjh0ZZEhXM7qeI=
From: Thorsten Glaser <tglaser@b1-systems.de>
To: Alejandro Colomar <alx@kernel.org>
cc: linux-man@vger.kernel.org
Subject: [PATCH] man/man2/syscall.2: fix numbering for notes
Message-ID: <7b1b7c56-ad07-40b7-5387-08a4b60e3078@b1-systems.de>
X-Zitierstil: Wir wechseln gerne von TOFU auf den Usenet-Zitierstandard; sprechen Sie uns einfach an!
X-Quoting-Style: We will gladly switch from top-posting to Usenet standard quoting style; please just ask!
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323328-1978787900-1770032341=:3439"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.06 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[b1-systems.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[b1-systems.de:s=default];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain,text/x-diff];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5017-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[b1-systems.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglaser@b1-systems.de,linux-man@vger.kernel.org];
	HAS_ATTACHMENT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,b1-systems.de:dkim,b1-systems.de:email,b1-systems.de:url,b1-systems.de:mid]
X-Rspamd-Queue-Id: 8D73FCBE6B
X-Rspamd-Action: no action

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1978787900-1770032341=:3439
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE

Hi,

the table refers to numbered notes, but the notes just have
bullets. The attached patch fixes that.

bye,
//Thorsten (with $dayjob hat)
--=20
Thorsten Glaser
Linux / Unix Developer
Tel.: +49 160 91168501
E-Mail: tglaser@b1-systems.de

B1 Systems GmbH
Osterfeldstra=C3=9Fe 7 / 85088 Vohburg / https://www.b1-systems.de/
GF: Ralph Dehner / Unternehmenssitz: Vohburg / AG: Ingolstadt, HRB 3537
--8323328-1978787900-1770032341=:3439
Content-Type: text/x-diff; name=0001-man-man2-syscall.2-fix-numbering-for-notes.patch
Content-Transfer-Encoding: BASE64
Content-ID: <1302e4e3-cbe3-9f2f-fe3d-ccf87432738f@b1-systems.de>
Content-Description: 
Content-Disposition: attachment; filename=0001-man-man2-syscall.2-fix-numbering-for-notes.patch

RnJvbSBmZjJlOGM4ODlkODFiZjY5NmRlZDIxY2VhMmFiNWUwMWI3NjkwMGQ1
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQ0KRnJvbTogVGhvcnN0ZW4gR2xh
c2VyIDx0Z2xhc2VyQGIxLXN5c3RlbXMuZGU+DQpEYXRlOiBNb24sIDIgRmVi
IDIwMjYgMTI6MzY6NTYgKzAxMDANClN1YmplY3Q6IFtQQVRDSF0gbWFuL21h
bjIvc3lzY2FsbC4yOiBmaXggbnVtYmVyaW5nIGZvciBub3Rlcw0KDQotLS0N
CiBtYW4vbWFuMi9zeXNjYWxsLjIgfCAxNCArKysrKysrLS0tLS0tLQ0KIDEg
ZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0p
DQoNCmRpZmYgLS1naXQgYS9tYW4vbWFuMi9zeXNjYWxsLjIgYi9tYW4vbWFu
Mi9zeXNjYWxsLjINCmluZGV4IDU0Mzg1Y2QuLjE3ZTBlYjUgMTAwNjQ0DQot
LS0gYS9tYW4vbWFuMi9zeXNjYWxsLjINCisrKyBiL21hbi9tYW4yL3N5c2Nh
bGwuMg0KQEAgLTE5Nyw3ICsxOTcsNyBAQCB4dGVuc2EJc3lzY2FsbAlhMglh
MgktCS0NCiAuVEUNCiAuUA0KIE5vdGVzOg0KLS5JUCBcW2J1XSAzDQorLklQ
IDEpIDMNCiBPbiBhIGZldyBhcmNoaXRlY3R1cmVzLA0KIGEgcmVnaXN0ZXIg
aXMgdXNlZCBhcyBhIGJvb2xlYW4NCiAoMCBpbmRpY2F0aW5nIG5vIGVycm9y
LCBhbmQgXC0xIGluZGljYXRpbmcgYW4gZXJyb3IpIHRvIHNpZ25hbCB0aGF0
IHRoZQ0KQEAgLTIxMywyMCArMjEzLDIwIEBAIE9uIHBvd2VycGM2NCwgdGhl
IHN1bW1hcnkgb3ZlcmZsb3cgYml0DQogaW4gZmllbGQgMCBvZiB0aGUgY29u
ZGl0aW9uIHJlZ2lzdGVyDQogLlJJICggY3IwICkNCiBpcyB1c2VkLg0KLS5J
UCBcW2J1XQ0KKy5JUCAyKQ0KIC5JIE5SDQogaXMgdGhlIHN5c3RlbSBjYWxs
IG51bWJlci4NCi0uSVAgXFtidV0NCisuSVAgMykNCiBGb3IgczM5MCBhbmQg
czM5MHgsDQogLkkgTlINCiAodGhlIHN5c3RlbSBjYWxsIG51bWJlcikgbWF5
IGJlIHBhc3NlZCBkaXJlY3RseSB3aXRoDQogLkkgInN2Y1wgTlIiDQogaWYg
aXQgaXMgbGVzcyB0aGFuIDI1Ni4NCi0uSVAgXFtidV0NCisuSVAgNCkNCiBP
biBTdXBlckggYWRkaXRpb25hbCB0cmFwIG51bWJlcnMgYXJlIHN1cHBvcnRl
ZCBmb3IgaGlzdG9yaWMgcmVhc29ucywgYnV0DQogLkJSIHRyYXBhICMzMQ0K
IGlzIHRoZSByZWNvbW1lbmRlZCAidW5pZmllZCIgQUJJLg0KLS5JUCBcW2J1
XQ0KKy5JUCA1KQ0KIFRoZSB4MzIgQUJJIHNoYXJlcyBzeXNjYWxsIHRhYmxl
IHdpdGggeDg2LTY0IEFCSSwgYnV0IHRoZXJlIGFyZSBzb21lDQogbnVhbmNl
czoNCiAuUlMNCkBAIC0yNjYsNyArMjY2LDcgQEAgYnV0IHBhc3NlcyBhbiA4
LWJ5dGUNCiAuSSBwb3MNCiBhcmd1bWVudCBpbiBhIHNpbmdsZSByZWdpc3Rl
ciBhbmQgbm90IHR3bywgYXMgaXMgZG9uZSBpbiBldmVyeSBvdGhlciBBQkku
DQogLlJFDQotLklQIFxbYnVdDQorLklQIDYpDQogU29tZSBhcmNoaXRlY3R1
cmVzDQogKG5hbWVseSwgQWxwaGEsIElBLTY0LCBNSVBTLCBTdXBlckgsIHNw
YXJjLzMyLCBhbmQgc3BhcmMvNjQpDQogdXNlIGFuIGFkZGl0aW9uYWwgcmVn
aXN0ZXIgKCJSZXR2YWwyIiBpbiB0aGUgYWJvdmUgdGFibGUpDQpAQCAtMzI0
LDcgKzMyNCw3IEBAIHh0ZW5zYQlhNglhMwlhNAlhNQlhOAlhOQktDQogLlRF
DQogLlANCiBOb3RlczoNCi0uSVAgXFtidV0gMw0KKy5JUCAxKSAzDQogVGhl
IG1pcHMvbzMyIHN5c3RlbSBjYWxsIGNvbnZlbnRpb24gcGFzc2VzDQogYXJn
dW1lbnRzIDUgdGhyb3VnaCA4IG9uIHRoZSB1c2VyIHN0YWNrLg0KIC5pZiB0
IFx7XA0KLS0gDQoyLjQ3LjMNCg0K

--8323328-1978787900-1770032341=:3439--

