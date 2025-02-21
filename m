Return-Path: <linux-man+bounces-2501-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A904A3FF52
	for <lists+linux-man@lfdr.de>; Fri, 21 Feb 2025 20:08:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE31D704D48
	for <lists+linux-man@lfdr.de>; Fri, 21 Feb 2025 19:08:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D6991FBCB9;
	Fri, 21 Feb 2025 19:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IwN0L+KB"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6792C1F2365
	for <linux-man@vger.kernel.org>; Fri, 21 Feb 2025 19:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740164897; cv=none; b=OPCYImujc/eM2CBHyqKSWuGtsA2xUXdQ5xlRQ86/AM/9+HZU8WvQ9dMmWE3FVHP3sTDcxNsvXkFcJS24OVPz+6bpWauFhIgpwe5D0+WFEAUl01CZOWRSNhbWCM+kC/liQhJiIQ2KXhIA8ilPFESdSwO6VI2ZLEOIJdQqb20h/Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740164897; c=relaxed/simple;
	bh=8NmWg8LE1SGOo+wLC0bX+/HThjj7pObxahhXxYP0hIs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LcgsPcnE/fTIX0M0CENKxdh0dabbJkq5fevk+YvRYi6Wf87xvbO8IHlo5r6L4e+UV7UMqPmNHpvrguVF58AdOIvI6f8daSmZTbPCr1CUTaFk4vHZg8q4b7eLGXhngvC2WFmcEKx1efLffjKxhdeZjNt4uxh36JBQwqry1XnSQCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IwN0L+KB; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-abbc38adeb1so429227066b.1
        for <linux-man@vger.kernel.org>; Fri, 21 Feb 2025 11:08:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740164894; x=1740769694; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wM/81W9qwcfJoaU0nVCfY3zDubd+Nbifr3+vUCqNf3E=;
        b=IwN0L+KBu99vOX7NnuR5sLbePJzvRxJvll8vQxd0K7ufkUwkRKUsj6iLSy5k9jky3s
         Aq4ILeyxWqEj960r/4/sa7vSICOWa+VF2rAFV07eO0Bhk5rl6nHzBpk9kGxk+pbyYJWJ
         YyftcxOlxanXPKM6EUiiE7kiI4ZkSwr7gLrPqZAlMrmyd2p0o/Wt00udVE/Mvpy6mkoS
         /QlUtWttd0BD+D02JqMQipKEndybziuviVMy6xHksDkbjEAMgHGaDuxRNAwrwHGBWe5T
         s5YMjLOUHHGlH8SU90FijO4TbW7OrnexGjcpSd9tw4czW2eNx7Mvi0V1XRWQmp2itApc
         vTLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740164894; x=1740769694;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wM/81W9qwcfJoaU0nVCfY3zDubd+Nbifr3+vUCqNf3E=;
        b=AMYvB23WgdNXdpXKGAbKaUHnnpqN3Bj/ly0natVcDZxJB8MVq+tMppOUkGAVbDOflQ
         nWOKQ2BXI2AskVBedAubbq7z1Er6FgdjoKMD3XF06a9gKSB6GqBbVoawisiuHKRxiws2
         c8YS5Nh5KvwnT0/Sn9VJAMltQ8MX6uaCPBTdOU9z5UM/PoqGhhtAVsl2zEM8NcGQpmHx
         PscOb1ovZ5fJQ/f2ok2/6VsGbpQqK4HDI2yUa7ZSn5vxhX+39/RykI8mfur6wAcsGipS
         fFB1DiWhN1MqMnpCf56CBJlBGS4zk6LrQiU2MdnNNw0O8smpEfNInzoi/Jeh6YZigLAs
         FMyw==
X-Gm-Message-State: AOJu0YwuuUKws0YMhOmfXm2+YIwjiwody2Faps/jynXsJ4+ymFxKrCtz
	BidL2DVsYrsVks0ZZ+Xj/SMxHUrr9KTOoiVmZVsa3bLZI5f158Z3QAHgcblKJIQov7QC6R6Gzp2
	9pcD2tLD2mPd/VzvOT1n6naS60FUIuA==
X-Gm-Gg: ASbGnctAzp4IWgmJZmQIKr5wI8GbaKrJt/P0cAc2Erc7HdDOawnCA4yVQluWwSM+3sx
	QRdoqdREy2H+4OC0GniK8RchKyU1P9ULpoQxzvh9CSRjofRbwtgf7ok6JcFeH3UF8eaVTXaiugj
	V+i0Hfow==
X-Google-Smtp-Source: AGHT+IHc/+1jB0XjDGo7doCmJ+mIc+If7VCXLH5SPguevTyAYJULGRIzJEdWIHBRXyImAvYFkqrjvkLNUJoAEp5YRLk=
X-Received: by 2002:a17:907:3d91:b0:abb:9d27:290e with SMTP id
 a640c23a62f3a-abc09c26176mr448062166b.41.1740164893231; Fri, 21 Feb 2025
 11:08:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250220225232.2138-1-mcassell411@gmail.com> <36pxpegcnyah5w4skvntcjeeb4rm6wmvwcq4lugslg65dtu4sq@5zkd2dmvbshu>
In-Reply-To: <36pxpegcnyah5w4skvntcjeeb4rm6wmvwcq4lugslg65dtu4sq@5zkd2dmvbshu>
From: Matthew Cassell <mcassell411@gmail.com>
Date: Fri, 21 Feb 2025 13:08:02 -0600
X-Gm-Features: AWEUYZnQ0aYffYiAAkXR1Yfy5GY_LwmsYH4U9kqqWw1PIpl_W1n46nCW3IPmR-U
Message-ID: <CANiscBCqo=R97oD4XmgdK=C84X11X3fX3-RjfSMiK0NsO9A0yA@mail.gmail.com>
Subject: Re: [PATCH v1] man/man2/{mbind,set_mempolicy}.2: added mode argument MPOL_PREFERRED_MANY
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, dave.hansen@linux.intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you Alejandro. Have a good one.

-Matt C

On Fri, Feb 21, 2025 at 12:11=E2=80=AFPM Alejandro Colomar <alx@kernel.org>=
 wrote:
>
> Hi Matthew,
>
> On Thu, Feb 20, 2025 at 04:52:32PM -0600, Matthew Cassell wrote:
> > Browsing a header file in the kernel source and saw the memory policy
> > enum used for mbind() and set_mempolicy() using an entry that I didn't
> > recognize.  I man 2'd both system calls and didn't see an entry for
> > MPOL_PREFERRED_MANY.  The commit on the enum entry:
> >
> > linux.git b27abaccf8e8 (2021-09-02; "mm/mempolicy: add
> > MPOL_PREFERRED_MANY for multiple preferred nodes")
> >
> > The commit message gives the rationale as to why the
> > MPOL_PREFERRED_MANY mode would be beneficial.  Giving the ability to se=
t
> > the memory policy to target different tiers of memory over various
> > NUMA nodes.
> >
> > v0 -> v1
> > - changed text width from 80 to 72 characters
> > - added Cc tag for commit author
> > - improved source readability with semantic newlines
> > - changed mbind() to refer to set_mempolicy() to avoid unnecessary
> >   duplication
> >
> > Cc: "Dave Hansen" <dave.hansen@linux.intel.com>
> > Signed-off-by: Matthew Cassell <mcassell411@gmail.com>
>
> Thanks!  I've applied the patch, and amended it with some minor tweaks
> that the CI reminded me (see comments below).  Here's the final path
> applied:
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3Dfe7e094e78139a4ac5ee31b2321b77041c725794>
>
> > ---
> >  man/man2/mbind.2         |  6 ++++++
> >  man/man2/set_mempolicy.2 | 14 ++++++++++++++
> >  2 files changed, 20 insertions(+)
> >
> > diff --git a/man/man2/mbind.2 b/man/man2/mbind.2
> > index fd1aca4ad..a060e1401 100644
> > --- a/man/man2/mbind.2
> > +++ b/man/man2/mbind.2
> > @@ -107,6 +107,7 @@ argument must specify one of
> >  .BR MPOL_INTERLEAVE ,
> >  .BR MPOL_WEIGHTED_INTERLEAVE ,
> >  .BR MPOL_PREFERRED ,
> > +.BR MPOL_PREFERRED_MANY ,
> >  or
> >  .B MPOL_LOCAL
> >  (which are described in detail below).
> > @@ -277,6 +278,11 @@ and
> >  arguments specify the empty set, then the memory is allocated on
> >  the node of the CPU that triggered the allocation.
> >  .TP
> > +.BR MPOL_PREFERRED_MANY " (since Linux 5.15)"
> > +.\" commit b27abaccf8e8b012f126da0c2a1ab32723ec8b9f
> > +Specifies a set of nodes for allocation; see
> > +.BR set_mempolicy(2)
>
> You missed a space before the (2).
>
> > +.TP
> >  .BR MPOL_LOCAL " (since Linux 3.8)"
> >  .\" commit 479e2802d09f1e18a97262c4c6f8f17ae5884bd8
> >  .\" commit f2a07f40dbc603c15f8b06e6ec7f768af67b424f
> > diff --git a/man/man2/set_mempolicy.2 b/man/man2/set_mempolicy.2
> > index 2d0b1da19..32c360f22 100644
> > --- a/man/man2/set_mempolicy.2
> > +++ b/man/man2/set_mempolicy.2
> > @@ -65,6 +65,7 @@ argument must specify one of
> >  .BR MPOL_INTERLEAVE ,
> >  .BR MPOL_WEIGHTED_INTERLEAVE ,
> >  .BR MPOL_PREFERRED ,
> > +.BR MPOL_PREFERRED_MANY ,
> >  or
> >  .B MPOL_LOCAL
> >  (which are described in detail below).
> > @@ -234,6 +235,19 @@ arguments specify the empty set, then the policy
> >  specifies "local allocation"
> >  (like the system default policy discussed above).
> >  .TP
> > +.BR MPOL_PREFERRED_MANY " (since Linux 5.15)"
> > +.\" commit b27abaccf8e8b012f126da0c2a1ab32723ec8b9f
> > +This mode specifies a preference for nodes
> > +from which the kernel will try to allocate from.
> > +This differs from
> > +.BR MPOL_PREFERRED
>
> This should be s/BR/B/
>
>
> Have a lovely night!
> Alex
>
> > +in that it accepts a set of nodes
> > +versus a single node.
> > +This policy is intended to benefit page allocations
> > +where specific memory types
> > +(i.e. non-volatile, high-bandwidth, or accelerator memory)
> > +are of greater importance than node location.
> > +.TP
> >  .BR MPOL_LOCAL " (since Linux 3.8)"
> >  .\" commit 479e2802d09f1e18a97262c4c6f8f17ae5884bd8
> >  .\" commit f2a07f40dbc603c15f8b06e6ec7f768af67b424f
> > --
> > 2.39.5 (Apple Git-154)
> >
> >
>
> --
> <https://www.alejandro-colomar.es/>

