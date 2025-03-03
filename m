Return-Path: <linux-man+bounces-2573-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5134EA4C885
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 18:01:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4D93178DA1
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 16:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0721B217F54;
	Mon,  3 Mar 2025 16:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="eUD44ypi"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f73.google.com (mail-ed1-f73.google.com [209.85.208.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBC9213228
	for <linux-man@vger.kernel.org>; Mon,  3 Mar 2025 16:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741019771; cv=none; b=nvrwWJiM5m3ZFTQ9p90Jn4bHy+C6RMqM9Jhb0uAyH5tGJQ5JsyezOP+d+89UXrj2Ti3BRyh24fg03EzQfM4Ep+/dlSDS5h1ZzYzkHw6VOikDeF6j49PiIm8LDtuvsr72I3dZm78RTSS+2l2lzhff2as5XVZlbtAnZre1Ae8Vxkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741019771; c=relaxed/simple;
	bh=m+qsWvQy9VZamjyvInBUX9ED2KtrFD9XRYoLl8drxLI=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=cVQWkGqL4B8qC38JEKWyiUhZmbSbDsqQlTjNaG7X8ZDsrr2Jjnzr0yS39nQgc8AuHecpBzTRQQzbv0rjfmrVJXSc9xKS2xm9S/z/rBwx28ZrP7tUT7ALFbyr0cMDY/T4RGCCEPBcpQ7E7xIbRKqzNwzUSJzB10Nq2Hfd5Jdp5Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=eUD44ypi; arc=none smtp.client-ip=209.85.208.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ed1-f73.google.com with SMTP id 4fb4d7f45d1cf-5e4a0d66c69so5828285a12.0
        for <linux-man@vger.kernel.org>; Mon, 03 Mar 2025 08:36:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1741019768; x=1741624568; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Has9DObrFmLTHERGHEyoYUF/Q6CoEY7KVpqCmEV/OQY=;
        b=eUD44ypizZD+BoBvI6J8e/dJBNzVd0zGeTAZVm9fEzqrV2dSDLUjlEplcttHwpSJEz
         2FVc2x2L2DYM+7cfV9ni/NSxtFOR0WM6nU11PvJHF5/ylRLaAM9sZ/AhwmH+rOWcli7B
         oQr1LgGPQT47edmEkJdQL+UiNKRNMH7gsRVB5aDgwzWagJGm3hgWsZ1rXvhEOEdpYy8e
         8C1qON726Ogs3hSOw+aYShmJMxHkSZ3/SFeTTUkq65b9kz1ygZrHu12XC3wTfV9xkczZ
         tfCOdPh02J2bJf+HdkQNdtMuj+57L2uZlTZE9oy5JJug62NiUROECpQfM5zsPlNu4QLx
         Rj9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741019768; x=1741624568;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Has9DObrFmLTHERGHEyoYUF/Q6CoEY7KVpqCmEV/OQY=;
        b=nIWptrrN4iDa7JkPRIH2ky7qqIjvj2Pf/QVFbuCe3x/pd2qfm7VmFSjdvxNuUWaKVo
         xh73Ys9Xb544bL3IosalY+SFovcpOOjzUrjhCClAHF59uHlVD5em5iHiQCcA39gRLnc/
         7nY4XAKQ4L8WaRN1SOFAuQAGuWo/+X8irnidf/LJ7TByPsoukqaR05JZmaXYuR3vpkF8
         fDPaAK1xd2kEmknEORPJmU3sBd5H4bEGYCYH2GNITNu6g25QZ9IMBNaiTeRoV7zfiIxR
         qSnWx1FNdezCL2NPmuHRf1rNrg0R/ghBUETSRXIa54C3Q/w5Xw9CdhKXKhWBIOj7MzcJ
         y5LQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8HlVIN8OUlIOOcSsJPRD44wOBNNeaKmpDd+ouuvnDOFdizP3fQll5BSazclTNH1p+BQkw9huKsEA=@vger.kernel.org
X-Gm-Message-State: AOJu0YzweHRK0TBzXKI/NIUOH2gVOEEzF5sRhGJaIjW7SFTFzjCaDECO
	QNcZfxuuDg86/Xa8XlJJKwGheX1GVlVA5G9arnYqY+5DZ2HJuZ5PXoxMtH72OmwdemPbdEINZfq
	Eyg==
X-Google-Smtp-Source: AGHT+IFjyYpPHGvJ2rSIA0/Dem7g1zRqyfkTpAh8aDzJ0VFeb6pDbBAl58kaftmR7K4Y2cDcZDu6pNUTJn8=
X-Received: from edbio6.prod.google.com ([2002:a05:6402:2186:b0:5e5:2d21:7e40])
 (user=gnoack job=prod-delivery.src-stubby-dispatcher) by 2002:a05:6402:268f:b0:5e0:3f83:92ab
 with SMTP id 4fb4d7f45d1cf-5e4d6b87d70mr14741120a12.30.1741019768416; Mon, 03
 Mar 2025 08:36:08 -0800 (PST)
Date: Mon, 3 Mar 2025 17:36:06 +0100
In-Reply-To: <eawpcooc5n4viv2yayt2nblmtnz6mmjixcznrbxputz6ge6w6c@4d46jzm4eego>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250226211814.31420-2-gnoack@google.com> <20250226212911.34502-4-gnoack@google.com>
 <eawpcooc5n4viv2yayt2nblmtnz6mmjixcznrbxputz6ge6w6c@4d46jzm4eego>
Message-ID: <Z8Xads-6xZcZ-6js@google.com>
Subject: Re: [PATCH v2 3/3] landlock.7: Clarify IPC scoping documentation in
 line with kernel side
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>, linux-security-module@vger.kernel.org, 
	linux-man@vger.kernel.org, Daniel Burgener <dburgener@linux.microsoft.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Alejandro!

On Fri, Feb 28, 2025 at 10:37:17PM +0100, Alejandro Colomar wrote:
> On Wed, Feb 26, 2025 at 10:29:12PM +0100, G=C3=BCnther Noack wrote:
> > * Clarify terminology
> > * Stop mixing the unix(7) and signal(7) aspects in the explanation.
> >=20
> > Terminology:
> >=20
> > * The *IPC Scope* of a Landlock domain is that Landlock domain and its
> >   nested domains.
> >=20
> > * An *operation* (e.g., signaling, connecting to abstract UDS) is said =
to
> >   be *scoped within a domain* when the flag for that operation was set =
at
> >   ruleset creation time.  This means that for the purpose of this
> >   operation, only processes within the domain's IPC scope are reachable=
.
> >=20
> > Link: https://lore.kernel.org/all/20250226211814.31420-4-gnoack@google.=
com/
> > Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
> > ---
> >  man/man7/landlock.7 | 73 ++++++++++++++++++++++-----------------------
> >  1 file changed, 35 insertions(+), 38 deletions(-)
> >=20
> > diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> > index 30dbac73d..42cd7286f 100644
> > --- a/man/man7/landlock.7
> > +++ b/man/man7/landlock.7
> > @@ -357,46 +357,43 @@ which means the tracee must be in a sub-domain of=
 the tracer.
> >  Similar to the implicit
> >  .BR "Ptrace restrictions" ,
> >  we may want to further restrict interactions between sandboxes.
> > -Each Landlock domain can be explicitly scoped for a set of actions
> > -by specifying it on a ruleset.
> > -For example, if a sandboxed process should not be able to
> > -.BR connect (2)
> > -to a non-sandboxed process through abstract
> > +Therefore, at ruleset creation time,
> > +each Landlock domain can restrict the scope for certain operations,
> > +so that these operations can only reach out to processes
> > +within the same Landlock domain or in a nested Landlock domain (the "s=
cope").
> > +.P
> > +The operations which can be scoped are:
> > +.P
>=20
> Redundant P before TP.

Thanks, done.


> > [...]
> >=20
> > -A sandboxed process can connect to a non-sandboxed process
> > -when its domain is not scoped.
> > -If a process's domain is scoped,
> > -it can only connect to sockets created by processes in the same scope.
> > -Moreover,
> > -If a process is scoped to send signal to a non-scoped process,
> > -it can only send signals to processes in the same scope.
> > -.P
> > -A connected datagram socket behaves like a stream socket
> > -when its domain is scoped,
> > -meaning if the domain is scoped after the socket is connected,
> > -it can still
> > -.BR send (2)
> > -data just like a stream socket.
> > -However, in the same scenario,
> > -a non-connected datagram socket cannot send data (with
> > -.BR sendto (2))
> > -outside its scope.
> > -.P
> > -A process with a scoped domain can inherit a socket
>=20
> This text seems to have been added in patch 2/3.  Why is it being
> removed in the same set?

I attempted to keep the "copy existing documentation" apart from the "rewri=
te"
part, but this was maybe a mistake given that this results in throwaway
corrections.  Should I rather squash them instead?

Thanks for the detailed review,
=E2=80=94G=C3=BCnther

