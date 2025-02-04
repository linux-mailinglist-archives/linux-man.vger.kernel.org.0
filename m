Return-Path: <linux-man+bounces-2345-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 101D0A2773E
	for <lists+linux-man@lfdr.de>; Tue,  4 Feb 2025 17:36:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B9B13A4BE4
	for <lists+linux-man@lfdr.de>; Tue,  4 Feb 2025 16:35:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 211502153E1;
	Tue,  4 Feb 2025 16:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="OPnvlnjF"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3093E2153CF
	for <linux-man@vger.kernel.org>; Tue,  4 Feb 2025 16:35:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738686960; cv=none; b=KqohDYKtXjDGBDVbTkPYWKDTqDaCRCdsVxj0/mkJAVCAQTY0sjaVeGzLt7SZRQedl8ICflSokknbQI0Mv9/HHKU9dsgfJgxU0BWqa+P7yxmqpRYkvw59HjvAapQVA1WNytwe6N+IMTpDLMKyQToReFWSAjMGDamsBzh/GnbpUak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738686960; c=relaxed/simple;
	bh=7CgPMXkcmTQwZC7Sq+5XWWHTKmvnegp5GafTPvlt4zg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dndfYK3UQzS4ZWH/WoO3helClollCsUMMRElECDtdcJnxWhbKEBaw5VcdQk2/lhTNnYxbrOTYMrQ1jxrnCUq3cjSjvOMooDM+8Uhjq8ilQrt+IVkgjF8g1Za0t/ezTcsUnBY0L4VEsXc6hijOjyN23j2zN/B+EA41yqtxE85kts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=OPnvlnjF; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1738686957;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Tv4SLy7xcZIYPDODYnmCnAdVpNXRbqYFjtcplZRerHI=;
	b=OPnvlnjFFlIORzoOoth0wnVkHvJcNyUU0/R6QdVPg/fJIRBxLBKuvhHpuUIq9rwpk2ZlS0
	UukQhQI0xsCkxpK8Mr6+ywQ0X3oAAGjrhgqXBer/mX5WpfFPoMtbyBJO+0e5qQCOZeTC7U
	r5dATHPVUrXAtim6T10Jora624HhGJs=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-227-0_mnrfUlNmaBW2Fd8g08Ag-1; Tue,
 04 Feb 2025 11:35:54 -0500
X-MC-Unique: 0_mnrfUlNmaBW2Fd8g08Ag-1
X-Mimecast-MFC-AGG-ID: 0_mnrfUlNmaBW2Fd8g08Ag
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6F8B91801F17;
	Tue,  4 Feb 2025 16:35:53 +0000 (UTC)
Received: from pauld.westford.csb (unknown [10.22.81.117])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2612F19560A7;
	Tue,  4 Feb 2025 16:35:51 +0000 (UTC)
Date: Tue, 4 Feb 2025 11:35:49 -0500
From: Phil Auld <pauld@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
	Carlos O'Donell <codonell@redhat.com>
Subject: Re: [PATCH v2] man/man7/sched.7: Mention autogroup disabled behavior
Message-ID: <20250204163549.GA176386@pauld.westford.csb>
References: <20250116143747.2366152-1-pauld@redhat.com>
 <hmvmnl52rvv2cln5d6ggheqjvzshlmdkc3fevbrc2sjwwdmteg@6egcrtlhywi7>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <hmvmnl52rvv2cln5d6ggheqjvzshlmdkc3fevbrc2sjwwdmteg@6egcrtlhywi7>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12

On Sun, Feb 02, 2025 at 02:02:21PM +0100 Alejandro Colomar wrote:
> Hi Phil,
> 
> On Thu, Jan 16, 2025 at 02:37:47PM +0000, Phil Auld wrote:
> > The autogroup feature can be contolled at runtime when
> > built into the kernel. Disabling it in this case still
> > creates autogroups and still shows the autogroup membership
> > for the task in /proc.  The scheduler code will just not
> > use the the autogroup task group.  This can be confusing
> > to users. Add a sentence to this effect to sched.7 to
> > point this out.
> > 
> > The kernel code shows how this is used. The
> > sched_autogroup_enabled toggle is only used in one place.
> > 
> > kernel/sched/autogroup.h:
> > 
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
> > task_wants_autogroup() is in kernel/sched/autogroup.c:
> > 
> > bool task_wants_autogroup(struct task_struct *p, struct task_group *tg)
> > {
> >         if (tg != &root_task_group)
> >                 return false;
> >     ...
> > 
> >         return true;
> > }
> > 
> > One can see that any group set other than root also bypasses the use of
> > the autogroup.
> > 
> > All of the machinery around the creation of the autogroup is not
> > effected by the toggle.
> > 
> > From userspace:
> > 0
> > /autogroup-112 nice 0
> > 
> > Note, systemd based system these days is not really using autogroups at all
> > anyway because any task in a non-root cgroup bypasses the autogroup as
> > well.
> > 
> > Signed-off-by: Phil Auld <pauld@redhat.com>
> > Cc: Alejandro Colomar <alx@kernel.org>
> > Cc: <linux-man@vger.kernel.org>
> 
> Thanks!  I've applied the patch.
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=ca69daf45f94fda061f796efcc4f24ca76d8e380>
> 
> 
> Have a lovely day!

Thanks!

You too :)


Cheers,
Phil


> Alex
> 
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
> > +is still visible in /proc, but the autogroups are not used.
> >  The CFS scheduler employs an algorithm that equalizes the
> >  distribution of CPU cycles across task groups.
> >  The benefits of this for interactive desktop performance
> > -- 
> > 2.47.1
> > 
> > 
> 
> -- 
> <https://www.alejandro-colomar.es/>



-- 


