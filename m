Return-Path: <linux-man+bounces-1383-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D05CD92B441
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 11:44:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 451F2B22BE4
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 09:43:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 737141552FF;
	Tue,  9 Jul 2024 09:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="B0DamkRi"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB57C13C687
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 09:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720518234; cv=none; b=Ouqcy56JdWC6uDc4u5/lAxOUNXLcC4KtrDEjN80BYqQtQ05pOBA5PniqYj5OANm6P3LCBsMAcx4AY4SVVSHAZ5yThPERVEsVv45gbVEap5A7yQvsMEVyu/oO6C+fT3JlKyuJOv3mE2DPIDT4ShLfIoZ1ZZy6HF1oxt2jmFx3CBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720518234; c=relaxed/simple;
	bh=CRZbcF4hN82oQbScfeyCiaG6gA9V4j2sdUAXj7wtyec=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YFG1GVgfzauJDrmnujzjF/sBy3Hc03c+i5bOP+dlK6XQQtJo3NZ6aOKx23C3ddS6SMpNDQzsMkGkJxqkE9gwszLZtlaLUIONYbuLpqAJRfixCJX5c1VGvhakOOMtibhWLxngnEVVfrxiNPDP/N1x8ApzMTTVIUAdYbmg/eFhqfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=B0DamkRi; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1720518231;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tHJ97BXDlAZKI58WRu8rPYtMSzYkeQ3dOxEoRrNIpKQ=;
	b=B0DamkRiZHjtydVE9RuolEgVIZk4Q4IZ2iXQjFHfoAKhpSaTdb7FAUU2zt4homWLT2D138
	pv/zTSNA+ox0onxwfaYG5JZPWC/NddjBQRCuV0Lj6W76c7HI9PUiAXj3xUn4I4mtJpCe9T
	QtgwI62/Qto3hdbE3rsUBtjnGZFBv98=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-269-W7QwtlDaP1mmNqM8RxYp1g-1; Tue,
 09 Jul 2024 05:43:46 -0400
X-MC-Unique: W7QwtlDaP1mmNqM8RxYp1g-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B2BB219560A2;
	Tue,  9 Jul 2024 09:43:45 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.45.226.34])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with SMTP id 9890E3000185;
	Tue,  9 Jul 2024 09:43:43 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
	oleg@redhat.com; Tue,  9 Jul 2024 11:42:09 +0200 (CEST)
Date: Tue, 9 Jul 2024 11:42:06 +0200
From: Oleg Nesterov <oleg@redhat.com>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 2/3] pidfd_open.2: add PIDFD_THREAD and poll nuances
Message-ID: <20240709094206.GA28495@redhat.com>
References: <20240709021335.158849-1-kolyshkin@gmail.com>
 <20240709021335.158849-3-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240709021335.158849-3-kolyshkin@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4

Hi Kir,

On 07/08, Kir Kolyshkin wrote:
>
> [1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=64bef697d33b

The changelog says:

    pidfd: implement PIDFD_THREAD flag for pidfd_open()

    With this flag:

            - pidfd_open() doesn't require that the target task must be
              a thread-group leader

            - pidfd_poll() succeeds when the task exits and becomes a
              zombie (iow, passes exit_notify()), even if it is a leader
              and thread-group is not empty.

              This means that the behaviour of pidfd_poll(PIDFD_THREAD,
              pid-of-group-leader) is not well defined if it races with
              exec() from its sub-thread; pidfd_poll() can succeed or not
              depending on whether pidfd_task_exited() is called before
              or after exchange_tids().

> +The behavior depends on whether the file descriptor refers
> +to a process (thread-group leader) or a thread (see
> +.B PIDFD_THREAD
> +above):
> +.RS
> +.IP \[bu] 3
> +For a thread-group leader, the polling task is woken if the
> +thread-group is empty. In other words, if the thread-group
> +leader task exits when there are still threads alive in its
> +thread-group, the polling task will not be woken when the
> +thread-group leader exits, but rather when the last thread in the
> +thread-group exits.

so this part is not accurate.

See also 43f0df54c96fa5a ("pidfd_poll: report POLLHUP when pid_task() == NULL")
which adds another feature.

Oleg.


