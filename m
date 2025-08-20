Return-Path: <linux-man+bounces-3518-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFE7B2DED9
	for <lists+linux-man@lfdr.de>; Wed, 20 Aug 2025 16:14:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 904C5A05B40
	for <lists+linux-man@lfdr.de>; Wed, 20 Aug 2025 14:10:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93A9826A1D8;
	Wed, 20 Aug 2025 14:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b="iTX9ayGv"
X-Original-To: linux-man@vger.kernel.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB68C21D59C
	for <linux-man@vger.kernel.org>; Wed, 20 Aug 2025 14:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.229.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755699033; cv=none; b=SudsSNAXRodTp36K8q/BmZ5OQbz/iHH6s5BipweL/0wY5APY/0qyjNiE13eKgh1u51rx35gsbDzgjk6phSPctPXlxk66Q2R9zz16sbrtxFhSuLj+BVAi8ohQ9nOm3le8gThdWPLkP2evMsHDFOBdQyQVqlJqbeEQZdpCUHRvSLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755699033; c=relaxed/simple;
	bh=1zbGsxvRDPDLsd7pFvKMXd6yqmf/K7YDoxe0ibVrgzc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A2/G/Ud4dWTE9qpiOVSAoYBczV/ama+gPJkJCLvhfQPUeSBkdlJ3z/oni6RUgFLyEnz0AZy4T9Ir/rXk5OGi3xoG97H5JPq0uyHPE5Ba8NLBB3XldYZjTEqKdzQUcX9U75p0v4s6tQ3tYmeNqJheoz26kbviEdjmOiOasQ2BTuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org; spf=pass smtp.mailfrom=treblig.org; dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b=iTX9ayGv; arc=none smtp.client-ip=46.235.229.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=treblig.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=Content-Type:MIME-Version:Message-ID:Subject:From:Date:From
	:Subject; bh=2qUGS3EpqWl4Vcsoarpf8Tm5Hr+IQJQMQaqIJc/hJhc=; b=iTX9ayGv+Zt0pok7
	rVh4XXM3w4j37fKfR5fwlH1eeO4unM84kFQETNnhEXh53lZjArkkK/VnXCDV1WeKME8LTTM2SpYkD
	D1EfevyosTARdS6ucE7UufpqdOiPVZmOtik/MA5NuOR6/hLmDmtMSHWHuJ3av7CVNhWdp93/rAnhE
	GsrWZRr/8olhvWzu8HwLZVPxlQmfHZwc/8hhLhSSUW332uQQJ4D+c5T268FMGK/F14CLf0JKmvZbK
	apRUB7cL3ehMafcM3LlZKZHzmrvFTJAhnJ3y0hkfaMMuaRdKprtPMsoAAxKl+d27WQvjBNYuX3EUR
	byjzvKsHimd8a88XZQ==;
Received: from dg by mx.treblig.org with local (Exim 4.96)
	(envelope-from <dg@treblig.org>)
	id 1uojWG-005Foy-2I;
	Wed, 20 Aug 2025 14:10:28 +0000
Date: Wed, 20 Aug 2025 14:10:28 +0000
From: "Dr. David Alan Gilbert" <dave@treblig.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/pthread_attr_init.3: Replace errc
Message-ID: <aKXXVO6VdrhXkidS@gallifrey>
References: <20250820012725.440625-1-dave@treblig.org>
 <7r2bs3ccxjzex3atdkcutdn6rzqmjsczqucodyk3rgfsnevqun@i3szklptbqjf>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <7r2bs3ccxjzex3atdkcutdn6rzqmjsczqucodyk3rgfsnevqun@i3szklptbqjf>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/6.1.0-34-amd64 (x86_64)
X-Uptime: 14:03:53 up 114 days, 22:17,  1 user,  load average: 0.00, 0.00,
 0.00
User-Agent: Mutt/2.2.12 (2023-09-09)

* Alejandro Colomar (alx@kernel.org) wrote:
> Hi Dave,

Hi Alex,

> On Wed, Aug 20, 2025 at 02:27:25AM +0100, dave@treblig.org wrote:
> > From: "Dr. David Alan Gilbert" <dave@treblig.org>
> > 
> > The pthread_attr_init.3 example uses 'errc' to exit on an error
> > printing the error code.  However, 'errc' is a BSDism that Linux
> > doesn't (and has never?) have.

> Libbsd provides a compatbility layer to provide errc(3bsd) on Linux (and
> many POSIX systems).  libbsd is available in many distros (in Debian,
> you should install libbsd-dev).  BTW, it would be nice if glibc decided
> to pick this API eventually.

To use that we'd still need to change to:
       #include <bsd/err.h>
and tell people to link with -lbsd

TBH using BSD only things in a Linux manpage with a _GNU_SOURCE define
seems odd.  The err()/errc()/errx() family of calls seems to be pretty
obscure, most [linux] people I checked with had never used them.
But at least err/errx are in normal glibc.

Dave

> 
> Have a lovely day!
> Alex
> 
> > Replace it by 'errx' with a strerror() call.
> > 
> > Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
> > ---
> >  man/man3/pthread_attr_init.3 | 31 ++++++++++++++++---------------
> >  1 file changed, 16 insertions(+), 15 deletions(-)
> > 
> > diff --git a/man/man3/pthread_attr_init.3 b/man/man3/pthread_attr_init.3
> > index e9058b8fe..9d0783e54 100644
> > --- a/man/man3/pthread_attr_init.3
> > +++ b/man/man3/pthread_attr_init.3
> > @@ -153,6 +153,7 @@ .SS Program source
> >  #include <pthread.h>
> >  #include <stdio.h>
> >  #include <stdlib.h>
> > +#include <string.h>
> >  #include <unistd.h>
> >  \&
> >  static void
> > @@ -165,7 +166,7 @@ .SS Program source
> >  \&
> >      s = pthread_attr_getdetachstate(attr, &i);
> >      if (s != 0)
> > -        errc(EXIT_FAILURE, s, "pthread_attr_getdetachstate");
> > +        errx(EXIT_FAILURE, "pthread_attr_getdetachstate: %s", strerror(s));
> >      printf("%sDetach state        = %s\[rs]n", prefix,
> >             (i == PTHREAD_CREATE_DETACHED) ? "PTHREAD_CREATE_DETACHED" :
> >             (i == PTHREAD_CREATE_JOINABLE) ? "PTHREAD_CREATE_JOINABLE" :
> > @@ -173,7 +174,7 @@ .SS Program source
> >  \&
> >      s = pthread_attr_getscope(attr, &i);
> >      if (s != 0)
> > -        errc(EXIT_FAILURE, s, "pthread_attr_getscope");
> > +        errx(EXIT_FAILURE, "pthread_attr_getscope: %s", strerror(s));
> >      printf("%sScope               = %s\[rs]n", prefix,
> >             (i == PTHREAD_SCOPE_SYSTEM)  ? "PTHREAD_SCOPE_SYSTEM" :
> >             (i == PTHREAD_SCOPE_PROCESS) ? "PTHREAD_SCOPE_PROCESS" :
> > @@ -181,7 +182,7 @@ .SS Program source
> >  \&
> >      s = pthread_attr_getinheritsched(attr, &i);
> >      if (s != 0)
> > -        errc(EXIT_FAILURE, s, "pthread_attr_getinheritsched");
> > +        errx(EXIT_FAILURE, "pthread_attr_getinheritsched: %s", strerror(s));
> >      printf("%sInherit scheduler   = %s\[rs]n", prefix,
> >             (i == PTHREAD_INHERIT_SCHED)  ? "PTHREAD_INHERIT_SCHED" :
> >             (i == PTHREAD_EXPLICIT_SCHED) ? "PTHREAD_EXPLICIT_SCHED" :
> > @@ -189,7 +190,7 @@ .SS Program source
> >  \&
> >      s = pthread_attr_getschedpolicy(attr, &i);
> >      if (s != 0)
> > -        errc(EXIT_FAILURE, s, "pthread_attr_getschedpolicy");
> > +        errx(EXIT_FAILURE, "pthread_attr_getschedpolicy: %s", strerror(s));
> >      printf("%sScheduling policy   = %s\[rs]n", prefix,
> >             (i == SCHED_OTHER) ? "SCHED_OTHER" :
> >             (i == SCHED_FIFO)  ? "SCHED_FIFO" :
> > @@ -198,17 +199,17 @@ .SS Program source
> >  \&
> >      s = pthread_attr_getschedparam(attr, &sp);
> >      if (s != 0)
> > -        errc(EXIT_FAILURE, s, "pthread_attr_getschedparam");
> > +        errx(EXIT_FAILURE, "pthread_attr_getschedparam: %s", strerror(s));
> >      printf("%sScheduling priority = %d\[rs]n", prefix, sp.sched_priority);
> >  \&
> >      s = pthread_attr_getguardsize(attr, &v);
> >      if (s != 0)
> > -        errc(EXIT_FAILURE, s, "pthread_attr_getguardsize");
> > +        errx(EXIT_FAILURE, "pthread_attr_getguardsize: %s", strerror(s));
> >      printf("%sGuard size          = %zu bytes\[rs]n", prefix, v);
> >  \&
> >      s = pthread_attr_getstack(attr, &stkaddr, &v);
> >      if (s != 0)
> > -        errc(EXIT_FAILURE, s, "pthread_attr_getstack");
> > +        errx(EXIT_FAILURE, "pthread_attr_getstack: %s", strerror(s));
> >      printf("%sStack address       = %p\[rs]n", prefix, stkaddr);
> >      printf("%sStack size          = %#zx bytes\[rs]n", prefix, v);
> >  }
> > @@ -225,7 +226,7 @@ .SS Program source
> >  \&
> >      s = pthread_getattr_np(pthread_self(), &gattr);
> >      if (s != 0)
> > -        errc(EXIT_FAILURE, s, "pthread_getattr_np");
> > +        errx(EXIT_FAILURE, "pthread_getattr_np: %s", strerror(s));
> >  \&
> >      printf("Thread attributes:\[rs]n");
> >      display_pthread_attr(&gattr, "\[rs]t");
> > @@ -255,37 +256,37 @@ .SS Program source
> >  \&
> >          s = pthread_attr_init(&attr);
> >          if (s != 0)
> > -            errc(EXIT_FAILURE, s, "pthread_attr_init");
> > +            errx(EXIT_FAILURE, "pthread_attr_init: %s", strerror(s));
> >  \&
> >          s = pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);
> >          if (s != 0)
> > -            errc(EXIT_FAILURE, s, "pthread_attr_setdetachstate");
> > +            errx(EXIT_FAILURE, "pthread_attr_setdetachstate: %s", strerror(s));
> >  \&
> >          s = pthread_attr_setinheritsched(&attr, PTHREAD_EXPLICIT_SCHED);
> >          if (s != 0)
> > -            errc(EXIT_FAILURE, s, "pthread_attr_setinheritsched");
> > +            errx(EXIT_FAILURE, "pthread_attr_setinheritsched: %s", strerror(s));
> >  \&
> >          stack_size = strtoul(argv[1], NULL, 0);
> >  \&
> >          s = posix_memalign(&sp, sysconf(_SC_PAGESIZE), stack_size);
> >          if (s != 0)
> > -            errc(EXIT_FAILURE, s, "posix_memalign");
> > +            errx(EXIT_FAILURE, "posix_memalign: %s", strerror(s));
> >  \&
> >          printf("posix_memalign() allocated at %p\[rs]n", sp);
> >  \&
> >          s = pthread_attr_setstack(&attr, sp, stack_size);
> >          if (s != 0)
> > -            errc(EXIT_FAILURE, s, "pthread_attr_setstack");
> > +            errx(EXIT_FAILURE, "pthread_attr_setstack: %s", strerror(s));
> >      }
> >  \&
> >      s = pthread_create(&thr, attrp, &thread_start, NULL);
> >      if (s != 0)
> > -        errc(EXIT_FAILURE, s, "pthread_create");
> > +        errx(EXIT_FAILURE, "pthread_create: %s", strerror(s));
> >  \&
> >      if (attrp != NULL) {
> >          s = pthread_attr_destroy(attrp);
> >          if (s != 0)
> > -            errc(EXIT_FAILURE, s, "pthread_attr_destroy");
> > +            errx(EXIT_FAILURE, "pthread_attr_destroy: %s", strerror(s));
> >      }
> >  \&
> >      pause();    /* Terminates when other thread calls exit() */
> > -- 
> > 2.50.1
> > 
> 
> -- 
> <https://www.alejandro-colomar.es/>


-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/

