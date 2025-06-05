Return-Path: <linux-man+bounces-3109-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6899EACF303
	for <lists+linux-man@lfdr.de>; Thu,  5 Jun 2025 17:28:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF97D3A949E
	for <lists+linux-man@lfdr.de>; Thu,  5 Jun 2025 15:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C1531AF0C1;
	Thu,  5 Jun 2025 15:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="NMB6JkM/"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D862179A3
	for <linux-man@vger.kernel.org>; Thu,  5 Jun 2025 15:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749137316; cv=none; b=qliaJsPzqrR9c+SybdprxejOApojTBvOixeqKRQSsqg3O2axcQwBokW4L+rp8Kr4FVVMsYy6olMrtk12UsNjV+6LPeG18ubBQeIv2lkU4UoDycgnM6p8d28tORSkPXSURky4BKovC37aqxuWojLLf0srFYYPF8WuLVcy94usECA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749137316; c=relaxed/simple;
	bh=FHb+G/+5R8jNekgirAAurlCT7cufzRqD/mGHy+0iLU8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=TRQMRdulia2ivEBpVAEOreKqY4HYT5+x4TBe3UGvxHM2h2a4P+zvOF253yrCgDuK0GNEG6oFFp1blE9tgi8p0Y77Rmt81kuf6dixtuf6lxfTeBOiwbbg87lmCyeP2oNszgUXqXLZ2+w/7NmNs79FANGZF2HeOdEP326rdLWaJpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=NMB6JkM/; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1749137314;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=YaxKx179zM+dHTOWWx8Kz9phH4jyK5lQ1axmYSRnFUU=;
	b=NMB6JkM/JFkVqRohBGfzOUpVyDHN0E6dT2VVmms7jbBqwXoq+Ao5S//9MrxzxDTzuDXuxl
	dSau4pMCZgRrQs6YQI6LLKchC+LvGHFvt0pgv5F3lmZg7j2Ww3/7nfhTaBePyyf5E+sJQt
	ku+zYITEriH5COtj90gyuQLQL9qN6/4=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-145-vIMT4AABPn2Ursgsdcy7OQ-1; Thu,
 05 Jun 2025 11:28:30 -0400
X-MC-Unique: vIMT4AABPn2Ursgsdcy7OQ-1
X-Mimecast-MFC-AGG-ID: vIMT4AABPn2Ursgsdcy7OQ_1749137308
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C59E91800357;
	Thu,  5 Jun 2025 15:28:28 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.45.225.242])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A98B030002C0;
	Thu,  5 Jun 2025 15:28:26 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Mark Naughton <mnaughto@redhat.com>,  Mark Harris <mark.hsj@gmail.com>,
  linux-man@vger.kernel.org,  Joseph Myers <josmyers@redhat.com>
Subject: Re: strncmp(3) in the SYNOPSIS
In-Reply-To: <hkyvvyqkhbseev7cyqkdjvknur6tghu6xt7ekjfhjsfyicwsm2@awrjajnvugz5>
	(Alejandro Colomar's message of "Thu, 5 Jun 2025 17:10:33 +0200")
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
	<7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
	<CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
	<kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
	<CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
	<CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
	<movtjbigtmqu5qwwijxng7pc62bvfxhqf5fhf36rd5wq67c4yy@wnpjvmfuti2i>
	<87a56mxmsx.fsf@oldenburg.str.redhat.com>
	<hkyvvyqkhbseev7cyqkdjvknur6tghu6xt7ekjfhjsfyicwsm2@awrjajnvugz5>
Date: Thu, 05 Jun 2025 17:28:23 +0200
Message-ID: <874iwuxl60.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4

* Alejandro Colomar:

> Hi Florian,
>
> On Thu, Jun 05, 2025 at 04:53:02PM +0200, Florian Weimer wrote:
>> Somewhat related: This syntax is currently used for inputs that can be
>> either strings or arrays.  Two examples:
>> 
>>        size_t strnlen(size_t maxlen;
>>                       const char s[maxlen], size_t maxlen);
>> 
>>        int strncmp(size_t n;
>>                    const char s1[n], const char s2[n], size_t n);
>> 
>> Obviously, we want
>> 
>>      strncnmp(subject, "prefix", 6)
>> 
>> to be valid independently of the length of the subject string,
>
> I'm not sure I understand your statement.  It assumes that the subject
> is a string, which it need not be.
>
> 	[[gnu::nonstring]] char subject[7] = "asdfghi";
> 	strncmp(subject, "prefix", 6);

My point is that *if* it is a string, it can be arbitrary long.  It does
not have to contain at least five characters, it can be shorter.  These
two choices are valid:

  subject is a string
  subject is an array that is at least six bytes long

They overlap, but both options are needed.  For example, "?" is not an
array that is at least six bytes long.

Thanks,
Florian


