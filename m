Return-Path: <linux-man+bounces-1432-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DB392C639
	for <lists+linux-man@lfdr.de>; Wed, 10 Jul 2024 00:28:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 37036B2213D
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 22:28:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0969185619;
	Tue,  9 Jul 2024 22:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="HdiPG4j+"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE00C185600
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 22:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720564078; cv=none; b=pyh/itjh9gjT43nulWCNQfA/AcGriV+e12cl40Bt+dlTTA0NGe7SU7tSTdIJJKhk4FxhLq+tp6ysmk1RREgATXLBv0ICEowqCWG3bVQEMEdldwNQgyV43JjGNai8nkuJkb5WqX2qp4x0+P/+LqklO8H5TNdqaZxiBhKNPxhE4ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720564078; c=relaxed/simple;
	bh=VaYA1bmg97uBvd1PSml2SfbYuxUEfrFRpaH0kxCwPrA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r4IqeoTA5lnD6TIN9K52Oogil58JrQvRdq4g7CizFh1YA0Z4fy85ECqPBAPOVyxgLGrbJWlNXKcoV2V42a54a5PXwxKQJz7pjxbe9p5qo5bRjbi3UD3p/Zm/H8tdjSnNaTO9houZMKHmCuHfvueYhsuivZkA8c+4LGj9Chg4Mb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=HdiPG4j+; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1720564075;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FDYg6WczhoXxbNmG3vxBGarhimEwHLypGtCldmMEC24=;
	b=HdiPG4j+8iziJ5hteHypGVkcyXmSfPbKSBFQrsMXPdVGWEwyEizCXin0V1aTZylbBPQGss
	1nZNhv1rzAfOJxu3Q9f51Zi//em+wRq4Tixb/lIbeNR+kzFqT0XYvclb0wOnJsKQ1jX8D3
	5eAOfXesZ3AkMQ3g/vMxQj88YbWI3Hg=
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-270-u59mUxicObmYcnqYk3l1Cw-1; Tue,
 09 Jul 2024 18:27:50 -0400
X-MC-Unique: u59mUxicObmYcnqYk3l1Cw-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0BCDE19560B1;
	Tue,  9 Jul 2024 22:27:40 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.45.224.6])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with SMTP id E0B691955EA8;
	Tue,  9 Jul 2024 22:27:19 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
	oleg@redhat.com; Wed, 10 Jul 2024 00:25:49 +0200 (CEST)
Date: Wed, 10 Jul 2024 00:25:41 +0200
From: Oleg Nesterov <oleg@redhat.com>
To: Kirill Kolyshkin <kolyshkin@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 2/3] pidfd_open.2: add PIDFD_THREAD and poll nuances
Message-ID: <20240709222541.GB6162@redhat.com>
References: <20240709021335.158849-1-kolyshkin@gmail.com>
 <20240709021335.158849-3-kolyshkin@gmail.com>
 <20240709094206.GA28495@redhat.com>
 <CAGmPdrxFk5Z62BkVaQwhNsuvbb8C=uHsdFMfA3iJwPCu8bZuMw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAGmPdrxFk5Z62BkVaQwhNsuvbb8C=uHsdFMfA3iJwPCu8bZuMw@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12

On 07/09, Kirill Kolyshkin wrote:
>
> On Tue, Jul 9, 2024 at 2:43 AM Oleg Nesterov <oleg@redhat.com> wrote:
> >
> > Hi Kir,
> >
> > On 07/08, Kir Kolyshkin wrote:
> > >
> > > [1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=64bef697d33b
> >
> > The changelog says:
> >
> >     pidfd: implement PIDFD_THREAD flag for pidfd_open()
> >
> >     With this flag:
> >
> >             - pidfd_open() doesn't require that the target task must be
> >               a thread-group leader
> >
> >             - pidfd_poll() succeeds when the task exits and becomes a
> >               zombie (iow, passes exit_notify()), even if it is a leader
> >               and thread-group is not empty.
> >
> >               This means that the behaviour of pidfd_poll(PIDFD_THREAD,
> >               pid-of-group-leader) is not well defined if it races with
> >               exec() from its sub-thread; pidfd_poll() can succeed or not
> >               depending on whether pidfd_task_exited() is called before
> >               or after exchange_tids().
> >
> > > +The behavior depends on whether the file descriptor refers
> > > +to a process (thread-group leader) or a thread (see
> > > +.B PIDFD_THREAD
> > > +above):
> > > +.RS
> > > +.IP \[bu] 3
> > > +For a thread-group leader, the polling task is woken if the
> > > +thread-group is empty. In other words, if the thread-group
> > > +leader task exits when there are still threads alive in its
> > > +thread-group, the polling task will not be woken when the
> > > +thread-group leader exits, but rather when the last thread in the
> > > +thread-group exits.
> >
> > so this part is not accurate.
>
> I copied the above text almost verbatim from the merge commit
> description (commit b5683a37c881).

And b5683a37c881 says

	For thread-group leader pidfds ...
	...

	For thread-specific pidfds the polling task is woken if the
	thread exits.

I think that "thread-specific pidfds" means pidfd created with the
PIDFD_THREAD flag.

> Until it's clarified, let's remove this text, adding a TODO instead.

OK. but you can also look at the (trivial) code:

	static __poll_t pidfd_poll(struct file *file, struct poll_table_struct *pts)
	{
		struct pid *pid = pidfd_pid(file);
		bool thread = file->f_flags & PIDFD_THREAD;
		struct task_struct *task;
		__poll_t poll_flags = 0;

		poll_wait(file, &pid->wait_pidfd, pts);
		/*
		 * Depending on PIDFD_THREAD, inform pollers when the thread
		 * or the whole thread-group exits.
		 */
		guard(rcu)();
		task = pid_task(pid, PIDTYPE_PID);
		if (!task)
			poll_flags = EPOLLIN | EPOLLRDNORM | EPOLLHUP;
		else if (task->exit_state && (thread || thread_group_empty(task)))
			poll_flags = EPOLLIN | EPOLLRDNORM;

		return poll_flags;
	}

please note that the thread_group_empty() check has no effect if
bool thread == f_flags & PIDFD_THREAD is true.

In this case pidfd_poll() succeeds if the the target task has already
exited (passed exit_notify, so ->exit_state is not zero), no matter if
it is a leader or not.

Oleg.


