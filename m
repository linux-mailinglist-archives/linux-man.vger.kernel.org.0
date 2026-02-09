Return-Path: <linux-man+bounces-5061-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OjWESB9iWnk9wQAu9opvQ
	(envelope-from <linux-man+bounces-5061-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 07:22:24 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B0E10C01E
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 07:22:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3F5F13001FC3
	for <lists+linux-man@lfdr.de>; Mon,  9 Feb 2026 06:22:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 380972E22BD;
	Mon,  9 Feb 2026 06:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="NNRasaN/"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91CCA238C23
	for <linux-man@vger.kernel.org>; Mon,  9 Feb 2026 06:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770618142; cv=none; b=dWZGlhi0c53zLaXp+tHWhwg3Kf81Y/7P1aDRAguHZ1fJHSXCC+PEbHVihzHCf5LV5Tanf0qBd+11yELHnUiHWA6O0OATmZavP2sSsELJ8PxNJhkwISod61gXc0KjjtU58Cs6gNQs7O9js1u1/CDa4VhthdbEbNNVPRYgoLsSHsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770618142; c=relaxed/simple;
	bh=+YpkUnV7B4fjbcPPnqKXey67C18iDzp+k2qplXPR9vg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=L1svBXI/jgIz/wu/ABUjoX4WCkkiwWaUmiFxEmgEn0vDsvGfYoznkwZG+EveV/c8VFFkxAen70f108HwwqYmicrb+ihInpLYAMcOjKFce6q/sXX/AAvPlK3mbV42zu4pVj3DunAVwQ1BZLy5mfSV5pPfr44IHNhGV5pTEItc/DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=NNRasaN/; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1770618140;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=969A660wnBmi5Jo+aDxO7MSnGtfVFKZ6jX7xHYWcr3I=;
	b=NNRasaN/3YdOWx9wbnD/dOecF5fHQeE3c00zmb1Uy/ofAsA9fRO21IlhMwZBOIKfT0yPnw
	zKaJlEQNQjjNpJk7cIVQib3wxfX4GXIo6VHRoTk2Tn3Vnh99UkBkYXxGs+QxrBg33Q0nOs
	wbXAOfBrKW/bsi0wfBN+7kAygF/L3CM=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-344-1juauVwLP46eYre_8A09Dg-1; Mon,
 09 Feb 2026 01:22:17 -0500
X-MC-Unique: 1juauVwLP46eYre_8A09Dg-1
X-Mimecast-MFC-AGG-ID: 1juauVwLP46eYre_8A09Dg_1770618136
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 70E9C1800451;
	Mon,  9 Feb 2026 06:22:15 +0000 (UTC)
Received: from fweimer-oldenburg.csb.redhat.com (unknown [10.45.224.84])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 77870180066C;
	Mon,  9 Feb 2026 06:22:12 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: Alejandro Colomar <alx@kernel.org>,  mario.blaettermann@gmail.com,
  linux-man@vger.kernel.org,  libc-alpha@sourceware.org
Subject: Re: Issue in man page sprof.1
In-Reply-To: <aYjV0n96GmH-lZl-@meinfjell.helgefjelltest.de> (Helge
	Kreutzmann's message of "Sun, 8 Feb 2026 18:28:34 +0000")
References: <ZznJf0DLo7CVHddl@meinfjell.helgefjelltest.de>
	<xdv6pfasrfbegf3pb34ktupjcjao7kunwj65zmmbgwt53jdy6x@fnarmmxyzgpr>
	<87mshxxyol.fsf@oldenburg.str.redhat.com>
	<aYjV0n96GmH-lZl-@meinfjell.helgefjelltest.de>
Date: Mon, 09 Feb 2026 07:22:09 +0100
Message-ID: <lhuqzquv3la.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,sourceware.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-5061-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fweimer@redhat.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E2B0E10C01E
X-Rspamd-Action: no action

* Helge Kreutzmann:

> Hello Florian,
> Am Sun, Nov 17, 2024 at 11:50:18PM +0100 schrieb Florian Weimer:
>> * Alejandro Colomar:
>> 
>> > Hi Helge,
>> >
>> > On Sun, Nov 17, 2024 at 10:46:23AM GMT, Helge Kreutzmann wrote:
>> >> Without further ado, the following was found:
>> >> 
>> >> Issue:    Inconsistency detected by ld.so: dl-open.c: 930: _dl_open: Assertion `_dl_debug_update (args.nsid)->r_state == RT_CONSISTENT' failed!
>> >
>> > IIUC, this report is that running the example shell session resulted in
>> > that problem.  I've CCed glibc in case they can help.
>> >
>> > It would be interesting to know if this can be reproduced, and a full
>> > reproducer.
>> 
>> Hasn't this been fixed in glibc 2.38?  Via:
>> 
>> commit ab5aa2ee3d3f978e474803cbbc5fe805ad30e293
>> Author: Andreas Schwab <schwab@suse.de>
>> Date:   Thu Mar 23 16:46:20 2023 +0100
>> 
>>     dlopen: skip debugger notification for DSO loaded from sprof (bug 30258)
>>     
>>     Avoid inconsistent state in the debugger interface.
>
> Apologies that I missed that question.
>
> In Debian stable (Trixie), glibc 2.41-12+deb13u1, this error is no
> longer present.

I think we should then assume that your issue was bug 30258.

> I can run all commands of sprof(1), however none produces any content,
> i.e. something beyond the header lines. As I'm not a programmer, I
> don't know if this is something to worry about.
>
> helge@twentytwo:/tmp$ sprof -p libdemo.so.1 $LD_PROFILE_OUTPUT/libdemo.so.1.profile
> Flat profile:
>
> Each sample counts as 0,01 seconds.
>   %   cumulative   self              self     total
>  time   seconds   seconds    calls  us/call  us/call  name

Is it possible that no profiling events have been recorded?
How do you call functions in libdemo.so.1?

Thanks,
Florian


