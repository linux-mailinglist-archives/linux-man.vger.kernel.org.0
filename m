Return-Path: <linux-man+bounces-4707-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CC5CFF270
	for <lists+linux-man@lfdr.de>; Wed, 07 Jan 2026 18:41:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DFE3F302AFBF
	for <lists+linux-man@lfdr.de>; Wed,  7 Jan 2026 17:40:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4545632B994;
	Wed,  7 Jan 2026 17:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="L5uWwZmO"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3D3331A44
	for <linux-man@vger.kernel.org>; Wed,  7 Jan 2026 17:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767807065; cv=none; b=UO7MvsZx8E2LVUYEtDxrT9UGObeiwqGmQ5LVOHIeIZnpCbXQ4NTd9GGihbpJxgAhYGw5t1jTYiRrqJZIL3SDjMiCoxNy7hs97/QCOlSQcBrISG8qTHuJP8bg+3OjiwnpjQlLHIo1rJnXnPqAz2hhPDdJ+lpLRBX7dbSM37XQ2RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767807065; c=relaxed/simple;
	bh=+Urhayi0hgSwsQXenEOzLXBD86vTzoCCR1o1WEgxLMk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=iyap7lamVRq21qssxMaI0/DXU9Fdokvb8FHTy81BC6dNr0JZCYerGF08OzgO0RE8okqQCL4pPYZMPiwM6EwcxpyyfXmVjLw0/SbNofWgPNmtZ3uD8j+sKpOvNqVelekpTLNXLpvq6eDyp2YhXaXgu1Wskt9GQG+tMnyZgGm+yww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=L5uWwZmO; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767807059;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pwtZ5DANqgIxib8CR2DVi/wj3I9enaTzYUYnQpPxd0A=;
	b=L5uWwZmO0+gH+BDXbe9bwJ7Gg1L6XVO7VH/XIPEDUs4m13lWzD4NPDKKi1PnMIPHAYXIaA
	ncXeYNCpydPCmPADC5ePJGUKjAdxYbRbcIxA5qo7a1cuGY7PaQZISg9Nb3zBnZvmy0l7lb
	EH86mhRjSqV8lGMN4i9CCAyVXN8qqCg=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-490-RO8VWYfOOhOp3BMMRbdJaA-1; Wed,
 07 Jan 2026 12:30:55 -0500
X-MC-Unique: RO8VWYfOOhOp3BMMRbdJaA-1
X-Mimecast-MFC-AGG-ID: RO8VWYfOOhOp3BMMRbdJaA_1767807054
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 629621954B14;
	Wed,  7 Jan 2026 17:30:53 +0000 (UTC)
Received: from fweimer-oldenburg.csb.redhat.com (unknown [10.45.224.37])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CAAB419560A7;
	Wed,  7 Jan 2026 17:30:49 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: David Svoboda <svoboda@cert.org>
Cc: Alejandro Colomar <une+c@alejandro-colomar.es>,  Robert Seacord
 <rcseacord@gmail.com>,  "sc22wg14@open-std. org" <sc22wg14@open-std.org>,
  Carlos O'Donell <carlos@redhat.com>,  Aaron Ballman
 <aaron@aaronballman.com>,  "libc-alpha@sourceware.org"
 <libc-alpha@sourceware.org>,  "musl@lists.openwall.com"
 <musl@lists.openwall.com>,  "linux-man@vger.kernel.org"
 <linux-man@vger.kernel.org>
Subject: Re: [SC22WG14.34664] n3752, alx-0029r8 - Restore the traditional
 realloc(3) specification
In-Reply-To: <PH1P110MB163601133BF0167C46C8CC9DCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
	(David Svoboda's message of "Wed, 7 Jan 2026 14:31:31 +0000")
References: <20251223161139.196AB356CF9@www.open-std.org>
	<20251223164349.F0BC5356D1A@www.open-std.org>
	<CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
	<20251223211529.6365A356CF9@www.open-std.org>
	<CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>
	<20260106210527.AA3FA356D3A@www.open-std.org>
	<20260106214930.A5C8E356D2B@www.open-std.org>
	<PH1P110MB1636A1DEC402A702C28EBA9ECC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
	<aV4N-0egpfxhmnta@devuan>
	<PH1P110MB1636D74EDD4F3074AC98F12FCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
	<PH1P110MB163601133BF0167C46C8CC9DCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
Date: Wed, 07 Jan 2026 18:30:47 +0100
Message-ID: <lhuqzs1uy7s.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12

* David Svoboda:

> WRT this text:
>
>         Code written for platforms returning a null pointer can be
> =E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82migrated to platfor=
ms returning non-null, without significant
> =E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82issues.
>
> I am very skeptical that this is indeed true. But to be precise, this
> is Glibc's problem rather than WG14's.  If they are willing to change
> glibc to return non-null on realloc(0), then I am willing to agree to
> this change in ISO C.

If glibc makes the change, it becomes the problem of our users (and
developers who interpose glibc's malloc).  I'm not sure that's a helpful
approach.  Someone needs to take responsibility.

For glibc, we would have to do some analysis to figure out the impact.
I don't think the glibc team at Red Hat will be able to work on this in
the foreseeable future.  I don't we should make such changes upstream
without such an analysis.

What's Microsoft's position on this entire topic?  I thought they use
the glibc behavior, too?

Thanks,
Florian


