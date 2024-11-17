Return-Path: <linux-man+bounces-2039-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BF79D06B8
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 23:50:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2173F281CE6
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 22:50:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E4C31DBB37;
	Sun, 17 Nov 2024 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Q0BGs/3I"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C1C1DC19E
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 22:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731883833; cv=none; b=tENfjPJK/mjYQCyN+2gsK7GhZ1fKT9CrMEY7rb3U6j8hwltvCit4RhImD9qItP1BgJHmvFWgrFRyWAT6+0nyBjsed2CGbiSQEXJE+u7o6r2YuofyQwEwpvSyGyImlMIoIImZlvkvdHWvdNkUjJw29mlSQkS65b6cPDssR6/5itY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731883833; c=relaxed/simple;
	bh=twYjd19fJUOt6uQSR/7HlGc86hpEexaNi79U+4KFt5c=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=VNecFLUcnqyvF9WWX2W8PJ+NLsCbxm6X4RIHPlglp9JS+oeL2Zig1DfhM9hmMaqhOXkNBr937oZ/wnWtGBakuB4VgB1hC7tQP9KpRjnOF4oqEYHLrJefx9PYgi8oJGmUVkk1hSVQR+uZlim4QQcD8GjbPYvvqEzjdVhZpkz8eUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Q0BGs/3I; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1731883831;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=74l4NvVYhjboh9jnk2OFce3mU1koMYGUm/jqQDF1bNw=;
	b=Q0BGs/3IGWtAY58dOdha3/nHDCXJfUQj+33FTOCIYidqnpBaQS/lxNrrFzmmzfIw6/k7bV
	3AqWG/6JLbnlWEhZltM81awS6e2zEL9zi5ApfJUSkGOXhoBTrH+z8OHTnK0aJvhwwoQFWQ
	zT92hUoMGu9Cpn5tNdi1SPR7ym7G4dg=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-64-25FBtd9cMk2iBEyO1EFqvw-1; Sun,
 17 Nov 2024 17:50:25 -0500
X-MC-Unique: 25FBtd9cMk2iBEyO1EFqvw-1
X-Mimecast-MFC-AGG-ID: 25FBtd9cMk2iBEyO1EFqvw
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 13CF419560AA;
	Sun, 17 Nov 2024 22:50:24 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.192.74])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2DEEB1955F43;
	Sun, 17 Nov 2024 22:50:21 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Helge Kreutzmann <debian@helgefjell.de>,  mario.blaettermann@gmail.com,
  linux-man@vger.kernel.org,  libc-alpha@sourceware.org
Subject: Re: Issue in man page sprof.1
In-Reply-To: <xdv6pfasrfbegf3pb34ktupjcjao7kunwj65zmmbgwt53jdy6x@fnarmmxyzgpr>
	(Alejandro Colomar's message of "Sun, 17 Nov 2024 12:55:36 +0100")
References: <ZznJf0DLo7CVHddl@meinfjell.helgefjelltest.de>
	<xdv6pfasrfbegf3pb34ktupjcjao7kunwj65zmmbgwt53jdy6x@fnarmmxyzgpr>
Date: Sun, 17 Nov 2024 23:50:18 +0100
Message-ID: <87mshxxyol.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17

* Alejandro Colomar:

> Hi Helge,
>
> On Sun, Nov 17, 2024 at 10:46:23AM GMT, Helge Kreutzmann wrote:
>> Without further ado, the following was found:
>> 
>> Issue:    Inconsistency detected by ld.so: dl-open.c: 930: _dl_open: Assertion `_dl_debug_update (args.nsid)->r_state == RT_CONSISTENT' failed!
>
> IIUC, this report is that running the example shell session resulted in
> that problem.  I've CCed glibc in case they can help.
>
> It would be interesting to know if this can be reproduced, and a full
> reproducer.

Hasn't this been fixed in glibc 2.38?  Via:

commit ab5aa2ee3d3f978e474803cbbc5fe805ad30e293
Author: Andreas Schwab <schwab@suse.de>
Date:   Thu Mar 23 16:46:20 2023 +0100

    dlopen: skip debugger notification for DSO loaded from sprof (bug 30258)
    
    Avoid inconsistent state in the debugger interface.

Thanks,
Florian


