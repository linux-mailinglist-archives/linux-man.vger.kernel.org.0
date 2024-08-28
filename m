Return-Path: <linux-man+bounces-1722-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4FF962656
	for <lists+linux-man@lfdr.de>; Wed, 28 Aug 2024 13:50:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C89211F23902
	for <lists+linux-man@lfdr.de>; Wed, 28 Aug 2024 11:50:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7810416CD2D;
	Wed, 28 Aug 2024 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Csjas84Y"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 901F614A605
	for <linux-man@vger.kernel.org>; Wed, 28 Aug 2024 11:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724845834; cv=none; b=Utq8y68y6nHUIK6KHnHxQmNhDoAAo6OPEEHDJEnJto/gKl5bl57X9u/Pq9p0OUYXzyAeXmX6lZg1u2z2CYwM6hVrpYo98sPcfyeFOzPr6ilCfhWT/lmhVA8VXfmfGGFom9thDVKPvf0If4SbxROHbf07wTofdjzGt7wiufRCuhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724845834; c=relaxed/simple;
	bh=7w12n/vyUi4tOmiKEkWP2GnwzafCkZS344n+RvobmGc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=f+8qtk3mfZCxBM9aIV9rvQDbGm/ZqEeb1qJu7wBpgfqx/ebQqy7LhLszptXr19J6Bm0uHKPnLC4Icm0ZzapmX0BbzRNFH63NiY0s/FplMcTAHvSYPQ072tno7+vG+Gxy9sy+9V41aao2ahfXNmZb9hEM+KKIjtd4cLGydFCdpZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Csjas84Y; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1724845831;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=N1BpNCHrZy4R1ZS0b/h/snjKXAaIKSRZLZF+FkYspW4=;
	b=Csjas84Y4m4l3GGtLimOAWrlUOlwkWLOwmpO4EseAdKUmE1RWDX8wdcQvNGcM8QQcqQbJ8
	bX7K1nxnSzClVAbj5f0mMaq14KKVgLRKwarPqIxWcbygw2dBT3lXPfd3sCqmW4LOdVjwgr
	VbDe3VzwWqeyVznuI5yJFLwstfBQx40=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-263-AE74jsQBMIe1R5V5xdSbSw-1; Wed,
 28 Aug 2024 07:50:28 -0400
X-MC-Unique: AE74jsQBMIe1R5V5xdSbSw-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 245631954B03;
	Wed, 28 Aug 2024 11:50:27 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.2.16.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EB7A61955D56;
	Wed, 28 Aug 2024 11:50:25 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,  libc-alpha@sourceware.org
Subject: Re: [PATCH v2] dlinfo.3: Document the RTLD_DI_PHDR request
In-Reply-To: <n7mi3i227tecv4waqwxrcq7cg5ll5mws7iirecgvvlgjyh65bs@xmhcxfhfpufz>
	(Alejandro Colomar's message of "Wed, 28 Aug 2024 13:45:01 +0200")
References: <87o75chpwb.fsf@oldenburg.str.redhat.com>
	<n7mi3i227tecv4waqwxrcq7cg5ll5mws7iirecgvvlgjyh65bs@xmhcxfhfpufz>
Date: Wed, 28 Aug 2024 13:50:23 +0200
Message-ID: <87h6b4hnnk.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12

* Alejandro Colomar:

> Hi Florian,
>
> On Wed, Aug 28, 2024 at 01:01:56PM GMT, Florian Weimer wrote:
>> First added in glibc 2.36, backported upstream to glibc 2.34,
>> so mention 2.34.1 for the first version.
>> 
>> Signed-off-by: Florian Weimer <fweimer@redhat.com>
>> 
>> ---
>> v2: Fix commit IDs.
>>  man/man3/dlinfo.3 | 15 ++++++++++++++-
>>  1 file changed, 14 insertions(+), 1 deletion(-)
>> 
>> diff --git a/man/man3/dlinfo.3 b/man/man3/dlinfo.3
>> index 84b696f8c..8158356bd 100644
>> --- a/man/man3/dlinfo.3
>> +++ b/man/man3/dlinfo.3
>> @@ -194,10 +194,23 @@ If this object does not define a PT_TLS segment,
>>  or if the calling thread has not allocated a block for it,
>>  NULL is placed in
>>  .IR *info .
>> +.TP
>> +.BR RTLD_DI_PHDR " (\fIconst ElfW(Phdr *)\fP, since glibc 2.34.1)"
>> +.\" glibc commit d056c212130280c0a54d9a4f72170ec621b70ce5 (2.36)
>> +.\" glibc commit 28ea43f8d64f0dd1f2de75525157730e1532e600 (2.35.1)
>> +.\" glibc commit 91c2e6c3db44297bf4cb3a2e3c40236c5b6a0b23 (2.34.1)
>> +Obtain the address of this shared object's program header and place it
>> +in
>> +.IR *info .
>> +This
>> +.B dlinfo
>> +call returns the number of program headers in the shared object.
>
> Can that number be 0?

No, there has to be at least one PT_LOAD segment.

Thanks,
Florian


