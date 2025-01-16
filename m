Return-Path: <linux-man+bounces-2250-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60245A13BF3
	for <lists+linux-man@lfdr.de>; Thu, 16 Jan 2025 15:15:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9B69C7A2A5F
	for <lists+linux-man@lfdr.de>; Thu, 16 Jan 2025 14:14:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1181522B595;
	Thu, 16 Jan 2025 14:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="BaENz/Sh"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E4722ACCF
	for <linux-man@vger.kernel.org>; Thu, 16 Jan 2025 14:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737036896; cv=none; b=uILUK+KuvJw9zl7CaqMoSCoy5ZjCKLv2pdUaf0dQEjkTe8JWP0K2SsMAzrB2Wttuq1CND2vRFqeuoub0AuAKFaAtUMwuVsyPkkGZ7Wnm9T9MIKA3etrvcs6zkO6MhYGuTsbS1k9R4Y0Kn2pbc6m1t5MSAD8y9y0Jav6klm9MMvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737036896; c=relaxed/simple;
	bh=SZjPpRxiV7sqca3BMcy6MppZ2QsadsXP9wjKG8W1E2I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Lgu0ipxPnsaSyNz2PKXLMQtCeMdLcwEAPedTXFSrL8Zbacl5uFimp9BrOJMJxl4s/d2NsS+5de/NoN4soIZqaSZHyEPqBHfJgzEbtf5ZurHg3RrbR9p89VERT5bJhqBtrx873iqVD5Axh9uEOaleWtYQamGDOMKsmOcFUwVB3eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=BaENz/Sh; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1737036894;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=0+1pMScv/P1lMgD0y4/lgXAMlLY8SFDkgSS9rPVeXkg=;
	b=BaENz/ShKdJLkeOxb8HZlrsI4AAOSo1yQ/M/+uV2gSfIiHL7bOefr28INCJ1c5zJ35cr9s
	GXoAEb41K9wGPXRf51P52X5czrb64duLFibdB7hRW3Js9UJQIzMrP8qsuay5B18OuitRfH
	VPqRFv4DXGyQn7TQmv/LsO7vH+5oZ+g=
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-611-iBrAJP9FPGuzuelT3yAWWg-1; Thu,
 16 Jan 2025 09:14:50 -0500
X-MC-Unique: iBrAJP9FPGuzuelT3yAWWg-1
X-Mimecast-MFC-AGG-ID: iBrAJP9FPGuzuelT3yAWWg
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E0FDE1955DC6;
	Thu, 16 Jan 2025 14:14:48 +0000 (UTC)
Received: from pauld.westford.csb (unknown [10.22.88.147])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DCB781955F10;
	Thu, 16 Jan 2025 14:14:47 +0000 (UTC)
Date: Thu, 16 Jan 2025 09:14:45 -0500
From: Phil Auld <pauld@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] sched: Mention autogroup disabled behavior
Message-ID: <20250116141445.GB7382@pauld.westford.csb>
References: <20250116124654.2365691-1-pauld@redhat.com>
 <fzshiseda5ispy7utboswemxr54d7646rz5v2ilgatlih3vqwk@r3775k54ixeh>
 <20250116135315.GA7382@pauld.westford.csb>
 <bpbyx7d567ctpoqutwy2sk6dh7xsilrglnkoomcfgrtrqtjwtl@tajyt523goqu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bpbyx7d567ctpoqutwy2sk6dh7xsilrglnkoomcfgrtrqtjwtl@tajyt523goqu>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17

On Thu, Jan 16, 2025 at 02:59:20PM +0100 Alejandro Colomar wrote:
> Hi Phil,
> 
> On Thu, Jan 16, 2025 at 08:53:15AM -0500, Phil Auld wrote:
> > This is actually part of the problem. It's very hard to see this
> > from userspace. I can show a shell session that shows that autogroup
> > is disabled and that my task has an autogroup in /proc but determining
> > that the autogroup is not being used not so much. (I may be missing
> > something obvious but I could not find it).
> > 
> > I had to look at the kernel code:
> > 
> > kernel/sched/autogroup.h:
> > static inline struct task_group *
> > autogroup_task_group(struct task_struct *p, struct task_group *tg)
> > {
> >         extern unsigned int sysctl_sched_autogroup_enabled;
> >         int enabled = READ_ONCE(sysctl_sched_autogroup_enabled);
> > 
> >         if (enabled && task_wants_autogroup(p, tg))
> >                 return p->signal->autogroup->tg;
> > 
> >         return tg;
> > }
> > 
> > bool task_wants_autogroup(struct task_struct *p, struct task_group *tg)
> > {
> >         if (tg != &root_task_group)
> >                 return false;
> >     ...
> > 
> > }
> > 
> > The former being called from sched_group_fork() and sched_get_task_group().
> > 
> > I suppose looking at /proc/pid/cgroup and seeing it report not "0::/"
> > is part of it since it then won't be in root task group.
> > 
> > To some extent any systemd based system these days is not really
> > using autogroup at all anyway. 
> > 
> > I can put some of the above in there or just something like:
> > 
> > # cat /proc/sys/kernel/sched_autogroup_enabled 
> > 0
> > # cat /proc/$$/autogroup 
> > /autogroup-112 nice 0
> > 
> > 
> > Thoughts?
> 
> Both.  :)
> 
> The more information we have in the commit message, the better (in case
> someone needs to check in the future, that will give more context).
>

Okay, fair enough. Will do.  It was just hard for me to show that the
listed autogroup is not really being used. 

I'll put the above in there and send v2.

Thanks!

Cheers,
Phil


> 
> Cheers,
> Alex
> 
> -- 
> <https://www.alejandro-colomar.es/>



-- 


