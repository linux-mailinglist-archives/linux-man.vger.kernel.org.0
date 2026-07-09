Return-Path: <linux-man+bounces-5726-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dB7fKDfGT2q6oAIAu9opvQ
	(envelope-from <linux-man+bounces-5726-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 09 Jul 2026 18:03:03 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F057333DB
	for <lists+linux-man@lfdr.de>; Thu, 09 Jul 2026 18:03:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=smrk.net header.s=20221002 header.b=d3VLox5X;
	dmarc=pass (policy=none) header.from=smrk.net;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5726-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="linux-man+bounces-5726-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 72AEA304E087
	for <lists+linux-man@lfdr.de>; Thu,  9 Jul 2026 16:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43D3319995E;
	Thu,  9 Jul 2026 16:01:11 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.smrk.net (mail.smrk.net [45.76.87.244])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF46038AC83
	for <linux-man@vger.kernel.org>; Thu,  9 Jul 2026 16:01:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783612871; cv=none; b=ktbcKLcIoVRfV2kQebMnHwQV7HcjPfwZVUK34K5zsrdU765vsS2UfCUKQ559nNwo6IMRaCXB5momuHDYK6/56AfHVS2cM+cuRd6drLTGDJAhcUhFe1TUJ6CPLa0pzBMaqAQ1dDD4TyH3AE3jYVFBKcwBlFLk8Dc+uyHnxSCCAcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783612871; c=relaxed/simple;
	bh=d009xvl+NK3LvRLuP5tZx+ItfF/76fJKmcDePRMd2TM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bE0WDxOwGRScOVjxLYSRHpD0xw+h/v3472V5KoY1lVqc20jFSfkL2jS/P3HTf7n9LB4X0imoqLM5QilJT8lMCIyUbpn5+0FygEef+7esbPA0nixOeUKckzWTiGH+3bKm2fRjne7IsZVffcGBGT7sUeFZjWRAoVBm0WYFS7uQtsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=smrk.net; spf=pass smtp.mailfrom=smrk.net; dkim=pass (2048-bit key) header.d=smrk.net header.i=@smrk.net header.b=d3VLox5X; arc=none smtp.client-ip=45.76.87.244
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smrk.net; s=20221002;
	t=1783611263;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J4pz9Tr0gRHcr+r9uU3FMHAa9s2ZfGzviI6yP2CnZcI=;
	b=d3VLox5XKuWTHIvGlT65N1TMlIoUDSlS3n86P38uWWPwoK5y6gW9pxwzyJxl0XBVd9lqt5
	uT3jZEUsj2pXBa1a32CtIMLfbWgnpTUy/tvl+NmdfQ4fwsPGTuvIju6hZvgqXu5WmH60FU
	oaGhOKPKav2p3gpx1KgXgrxsYF8qPGUEaAi3AnFu/eo9UF6KZ8TV1bC2BuHtUxhlsD3QEp
	1C6adWv5EtBYb6Yjc3xi4Gq+z5zWwQl7EDl3CcJQr5kRJgFN87azOa7GTQhixQiXXdTqp0
	LFi0nAqb41TbTyr1kjWgZiHnERGIz/mrmPc9L5KFlcc/Pz9cT5s8O9InjaOPZQ==
Received: from localhost (<unknown> [192.168.5.2])
	by smrk (OpenSMTPD) with ESMTPSA id 6ccf0875 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Thu, 9 Jul 2026 17:34:23 +0200 (CEST)
From: =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@smrk.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 3/3] man/man7/landlock.7: wfix
Date: Thu,  9 Jul 2026 17:34:22 +0200
Message-ID: <20260709153422.210312-3-stepnem@smrk.net>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260709153422.210312-1-stepnem@smrk.net>
References: <20260709153422.210312-1-stepnem@smrk.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.09 / 15.00];
	R_MIXED_CHARSET(1.25)[subject];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[smrk.net,none];
	R_DKIM_ALLOW(-0.20)[smrk.net:s=20221002];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[stepnem@smrk.net,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5726-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stepnem@smrk.net,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[smrk.net:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smrk.net:from_mime,smrk.net:email,smrk.net:mid,smrk.net:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A2F057333DB

Signed-off-by: Štěpán Němec <stepnem@smrk.net>
---
 man/man7/landlock.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
index 293374ed9b46..556b08fff04b 100644
--- a/man/man7/landlock.7
+++ b/man/man7/landlock.7
@@ -296,8 +296,8 @@ .SS Scope flags
 .SS Layers of file path access rights
 Each time a thread enforces a ruleset on itself,
 it updates its Landlock domain with a new layer of policy.
-Indeed, this complementary policy is composed with the
-potentially other rulesets already restricting this thread.
+Indeed, this complementary policy is composed with any
+other rulesets already restricting this thread.
 A sandboxed thread can then safely add more constraints to itself with a
 new enforced ruleset.
 .P
-- 
2.55.0


