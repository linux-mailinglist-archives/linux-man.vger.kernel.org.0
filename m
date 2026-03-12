Return-Path: <linux-man+bounces-5252-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id dM1vC4+HsmmtNQAAu9opvQ
	(envelope-from <linux-man+bounces-5252-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 12 Mar 2026 10:29:51 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 841CF26F8F6
	for <lists+linux-man@lfdr.de>; Thu, 12 Mar 2026 10:29:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E70573061E00
	for <lists+linux-man@lfdr.de>; Thu, 12 Mar 2026 09:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7672A3B584E;
	Thu, 12 Mar 2026 09:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="Dtp6UsNY"
X-Original-To: linux-man@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A4D3AF675
	for <linux-man@vger.kernel.org>; Thu, 12 Mar 2026 09:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773307640; cv=none; b=Y3J4fptJJRdYJUikaFdSmI5eUA2mSZp/oG0NMOgFeTJsd3WPF2qM2GNrcnQ7EyOk8b2YG16pzYy4i3WiO/o2zi3pLhFTIaem+ggdzdjv/LenEz92AKGGdhdehpxeMz7dgKofySVUBS6Lblor6n4eW6/hZp5dSD6olium1u9yV8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773307640; c=relaxed/simple;
	bh=G9KcYgAehPhGdZAkBFAeDDWerPnapkpQXK/yO5/DV14=;
	h=From:Subject:To:Content-Type:MIME-Version:Date:
	 Content-Disposition:Message-Id; b=MYY2AAEo10M0x0r5ROuEZ1o6o6hM+XTIdsJypBadAA4UWaaLHGGDPJBoYFTGL4r14JKyBXBxiwxHhXllCgHIOU2DkVXBI9EEWkG2scUc3MYgQQybJQrzy7ZuMZG7pbgCjQezok3iZ3pb/CjlFreXgxRIrxXxTFCjsLEr/R6qZV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=Dtp6UsNY; arc=none smtp.client-ip=117.135.210.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:To:Content-Type:MIME-Version:Reply-To:
	Date:Message-Id; bh=G9KcYgAehPhGdZAkBFAeDDWerPnapkpQXK/yO5/DV14=;
	b=Dtp6UsNYb1m9lXeA59Wfib5E4rzFAGk1ptyHyCMKWD+4nMtDDjx/208JFxOpji
	IL0DCLmcr5Ln8emNfuW74WQsLHjBqculpcU2XS/xhjFx4M4jf5q92IWIoeL6Jtpf
	dDPUIxS2Cq3UXHUyzQQAcfT1HejuWpbMwqbGtd/WHqrbQ=
Received: from DESKTOP-KC80OSP (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wBHzOfwhrJpi2A0Ag--.60685S2;
	Thu, 12 Mar 2026 17:27:13 +0800 (CST)
From: "Layda" <laydaxiao@163.com>
Subject: Re: water machines solutions/Phigreat
To: linux-man@vger.kernel.org
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Reply-To: laydaxiao@163.com
Date: Thu, 12 Mar 2026 17:27:10 +0800
X-Priority: 3
X-MSMail-Priority: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.3790.4913
Content-Disposition: inline
X-CM-TRANSID:_____wBHzOfwhrJpi2A0Ag--.60685S2
Message-Id:<69B286F1.02DF50.00001@m16.mail.163.com>
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjTRdrcTUUUUU
X-CM-SenderInfo: xod1vtp0ld0qqrwthudrp/xtbC3BHkX2myhvGKxQAA3V
X-Spamd-Result: default: False [-1.06 / 15.00];
	FAKE_REPLY(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[163.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[163.com:s=s110527];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_X_PRIO_THREE(0.00)[3];
	TAGGED_FROM(0.00)[bounces-5252-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FREEMAIL_REPLYTO(0.00)[163.com];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[163.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[163.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[laydaxiao@163.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laydaxiao@163.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 841CF26F8F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGVsbG8hIA0KUmVsaWFibGUgQ2hpbmEga2l0Y2hlbiB3YXRlciBlcXVpcG1lbnQgc3VwcGxpZXIg
c2luY2UgMjAxMywgcHJvdmlkaW5nIEIyQiBPRU0mT0RNLiANCk91ciBDRS9XUkFTL1VML1JPSFMg
Y2VydGlmaWVkIHByb2R1Y3RzIGFyZSBleHBvcnRlZCBnbG9iYWxseSwgaW5jbHVkaW5nIHdhdGVy
IG1hY2hpbmVzLCBwdXJpZmllcnMgYW5kIGN1c3RvbWl6YWJsZSBtZWNoYW5pY2FsL2VsZWN0cmlj
IG11bHRpLWZ1bmN0aW9uYWwgZmF1Y2V0cyAodHJlbmR5ICYgaG90LXNlbGxpbmcpLiANCknigJlt
IExheWRhLCAwMDg2IDE1Mzk2Mjc1MDkzLiBCcm93c2Ugd3d3LnBoaWdyZWF0LmNvbS4gDQpMb29r
aW5nIGZvcndhcmQgdG8geW91ciBjb250YWN0IGFuZCBmcmllbmRseSBwaG9uZSBjaGF0LiANClNp
bmNlcmVseS4NCkxheWRhIA0K


