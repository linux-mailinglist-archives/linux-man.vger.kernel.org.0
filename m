Return-Path: <linux-man+bounces-5413-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Ik+NcQ772mD+gAAu9opvQ
	(envelope-from <linux-man+bounces-5413-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2026 12:34:44 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C640471133
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2026 12:34:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7A25E3004612
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2026 10:34:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D88E3B4E94;
	Mon, 27 Apr 2026 10:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="BbmUs8UH"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E0AB26AC3
	for <linux-man@vger.kernel.org>; Mon, 27 Apr 2026 10:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777286081; cv=none; b=mgHtJLquL+t0eiU+FC5iPKg95tepjJubs34+szgi2LF4MwuUSs2Jyy3/g8LFh9U3B1sBzd6Ice49OcM+soqNdZTk+XfpCxmWTIrMWot3DaW+zj0wAHnt4zwmnqlK1q/bLOPSdLBIdgNJJVxgTvSz8WcTIPqFhUZEOJQ5ugi+0FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777286081; c=relaxed/simple;
	bh=96Qu9ZHHV2Ks20BueuPC7Z9kdEP0/EQqB9wFX9RVzaE=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=DWsI6b4V4PvwbU6Fr9elPhbXj7DhvSijpYJp1vT2TZlh7GpcGsuQF3G6RbikZhFXAm38CLSnfbJHxUzEaScD64IQj5MNUbE8Wr/sRMBGGqTRJS2sozKlNJGmlFDAGIkp+APfNzDKMvzd/ElWatHVwjv4/tk/IGXtbaUubUOO7jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=BbmUs8UH; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1777286079;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=nYKIC1X5gpN9hRMqIZKYUsa7y5yhIxAf4oCYaIDdOeA=;
	b=BbmUs8UHwoaTEVRsEAfZBOCY+0WNQD6xDqlf1SH+GE9F+c9PyORKpDDKuZi8AkE97YPJnU
	kf5d2CimD6j348tXrHqSMqtbWJc8mDpGjP96QzRWL96uSeFQeR8NrzGir42e2Oy2VghU3f
	5g3fdq5pseYOgFT11E9e8oajH2YnNIM=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-647-uT_YJZIUPcKdAWXZElVNlg-1; Mon,
 27 Apr 2026 06:34:36 -0400
X-MC-Unique: uT_YJZIUPcKdAWXZElVNlg-1
X-Mimecast-MFC-AGG-ID: uT_YJZIUPcKdAWXZElVNlg_1777286074
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ABE9E1956054;
	Mon, 27 Apr 2026 10:34:34 +0000 (UTC)
Received: from fweimer-oldenburg.csb.redhat.com (unknown [10.44.48.4])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C9E491800347;
	Mon, 27 Apr 2026 10:34:32 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Dorjoy Chowdhury <dorjoychy111@gmail.com>,  linux-man@vger.kernel.org,
  brauner@kernel.org,  jlayton@kernel.org,  libc-alpha@sourceware.org
Subject: Re: [PATCH v2 1/2] man/man3/errno.3: Document EFTYPE error code
In-Reply-To: <ae4K_5f1g3zgSNkC@devuan> (Alejandro Colomar's message of "Sun,
	26 Apr 2026 14:59:12 +0200")
References: <20260426111707.36541-1-dorjoychy111@gmail.com>
	<20260426111707.36541-2-dorjoychy111@gmail.com>
	<ae4K_5f1g3zgSNkC@devuan>
Date: Mon, 27 Apr 2026 12:34:30 +0200
Message-ID: <lhu5x5c4rpl.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Rspamd-Queue-Id: 7C640471133
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5413-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,sourceware.org];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fweimer@redhat.com,linux-man@vger.kernel.org];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[redhat.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oldenburg.str.redhat.com:mid]

* Alejandro Colomar:

> [CC += libc-alpha]
>
> Hi Dorjoy,
>
> On 2026-04-26T17:14:25+0600, Dorjoy Chowdhury wrote:
>> Signed-off-by: Dorjoy Chowdhury <dorjoychy111@gmail.com>
>
> Thanks!
>
> 	Reviewed-by: Alejandro Colomar <alx@kernel.org>
>
> I will wait until glibc adds this error code to their <errno.h> before
> applying the patch.  This means either you should write and send a patch
> to glibc (if so, please CC me), or you should ask them to add it
> themselves (if you're not comfortable writing glibc code).

I'm not sure where this is coming from.  POSIX says EFTYPE was rejected
in favor of ENOTTY.

Thanks,
Florian


