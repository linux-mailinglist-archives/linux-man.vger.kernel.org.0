Return-Path: <linux-man+bounces-5753-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eHqGBx34VmoHDwEAu9opvQ
	(envelope-from <linux-man+bounces-5753-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 15 Jul 2026 05:01:49 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B14075A2DA
	for <lists+linux-man@lfdr.de>; Wed, 15 Jul 2026 05:01:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=Iz9u4z02;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5753-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5753-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 672B230E7B69
	for <lists+linux-man@lfdr.de>; Wed, 15 Jul 2026 03:00:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48610349CC4;
	Wed, 15 Jul 2026 03:00:53 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACC9F3290AA
	for <linux-man@vger.kernel.org>; Wed, 15 Jul 2026 03:00:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784084453; cv=none; b=DRjngKi3qWocLST1r+NNIB2Y2YmXJeDGK5pp7GefoGJitER09tdgxocUTuDBKvoKk/BEVAOdLmgfpj46ArcronLdhxiR0OS4vtFFRE7QqslVcGww5K36VuoSABRIKPpzj59Eb9MUkgondNU75jLybsTIv1v1wqfnyXO8Ts4pZGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784084453; c=relaxed/simple;
	bh=fXH1QE5o0Mh0x+rjI588+C3lLqPG+MTz8Z22F0b94SI=;
	h=Message-ID:From:Date:Subject:Content-type:To; b=Wj8ahyBMZErDJmaNkjy8fKROzficedvU+Ex9qp3xYVIi35xE4aGoWQmpodBAjVzm1zm0yeCvpmU+0sn9HN6L5v3/kTrHp9xJLzv69rE8WW6myrbW+qHtX6zVCxnHMsz8GXGPjQ8Vf/l1Q/I2xGFuKGBH3vydiLJskCTdRqrangA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Iz9u4z02; arc=none smtp.client-ip=170.10.133.124
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1784084450;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:content-type:content-type;
	bh=on0xMfMkWd3cq27TBKdN2cC9eSSn1eRuTsVSldi3Nts=;
	b=Iz9u4z02zH1PsVj+lafpm6zv7iKid/S6cuW7MKTCUuU3zWZRvCuq+9tx/Jo2L3rmYBrKXD
	cU3k/afA36ndvYbd1HATyZMASU+vQj6vW1Qgq2Z3jf2ZPU4fQ4z4KJglgvZREr4pVi2woH
	Gsa3/W1lYrtfCwRbnqaHsjJKXx0YedQ=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-678-C2sbN2n5P8uOp4JcqBD6XA-1; Tue,
 14 Jul 2026 23:00:49 -0400
X-MC-Unique: C2sbN2n5P8uOp4JcqBD6XA-1
X-Mimecast-MFC-AGG-ID: C2sbN2n5P8uOp4JcqBD6XA_1784084448
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A7DF1195608E
	for <linux-man@vger.kernel.org>; Wed, 15 Jul 2026 03:00:48 +0000 (UTC)
Received: from greed.delorie.com (unknown [10.22.89.250])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 60226180029C
	for <linux-man@vger.kernel.org>; Wed, 15 Jul 2026 03:00:48 +0000 (UTC)
Received: from greed.delorie.com (localhost [127.0.0.1])
	by greed.delorie.com (8.16.1/8.16.1) with ESMTPS id 66F30kbV1140967
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <linux-man@vger.kernel.org>; Tue, 14 Jul 2026 23:00:46 -0400
Received: (from dj@localhost)
	by greed.delorie.com (8.16.1/8.16.1/Submit) id 66F30kBu1140966;
	Tue, 14 Jul 2026 23:00:46 -0400
Message-ID: <cover.1784084289.git.dj@redhat.com>
From: DJ Delorie <dj@redhat.com>
Date: Tue, 14 Jul 2026 22:58:09 -0400
Subject: [PATCH v2 0/4] Tunables-related updates
Content-type: text/plain; charset=UTF-8
To: linux-man@vger.kernel.org
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5753-lists,linux-man=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER(0.00)[dj@redhat.com,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_ONE(0.00)[1];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dj@redhat.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7B14075A2DA

DJ Delorie (4):
  man/man5/ld.so.conf.5: document include syntax
  man/man5/tunables.conf: Document system-wide tunables config
  man/man8/ld.so.8: Note that ld.so.cache includes tunables
  man/man8/ldconfig.8: Add tunables options

 man/man5/ld.so.conf.5    |  28 ++++++++++
 man/man5/tunables.conf.5 | 116 +++++++++++++++++++++++++++++++++++++++
 man/man8/ld.so.8         |   3 +-
 man/man8/ldconfig.8      |  25 ++++++++-
 4 files changed, 168 insertions(+), 4 deletions(-)
 create mode 100644 man/man5/tunables.conf.5

-- 
2.47.3


