Return-Path: <linux-man+bounces-1719-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C72B96255E
	for <lists+linux-man@lfdr.de>; Wed, 28 Aug 2024 12:59:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF5DD1C215A1
	for <lists+linux-man@lfdr.de>; Wed, 28 Aug 2024 10:59:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB66216C683;
	Wed, 28 Aug 2024 10:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="NU3zHqCu"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9866816B3BA
	for <linux-man@vger.kernel.org>; Wed, 28 Aug 2024 10:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724842752; cv=none; b=JIM6mgXd+aNxHjgTvLyqVUa6lOa0lTtzslCsiv7FGDln6LSZv7dYXKatoUO4NjS3Y2nIkpLxT/gBAIqRzZC0q77up64yd3bt8vL0ISRqvUUV/6gIz7rvruFPiIoamPHxQYqW5JYCYuBtzwhPdmCbCoaL0BlTIllyRKPy/+q4Q5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724842752; c=relaxed/simple;
	bh=mxIs4J1c+8K9mSoPQsH2h0H6UzUpqaa4IDksagUvawU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Svnxr7yjhR7tgXeNXCMgfyH0W01BeVuUDGo4V5DTDFiIVxKxLzSG/E4CQFxjRElB/A6X/5liPd69g/xlnUa3sTZKSlPaWXaFadv8FY4Fb3klv+OTipY8WGczFG6kZ/VuOwXcJkQNy6kquK373V7bbt1/xR5yZ6sfF0IaZ3i6NTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=NU3zHqCu; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1724842749;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=C6a9Xp2g4Nvs+zVDAx/1WjXRJTmidfETi+AG4mFmuhQ=;
	b=NU3zHqCuouRND6XXT8Nww4lhxEmh6VTCrZnUfIFnFtFk9VgXUOJMh3GzpP334imflvgQFs
	hpd/atNCRghG+F76oou2q/5RM4aDbi+tS7XW/RtKnkT0UT7nCf+IrG1JMrylvAKadoNHQ0
	ibZR9eZkA2s/zGJ+2cVIQeJEPm3h9MI=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-206-7zzhfN6dNRyj6_s0T72-aw-1; Wed,
 28 Aug 2024 06:59:08 -0400
X-MC-Unique: 7zzhfN6dNRyj6_s0T72-aw-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 150AA1955BF6;
	Wed, 28 Aug 2024 10:59:07 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.2.16.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 42D511955D56;
	Wed, 28 Aug 2024 10:59:04 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,  libc-alpha@sourceware.org
Subject: Re: [PATCH] dlinfo.3: Document the RTLD_DI_PHDR request
In-Reply-To: <kfejgehnj7fvhwranihdhtkbe5bqcycvkt4kmo6j7b3tbfe2d2@umq45jqu32qj>
	(Alejandro Colomar's message of "Wed, 28 Aug 2024 12:42:00 +0200")
References: <87jzg1p1ay.fsf@oldenburg.str.redhat.com>
	<kfejgehnj7fvhwranihdhtkbe5bqcycvkt4kmo6j7b3tbfe2d2@umq45jqu32qj>
Date: Wed, 28 Aug 2024 12:59:01 +0200
Message-ID: <87v7zkhq16.fsf@oldenburg.str.redhat.com>
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

> On Wed, Aug 28, 2024 at 09:13:41AM GMT, Florian Weimer wrote:
>> First added in glibc 2.36, backported upstream to glibc 2.34,
>> so mention 2.34.1 for the first version.
>> 
>> Signed-off-by: Florian Weimer <fweimer@redhat.com>
>> 
>> ---
>>  man/man3/dlinfo.3 | 15 ++++++++++++++-
>>  1 file changed, 14 insertions(+), 1 deletion(-)
>> 
>> diff --git a/man/man3/dlinfo.3 b/man/man3/dlinfo.3
>> index 84b696f8c..8d61f81e8 100644
>> --- a/man/man3/dlinfo.3
>> +++ b/man/man3/dlinfo.3
>> @@ -194,10 +194,23 @@ If this object does not define a PT_TLS segment,
>>  or if the calling thread has not allocated a block for it,
>>  NULL is placed in
>>  .IR *info .
>> +.TP
>> +.BR RTLD_DI_PHDR " (\fIconst ElfW(Phdr *)\fP, since glibc 2.34.1)"
>> +.\" glibc commit d056c212130280c0a54d9a4f72170ec621b70ce5 (2.36)
>> +.\" glibc commit d056c212130280c0a54d9a4f72170ec621b70ce5 (2.35)
>> +.\" glibc commit 91c2e6c3db44297bf4cb3a2e3c40236c5b6a0b23 (2.34)
>
> I think the two above should say 2.35.1 and 2.34.1.  (I'm assuming it's
> 2.35.1, can you confirm?)

Sure, will re-check and fix as appropriate.

Thanks,
Florian


