Return-Path: <linux-man+bounces-5619-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBhjJPdPGGpMiwgAu9opvQ
	(envelope-from <linux-man+bounces-5619-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 16:23:51 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B8B5F3A01
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 16:23:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3A422300334D
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 14:23:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D994E3BED23;
	Thu, 28 May 2026 14:23:48 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from ns110.s2h.net (ns110.s2h.net [139.162.45.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70D2129E0F6
	for <linux-man@vger.kernel.org>; Thu, 28 May 2026 14:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.162.45.236
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779978228; cv=none; b=kBKnezueaU5kHGw8R7IUZiLWcti3p9gkWBDxav4sDso6HQ0RCTUy0dDnTRs63Eu8kvwcOSsKvdB4A9Knn+3aaV4RYq6WsX+l5GebWyH/5Ni7IanSgazLt0FrA4wvxnbesIvVU5rlgDOJPDKqOXUxv0JPCn+KilnH45ZX0VunP0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779978228; c=relaxed/simple;
	bh=AS5ICp5+6jerECjRwnkO4Y461QreU4MeKEtzCQyzNbE=;
	h=From:Subject:To:Content-Type:Date:Message-Id; b=e9czkxoL6H6lzlWwEPyrvmR9mSfTV1uonJTrVqft3KkPvNCenw7EzAo1y134pM1BzoVujfwTdzjYokoVqIdSxAkBTqo2+KIi1vYXXasY1cvJwRxiPWe3LXcgDAQX+Zrrh/CpjsDzF2b8rU11KU/2zFfO/FEd9jRJcckKI0nZR9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=obss.in; spf=pass smtp.mailfrom=obss.in; arc=none smtp.client-ip=139.162.45.236
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=obss.in
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=obss.in
Received: from ObaTech (unknown [189.124.144.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ns110.s2h.net (Postfix) with ESMTPSA id A423710397
	for <linux-man@vger.kernel.org>; Thu, 28 May 2026 19:36:03 +0530 (IST)
From: "Computer Gaming pc" <sales.rajasthan@obss.in>
Subject: =?UTF-8?B?QXZhaWxhYmxlIEludmVudG9yeSDigJMgSVQgSGFyZHdhcmUg?=
 =?UTF-8?B?JiBDb21wb25lbnRzIChVU0Ep?=
To: <linux-man@vger.kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Reply-To: <sales@computergamingpc.com>
Date: Thu, 28 May 2026 15:18:13 +0100
Priority: urgent
X-Priority: 1
Importance: high
Message-Id: <281220260518155D5B8CC16F$624FEEA3B1@obss.in>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [0.64 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[obss.in : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_FROM(0.00)[bounces-5619-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sales@computergamingpc.com];
	TO_DN_NONE(0.00)[];
	HAS_X_PRIO_ONE(0.00)[1];
	FROM_NEQ_ENVFROM(0.00)[sales.rajasthan@obss.in,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,computergamingpc.com:replyto,computergamingpc.com:email]
X-Rspamd-Queue-Id: 48B8B5F3A01
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,
Quick update — these units are in stock and can ship today: 

Mobile & RFID Devices
Zebra TC53 (51 units) – $600
Honeywell CT477 (51 units) – $600
Zebra MC93 (60 units) – $600
Zebra TC55 (71 units) – $600
Zebra MC9401 (81 units) – $1,100 
Zebra TC22 Standard Range (80 units) – $500 
Zebra TC21 (81 units) – $220 
Zebra RFD40 Premium RFID Reader/Writer (56 units) – $610 
Honeywell CK65 (86 units) – $600

GPUs & Accelerators
RTX 5090 Founders Edition 32GB (90 units) – $2,100 
RTX Asus/Gigabyte 4090 24GB (45 units) – $1,680 
RTX 4090 Founders Edition 24GB (90 units) – $2,000 
RTX A6000 48GB Ada (54 units) – $1,100 
RTX 6000 48GB Ada (51 units) – $1,200 
Nvidia L40s GPU (45 units) – $3,000 
Nvidia H100 80GB PCIe (9 units) – $20,000 
Storage & CPUs 
Samsung PM9A3 2.5" SSD PCIe 4.0 7.68TB (115 units) – $650.00
7.68TB SAS SSD 2.5" 12G Server Drive (140 units) – $650.00

For quotes, availability, or inspection scheduling, please reach out 
directly:
sales@computergamingpc.com
Call or WhatsApp: +1(774) 559-1248 | +1 (641)232-4364 
Thank you for your continued partnership.
Ann Kamila
Computer Gaming PC Trading
2500 US-6, Iowa City, IA 52240, USA


