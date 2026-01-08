Return-Path: <linux-man+bounces-4726-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 06648D03161
	for <lists+linux-man@lfdr.de>; Thu, 08 Jan 2026 14:38:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F33153004F38
	for <lists+linux-man@lfdr.de>; Thu,  8 Jan 2026 13:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0B92487592;
	Thu,  8 Jan 2026 11:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="gA3k+KGh"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE1E44BCBF
	for <linux-man@vger.kernel.org>; Thu,  8 Jan 2026 11:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767871135; cv=none; b=n1lr6VQhBsf8jDZo/xADU7SyD+0TpY2kniabDvv6Sf4Tz8MpFXmOz9D+MLS9cOLgQ+quyzr5H7Q77oXpUGDEMeik4eM5X/YVkieKY+Q6cDp2bvpG6wHZZG7D6bJvwVBJ7hVgXlWn113wRWZMM/9aUtNx7K9JKTkz2Sd6mQ0UQJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767871135; c=relaxed/simple;
	bh=ny3y76j8WXdbmNoY1d/eR6vR1Bl9NE9H+l8RqekFZRQ=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=XLtjWQ2Nd6hNIX0HuM0kzpYqwqBoXzp+sNY98gr0a6wbzgbSncrOtGn46a3XK7tRXvy3gJ4moSTM7TCkezFZ4xfM4oL/Un8GgcOlTUCeuP0tl9eLoMgwQrcXoc1uIx4qh1vphBBuOiRKBtojdlwVUu6m+jKJLMPBP+/8csENisc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=gA3k+KGh; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767871130;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Paq0xT5CHYs6/WjlRSpvwa5rzXXTXDLpgaP0x7Av/Do=;
	b=gA3k+KGh5tTjuHu1KiE44JgWXbOjPe5cOFVyOo3OnPpKzNijTIyjkTLLmrj/+Sajdp8+wR
	qrU4m3DRwLBvFjmGD4ICOsAtJ8E8m+YU8S1C+dRa+HmTGvGpV0yFNbZcT+hoT0jlB2lBPo
	qPDKlWUniOC3KwiK52wQ2EiUF3b8jEI=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-537-KJjwuuA9Py6GOPtv_GxFrw-1; Thu,
 08 Jan 2026 06:18:47 -0500
X-MC-Unique: KJjwuuA9Py6GOPtv_GxFrw-1
X-Mimecast-MFC-AGG-ID: KJjwuuA9Py6GOPtv_GxFrw_1767871126
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 542111956053;
	Thu,  8 Jan 2026 11:18:45 +0000 (UTC)
Received: from fweimer-oldenburg.csb.redhat.com (unknown [10.45.224.39])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 524F619560A2;
	Thu,  8 Jan 2026 11:18:41 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Alejandro Colomar <une+c@alejandro-colomar.es>
Cc: David Svoboda <svoboda@cert.org>,  Robert Seacord <rcseacord@gmail.com>,
  "sc22wg14@open-std. org" <sc22wg14@open-std.org>,  Carlos O'Donell
 <carlos@redhat.com>,  Aaron Ballman <aaron@aaronballman.com>,
  "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
  "musl@lists.openwall.com" <musl@lists.openwall.com>,
  "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,  Paul Eggert
 <eggert@cs.ucla.edu>
Subject: Re: [SC22WG14.34664] n3752, alx-0029r8 - Restore the traditional
 realloc(3) specification
In-Reply-To: <aV6_UHBxHrOsL3qD@devuan> (Alejandro Colomar's message of "Wed, 7
	Jan 2026 21:28:30 +0100")
References: <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
	<20251223211529.6365A356CF9@www.open-std.org>
	<CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>
	<20260106210527.AA3FA356D3A@www.open-std.org>
	<20260106214930.A5C8E356D2B@www.open-std.org>
	<PH1P110MB1636A1DEC402A702C28EBA9ECC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
	<aV4N-0egpfxhmnta@devuan>
	<PH1P110MB1636D74EDD4F3074AC98F12FCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
	<PH1P110MB163601133BF0167C46C8CC9DCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
	<lhuqzs1uy7s.fsf@oldenburg.str.redhat.com> <aV6_UHBxHrOsL3qD@devuan>
Date: Thu, 08 Jan 2026 12:18:38 +0100
Message-ID: <lhuldi8pd2p.fsf@oldenburg.str.redhat.com>
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

* Alejandro Colomar:

> Hi Florian, David,
>
> On Wed, Jan 07, 2026 at 06:30:47PM +0100, Florian Weimer wrote:
>> * David Svoboda:
>>=20
>> > WRT this text:
>> >
>> >         Code written for platforms returning a null pointer can be
>> > =E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82migrated to plat=
forms returning non-null, without significant
>> > =E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82issues.
>> >
>> > I am very skeptical that this is indeed true. But to be precise, this
>> > is Glibc's problem rather than WG14's.  If they are willing to change
>> > glibc to return non-null on realloc(0), then I am willing to agree to
>> > this change in ISO C.
>
> A major implementation, gnulib, has done the switch in 2024 after this
> proposal.  No regressions are known.  We would have certainly noticed
> if something important had happened.

gnulib is a sub-settable copylib, so it only affects gnulib-using
applications that end up copying the relevant realloc implementation
from gnulib (there are at least two).  This is a relatively small set of
applications, and they typically run only for a limited time.

It's not that users update systems to a newer gnulib and applications
switch to a different realloc implementation.  It's a very incremental
roll-out.

>> Someone needs to take responsibility.
>
> What do you mean exactly by this?

It was suggested that WG14 can just make the change and ignore its
consequences for glibc and other implementations.  For glibc, we could
also make the change and tell our users to deal with the breakage.  I
don't think this is a good approach.

> You could do some more, but with the resources we have, this should be
> quite convincing.

I don't feel comfortable changing glibc based on the data we have so
far.

Thanks,
Florian


