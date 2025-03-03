Return-Path: <linux-man+bounces-2572-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A0CA4C726
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 17:31:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3D443A3A1E
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 16:27:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD8CA214A8C;
	Mon,  3 Mar 2025 16:24:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="AT0bd+P+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f73.google.com (mail-ed1-f73.google.com [209.85.208.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67D9215061
	for <linux-man@vger.kernel.org>; Mon,  3 Mar 2025 16:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741019091; cv=none; b=PUQI4JFg+yRfbVFdbbgt76vZ51kFoipPITOQJa1M6SAkESyokSOgzJABaYzEc0WlXCyt9GWZmjVG3qvCAjFJe2C3T+83LKQ4Seuo5Nr/2DlPGvE2tUhg9uqj5gxsOOUOOsmiSkh1ylgxP+YpEPb78JYpwjWqw6zdXM3QcJyu7wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741019091; c=relaxed/simple;
	bh=jw7/kQA5OwPx9eHYWIvFPKi7vpT4waOduVJmre7wldo=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=tJF+0oDtRCVazXZNEZ+YMncZEC7ZiLZhvwOeGc54sIKrzpdFLEeZWUgklP0WsFPjyJ1BFQlDliFLT/RnXLRRlVRFlY64tVJlwNkuz5mGd7piN33Ep5SNE+QQT609fVvMe79hvTrnfAXvPPO+24yaCyEx7babTTO6w8+DSLFDT28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=AT0bd+P+; arc=none smtp.client-ip=209.85.208.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ed1-f73.google.com with SMTP id 4fb4d7f45d1cf-5e4987b2107so4711686a12.0
        for <linux-man@vger.kernel.org>; Mon, 03 Mar 2025 08:24:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1741019088; x=1741623888; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UEqWLXEew5uRYbyxTZYQ6MgCQaS4BNkNIeAHqm8Uq1k=;
        b=AT0bd+P+C74e3+wIDS3l6vUKcMNtJAtmgv2UYmSztctA9Yv4O1jwSxz2qvJ5P1Gr/6
         26BIop8PG1LRuE0OH3Pq0c0yHaPGdZk2OHylhv0rDnLXQTIDv6rlp6eZWj2ErI+ofHJz
         KYPl/09z4OYY14WSExmYcWfRYai3VJBHU11+hXRl4yxCV3xz+Ct+JoG4HIJid/hIyoze
         2d3H8ZBp7ociM0YGsd6xbjgu5jcIztAGaftIyxPVmiP5R0mhcfGRkTuS076MBcSl5dku
         dzh88qfQh+JxMxlYCJ55pbdc8c2rebcWOtlQiuXqkgeajT+9Rlb6XyB8skMjpavGZWvg
         BseQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741019088; x=1741623888;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UEqWLXEew5uRYbyxTZYQ6MgCQaS4BNkNIeAHqm8Uq1k=;
        b=LQmos1m5XoCTwQia7zttpdrUf3h+ef9OtaX23mQK0dBpyMEs7F1TN9cXJPy1qCoXzg
         kjfPOjQH16jxPHCNIMQ4k4YlZ+9s+JLEmrtJxudUrcfMn1AkzqIeedKP6045hPQtfQO2
         e3iNhfhcN6T7bDOEDGGJj0VEQcLnTNdUpjcoFzesJHrn/EYX3+9RbL2XNI4qvZU6megw
         ZBWkEB/ENFq7mvix6DV9zB0v2zxZku1IOJkFcmIkbDcohCnKqWtNcR7n4azQvQurGCpi
         eaQU0ypVOge6VqEJoZH37ijH/KysSK+Ld9Rzh0JZ59e3QerzeIRM4dC5/gSGQOjcVZ3B
         KlBw==
X-Forwarded-Encrypted: i=1; AJvYcCVnbwCqAgl09wBtqK9+r45wuh2a9wfP6mF0PhLexLaC4woEXkgUP6qUlmeYx6kGXHlx0/F6QRnEYgk=@vger.kernel.org
X-Gm-Message-State: AOJu0YzW8uvQNxcCQsDsMl+QN7GOEcIhSCzjzELYJIypjhtaK3EkAg+b
	CPGGQRMu9m9qkkZ5mTR2jsreRZI9QFdoKkFUl9hgR3f6H0MZnMtMPpB3rB8URNGuobWKeIwoI+u
	N2w==
X-Google-Smtp-Source: AGHT+IHPGxhI2JuHu2Pq9WNx5PLNPYFHLH06yAjoBMoN79g3tVeuwj4rZpgaYAG2cK0qXBWovekAZvCizRA=
X-Received: from edbef3.prod.google.com ([2002:a05:6402:28c3:b0:5e4:cfa6:790c])
 (user=gnoack job=prod-delivery.src-stubby-dispatcher) by 2002:a05:6402:42c2:b0:5de:dd31:1fad
 with SMTP id 4fb4d7f45d1cf-5e4d6ad45e8mr14731923a12.6.1741019087095; Mon, 03
 Mar 2025 08:24:47 -0800 (PST)
Date: Mon, 3 Mar 2025 17:24:45 +0100
In-Reply-To: <sbib2esl6bev7tqww3rgyykpxorpyaix7dujwwm2pg42egg6an@rdyjnecj5vti>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250226211814.31420-2-gnoack@google.com> <20250226212911.34502-3-gnoack@google.com>
 <sbib2esl6bev7tqww3rgyykpxorpyaix7dujwwm2pg42egg6an@rdyjnecj5vti>
Message-ID: <Z8XXzUggsHkRLEqG@google.com>
Subject: Re: [PATCH v2 2/3] landlock.7: Move over documentation for ABI
 version 6
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>, linux-security-module@vger.kernel.org, 
	linux-man@vger.kernel.org, Daniel Burgener <dburgener@linux.microsoft.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Alejandro!

For context, in this patch set, we have three commits:

  * 1/3 and 2/3 copy documentation from the kernel side unmodified.
  * 3/3 revises a section about Landlock's "scoped" restriction features.

I thought it would be easier to discuss with the "copy" and "rewrite" parts
separate, but actually, as you also noticed, 3/3 does rewrite large chunks =
of
the 2/3 commit along the way, and it is probably not worth correcting much =
of
that wording any more.

Would you prefer if I squashed commits 2/3 and 3/3 into one?

On Fri, Feb 28, 2025 at 10:23:47PM +0100, Alejandro Colomar wrote:
> On Wed, Feb 26, 2025 at 10:29:11PM +0100, G=C3=BCnther Noack wrote:
> > With this ABI version, Landlock can restrict outgoing interactions with
> > higher-privileged Landlock domains through Abstract Unix Domain sockets=
 and
> > signals.
> >=20
> > Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
> > ---
> >  man/man7/landlock.7 | 69 ++++++++++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 68 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> > index 11f76b072..30dbac73d 100644
> > --- a/man/man7/landlock.7
> > +++ b/man/man7/landlock.7
> > @@ -248,7 +248,8 @@ This access right is available since the fifth vers=
ion of the Landlock ABI.
> >  .SS Network flags
> >  These flags enable to restrict a sandboxed process
> >  to a set of network actions.
> > -This is supported since the Landlock ABI version 4.
> > +.P
> > +This is supported since Landlock ABI version 4.
> >  .P
> >  The following access rights apply to TCP port numbers:
> >  .TP
> > @@ -258,6 +259,24 @@ Bind a TCP socket to a local port.
> >  .B LANDLOCK_ACCESS_NET_CONNECT_TCP
> >  Connect an active TCP socket to a remote port.
> >  .\"
> > +.SS Scope flags
> > +These flags enable to isolate a sandboxed process from a set of IPC ac=
tions.
>=20
> s/to isolate/isolating/
>=20
> AFAIU, to be able to use an infinitive with enable/allow you need a
> direct object in the sentence.  If there's no direct object, you need a
> gerund.

Thanks, this is useful.  Changed it to infinitive for now.

FWIW, the same phrases exist on the kernel side as well, unfortunately.

> > +Setting a flag for a ruleset will isolate the Landlock domain
> > +to forbid connections to resources outside the domain.
> > +.P
> > +This is supported since Landlock ABI version 6.
>=20
> I'm wondering if we should have this as a parenthetical next to the
> title, like we usually do with "(since Linux X.Y)".  Don't do it for
> now, but please consider it for when you have some time.  I'm not saying
> you should do it though, just that you consider it, and tell me if you
> agree or not.

I added it to my notes for further revisions,
I think this would indeed be more appropriate in the man pages.

Is it possible to set the paranthetical without bold as well,
even in a .SS subsection header?


> > +.P
> > +The following scopes exist:
> > +.TP
> > +.B LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET
> > +Restrict a sandboxed process from connecting to an abstract UNIX socke=
t
> > +created by a process outside the related Landlock domain
> > +(e.g., a parent domain or a non-sandboxed process).
> > +.TP
> > +.B LANDLOCK_SCOPE_SIGNAL
> > +Restrict a sandboxed process from sending a signal
> > +to another process outside the domain.
> > +.\"
> >  .SS Layers of file path access rights
> >  Each time a thread enforces a ruleset on itself,
> >  it updates its Landlock domain with a new layer of policy.
> > @@ -334,6 +353,51 @@ and related syscalls on a target process,
> >  a sandboxed process should have a subset of the target process rules,
> >  which means the tracee must be in a sub-domain of the tracer.
> >  .\"
> > +.SS IPC scoping
> > +Similar to the implicit
> > +.BR "Ptrace restrictions" ,
> > +we may want to further restrict interactions between sandboxes.
> > +Each Landlock domain can be explicitly scoped for a set of actions
> > +by specifying it on a ruleset.
> > +For example, if a sandboxed process should not be able to
> > +.BR connect (2)
> > +to a non-sandboxed process through abstract
> > +.BR unix (7)
> > +sockets,
> > +we can specify such a restriction with
> > +.BR LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET .
> > +Moreover, if a sandboxed process should not be able
> > +to send a signal to a non-sandboxed process,
> > +we can specify this restriction with
> > +.BR LANDLOCK_SCOPE_SIGNAL .
> > +.P
> > +A sandboxed process can connect to a non-sandboxed process
> > +when its domain is not scoped.
>=20
> Does "its" refer to the sandboxed one or to the non-snadboxed one?

It refers to the sandboxed process.

This correction would be overwritten in the following commit.
I don't think it's worth fixing any more.

> > +If a process's domain is scoped,
> > +it can only connect to sockets created by processes in the same scope.
> > +Moreover,
> > +If a process is scoped to send signal
>=20
> Is this a typo?  s/signal/&s/

It is a typo, copied from kernel documentation.  Oops.

This correction is overwritten in the following commit.


> > to a non-scoped process,
>=20
> Should we use plural here?

This correction is overwritten in the following commit.

> > +it can only send signals to processes in the same scope.
> > +.P
> > +A connected datagram socket behaves like a stream socket
> > +when its domain is scoped,
> > +meaning if the domain is scoped after the socket is connected,
> > +it can still
> > +.BR send (2)
> > +data just like a stream socket.
> > +However, in the same scenario,
> > +a non-connected datagram socket cannot send data (with
> > +.BR sendto (2))
> > +outside its scope.
> > +.P
> > +A process with a scoped domain can inherit a socket
> > +created by a non-scoped process.
> > +The process cannot connect to this socket since it has a scoped domain=
.
> > +.P
> > +IPC scoping does not support exceptions, so if a domain is scoped,
>=20
> Please break after the first ',' too.

Done.


> > +no rules can be added to allow access to resources or processes
>=20
> Please break after the second 'to'.

Done.


> > +outside of the scope.

Thanks for the review,
=E2=80=94G=C3=BCnther

