Return-Path: <linux-man+bounces-5339-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MMkVD5Zb4WmusQAAu9opvQ
	(envelope-from <linux-man+bounces-5339-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 16 Apr 2026 23:58:46 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF6041521E
	for <lists+linux-man@lfdr.de>; Thu, 16 Apr 2026 23:58:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 81235301E58D
	for <lists+linux-man@lfdr.de>; Thu, 16 Apr 2026 21:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65449372B53;
	Thu, 16 Apr 2026 21:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=joshtriplett.org header.i=@joshtriplett.org header.b="MHv1d7Ur";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="mde2NloG"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-a8-smtp.messagingengine.com (fout-a8-smtp.messagingengine.com [103.168.172.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583263264F9;
	Thu, 16 Apr 2026 21:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776376674; cv=none; b=shCXKxkJ5x3oiDWg0G6SdyOpWgHKteI+ghj37501lBF3wodd768RvWBWuPMoqYGA8K0TbWVuKyiGZDKjU5sxqSNNh4/nQHxKZuBm8NTNdEJCnZFMKCh4Ei6gD7UzIu4mUoNBSlTjQquWzDU52Qp4gRUls0moYQX1/eTAZvyX+mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776376674; c=relaxed/simple;
	bh=dNZsYqoRYEIKF8O8YFn1/84Xuu6i4Pb5xDdWa/+SRAk=;
	h=MIME-Version:Date:From:To:Cc:Message-Id:In-Reply-To:References:
	 Subject:Content-Type; b=U7hPqLgJfVCgHy3KY64506oDx3pbf2coOfxf7Jh3TuVuE2CHuPJXJUJIoFlCR3U78jTXihrJLVNxMTnuz9hW3XUxDOGeUF0Vu98fDlZmreyHRVmgf+r7R933pICrnyU1TYdUnzKhpVPw8jc9k7DQXkEoImYh8WfTdgiGVLDcjoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=joshtriplett.org; spf=pass smtp.mailfrom=joshtriplett.org; dkim=pass (2048-bit key) header.d=joshtriplett.org header.i=@joshtriplett.org header.b=MHv1d7Ur; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=mde2NloG; arc=none smtp.client-ip=103.168.172.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=joshtriplett.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=joshtriplett.org
Received: from phl-compute-07.internal (phl-compute-07.internal [10.202.2.47])
	by mailfout.phl.internal (Postfix) with ESMTP id 7AC46EC01BD;
	Thu, 16 Apr 2026 17:57:51 -0400 (EDT)
Received: from phl-imap-03 ([10.202.2.93])
  by phl-compute-07.internal (MEProxy); Thu, 16 Apr 2026 17:57:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	joshtriplett.org; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1776376671;
	 x=1776463071; bh=ieN5wLxIK3X06jaDDAZPc2NCX8fUUVaqyIu/FVopEBw=; b=
	MHv1d7Ur688i6WxkwEwiowcY2SwEIfcOiboScY7fCW1zX4gDD03wm2v/1eg7wsrk
	8rpOgkX+gVA9JUkqNMN7MPNNiOKbwfnZtNA8zhWOYGVmGAiTjD3WEM6iUhejmbnR
	1Vb4xi7YCK92R6CO+JysPoydwod1U+35wdzVWl7N9L/cIATC8vzw2KHHdJK54i68
	h7Ash+g9gp3x7hlKWtr4kZv4iwPmqB9RlTJNFh/z9886VIYw6MtAy04yONLJjopR
	CHYrmGgSemMevWhUJgNEhqgIt0EPCeY0zod34lFi3IqpkZb0gzD8bHn99ujWI8qv
	SvRpVah89vyFHagVyxt0vA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1776376671; x=1776463071; bh=ieN5wLxIK3X06jaDDAZPc2NCX8fUUVaqyIu
	/FVopEBw=; b=mde2NloG494kUYTOLf3jZNqnODCZe+off7GTK0Y5HiO9V26mD3F
	e0m0tNr5Mt7r/s/uuQoW+l5RCUspZVGc7PcV8y4aMQOqLPV/gioi4CrxMzWSQS99
	o76xjb/1jh7Rq+W+7e+OPy/4ga7r6fjNBVdQymZitw29iH+ZkhpBrGSXY49zZm92
	sEu58TV5aQCEBzOIjBa7W45E/aS65sbwSxcRiYLDIBYp7GWNWBKafm8q2T5jCvQJ
	kOiUyjJCOXIBR4/Ckcaf7bG/zwJEtbXMLe2MN+hx/t+SKuTowvig4NreYKHVRbCt
	aesj9QvTyxg9xiecHbhGcTXhCRHTcw4IIrQ==
X-ME-Sender: <xms:X1vhaZ3HLUAjHFN0dVWmRd5dce5nwdI6EFZEAdmaNULwrv50cV4vcQ>
    <xme:X1vhaa7fH3s0tmcs_n1AU7T8jovt2FkOhTKLMbK5ApoybxpofMMZl-NxiNWHnWXfr
    CcjjBAYwLnK0UG1RsyOl0cLjZ5DAaaFGnVoNxKgSq675w9G8QJXnlyq>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdegkedugecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepofggfffhvfevkfgjfhfutgesmhdtreerre
    dttdenucfhrhhomhepfdflohhshhcuvfhrihhplhgvthhtfdcuoehjohhshhesjhhoshhh
    thhrihhplhgvthhtrdhorhhgqeenucggtffrrghtthgvrhhnpeehlefgudelvedutefgtd
    fhfeduudfgvdekgfdvkedtudetudfhkeffleejgfevkeenucevlhhushhtvghrufhiiigv
    pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehjohhshhesjhhoshhhthhrihhplhgvth
    htrdhorhhgpdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhuthdprhgtphht
    thhopegrlhigsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdhmrghnse
    hvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepnhgvthguvghvsehvghgvrhdr
    khgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:X1vhaZZmaa8V-Tau0XJdu6nqcPgT6kOSFghKPZYYFdWdCmnWl5gNFg>
    <xmx:X1vhaQjz5BKjEjtB1lPNnbBErl1QF9PPA2741o1-WuTEFuM-BKFwsg>
    <xmx:X1vhaT60Byf_kIS4CPrEtEXeCiiKLmw0hzBzgfTYwWDVXB5bP7DD2w>
    <xmx:X1vhaf4yjtp395-_0hKLViohX_5rf0eiD89rMINzkCwFtC9r0kQM-A>
    <xmx:X1vhaeGzUWYsa1qMFVAuB_PiK98Y3iVcl0n-llxdAmvQmYq4vPdRedDW>
Feedback-ID: i83e94755:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 0C50F18E006C; Thu, 16 Apr 2026 17:57:51 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Thu, 16 Apr 2026 14:57:19 -0700
From: "Josh Triplett" <josh@joshtriplett.org>
To: "Alejandro Colomar" <alx@kernel.org>
Cc: linux-man@vger.kernel.org, netdev@vger.kernel.org
Message-Id: <43b64cba-a7c5-41ed-8e45-c0508f482687@app.fastmail.com>
In-Reply-To: <aeAAXdBe1f2THR2N@devuan>
References: <ad50CQgF_gNtB1Kr@localhost> <aeAAXdBe1f2THR2N@devuan>
Subject: [PATCH] Document TCP_DEFER_ACCEPT rounding
Content-Type: multipart/mixed;
 boundary=a97c3acb8bde2f7a508a69f0f65635f1d3fe6e0d
X-Spamd-Result: default: False [-0.55 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[joshtriplett.org:s=fm2,messagingengine.com:s=fm2];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain,text/x-patch];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[joshtriplett.org];
	TAGGED_FROM(0.00)[bounces-5339-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[josh@joshtriplett.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[joshtriplett.org:+,messagingengine.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[app.fastmail.com:mid,messagingengine.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,joshtriplett.org:dkim,joshtriplett.org:email]
X-Rspamd-Queue-Id: 8BF6041521E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--a97c3acb8bde2f7a508a69f0f65635f1d3fe6e0d
Content-Type: text/plain
Content-Transfer-Encoding: 7bit

Patch attached.
--a97c3acb8bde2f7a508a69f0f65635f1d3fe6e0d
Content-Disposition: attachment;
	filename*0="0001-Document-TCP_DEFER_ACCEPT-rounding.patch"
Content-Type: text/x-patch;
	name="=?UTF-8?Q?0001-Document-TCP=5FDEFER=5FACCEPT-rounding.patch?="
Content-Transfer-Encoding: base64

RnJvbSBhZDJiNzk4Mzc2MzI2ZDQwOTQ0ZjY5OTgyNzBhNzU1ZjYxYzU3ODE1IE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpNZXNzYWdlLUlEOiA8YWQyYjc5ODM3NjMyNmQ0MDk0NGY2OTk4
MjcwYTc1NWY2MWM1NzgxNS4xNzc2Mzc0NTM5LmdpdC5qb3NoQGpvc2h0cmlwbGV0dC5vcmc+
CkZyb206IEpvc2ggVHJpcGxldHQgPGpvc2hAam9zaHRyaXBsZXR0Lm9yZz4KRGF0ZTogVGh1
LCAxNiBBcHIgMjAyNiAxNDoyMTozNCAtMDcwMApTdWJqZWN0OiBbUEFUQ0hdIERvY3VtZW50
IGBUQ1BfREVGRVJfQUNDRVBUYCByb3VuZGluZwoKU2lnbmVkLW9mZi1ieTogSm9zaCBUcmlw
bGV0dCA8am9zaEBqb3NodHJpcGxldHQub3JnPgotLS0KIG1hbi9tYW43L3RjcC43IHwgMiAr
KwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL21hbi9t
YW43L3RjcC43IGIvbWFuL21hbjcvdGNwLjcKaW5kZXggZmY0NmVhN2JjLi4yNmE5OWI4Nzkg
MTAwNjQ0Ci0tLSBhL21hbi9tYW43L3RjcC43CisrKyBiL21hbi9tYW43L3RjcC43CkBAIC0x
MDkxLDYgKzEwOTEsOCBAQCBBbGxvdyBhIGxpc3RlbmVyIHRvIGJlIGF3YWtlbmVkIG9ubHkg
d2hlbiBkYXRhIGFycml2ZXMgb24gdGhlIHNvY2tldC4KIFRha2VzIGFuIGludGVnZXIgdmFs
dWUgKHNlY29uZHMpLCB0aGlzIGNhbgogYm91bmQgdGhlIG1heGltdW0gbnVtYmVyIG9mIGF0
dGVtcHRzIFRDUCB3aWxsIG1ha2UgdG8KIGNvbXBsZXRlIHRoZSBjb25uZWN0aW9uLgorVGhl
IGtlcm5lbCB3aWxsIHJvdW5kIHRoaXMgdmFsdWUgdXAgdG8gdGhlIG5leHQgbGFyZ2VyIFRD
UCByZXRyYW5zbWl0CitkdXJhdGlvbi4KIC5JUAogT24gYSBjbGllbnQgc29ja2V0LAogaWYg
bm9uemVybywKLS0gCjIuNTMuMAoK

--a97c3acb8bde2f7a508a69f0f65635f1d3fe6e0d--

