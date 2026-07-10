Return-Path: <linux-man+bounces-5741-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Rr82CSZvUWp5EwMAu9opvQ
	(envelope-from <linux-man+bounces-5741-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 11 Jul 2026 00:16:06 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB9573F741
	for <lists+linux-man@lfdr.de>; Sat, 11 Jul 2026 00:16:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=SJ7Sl97z;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5741-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5741-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5DB42300823E
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 22:11:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B228035E1D8;
	Fri, 10 Jul 2026 22:11:18 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121FC34405B
	for <linux-man@vger.kernel.org>; Fri, 10 Jul 2026 22:11:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783721478; cv=none; b=CH0mjuxQFZx61lyFsd5jMWxOhmbMb0/fZYr0i8CzyaUjz0emGKF++V2iEH1ESEG56MB55t6QfHFk4RwUVovHt7iFNH+w+Cla4Grs67GxWjQvmKkFO++KKlUd54kBGI9A3yVXN/ZFo7s1M27yYcr/kwQ/KV2UgiF6Gg4tekJ3bGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783721478; c=relaxed/simple;
	bh=M9ifkqPwLzkgPAKraaLFzMMy3znELkqr67jc8/SpQU8=;
	h=From:To:Cc:Subject:In-Reply-To:Date:Message-ID:MIME-Version:
	 Content-Type; b=bY52+bH8yxc/iqsVr8KWEFa918KCpW9XAXOFEqByILvvyb8mPUsCooaGo39c2X6H7Vm071kS6eVDBJ7Fl28JywJ2HSyCwBE/kFnOGULJdZGgwoqcShZPJDKLmRI+sTHTtULLOispL2jPdfF0v226nF3d9Tlng+GFSNYNnB2b6jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=SJ7Sl97z; arc=none smtp.client-ip=170.10.129.124
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1783721476;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=ifnMZ7JsFJ8PTBhqV33+JvWTAx025ajC/oaVABEkWQc=;
	b=SJ7Sl97zGxGzClTNYgHSGMthV06vqrTKUZBN55WyvpUgsr9U8K68MczN4mbn7LmE0TOBXo
	IIhiNpRWfdCjyuPo53bO0zeeat4mPUSyF9sg5R/kqQETdgcbrCU5IAEkTiIUugzbi01iIS
	hT16XYm5V8O8CzzJACaAvNB/mTdjk1U=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-379-SLx_JE2BPWqKkx99HVZXEw-1; Fri,
 10 Jul 2026 18:11:12 -0400
X-MC-Unique: SLx_JE2BPWqKkx99HVZXEw-1
X-Mimecast-MFC-AGG-ID: SLx_JE2BPWqKkx99HVZXEw_1783721471
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6BE3D1800603;
	Fri, 10 Jul 2026 22:11:11 +0000 (UTC)
Received: from greed.delorie.com (unknown [10.22.89.250])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 07D90195608F;
	Fri, 10 Jul 2026 22:11:10 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
	by greed.delorie.com (8.16.1/8.16.1) with ESMTP id 66AMB90S778516;
	Fri, 10 Jul 2026 18:11:09 -0400
From: DJ Delorie <dj@redhat.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: alx@kernel.org, linux-man@vger.kernel.org
Subject: Re: Why we're stuck with man(7) (was: man/man8/ldconfig.8: document
 system-wide tunables)
In-Reply-To: <20260710195854.ud4riftmhrfzu54d@illithid>
 (g.branden.robinson@gmail.com)
Date: Fri, 10 Jul 2026 18:11:09 -0400
Message-ID: <xnpl0u8phe.fsf@greed.delorie.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5741-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:g.branden.robinson@gmail.com,m:alx@kernel.org,m:linux-man@vger.kernel.org,m:gbrandenrobinson@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dj@redhat.com,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dj@redhat.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5EB9573F741


"G. Branden Robinson" <g.branden.robinson@gmail.com> writes:
> * Markdown can't do semantics.

And roff has .IR ;-)

These days, most of the docs I write are in texinfo or HTML (raw html,
not markup).  I think I've experienced most of the formats on your list.
I think I've written converters between many things on your list.

Is there a canonical reference to the flavor of roff that we write to,
for modern systems' man page formatters?


