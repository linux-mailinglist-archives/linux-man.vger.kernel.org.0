Return-Path: <linux-man+bounces-2988-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C665BABD549
	for <lists+linux-man@lfdr.de>; Tue, 20 May 2025 12:40:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A5D18A2AEA
	for <lists+linux-man@lfdr.de>; Tue, 20 May 2025 10:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE138270550;
	Tue, 20 May 2025 10:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="Soa8IlZG";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="MKSTb+y2"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C001A26F440;
	Tue, 20 May 2025 10:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747737607; cv=none; b=fu5/HKiLhSHDMWbXUatX7QWwsrfy1OgqiLdyhkqZ4gS6uqyzuba6MnS4pvvVP4hGLd+zuuZgLoHQ56jQEmkopvvdUoDS2lMeXYI/CTSoNWxSprAGVTs6S90OQbyHKgnoe9fJ5tyXOiM3Tkj7aw3zgG2ash9vnEgc2VTpp5vjTFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747737607; c=relaxed/simple;
	bh=xPgJ4tNfE+/UiMc2JDLo21l4Y02XmFl7AKqYYhbRpvk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GZyrwl73HBQAnD4SM21zylmmZvxW8sDUMpaFHOHaAAgHhql9e5NE4v6YcNRRg160wB+BVm7ztW7Vj7SQ/hvn1hN/dDXSUcGJ4CFQllCUkiZuO4/pZu1EdKaZjMc448joQtxOwgiKGIwGQm4XpZKoKtB8FSHBxFa/SzqwN5AoaHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=Soa8IlZG; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=MKSTb+y2; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
Date: Tue, 20 May 2025 12:40:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1747737603;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3YCYCyQORdQQ6yPdRXIvakdUOuzyMzvVjOJzjGAbDm8=;
	b=Soa8IlZGIp1MohezIQOaVZFdPdo2uW+k38fSMXSK7Vk3yUF0SAdxWY1084UM5bkjPGg9QO
	J0s4cVXHubNazLvQOqlDikbkCcJFh3MYjj7LfY5nNG4b7cUXRabgV6c6QgieuWP6511tjA
	JA34Y286g0it35pnb0tRG8oaqOOB5A5ABV7WmbOBUFi1QylIltsYxPHqaK0+aCWgUkrOn9
	5mFTO7PnJJS79MLrhZLcNR0stJplUgGONOpZij0dLDGjL4OVAXCRYN6ULMyHD5GmUX02DY
	ol0N95Z/YSoASOSPZLn+PpwiVWCYVUbnaTVXzl5tmTegOq2lm10KS69XP8uDSQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1747737603;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3YCYCyQORdQQ6yPdRXIvakdUOuzyMzvVjOJzjGAbDm8=;
	b=MKSTb+y2OupFDalKub76G4tgosb3WU8kxylF8RjTB5JbAn1gsA1A8EmUdnyWZRLTL1210S
	Ry2OxLE+C8/j4DDg==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>,
	Darren Hart <dvhart@infradead.org>,
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>,
	Juri Lelli <juri.lelli@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Valentin Schneider <vschneid@redhat.com>,
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH] prctl: Add documentation for PR_FUTEX_HASH
Message-ID: <20250520104002.UVH8Rg0B@linutronix.de>
References: <20250516161422.BqmdlxlF@linutronix.de>
 <fuudjpar7kv7liwj4aucekktkzuhkalzkhsz5gv3mxzletlstk@tzokaret52cv>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <fuudjpar7kv7liwj4aucekktkzuhkalzkhsz5gv3mxzletlstk@tzokaret52cv>

On 2025-05-17 15:41:26 [+0200], Alejandro Colomar wrote:
> Hi Sebastian,
Hi Alejandro,

> > diff --git a/man/man2const/PR_FUTEX_HASH.2const b/man/man2const/PR_FUTE=
X_HASH.2const
> > new file mode 100644
> > index 0000000000000..c6a6396729770
> > --- /dev/null
> > +++ b/man/man2const/PR_FUTEX_HASH.2const
> > @@ -0,0 +1,112 @@
=E2=80=A6
> > +Configure the attributes for the underlying hash used by the
> > +.BR futex (2)
> > +family of operations. The Linux kernel uses a hash to distributes the
>=20
> Please use semantic newlines.  See man-pages(7):
>=20
> $ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
>    Use semantic newlines
>        In the source of a manual page, new sentences should be  started
>        on  new  lines,  long  sentences  should  be split into lines at
>        clause breaks (commas, semicolons, colons, and so on), and  long
>        clauses  should be split at phrase boundaries.  This convention,
>        sometimes known as "semantic newlines", makes it easier  to  see
>        the effect of patches, which often operate at the level of indi=E2=
=80=90
>        vidual sentences, clauses, or phrases.
>=20

Understood.

> Also, thanks to semantic newlines, we don't need to think about the
> amount of spaces after a '.'.  However, for *roff, you need to use two
> spaces in the source code after a period that ends a sentence; else it
> is interpreted as not ending a sentence, and the resulting document is
> clearly bad.  I recommend reading this:
>=20
> $ cat CONTRIBUTING.d/patches/description | sed -n '/inter-sentence/,/^$/p'
> 	The correct inter-sentence space amount is two.  See some
> 	history about this:
> 	<https://web.archive.org/web/20171217060354/http://www.heracliteanriver.=
com/?p=3D324>

Okay. In the source code. Otherwise new line.

=E2=80=A6
> > +problematic on a PREEMPT_RT system since random tasks can share in-ker=
nel locks
>=20
> References to PREEMPT_RT in existing pages use CONFIG_PREEMPT_RT.
> Should we do the same?

After looking through it, I switched to "real-time".

> 	$ grep -rn PREEMPT_RT man/
> 	man/man7/sched.7:969:.B CONFIG_PREEMPT_RT
> 	man/man2/futex.2:1326:.\" PREEMPT_RT-enabled Linux systems.

but looking here, it could be updated that the major piece of the
patches has been merged and the mentioned config option is available.

> > +and it is not deterministic which tasks will be involved.
> > +.P
> > +Linux v6.16 implements a process wide private hash which is used by all
> > +.BR futex (2)
> > +operations which specify the
> > +.B FUTEX_PRIVATE_FLAG
> > +as part of the operation.
> > +Without any configuration the kernel will allocate 16 hash slots once =
the first
> > +thread has been created. If the process continues to create threads, t=
he kernel
> > +will try to resize the private hash based on the number of threads and
> > +available CPUs in the system. The kernel will only increase the size a=
nd will
> > +make sure it does not exceed the size of the global hash.
> > +.P
> > +The user can configure the size of the private hash which will also di=
sable the
> > +automatic resize provided by the kernel.
> > +.P
> > +The following values for
> > +.I op
> > +can be specified:
> > +.TP
> > +.BI "int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_SET_SLOTS, " hash_size ", =
" hash_flags ");
>=20
> What's the type of hash_size and hash_flags?

it is unsigned long as per prctl() prototype. I added it here.

Sebastian

