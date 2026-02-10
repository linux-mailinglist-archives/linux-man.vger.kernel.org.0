Return-Path: <linux-man+bounces-5078-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMRoDrzLimmbNwAAu9opvQ
	(envelope-from <linux-man+bounces-5078-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 07:10:04 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 943FD11749D
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 07:10:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 35260300A62A
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 06:10:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61581274B37;
	Tue, 10 Feb 2026 06:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="delwTiyy"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2D912D1F1
	for <linux-man@vger.kernel.org>; Tue, 10 Feb 2026 06:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770703801; cv=none; b=d5xIAA7XNpMo+z+hLcXjgL2E0egRUjSQrDbxLiR4L4Lmp0gTwi29RK98crX5YBGWKD5b7FnXbdfKmAQqmF3EFoV6hkqs37D5eex3qw9eIL+IUu5vTocTZjiIp4qT20teXMuxPFKSLzXcYz8yVZJ1iyKgKIB9hIZYhkLppxjEevw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770703801; c=relaxed/simple;
	bh=9Kt9HXyAi4XWfttTF6YdtnmTaYJRCFhIgrAPOuZlz9Q=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Nwl1GX+5daCw35g0StpvptdY1BfavNeIxD18iOCDOEEi5E3N0mBRUy4b4GrCiZeoAmlsQ4cR+FpB6hGKqNeAfUfChmcELQjMmIhpV8ZQv+Vg32zZ0RWPpvvYLZdxeoCSJRF2jyXvwV++r3119gCdGbsAraD+wZgEbe0V7AVvolI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=delwTiyy; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1770703798;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UESOl9YRr6N+J2wq7NYnKQ3CML36UtNv+QwZTF7zAMI=;
	b=delwTiyyGEsw0WaBVWA2GPyjHTtH6nnq8pDNPmSDO4TkJV3HPNHjb/HruuHFIVUSBs2YyD
	uMGDNPXERzcgHih8fGGV0Y/0ucQgUDLdQOMD6oClYnno0U5DpavYC4pFwk0MKmN+meTq6v
	FwqVR6oa/PXTFzJKhLeXLXzvSyPVSOs=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-636-_9DtUvnOMcuTz824GwdKfQ-1; Tue,
 10 Feb 2026 01:09:57 -0500
X-MC-Unique: _9DtUvnOMcuTz824GwdKfQ-1
X-Mimecast-MFC-AGG-ID: _9DtUvnOMcuTz824GwdKfQ_1770703796
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6C9931956089;
	Tue, 10 Feb 2026 06:09:55 +0000 (UTC)
Received: from fweimer-oldenburg.csb.redhat.com (unknown [10.45.224.45])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6761230001A5;
	Tue, 10 Feb 2026 06:09:53 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: Alejandro Colomar <alx@kernel.org>,  mario.blaettermann@gmail.com,
  linux-man@vger.kernel.org,  libc-alpha@sourceware.org
Subject: Re: Issue in man page sprof.1
In-Reply-To: <aYob8JOv64u7tVtt@meinfjell.helgefjelltest.de> (Helge
	Kreutzmann's message of "Mon, 9 Feb 2026 17:40:00 +0000")
References: <ZznJf0DLo7CVHddl@meinfjell.helgefjelltest.de>
	<xdv6pfasrfbegf3pb34ktupjcjao7kunwj65zmmbgwt53jdy6x@fnarmmxyzgpr>
	<87mshxxyol.fsf@oldenburg.str.redhat.com>
	<aYjV0n96GmH-lZl-@meinfjell.helgefjelltest.de>
	<lhuqzquv3la.fsf@oldenburg.str.redhat.com>
	<aYob8JOv64u7tVtt@meinfjell.helgefjelltest.de>
Date: Tue, 10 Feb 2026 07:09:50 +0100
Message-ID: <lhuseb9m8nl.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,sourceware.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5078-lists,linux-man=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fweimer@redhat.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 943FD11749D
X-Rspamd-Action: no action

* Helge Kreutzmann:

> Hello Florian,
> On Mon, Feb 09, 2026 at 07:22:09AM +0100, Florian Weimer wrote:
>> > Am Sun, Nov 17, 2024 at 11:50:18PM +0100 schrieb Florian Weimer:
>> >> * Alejandro Colomar:
>  
>> > I can run all commands of sprof(1), however none produces any content,
>> > i.e. something beyond the header lines. As I'm not a programmer, I
>> > don't know if this is something to worry about.
>> >
>> > helge@twentytwo:/tmp$ sprof -p libdemo.so.1 $LD_PROFILE_OUTPUT/libdemo.so.1.profile
>> > Flat profile:
>> >
>> > Each sample counts as 0,01 seconds.
>> >   %   cumulative   self              self     total
>> >  time   seconds   seconds    calls  us/call  us/call  name
>> 
>> Is it possible that no profiling events have been recorded?
>> How do you call functions in libdemo.so.1?
>  
> I simply copied the instructions in the man page one by one and
> observed the output, without really understanding what I'm doing. So
> yes, the problem may be perfectly on my side, that I should have
> generated some events.

The instructions work for me on Fedora 43.  It's possible that they
depend on compiler/linker default settings not being overriden by the
distribution.  Fedora only changes fewer upstream defaults than other
distributions.

Thanks,
Florian


