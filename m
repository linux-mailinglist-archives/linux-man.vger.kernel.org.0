Return-Path: <linux-man+bounces-3187-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FBEAE0D28
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 20:50:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B217B4A3023
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 18:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6025F17A30F;
	Thu, 19 Jun 2025 18:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="TowAT+Go"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7952D78A
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 18:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750359016; cv=none; b=WBtyCfEIkWUdSiKcbxT72lljfoItoG1qCVSoHle0Z9DDTVZOIj0S6LHKAiAbvJldpyiL+30Y8VBSIncD9SjsQgY3yI0hxT7pyYM0mhstGZ0aG7CMby6Yu6W3uIz+mh1QI2q9mQsN6fPeiHzKqodfctpwQOB0Y7e56ufcD0FSQjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750359016; c=relaxed/simple;
	bh=BTbQxDHK/pnfh1886uq6/HEhib8UpYC2iQQRQWt+UCw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PrPGlfuBVswSogXI5pYlaV7wm8m6bfC/B7BLovau09d9s1EbRI83aR03j/XmTOxlQ1j4aFegvjpcRpUq2tGwltzripgXWdfo8h0GI1kgnYqyWyTfMZ+VFCNHI7o/EDzOa2Fg61kO9UJgY4FdrTkF2rug5htWsOjk180kpMTeHGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=TowAT+Go; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1750359012;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=u3BTOB2gRjw2Mh0giY7jvBts/e2KrwY3rJVhNaAONTA=;
	b=TowAT+GoX/P3j0KJBvOcRwQOSSsOgG0t81vMrDN47dFfPkJL5e7VlR01Qo/fbFKG/Y+6XX
	5xK4YF9AIoHQNYhKsmPeNS9i4fvG+BmfHIQGvbZuer7g0UTkGASIrGYSS/vwn8D00sDAEc
	v9bELfpUl0yt0ycVLHC8gu64/hsD0jw=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-13-NmBgtG2TN5mn5rLLsbYnpA-1; Thu,
 19 Jun 2025 14:50:08 -0400
X-MC-Unique: NmBgtG2TN5mn5rLLsbYnpA-1
X-Mimecast-MFC-AGG-ID: NmBgtG2TN5mn5rLLsbYnpA_1750359007
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F36FA195608B;
	Thu, 19 Jun 2025 18:50:06 +0000 (UTC)
Received: from redhat.com (unknown [10.2.16.23])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 47ABD19560A3;
	Thu, 19 Jun 2025 18:50:04 +0000 (UTC)
Date: Thu, 19 Jun 2025 13:50:01 -0500
From: Eric Blake <eblake@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, musl@lists.openwall.com, 
	libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>, Bruno Haible <bruno@clisp.org>, 
	bug-gnulib@gnu.org
Subject: Re: [v2] malloc.3: Clarify realloc(3) standards conformance
Message-ID: <epzoebbkaqmo627622nacfw4gvvomayc2ev7ufebcrpo2izae3@tfafskjvtjgi>
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
 <3cx3oylv6hid2eunibcre7c5oqncuxkrk25x2plme2fqzmdpsf@sh7tmopzzgd5>
 <nd62th7wphcfw7k2grg2a6y4rbet53d4mljmwhkoelrg43dtpm@rpjskrdvlpw6>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nd62th7wphcfw7k2grg2a6y4rbet53d4mljmwhkoelrg43dtpm@rpjskrdvlpw6>
User-Agent: NeoMutt/20250510
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40

On Thu, Jun 19, 2025 at 01:42:38PM -0500, Eric Blake wrote:
> > +
> > +       The glibc implementation of realloc() is not consistent with
> > +       that, and as a consequence, it is dangerous to call
> > +       realloc(p, 0) in glibc.
> 
> More importantly, with C23 making it undefined behavior, it is
> dangerous to call realloc(non_null, 0) in ANY libc, ever.  Regardless
> of whether glibc documents semantics that comply (or don't comply)
> with older standards.

That is, unless a future revision of POSIX adds intentional <CX>
shading to state that on POSIX platforms, realloc(non_null, 0) has
well-defined behavior, and therefore making it usable on POSIX systems
even if not appropriate for generic C systems.

-- 
Eric Blake, Principal Software Engineer
Red Hat, Inc.
Virtualization:  qemu.org | libguestfs.org


