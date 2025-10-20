Return-Path: <linux-man+bounces-4181-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E821BF1744
	for <lists+linux-man@lfdr.de>; Mon, 20 Oct 2025 15:09:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2EDB1886DB6
	for <lists+linux-man@lfdr.de>; Mon, 20 Oct 2025 13:10:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE410313287;
	Mon, 20 Oct 2025 13:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="C3o5zshk"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A58F02FB0BC
	for <linux-man@vger.kernel.org>; Mon, 20 Oct 2025 13:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760965783; cv=none; b=K111RNZjbllYqw6oejoMarwahQ3fwDT8VbReCINBv7YoQqmV+j9f1WAhWxyInQ0b3YSb0GgD/yoofyTk19Ws9HiL4+GnT6E0wG6rFb8poy8xIh9tboiz4i6zVvUhdm84/3k5H6wQpvCI+GN+cQdiu1cLLJ1t4T3CcI5J5bOQTEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760965783; c=relaxed/simple;
	bh=xgFKjpwU29tAYQkhc0PPndZHePjL/VzP0S7WF42AhGk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PlijKPXsq/Do7S8AmB2qEHsY+ViG9kgPdtfRntNbU16JSrURX7bLUYxz34zdsosRezCCdWPQ1RrK0AwNsSxx6rSldd3LWG8BUPcxG58cwYB96QcJqTIeXD24rzl9PfpzGgq7uLmSzDyv5LF3+ZAbsgUndZviEcCaBM5fzy05Vyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=C3o5zshk; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760965780;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=B7TfoGn6SrrbXer+8tK0ZaCd1A0mwwcohL5Z8OIPx88=;
	b=C3o5zshksnMG9BV4GAPURZrDvU/sWwe7zX9wIn1hYOCQ/f2D62rv7VwHc/BK1aJn5MZgFd
	R1ZOXelvwvnQ4GJarymOxnyKn7zatuMidIxxoFzx7zLI0CApo1Vj5UMch1Z7XtWq6xGJ89
	msItENw0xSWqeSM+yldFlpLRz58V7DM=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-192-cmVOwtY_PqiX7QeEH_-feA-1; Mon,
 20 Oct 2025 09:09:35 -0400
X-MC-Unique: cmVOwtY_PqiX7QeEH_-feA-1
X-Mimecast-MFC-AGG-ID: cmVOwtY_PqiX7QeEH_-feA_1760965772
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2C9B51800743;
	Mon, 20 Oct 2025 13:09:32 +0000 (UTC)
Received: from localhost (unknown [10.72.112.144])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F3E2C195419F;
	Mon, 20 Oct 2025 13:09:30 +0000 (UTC)
Date: Mon, 20 Oct 2025 21:09:20 +0800
From: Baoquan He <bhe@redhat.com>
To: Barry Song <21cnbao@gmail.com>
Cc: linux-man@vger.kernel.org, chrisl@kernel.org, alx@kernel.org
Subject: Re: [PATCH v2] iman/man2/swapon.2: update priority section
Message-ID: <aPY0gHrlTKvF21PP@MiWiFi-R3L-srv>
References: <20251017123110.321638-1-bhe@redhat.com>
 <CAGsJ_4wqvrMw0rwDvciVN3JiQ=_5+30HpWNFz2pMHWNQBvDrwg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAGsJ_4wqvrMw0rwDvciVN3JiQ=_5+30HpWNFz2pMHWNQBvDrwg@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17

On 10/20/25 at 05:21pm, Barry Song wrote:
> On Mon, Oct 20, 2025 at 6:56 AM Baoquan He <bhe@redhat.com> wrote:
> >
> > This update the description about default priority value which is
> > changed in kernel.
> 
> Thanks for sending this. Would it be possible to include a reference to
> the related commit — for example, at least the commit subject? Also,
> does the man page prefer using a link to the kernel patchset?

I see a lot of discussion link is provided in man-pages commit log, and
haven't seen a kernel commit. But I see kernel version is mentioned to
mark since when the man page update is made. It's the first time I
update man page, not sure what is better. Would love to hear suggestions
to improve. Thanks. 

https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git


commit 8982bb673546d95b34f7c35be8cadd8091de2a25
Author: Thiago Jung Bauermann <thiago.bauermann@linaro.org>
Date:   Tue Sep 9 16:13:57 2025 -0300

    man/man2/sigaction.2: Update si_code list with Linux v6.16
    
    Update with missing si_code values from Linux v6.16's
    "include/uapi/asm-generic/siginfo.h".
    
    Signed-off-by: Thiago Jung Bauermann <thiago.bauermann@linaro.org>
    Message-ID: <20250909191357.44951-1-thiago.bauermann@linaro.org>
    Reviewed-by: Carlos O'Donell <carlos@redhat.com>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

> 
> >
> > Link: https://lore.kernel.org/all/20251011081624.224202-1-bhe@redhat.com/
> > Signed-off-by: Baoquan He <bhe@redhat.com>
> > Cc: chrisl@kernel.org
> > Cc: baohua@kernel.org
> > Cc: alx@kernel.org
> > ---
> >  man/man2/swapon.2 | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> >
> > diff --git a/man/man2/swapon.2 b/man/man2/swapon.2
> > index df5e8d8c7ec6..20e213827733 100644
> > --- a/man/man2/swapon.2
> > +++ b/man/man2/swapon.2
> > @@ -60,9 +60,8 @@ These functions may be used only by a privileged process (one having the
> >  capability).
> >  .SS Priority
> >  Each swap area has a priority, either high or low.
> > -The default priority is low.
> > -Within the low-priority areas,
> > -newer areas are even lower priority than older areas.
> > +The default priority is the lowest,
> > +and all default areas share the same priority value, -1.
> 
> Not sure what “default areas” means.
> maybe just the below?
> "
> Areas that are not assigned a priority will receive the default priority of -1.
> "

Sounds good to me. I will spin v3 to include the update. Thanks for the
great suggesiton.


