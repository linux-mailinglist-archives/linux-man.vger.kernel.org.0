Return-Path: <linux-man+bounces-2571-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D0AA4C4D8
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 16:23:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B81C07AA068
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 15:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C73EC214A8D;
	Mon,  3 Mar 2025 15:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="sQv2M/Co"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f74.google.com (mail-ed1-f74.google.com [209.85.208.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6CA822DFBA
	for <linux-man@vger.kernel.org>; Mon,  3 Mar 2025 15:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741015014; cv=none; b=cy5M4nhshOHDnKDnSMIFbLv/zGzAA8fCjNFPra4bwn6GbZtJhguDLgnyQKrQsxxvXg1et1Ph13boZF4yEAvR4pmuqCcPuigMWPB7BalFEFMnfn/PqZOPuIDj8GQ2tU+bbpvmsOAKD4XSRXR+DuglND5vnYqg9+t70b6ok+VlPmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741015014; c=relaxed/simple;
	bh=whSfwse+CzD+lc5HrXXiPjYLtcbkpU1/AMOWskLrCkc=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=plCSrubkMBdm56WASobzFHFLi7qSHSD9UeLZ6kAlgP/nrn5strTa4nPPJR2EEKxQVqnyePfvN29lvJZQDMdWEsjdz1Hg5Fk/9esatl1XxZSMRD6UswMSiUfth2lcAx/bApYJ/BZCFsT1PbeBGeW2RGgkQMJMWpcHZyi0Sko8ceE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=sQv2M/Co; arc=none smtp.client-ip=209.85.208.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ed1-f74.google.com with SMTP id 4fb4d7f45d1cf-5e4cf414a6fso3790434a12.1
        for <linux-man@vger.kernel.org>; Mon, 03 Mar 2025 07:16:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1741015011; x=1741619811; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t2t1sEnt16wSt9rfG0sQB8OYPRCFjusvoFC/jYH95vI=;
        b=sQv2M/CojDDslTVfpNxI52bfe+cBAd8+v9FIelN8I+g4UDNthfnx7oh8aTCScMOSrU
         4Hxyp6SaNQK4hJRB32fpqUY2oXhIyaX5lLMgP5NpMwmipBBojertK3qropQmLZNvio9Q
         CDUQCY6O0tMmXeKkWscT+PVldNBgWCq3EGKWEPM7eUngqN3+4sXSsk3mMr3o04UPymFI
         Y+N/1tSXWdvT2FbnV6m7XhJvMLrVZlYU5fTpYKN3t0NJSpJSBes1zc2q03GlU9ujZZ+d
         oOY8kwPFPK9RX7HQ7WSBqCO99rTA48FVO+c5Tg4Jz3L8+11bIE6bKfK690bGo+cue0A8
         nJQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741015011; x=1741619811;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=t2t1sEnt16wSt9rfG0sQB8OYPRCFjusvoFC/jYH95vI=;
        b=b+lIO9lhz5ofhKLZXwcb78Om1eTVgsFiuL3b/mKPPJUuwLF/Tq1pCgYp+3aJpPN4iz
         apW7dXx67ElZrH3NlnKHziZNTEcosk+jZuPVILxKtaxtSL1W+0WWfBX9cwsfpboPZDBn
         EYrAcxKFTxphkI13J2hlg2o+IX3lfHPeJjOz7TklEiCN8Q7RS+Dfrtcgu73MHd7LmZip
         m+NZK0qwWSA9+HtLORk2jJ61Q6OVrQYwCnKcOixpPc3lwbsi9egxKXNpw9e5uBVEYrQ2
         JrJWg+CgU+I1nxFI2vXYyj4McgRgD4/BKa+RbZ93hkLolexJsB9dYKlUhvSZtb1Qp3mO
         da3g==
X-Forwarded-Encrypted: i=1; AJvYcCU0eY91eAUgOmwbdRiuRdDC1mEsLiwRyqdx9LodewG27XwhLPzOtYCF8GsrIgjNlZvBqONP4Pj7ZjY=@vger.kernel.org
X-Gm-Message-State: AOJu0YyOlVxQ6fFhmwGihldu4HuAF6meBLoKV8AadDJml9fneRX3pirq
	m8WrwdqcVdg6RtzFSa+aycL1hNlYdt9IT+Nqwc4shuuYRV+VDM2GNrNIubH+qf5eqZj0lIwlT9b
	brg==
X-Google-Smtp-Source: AGHT+IHv8Ex6U6mYbLpA+FjnPrdbsJ9qL078DbhKo5SjcSNLpXKJW9oWNSjXOMrwLVGErNW98ujv/z3R4Wo=
X-Received: from edbef6.prod.google.com ([2002:a05:6402:28c6:b0:5dc:110c:e5e2])
 (user=gnoack job=prod-delivery.src-stubby-dispatcher) by 2002:a05:6402:348a:b0:5e0:9eba:2dd3
 with SMTP id 4fb4d7f45d1cf-5e4d6b037c7mr15747134a12.15.1741015011258; Mon, 03
 Mar 2025 07:16:51 -0800 (PST)
Date: Mon, 3 Mar 2025 16:16:47 +0100
In-Reply-To: <tkuk274p54qgwobzwjah2oj6zm3n4anq7giy4uzhprutjvqz6x@dwpa3h4gekxq>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250226211814.31420-2-gnoack@google.com> <20250226212911.34502-2-gnoack@google.com>
 <tkuk274p54qgwobzwjah2oj6zm3n4anq7giy4uzhprutjvqz6x@dwpa3h4gekxq>
Message-ID: <Z8XCm7yp5SES7RjM@google.com>
Subject: Re: [PATCH v2 1/3] landlock.7: Update description of Landlock rules
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>, linux-security-module@vger.kernel.org, 
	linux-man@vger.kernel.org, Daniel Burgener <dburgener@linux.microsoft.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello!

On Fri, Feb 28, 2025 at 10:31:09PM +0100, Alejandro Colomar wrote:
> Hi,
>=20
> On Wed, Feb 26, 2025 at 10:29:10PM +0100, G=C3=BCnther Noack wrote:
> > This brings it up to date with the wording in the kernel documentation.
> >=20
> > Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
>=20
> I'd like some more justification in the commit message.

Adding that. (linking to matching commit in kernel which introduced this)

>=20
> > ---
> >  man/man7/landlock.7 | 20 ++++++++++++++++----
> >  1 file changed, 16 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> > index c6b7272ea..11f76b072 100644
> > --- a/man/man7/landlock.7
> > +++ b/man/man7/landlock.7
> > @@ -39,13 +39,25 @@ the running kernel must support Landlock and
> >  it must be enabled at boot time.
> >  .\"
> >  .SS Landlock rules
> > -A Landlock rule describes an action on an object.
> > -An object is currently a file hierarchy,
> > -and the related filesystem actions are defined with access rights (see
> > -.BR landlock_add_rule (2)).
> > +A Landlock rule describes an action on an object
> > +which the process intends to perform.
> >  A set of rules is aggregated in a ruleset,
> >  which can then restrict the thread enforcing it,
> >  and its future children.
> > +.P
> > +The two existing types of rules are:
> > +.P
>=20
> This will trigger a diagnostic due to being redundant before TP.
>=20
> (Both P and TP are paragraphing macros, so you're theoretically creating
>  an empty paragraph, which is just ignored by groff(1).)

Thanks, fixed.


> > +.TP
> > +.B Filesystem rules
> > +For these rules, the object is a file hierarchy,
> > +and the related filesystem actions are defined with
> > +.IR "filesystem access rights" .
> > +.TP
> > +.B Network rules (since ABI v4)
>=20
> Most of the pages use Roman for the parenthetical:
>=20
> 	$ grep -rn 'BR.*(since' | sort -R | head
> 	man7/ip.7:782:.BR IP_PKTINFO " (since Linux 2.2)"
> 	man2/set_mempolicy.2:109:.BR MPOL_F_STATIC_NODES " (since Linux 2.6.26)"
> 	man2/kexec_load.2:60:.BR KEXEC_PRESERVE_CONTEXT " (since Linux 2.6.27)"
> 	man2/perf_event_open.2:823:.BR PERF_SAMPLE_REGS_USER " (since Linux 3.7)=
"
> 	man2/perf_event_open.2:1522:.BR PERF_SAMPLE_BRANCH_COND " (since Linux 3=
.16)"
> 	man7/socket.7:998:.BR SO_TIMESTAMPNS " (since Linux 2.6.22)"
> 	man2/perf_event_open.2:1537:.BR PERF_SAMPLE_BRANCH_CALL_STACK " (since L=
inux 4.1)"
> 	man2/clone.2:1303:.BR EINVAL " (since Linux 3.9)"
> 	man2/eventfd.2:52:.BR EFD_NONBLOCK " (since Linux 2.6.27)"
> 	man2/perf_event_open.2:912:.BR PERF_SAMPLE_CGROUP " (since Linux 5.7)"
>=20
> > +For these rules, the object is a TCP port,
> > +and the related actions are defined with
> > +.IR "network access rights" .
> > +.BR landlock_add_rule (2)).

Removing this stray last line as well, which was left over from an earlier
version of the text.

=E2=80=94G=C3=BCnther

