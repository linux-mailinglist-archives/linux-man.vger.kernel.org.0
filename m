Return-Path: <linux-man+bounces-2248-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0EDA13B45
	for <lists+linux-man@lfdr.de>; Thu, 16 Jan 2025 14:53:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 02E327A2405
	for <lists+linux-man@lfdr.de>; Thu, 16 Jan 2025 13:53:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F017122A808;
	Thu, 16 Jan 2025 13:53:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="bsiObWGl"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0CE6DCE1
	for <linux-man@vger.kernel.org>; Thu, 16 Jan 2025 13:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737035606; cv=none; b=SVRNVBc2/JhBbwapFTEtTf+V3cbfodlgQegX70fbu1LpTFJR4pw8x7kcaAodnS+WtovDSJJBB7mHl05fEEPsAAeW+npIA0Y7E14JQyTQv3H1p9taKyxNaas7dT6KDgnGqblFfroqpE1Tl8DptK0t4fNMb3m6fgI+ab9o6j5QHYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737035606; c=relaxed/simple;
	bh=wmeK+x31fgQOntbVBELH4RC6E7ISnX10fIUdQTdtShs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qYlylWYuJrspSa6Voio5LxQcLQlSZ8HDons/fNUkW6VnxiWoVY/JUbBAf17q+tPOymfZ2oMMLhB1P42IUaPdePmkDitfAxJ43KoTSQRp8/nygob4WxxzMpprQIDLqTrbMpeb0NS1CDaz7Kv8eUYQJ/llzXhGyTTgUZgQAEt9kWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=bsiObWGl; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1737035604;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=jAdVDm5NdFDEKpFKfNgSNDYrigR/18CFKVSUR7QVf3c=;
	b=bsiObWGlUreG8UKXF+5WpBlho/7bogbZcWk2XX3Edzb2+fv1lNNlBF20neyJufJDTJq/zT
	gWqrNG2tLvHYPBBZpp0wM4sVfcLYoAN/dFjAakqEI2Vlij+MuByLqy6SQBKSuVmtGxDaRW
	GhhG0rkRsmz2XDrx9x3BZe07OchAFXY=
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-342-jChqN-SuNXeYiaTM38zH7w-1; Thu,
 16 Jan 2025 08:53:20 -0500
X-MC-Unique: jChqN-SuNXeYiaTM38zH7w-1
X-Mimecast-MFC-AGG-ID: jChqN-SuNXeYiaTM38zH7w
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3A9601955D80;
	Thu, 16 Jan 2025 13:53:19 +0000 (UTC)
Received: from pauld.westford.csb (unknown [10.22.88.147])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3F79E3003E7F;
	Thu, 16 Jan 2025 13:53:17 +0000 (UTC)
Date: Thu, 16 Jan 2025 08:53:15 -0500
From: Phil Auld <pauld@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] sched: Mention autogroup disabled behavior
Message-ID: <20250116135315.GA7382@pauld.westford.csb>
References: <20250116124654.2365691-1-pauld@redhat.com>
 <fzshiseda5ispy7utboswemxr54d7646rz5v2ilgatlih3vqwk@r3775k54ixeh>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fzshiseda5ispy7utboswemxr54d7646rz5v2ilgatlih3vqwk@r3775k54ixeh>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4

Hi Alejandro,

On Thu, Jan 16, 2025 at 02:06:26PM +0100 Alejandro Colomar wrote:
> Hi Phil,
> 
> > Subject: sched: Mention autogroup disabled behavior
> 
> Please use the pathname of the modified file as a prefix:
> 
> 	man/man7/sched.7: Mention autogroup disabled behavior

ack

> 
> On Thu, Jan 16, 2025 at 12:46:54PM +0000, Phil Auld wrote:
> > The autogroup feature can be contolled at runtime when
> > built into the kernel. Disabling it in this case still
> > creates autogroups and still shows the autogroup membership
> > for the task in /proc.  The scheduler code will just not
> > use the the autogroup task group.
> 
> Would you mind showing (in the commit message) a shell session that
> demonstrates this?

This is actually part of the problem. It's very hard to see this
from userspace. I can show a shell session that shows that autogroup
is disabled and that my task has an autogroup in /proc but determining
that the autogroup is not being used not so much. (I may be missing
something obvious but I could not find it).

I had to look at the kernel code:

kernel/sched/autogroup.h:
static inline struct task_group *
autogroup_task_group(struct task_struct *p, struct task_group *tg)
{
        extern unsigned int sysctl_sched_autogroup_enabled;
        int enabled = READ_ONCE(sysctl_sched_autogroup_enabled);

        if (enabled && task_wants_autogroup(p, tg))
                return p->signal->autogroup->tg;

        return tg;
}

bool task_wants_autogroup(struct task_struct *p, struct task_group *tg)
{
        if (tg != &root_task_group)
                return false;
    ...

}

The former being called from sched_group_fork() and sched_get_task_group().

I suppose looking at /proc/pid/cgroup and seeing it report not "0::/"
is part of it since it then won't be in root task group.

To some extent any systemd based system these days is not really
using autogroup at all anyway. 

I can put some of the above in there or just something like:

# cat /proc/sys/kernel/sched_autogroup_enabled 
0
# cat /proc/$$/autogroup 
/autogroup-112 nice 0


Thoughts?



Cheers,
Phil


> 
> >  This can be confusing
> > to users. Add a sentence to this effect to sched.7 to
> > point this out.
> > 
> > Signed-off-by: Phil Auld <pauld@redhat.com>
> > To: Alejandro Colomar <alx@kernel.org>
> > Cc: <linux-man@vger.kernel.org>
> > Cc: LKML <linux-kernel@vger.kernel.org>
> 
> Thanks!
> 
> > 
> > ---
> >  man/man7/sched.7 | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/man/man7/sched.7 b/man/man7/sched.7
> > index 71f098e48..f0a708cd7 100644
> > --- a/man/man7/sched.7
> > +++ b/man/man7/sched.7
> > @@ -724,6 +724,8 @@ in the group terminates.
> >  .P
> >  When autogrouping is enabled, all of the members of an autogroup
> >  are placed in the same kernel scheduler "task group".
> > +When disabled the group creation happens as above, and autogroup membership
> 
> s/disabled/&,/
> 
> Also, please use semantic newlines.  See man-pages(7):
> 
> $ MANWIDTH=72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
>    Use semantic newlines
>      In the source of a manual page, new sentences should be started on
>      new lines, long sentences should be split  into  lines  at  clause
>      breaks  (commas,  semicolons, colons, and so on), and long clauses
>      should be split at phrase boundaries.  This convention,  sometimes
>      known as "semantic newlines", makes it easier to see the effect of
>      patches, which often operate at the level of individual sentences,
>      clauses, or phrases.
> 
> 
> Have a lovely day!
> Alex
> 
> > +is still visible in /proc, but the autogroups are not used.
> >  The CFS scheduler employs an algorithm that equalizes the
> >  distribution of CPU cycles across task groups.
> >  The benefits of this for interactive desktop performance
> > -- 
> > 2.47.0
> > 
> 
> -- 
> <https://www.alejandro-colomar.es/>



-- 


