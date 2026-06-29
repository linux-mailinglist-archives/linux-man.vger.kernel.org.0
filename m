Return-Path: <linux-man+bounces-5667-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UA3iMzZ+Qmoc8gkAu9opvQ
	(envelope-from <linux-man+bounces-5667-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 16:16:22 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C79176DBE3B
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 16:16:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=zytor.com header.s=2026062701 header.b=lAEmj18b;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5667-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5667-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=zytor.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9A81E3094B9E
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 14:00:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8877352006;
	Mon, 29 Jun 2026 13:59:34 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3804130F7FF
	for <linux-man@vger.kernel.org>; Mon, 29 Jun 2026 13:59:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782741574; cv=none; b=TY6WHE1gJIm2MorZENCsR+1E8Fg7xbtNT+TulCseQJqYbFHHjUX95Cj5RFRGgi0+Tc1iOyYy/IEDoOKvyIJYtclot31+T/4/f3IOs9NR2vhwsGEJTdb0r5lgbiPntUMlcV3tV42YEGoaVfNSOAyIg+RaPP67oCckzdNwKYIp15Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782741574; c=relaxed/simple;
	bh=j+QWWQzj+c2EptQIRWocrHiZpeL9vkHxipo/tD5db2A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UPhZ8uH8J2ddoIpzpx3ZbC2QJqDbURJM2oWQo6trMbqCQkTKvapqZJbRIBQv/qpmaPshyRJ+4VnkDDOOSsaYpA1IP4wFlXDSwgsMvSdgVGvavbvBBqZqPHdx3znV3TYHFTh0tCQFOc0taZ90j9LaEZpPmGzF65MxboK4BjWQ5Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zytor.com; spf=pass smtp.mailfrom=zytor.com; dkim=pass (2048-bit key) header.d=zytor.com header.i=@zytor.com header.b=lAEmj18b; arc=none smtp.client-ip=198.137.202.136
Received: from mail.zytor.com ([IPv6:2601:646:8081:7da1:4462:691a:e05c:b745])
	(authenticated bits=0)
	by mail.zytor.com (8.18.1/8.17.1) with ESMTPSA id 65TDxPvh370711
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 29 Jun 2026 06:59:26 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 65TDxPvh370711
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zytor.com;
	s=2026062701; t=1782741566;
	bh=uLvO5nK3/RGK9XhNq0dC+a38IN3eMbHIzhq4kdKhriY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lAEmj18bbOUdK8mbeM6oHmpYAQgIiESLg7IKyQaCMr0nZ6FQwFZCR3S/JsdQB6zPi
	 xDI/iDMjVAh76b1ZTyiQlY2YIrBEXsn8LRgMmIvAp1BP9eqm7PtWWT1aBXIFsApcIp
	 aAYduMe5izUVY2ITXELtYCmbaHHaJEEaIXYy/fyj+b1QmwO7xzjQ2yrn83qbW2+OFi
	 UicIHqyHe4OjQ/jhA51QyemzVCO09okbSzpeGzz1poS+cwZCckaDuun810kclXN3ej
	 +cnRduXiMj26UJNGOZCaEoDcJdcb5mpHt6CF4oHkMUh6KzURZZdlCEcqfI3IG2qf3c
	 dHADX7gB+IdpQ==
From: "H. Peter Anvin" <hpa@zytor.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "H . Peter Anvin" <hpa@zytor.com>, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: [PATCH v2 0/4] update termios(3) for glibc 2.42+ and POSIX.1-2024
Date: Mon, 29 Jun 2026 06:59:04 -0700
Message-ID: <20260629135910.143781-1-hpa@zytor.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <akI8eeMSCh_l8rYr@devuan>
References: 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[zytor.com,none];
	R_DKIM_ALLOW(-0.20)[zytor.com:s=2026062701];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-5667-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:hpa@zytor.com,m:linux-man@vger.kernel.org,m:libc-alpha@sourceware.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[hpa@zytor.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hpa@zytor.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[zytor.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C79176DBE3B

Trying again:

- Document the new baud rate setting interfaces in glibc 2.42+
- Document deprecations in POSIX.1-2024
- Remove some obsolete descriptions of limitations
- Remove details from termios(3) that really only belong in ioctl_tty(2)

---
 man/man3/termios.3        | 305 +++++++++++++++++++++++-----------------------
 man/man3type/baud_t.3type |   1 +
 man/man3type/cc_t.3type   |  42 ++++++-
 3 files changed, 191 insertions(+), 157 deletions(-)

