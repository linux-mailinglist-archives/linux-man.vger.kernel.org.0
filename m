Return-Path: <linux-man+bounces-2394-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BECB3A31544
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 20:28:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7861A166413
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 19:28:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F0B7267F6C;
	Tue, 11 Feb 2025 19:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b="vuMpHyMU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-190f.mail.infomaniak.ch (smtp-190f.mail.infomaniak.ch [185.125.25.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCDC0267F64
	for <linux-man@vger.kernel.org>; Tue, 11 Feb 2025 19:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.25.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739301869; cv=none; b=iK3q0nW1PDdm7cqtsa96FVgNdIbjRHzONQhquJxfwIncvFHr6rL6hPCZ9lVFmdXWgHFKitMiCpXU5Y/6+SgM5gXa3p/BVZ7BCoUYpXf032NehL1xO9fv0ySaytX7tkUfhfzBWopyWozJjiU8+z30egn2cwt5vefU9kFVg2St2U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739301869; c=relaxed/simple;
	bh=15B3NB2Jc6UAvD+/Ts407VLwdrwuTRLKfsAMpL4R0rA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JKPGCdzmoDQffP80vPMs18eTEVDVodNPI0cX7XMO+VbwgGLRafGkY/wVj4elK+YJTS2y9y2d8MOehzsDXRrJXdbN2GygEIcbQBHJ4dwjFSxdG/TzP+oUqsaIo16QR29uTH1CvE8cqbQ19RxLmdoUfeRlHNU4Dfk9OYOuM3iZCEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net; spf=pass smtp.mailfrom=digikod.net; dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b=vuMpHyMU; arc=none smtp.client-ip=185.125.25.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=digikod.net
Received: from smtp-4-0000.mail.infomaniak.ch (smtp-4-0000.mail.infomaniak.ch [10.7.10.107])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4Ysrwl3kM7zQSk;
	Tue, 11 Feb 2025 20:24:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=digikod.net;
	s=20191114; t=1739301863;
	bh=+bzsGKDDfDPHHZ5hnwg/FUMPKucsS5mykrkkOVX0PAg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vuMpHyMUyBsWqKt2OTBBJHszaQyhM/vmZJ4y7lPQUzcHqr3+4uQY0GYb7gEKkUs/U
	 e7cl0CMbkiffoMtROiw8zsTh18vT1mQ4mw5v4VpHCQ2bS31ucqhSx/ZCpjBzWyb0jN
	 7ow1TbKUAwDPpgPJxa/H4j3UF8ktYdun6KaCGjoA=
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4Ysrwk1MjNzSyL;
	Tue, 11 Feb 2025 20:24:22 +0100 (CET)
Date: Tue, 11 Feb 2025 20:24:21 +0100
From: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, 
	linux-security-module@vger.kernel.org, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>, Daniel Burgener <dburgener@linux.microsoft.com>, 
	tools@kernel.org, linux-doc@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] landlock: Minor typo and grammar fixes in IPC
 scoping documentation
Message-ID: <20250211.oavooPhap9OX@digikod.net>
References: <20250124154445.162841-1-gnoack@google.com>
 <20250211.Ree5bu6Eph2p@digikod.net>
 <22olfm76rcgjfs4vrr3adtbznsnz47kaehlr3ljn6e5jkc6waq@ue7azstxlwfv>
 <20250211.ieSoo7Phe5oh@digikod.net>
 <3unkhxarmiddobfjvojx4sdpgitjld26udcagka2ocgrb6c2jc@dcg4w5yk5mut>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3unkhxarmiddobfjvojx4sdpgitjld26udcagka2ocgrb6c2jc@dcg4w5yk5mut>
X-Infomaniak-Routing: alpha

On Tue, Feb 11, 2025 at 05:13:21PM +0100, Alejandro Colomar wrote:
> Hi!
> 
> On Tue, Feb 11, 2025 at 04:53:44PM +0100, Mickaël Salaün wrote:
> > > Let me suggest the opposite: Could we move the kernel docs to manual
> > > pages in man9?  (As is the historic place for kernel docs.)
> > > (You could keep man9 in the kernel tree if you want, or could handle it
> > >  to the Linux man-pages project, if you want.)  That would help have a
> > > more clear separation between the two sets of documentation, and prevent
> > > duplication.
> > 
> > I didn't know about man9 but it's not clear to me what would be the
> > content.
> 
> The official name of man9 is "Kernel Developer's Manual".
> In-scope in man9 are internal kernel APIs, and in general anything that
> is of interest to kernel developers but not to user-space developers.
> 
> >  Because I want new kernel features to come with proper tests
> > and documentation, it would be much easier to apply all these patches to
> > the same repository, at the same time.  Using the same repository should
> > also help to synchronize documentation with code changes.
> > 
> > One remaining issue would be that some generated documentation come from
> > the kernel source files, especially the UAPI headers, which also helps
> > maintaining the documentation in sync with the code.  What would you
> > suggest to improve the current workflow?
> 
> For generated documentation, I'd really avoid that.  Currently, in the
> man-pages we only have bpf-helpers(7), and I'd very much not follow that
> for other pages.

OK, kernel doc in man9 would not be a good fit then.

> 
> For APIs that change often, that may make sense, but in general, APIs
> shouldn't change significantly enough to prefer generated docs.
> 
> > > I personally don't like the idea of having man2 in the kernel tree.
> > > Michael Kerrisk already mentioned several reasons for why it's a bad
> > > idea in the past.  On top of them, I'd add that the build system of the
> > > Linux man-pages project is quite more powerful than the kernel one, and
> > > it would be an important regression to have to adapt to the kernel
> > > Makefiles in the manual pages.
> > 
> > For the Landlock syscalls case, could we move the syscall documentation
> > to man9?
> 
> man9 is for internal kernel APIs.  Here's intro(9) in different systems,
> which documents what should go into man9, and what shouldn't:
> 
> <https://man.netbsd.org/intro.9>
> <https://man.openbsd.org/intro.9>
> <https://man.freebsd.org/cgi/man.cgi?query=intro&apropos=0&sektion=9&manpath=FreeBSD+14.2-RELEASE+and+Ports&arch=default&format=html>
> 
> Debian had a project which documented some Linux kernel internals in
> man9, but it was eventually dropped.  I don't know who maintained that,
> and what was the history about it.
> 
> If Landlock has internal documentation that only matters to kernel
> developers, yes, that would be in-scope for man9.  The user-facing docs
> are more relevant in man2 and man7, though.
> 
> I would be happy to take all the landlock docs in the form of man9 pages
> if you handle them to the Linux man-pages project.  I can do the work of
> transforming the .rst docs into man(7) pages; that's fine by me.
> 
> If there's consensus in the kernel of moving to man9 docs, I'd be happy
> to help with that.  I fear that some maintainers may fear man(7) pages.
> If you need me to give any talks to explain how to write man(7) source
> code, and show that it's easier than it looks like, I could do that
> (Günther already suggested me to do so :).  Maybe I should give a talk
> at Plumbers.

It would be interesting to get the point of view of other kernel
maintainers but I guess a lot of them would have the same: to lower the
bar of contributions.

> 
> 
> Cheers,
> Alex
> 
> -- 
> <https://www.alejandro-colomar.es/>



