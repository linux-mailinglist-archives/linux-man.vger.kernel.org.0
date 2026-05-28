Return-Path: <linux-man+bounces-5627-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMO9Gr/OGGqunggAu9opvQ
	(envelope-from <linux-man+bounces-5627-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 01:24:47 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7B65FB65A
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 01:24:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 93044303896B
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 23:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4320318B9B;
	Thu, 28 May 2026 23:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="rMzFEut7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC761E5702
	for <linux-man@vger.kernel.org>; Thu, 28 May 2026 23:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780010544; cv=pass; b=dg5ypeOPPC8DAc8qVL0EuZ6WDkEeTInHAa7utmkzHSAK1ZCp6nEcfzlN50iiKRtVzQvakpGdx2YIdsO/MgyY2PJWmrAsGot2NWzhxth2GKt8KGuij0QvkfUxUUAAegOPsPGUlJmolQTWulWMpBZ8Q0I9gEyaEiF+E1wwSszTyhY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780010544; c=relaxed/simple;
	bh=X2WaX/R5xP1cVGQnxXvSOubHJ+1djkPT8h/km7rxPSY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pRMeK7/BEmOAtMIM596bh/D7S/qZsBT55Ku9LK8XbfZplSGEGKiZpBw0H9137lnuu/mcZRJeOY8Futw+tAv440Arbkf31HCnQX7axPTu+h8+gEw9/wu9nsdTgW+hgir4xfjniC+rEMY/lntQGjVMsEJ0QO//Y9ZnKlJBd1VY4m8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=rMzFEut7; arc=pass smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5aa2d5a1d51so6339175e87.3
        for <linux-man@vger.kernel.org>; Thu, 28 May 2026 16:22:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780010541; cv=none;
        d=google.com; s=arc-20240605;
        b=AusBf5oWc0115UOc7dL1TKs/cfkIkKNs231wNuA8OQEkwkryfIYP9K2P/ctMpjlkb3
         eI07LLTkTgYRicYfBquBjYTcSF+yol5UYflF3iAWQI+ekE5yf3/6tOFBPpeGZt9Bc1pO
         8zh6ZUpyHMAM2dqGiAZvCx4OIGvzb72W6LPHUAWoN9H5Z4/TAmljaFB2CfBCAN0Y9TY0
         VJDvBUQ3QAcEZqNRXnGIlHQAAS80X6V7Bj2+1saC7hBLWPBGcPOZv+2DN5xPE77SqgKs
         grNB5gLdgWmGsfYSboHHzI2hypox2+/wtpB6/2PNTg4bW+4e+gvnkiQWDs45EUeckMoc
         SojA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eFoN1atC/ADjATT91kbS+G/yyqYQvFh5aoepondrN5o=;
        fh=jQJi3oL+tLTQLk5s1ghZNvD5Bkld6r8Wux9NeKu0Rrw=;
        b=AjdE53ygO58dxJKNNKzwYGykhUAmzDQbnpalgV1PiXie2L+p9gEin+JGZyyP2YiXzP
         If8PtPvNsTH79qKEw09ZS66xzr9DTQq+YO2s5ng5Md+91aGdiDetcgq+XrPIS5mTYuZI
         MEBqvWUB+wEHHwPKKSZSFgmnTblRePLw3Zv7sw5NXHkgjxx01Pgyz5r9OApKEW0cBqnf
         2Vyp2ZX/rI4Zuk0nCJewJqUCNu/AXJXkEaNXAZHAmsPFRqROpK3gGSUncgYO8VFcOeh7
         /ZgGcMRh2KNvpXG+wMiq/smzCua6fOzAT3F0ndxiQpx29r5sJ1cdHGtiPa2IqIKZOEsh
         ekLQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780010541; x=1780615341; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eFoN1atC/ADjATT91kbS+G/yyqYQvFh5aoepondrN5o=;
        b=rMzFEut7Y4+E+G7FJGfQowq2s7n7e3lNw320lfbTqgPLSZ0JmUpavVF1CxIfYaF2T5
         xnCMeKZBIyp8fd+VaEvt2CUcSL29oTP3qzD8Gi/RwRxZtyporwO8TXfIk87QwsxYtP5d
         lbxUUBRr4+PoA+R0zp6sDrlFIWlHqMosx3dwaClmDxNiFuYztd/KtFblshA+OmS9XycA
         q1ogjJTzDE+49h72I8ZepkXq5+JVIMASfPJr9vvXQGw39A7XPb1o1lLYmd98igQ6KgVF
         7wYIA22zf8mson0I6Our6oAAMCMJJJjSK3yGq06BqFvQjRpqavbo2vJrpiQV9j9NO69a
         jGOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780010541; x=1780615341;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eFoN1atC/ADjATT91kbS+G/yyqYQvFh5aoepondrN5o=;
        b=laP16H+/oMZHz4E0aU7hvnJGZtwhjCj9rEF7QSwi8mXTj4EaUcxmV6yOSeCUkzuvh6
         /noDZIx+5S3xnU6Cocj8MMbnB+jjs/uuppN5VW5JuOfVH5L9hS95mMHclJhkhZ6WXPFN
         6aJ29DD+UMcN9I0fFEm2HBsjOA/FyxpalcDdNmJQ+lGmHbYbG2mAF2sUN0iCCpbWJ0CB
         K6uLgHyIYRm0Qyf/0qlBheVKYDQEan860shomwm4W49v2RZLFWMczqAroZSsII5IrgE7
         4UD4NAqCuI235WQbNvbDEpYT/SSeV3TmYuMRyjx3BN5Pq/7O+PX+ET8uKrbSkaC2XN1q
         0GTQ==
X-Forwarded-Encrypted: i=1; AFNElJ/wmIMFHlb2vTuDCtfDwn+07jSUkjX3dQjouLar4ZwOGMt0igs7qmDSzDvXQcQpIwopaGRWD+zr/c4=@vger.kernel.org
X-Gm-Message-State: AOJu0Yxha74gkq/Ks19/TVcrzQ7vBOnd2MLWVz+giEw+24jJVWCmwaSh
	vX4igyFbG7t6KL/BpZGNjvIa3/tIjcb8f2iBEnt0/HnWefho2tCEdSkpaa8LPXsAIXqYNhNpV9N
	pmk0FQxbSi91kw9K2Ku7bk6qt/uxYcrA=
X-Gm-Gg: Acq92OHwcBvfmXp1IT3WWG4bntGh+UVYwle7JrE04qyUQk72ggpFobX03SfnmPhyVAf
	Mamr3MyttZQA53xkLyu/tnL6qjnIZ0Bg4ianQfHqXtCynlyrU+jaQym5Z0zImVVGccCBZ9Po8rO
	00zWV6dQcMu6P+Ea2o9O/jz9rUOtA2FYfIxGDOa6sr0vUYAZX/iSbLqsvb/Q2+Y9uu5fU7UYWR7
	RKSvJ3iIkMX9cZWCwo3TS8pJkWA3kaKfqRgMBj8zbzb9FFSUm6TwoCpAdbA9Um+cY0gYUI45ayi
	OJtT4t6YB34zmLHbWfpZpK66TCMNySQFZ9Vwvyq7BCC66kQw
X-Received: by 2002:a05:6512:31c3:b0:5aa:58bf:8123 with SMTP id
 2adb3069b0e04-5aa594e3b9amr50879e87.44.1780010540980; Thu, 28 May 2026
 16:22:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAFs=pgbvWhm7KUcdyt=ELT66FNuLNjqh3Ek-1d9V6sY2npJ5jg@mail.gmail.com>
 <ahbxJGIK8Qf4AqVl@devuan> <CAFs=pgYAfonz99yGyoS+h76v7YrfT8=f4yg6zQFqDPgm8XfsoQ@mail.gmail.com>
 <ahcvtYzeadqmhk62@devuan> <CAFs=pgaaDgMULDkwrewtegogQQCZjCFqEPUEkAfKpT67rEWZ1Q@mail.gmail.com>
 <23a5740a-5de6-487d-b976-71e16205b1cf@redhat.com> <ahisWSsAtm8J19RX@devuan> <ahjGLWkhne6VItJf@devuan>
In-Reply-To: <ahjGLWkhne6VItJf@devuan>
From: Mark Harris <mark.hsj@gmail.com>
Date: Thu, 28 May 2026 16:22:08 -0700
X-Gm-Features: AVHnY4KNMKfPm4E-dYXpZTg5d9ufUcjLc_-2Xy0DE5mjK2RRKKfTkB0G_vHJO0c
Message-ID: <CAMdZqKFnOkCQjqArvS8ykyA2=nOeqabhDVio=9ZkL7cBXH7few@mail.gmail.com>
Subject: Re: Mangled function prototypes (phantom arguments)
To: Alejandro Colomar <alx@kernel.org>
Cc: "Carlos O'Donell" <carlos@redhat.com>, "Michael Kerrisk (man7.org)" <mtk@man7.org>, 
	linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-5627-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[markhsj@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Queue-Id: DB7B65FB65A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

 Alejandro Colomar wrote:
>
> On 2026-05-28T23:24:06+0200, Alejandro Colomar wrote:
> > Hi Carlos,
> >
> > On 2026-05-28T14:39:15-0400, Carlos O'Donell wrote:
> > > On 5/28/26 9:06 AM, Michael Kerrisk (man7.org) wrote:
> > > > I don't think the Linux system call and C library manual pages are a
> > > > good place to promote this obscure GNU feature. It is confusing
> > > > people, including me. (I came to making this report because several
> > > > people have reported this "bug" on various pages rendered at
> > > > man7.org.)
> > > >
> > > > Please consider reverting these changes. These markings use
> > > > little-understood, nonportable syntax. The manual page synopses should
> > > > be in standard, portable C that is *easy* to understand.
> > >
> > > I agree with Michael.
> > >
> > > I think these changes should be reverted, but it's a question of
> > > goals and values for the project, and the purpose of the SYNOPSIS.
> > >
> > > My view was always that they were the simplest expression of the
> > > interface that the widest possible audience could understand, and
> > > that seems to align with Michael's view.
> >
> > That doesn't provide much value, IMHO.  My opinion of the SYNOPSIS is
> > that it's a quick reminder of how a function should be used.
> >
> > Let's take a real example:
> >
> >      long mbind(void *addr, unsigned long len, int mode,
> >                 const unsigned long *nodemask, unsigned long maxnode,
> >                 unsigned int flags);
> >
> > I honestly don't know anything from the prototype above.  Apart from the
> > types, there's no useful information.  There are the names which will
> > later be described in the description, but so far they're not useful.
> >
> >      long mbind(unsigned long size, unsigned long maxnode;
> >                 void addr[size], unsigned long size, int mode,
> >                 const unsigned long nodemask[(maxnode + ULONG_WIDTH - 1)
> >                                              / ULONG_WIDTH],
> >                 unsigned long maxnode, unsigned int flags);
> >
> > This already introduces me the function quite well.  The description
> > will of course clarify details, but I can already see some things.
> >
> > > It certainly isn't for me as a C library author...
> >
> > The SYNOPSIS is for everyone.  I read the synopses regularly while
> > programming.  In fact, I read it quite more than the descriptions, which
> > I only read seldom, when interested in some rare details.
> >
> > > it's for
> > > someone just learning or refreshing knowledge, and what makes
> > > it easiest for a new person or someone less familiar to consume?
> >
> > Speaking of myself as a new programmer not so long ago, I would have
> > appreciated these synopses.
> >
> > > It seems like we've drifted toward describing the interface *and*
> > > the constraints in a compact form (like N3433). Is that in line
> > > with the goals of the project?
> >
> > I think it is.  At least with how I see it.
> >
> > I also don't see much difference between the interface and its
> > constraints.  They are deeply related (array parameters are part of the
> > type system, after all).  If we wanted to know the names of the
> > arguments and their order, we could have something much simpler:
> >
> >       mbind(addr, size, mode, nodemask, maxnode, flags);
>
> BTW, FWIW, this resembles quite a lot the documentation from the times
> of V7 Unix.  Here's how functions were documented back then.
>
>         SYNOPSIS
>              char *ttyname(fildes)
>
>              isatty(fildes)
>
>              ttyslot()
>
> AFAICS, 4.4BSD is the first BSD that used function prototypes (both in
> the source code and documentation).  You could similarly argue that that
> was unnecessarily confusing programmers back then (most programmers of
> the time might not be aware of the innovation of function prototypes,
> and why one would care about parameter types, especially when being
> introduced to a function).  However, we'll probably agree that that was
> a good change.  I would find a prototype without types to be quite
> uninformative.

The types are documented.  Originally the types of arguments and the
return type of a function defaulted to int, so there is no need to
write the type in that case.  Argument and return types that were not
int were shown in the man pages, using the syntax that was used at the
time (arguments declared with their type after the close parenthesis
before the open brace).

The issue is not the inclusion of additional information, the issue is
the use of obscure non-standard syntax that introduces confusion.  The
man page above uses the normal C syntax that C programmers at the time
were very familiar with.

 - Mark

