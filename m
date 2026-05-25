Return-Path: <linux-man+bounces-5597-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIdUBlN6FGokNgcAu9opvQ
	(envelope-from <linux-man+bounces-5597-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 18:35:31 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EE75CCED2
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 18:35:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4D36A30117AE
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 16:35:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF41638228F;
	Mon, 25 May 2026 16:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="QMpdJ2bc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-08.mail-europe.com (mail-08.mail-europe.com [57.129.93.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285D1335568
	for <linux-man@vger.kernel.org>; Mon, 25 May 2026 16:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=57.129.93.249
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779726926; cv=none; b=Wlro0BwlKgN28ZXhqxRc0gETFNyNiyChgLPem4bkeaf4gfudriIqYFwlExyJ87LIXBYSjxlaUIPOrYY776hwACFNfOiNxuTGino3i/soyjB0v/G3t3RxqvxWcU/HLssuWmIjoSPAOrMXfii+7a78pebwtPf+E0uOD+nzbWqg15U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779726926; c=relaxed/simple;
	bh=ieqGdAcGwsxr7hkj6CwhFhgMVpXqhy/0jXEsQOKvBaI=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=MMouYcU+W+zyIPkR/TDXkgU6DFYfP6ZAk5PacVPhwtHzZSIKFNWwPUE9umZFSweLC3RVs4JHDfFWuf8Gpm+Ysd7I7PSZ6JvF/4Y+l8HTyhNxeyvIjvzgVpw3GFTg6/DRmQCPwjtw8mkd3oL+3ONpgKZIzIlGeZjFwGrtWbQyLDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=QMpdJ2bc; arc=none smtp.client-ip=57.129.93.249
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1779726909; x=1779986109;
	bh=2i3Qav51qbFS70r+Xmmh4gvzOJlV98HuZdrO6+TIj5Q=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=QMpdJ2bce6sObLWsQojwdje7lt52+YS6kWmIsR8yVAOH66I8Yms+LUHpk3WYTYOuE
	 hhNkDVR2BEszFdsF2VZ5w8stypa3NfhJnIdDkIvxGBaeI7rb/huDaYmgZBzKKNrl+r
	 nMpEFmRvohenpQtepy7vkB9Np+F7Eoo2YTnMB9MyjCCc/hBbaf0ru/EAAheQP9FBLe
	 WYeIBOcRdkjbG9a01gojctyoGj9lNrHcv8Lak/Ar9qrZI+ukDY+gwviXnReNypLAGa
	 LSvfmXWgjIsDulQ+NXvUGGcp2RdDdUPC81WGIz3J2AvidzyL8c2zXgePztIr/nYGG0
	 yNMjq59LIkkQg==
Date: Mon, 25 May 2026 16:35:05 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Evan <felisevan@protonmail.com>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1] man7/feature_test_macros.7: tfix
Message-ID: <NVnggFXrKY_T_kEGNivWpJI-z3Ztwoyzp3gqTE22JG1-JQfhpNY42bISSPC2fhr90tzYI0QguUcNn3kD0ugpFcI6p-Q8G7KUknOfxOPRGAw=@protonmail.com>
Feedback-ID: 23113616:user:proton
X-Pm-Message-ID: fabad10080c8aef0850b7659d892b3a7dcf99094
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="b1=_2BgwCJufqtZpIIXghDFF1Ys38sIl3vQbPKX7VUSr8w"
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[protonmail.com,quarantine];
	R_DKIM_ALLOW(-0.20)[protonmail.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5597-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	HAS_ATTACHMENT(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[protonmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[felisevan@protonmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[protonmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sourceware.org:url]
X-Rspamd-Queue-Id: 84EE75CCED2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--b1=_2BgwCJufqtZpIIXghDFF1Ys38sIl3vQbPKX7VUSr8w
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Fixed two typos in the _REENTRANT description under the "Feature test
macros understood by glibc" section.  Changed "199606L" to "199506L".
For the corresponding glibc source code, see:

<https://sourceware.org/git?p=3Dglibc.git;a=3Dblob;f=3Dinclude/features.h;h=
=3Dc080ad4260f40e633f6df951408d0a822ac2fb3d;hb=3DHEAD#l350>

Signed-off-by: felisevan <felisevan@protonmail.com>


--b1=_2BgwCJufqtZpIIXghDFF1Ys38sIl3vQbPKX7VUSr8w
Content-Type: application/octet-stream; name=v1-0001-man7-feature_test_macros.7-tfix.patch
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=v1-0001-man7-feature_test_macros.7-tfix.patch

RnJvbSAzOGVlMGI2ZTU1MzYzNzJkYzg4OTY3OTA3OTg3NGJlNjRiODdkYzhhIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBmZWxpc2V2YW4gPGZlbGlzZXZhbkBwcm90b25tYWlsLmNvbT4K
RGF0ZTogTW9uLCAyNSBNYXkgMjAyNiAxODoxNDoxNCArMDIwMApTdWJqZWN0OiBbUEFUQ0ggdjFd
IG1hbjcvZmVhdHVyZV90ZXN0X21hY3Jvcy43OiB0Zml4ClRvOiBBbGVqYW5kcm8gQ29sb21hciA8
YWx4QGtlcm5lbC5vcmc+CkNjOiA8bGludXgtbWFuQHZnZXIua2VybmVsLm9yZz4KCkZpeGVkIHR3
byB0eXBvcyBpbiB0aGUgX1JFRU5UUkFOVCBkZXNjcmlwdGlvbiB1bmRlciB0aGUgIkZlYXR1cmUg
dGVzdAptYWNyb3MgdW5kZXJzdG9vZCBieSBnbGliYyIgc2VjdGlvbi4gIENoYW5nZWQgIjE5OTYw
NkwiIHRvICIxOTk1MDZMIi4KRm9yIHRoZSBjb3JyZXNwb25kaW5nIGdsaWJjIHNvdXJjZSBjb2Rl
LCBzZWU6Cgo8aHR0cHM6Ly9zb3VyY2V3YXJlLm9yZy9naXQ/cD1nbGliYy5naXQ7YT1ibG9iO2Y9
aW5jbHVkZS9mZWF0dXJlcy5oO2g9YzA4MGFkNDI2MGY0MGU2MzNmNmRmOTUxNDA4ZDBhODIyYWMy
ZmIzZDtoYj1IRUFEI2wzNTA+CgpTaWduZWQtb2ZmLWJ5OiBmZWxpc2V2YW4gPGZlbGlzZXZhbkBw
cm90b25tYWlsLmNvbT4KLS0tCiBtYW4vbWFuNy9mZWF0dXJlX3Rlc3RfbWFjcm9zLjcgfCA0ICsr
LS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvbWFuL21hbjcvZmVhdHVyZV90ZXN0X21hY3Jvcy43IGIvbWFuL21hbjcvZmVhdHVy
ZV90ZXN0X21hY3Jvcy43CmluZGV4IDQ2OWU5NzMxLi4wYmZjZDkyMSAxMDA2NDQKLS0tIGEvbWFu
L21hbjcvZmVhdHVyZV90ZXN0X21hY3Jvcy43CisrKyBiL21hbi9tYW43L2ZlYXR1cmVfdGVzdF9t
YWNyb3MuNwpAQCAtNTcyLDcgKzU3Miw3IEBAIC5TUyBGZWF0dXJlIHRlc3QgbWFjcm9zIHVuZGVy
c3Rvb2QgYnkgZ2xpYmMKIGhhcyBiZWVuIHRvIGVuYWJsZSBvbmUgb3IgdHdvIG9mIHRoZSBzYW1l
IGRlY2xhcmF0aW9ucyB0aGF0CiBhcmUgYWxzbyBlbmFibGVkIGJ5IGRlZmluaW5nCiAuQiBfUE9T
SVhfQ19TT1VSQ0UKLXdpdGggYSB2YWx1ZSBvZiAxOTk2MDZMIG9yIGdyZWF0ZXIuCit3aXRoIGEg
dmFsdWUgb2YgMTk5NTA2TCBvciBncmVhdGVyLgogLklQCiAuQiBfUkVFTlRSQU5UCiBpcyBub3cg
b2Jzb2xldGUuCkBAIC01ODAsNyArNTgwLDcgQEAgLlNTIEZlYXR1cmUgdGVzdCBtYWNyb3MgdW5k
ZXJzdG9vZCBieSBnbGliYwogLkIgX1JFRU5UUkFOVAogaXMgZXF1aXZhbGVudCB0byBkZWZpbmlu
ZwogLkIgX1BPU0lYX0NfU09VUkNFCi13aXRoIHRoZSB2YWx1ZSAxOTk2MDZMLgord2l0aCB0aGUg
dmFsdWUgMTk5NTA2TC4KIElmIGEgaGlnaGVyIFBPU0lYIGNvbmZvcm1hbmNlIGxldmVsIGlzCiBz
ZWxlY3RlZCBieSBhbnkgb3RoZXIgbWVhbnMgKHN1Y2ggYXMKIC5CIF9QT1NJWF9DX1NPVVJDRQot
LSAKMi40My4wCgo=

--b1=_2BgwCJufqtZpIIXghDFF1Ys38sIl3vQbPKX7VUSr8w--


