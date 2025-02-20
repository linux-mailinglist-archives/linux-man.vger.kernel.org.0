Return-Path: <linux-man+bounces-2497-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C2534A3E62D
	for <lists+linux-man@lfdr.de>; Thu, 20 Feb 2025 21:58:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B9EAF172741
	for <lists+linux-man@lfdr.de>; Thu, 20 Feb 2025 20:58:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 478C52641C1;
	Thu, 20 Feb 2025 20:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PJQQcRSq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40416214237
	for <linux-man@vger.kernel.org>; Thu, 20 Feb 2025 20:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740085088; cv=none; b=qoK46vWUoUXrE5M0fvzENB3g7VnDnXtj/vyLhOP7y8jujqOx9w7fG6qOr4RrOJELez0l2OTrFBJKl/K30s948Az5bJkncdJ0quwH12Hq6ULCvnv15NQuv7ifC8urktV+HlEv7XX2MA2Gs6VIw2x5I5jRRwgOkqLDVvP/f9/WRGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740085088; c=relaxed/simple;
	bh=MaGkouImMbGGa911HCUO6KnEMAxu0Tj69r/i7/Y1pHU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DghNRV39Y5ss6ADU7OhC8Uavh8nmmC4oJ7naZiZ8po2q3MR6mj6sI2SLoa26Vnc22QEGVYMq4qx+BSSFBNz73AHRijuSgrCwDWZrGyD+MdqB2jr/inOabEvOXh1m778k8x7jDeMGbzC9PVorEeXlXma0v8KJS8Jm66FtrzIbQuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PJQQcRSq; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5e0813bd105so2376967a12.1
        for <linux-man@vger.kernel.org>; Thu, 20 Feb 2025 12:58:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740085084; x=1740689884; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RYNaG2Z6lzrnWCffFEu01Hf5vK+SFAZhYIZ0nuqH6TM=;
        b=PJQQcRSqchLp2et/FUB0pxScV/DGaPzDfVVuGgGahTri7cd53GqzHas+ZgrkXV7/NR
         nVTFjHl5LRpZ/twEsCr/YML7P92IUtGg/mSGbUVIMS/ZoxCjIvmA0oIuZ59Ol/oMV9Sa
         49y+MisqeVzgognCfeOxuhHOH7XP6LsramW5qGt0iUckTS/c7l8d8WOcPqNhfeBUilI2
         oJA+Kc19bMRv1adPnjzCSdt4kbbGA8OdVj/EhdwHFrRFG05R77GdVm59hJc2inr1A604
         N+d2Rv0SWNbKyl3lLSHhS+xuXWU6jcconnMSNY3YLxrOdOLvdpmwa+F0yq2DILnGDp9u
         L9IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740085084; x=1740689884;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RYNaG2Z6lzrnWCffFEu01Hf5vK+SFAZhYIZ0nuqH6TM=;
        b=Z6XsULe5hfu9eIH8Msv2cf7eoY6WF/2aunOaxTsRLtpglzsIFlBWZwFt8BV2qCpKUM
         ktBOztpdAbvvILXB1ucECVW7aow4azS+PUDvo0GJmadd06OMr0VH3uDoH3tsGnp0sGus
         MnMqSfovTVTNX1+p2334dvcYHL8qIWjsSDyThsFSE8tkjBaZ6DnR8+yzMXdBcGiQZkyp
         ffOCuunwyycbgs6X42HweBecf+QLtZec4QbvPh1AGt/acB4pkOmH0G9Zks4c0YH1YJbr
         U+9xqhSS7tBgqZ5ya34axJDr02gEAU3aVzi5/JJvEgdd51h2qY2pojLjJvvySb9XaaAl
         U5VA==
X-Gm-Message-State: AOJu0Yy+zfVEtMZBHO/U5e1EXRyNt/cyWWZUh2Ktgck9lYr3Ict4tfR1
	t4zH0R114hImwlcJIeZkaBYgKDiLk41AIO3QwG1zaBbl9Iuapt2IRsI/K/W9Y+GJ8wh/cwXwjjE
	Q7rt5taPB1FzAkkt7W021R/3+uWs=
X-Gm-Gg: ASbGncuuwoLSXUMzS15UUSuiIol4uWj/W3xyn6HxN5FbuGYSwqZX0UtbO9KnMRhAazO
	3dMuZJyD9lpNT074efBdq5QP3mLqDOAs4y+a60T3S53hll0giUTXpSBghnuUFRJCst36+b2w=
X-Google-Smtp-Source: AGHT+IFHv/JeM66ZxN82Sb+UAnrGjxnnCwRAe8lUFEa6u6QJNnSeoB2h6zzpJJBxUWogkviRcHCBKsffp/zxygQNmxY=
X-Received: by 2002:a17:907:9719:b0:abb:974a:8e3a with SMTP id
 a640c23a62f3a-abc09c19be4mr68356166b.44.1740085084084; Thu, 20 Feb 2025
 12:58:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250218161939.1934-1-mcassell411@gmail.com> <xpqtms6ebpacvwqitdzktanxvrjdjaxldxqfeybxu6ptqsskv5@g5prxncuni6g>
In-Reply-To: <xpqtms6ebpacvwqitdzktanxvrjdjaxldxqfeybxu6ptqsskv5@g5prxncuni6g>
From: Matthew Cassell <mcassell411@gmail.com>
Date: Thu, 20 Feb 2025 14:57:52 -0600
X-Gm-Features: AWEUYZm7apQHP_HVK38biFoaEOALlvXKMTeInR7hmMh3dqh3qyUe3Y9QtjNQIo4
Message-ID: <CANiscBAOgt3C3aZTGYpxFcK7qb5fMtPodUbo_Mf88BA0Thcpkg@mail.gmail.com>
Subject: Re: [PATCH v0] man/man2/{mbind,set_mempolicy}.2: added mode argument MPOL_PREFERRED_MANY
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, dave.hansen@linux.intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for the feedback Alejandro. I'm writing a revision now to
better stay in format.

> Should we refer from one page to the other?  It's hard to keep in sync
> two manual pages with the same text.

Do you think that keeping the more descriptive paragraph in
set_mempolicy(2) and putting a brief referral in mbind(2) would work:

MPOL_PREFERRED_MANY (since Linux 5.15)
Specifies a set of nodes for allocation; see set_mempolicy(2)


-Matt C


On Thu, Feb 20, 2025 at 6:35=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Matthew,
>
> > Cc: linux-man@vger.kernel.org, dave.hansen@linux.intel.com
>
> Please add a Cc tag for Dave in the trailer of the commit message.
>
> On Tue, Feb 18, 2025 at 10:19:39AM -0600, Matthew Cassell wrote:
> > Browsing a header file in the kernel source and saw the memory policy e=
num used
> > for mbind() and set_mempolicy() using an entry that I didn't recognize.=
 I man 2'd
>
> Please use 2 spaces as the inter-sentence separation in commit messages
> (in man(7) source we always break the line after period).
>
> $ cat CONTRIBUTING.d/patches/description | sed -n '/Style/,+5p'
>     Style guide
>         URIs should always be enclosed in <>.
>
>         The correct inter-sentence space amount is two.  See some
>         history about this:
>         <https://web.archive.org/web/20171217060354/http://www.heraclitea=
nriver.com/?p=3D324>
>
>
> > both system calls and didn't see an entry for MPOL_PREFERRED_MANY. The =
commit on
> > the enum entry:
> >
> > Commit b27abaccf8e8 ("mm/mempolicy: added MPOL_PREFERRED_MANY for multi=
ple
>
> Let's remove 'Commit'; it's already obvious from what follows.  Instead
> it would be useful to say which repository the commit is in (and the
> commit date):
>
> linux.git b27abaccf8e8 (2021-09-03; "mm/mempolicy: add MPOL_PREFERRED_MAN=
Y for multiple preferred nodes")
>
> Also, while in general I use a 72-column right margin for commit
> messages, I think I prefer if we don't break this reference.
>
> > preferred nodes")
> >
> > The commit message gives the rationale as to why the MPOL_PREFERRED_MAN=
Y mode
> > would be beneficial. Giving the ability to set the memory policy to tar=
get
> > different tiers of memory over different NUMA nodes.
> >
> > Signed-off-by: Matthew Cassell <mcassell411@gmail.com>
> > ---
> >  man/man2/mbind.2         | 11 +++++++++++
> >  man/man2/set_mempolicy.2 | 11 +++++++++++
> >  2 files changed, 22 insertions(+)
> >
> > diff --git a/man/man2/mbind.2 b/man/man2/mbind.2
> > index fd1aca4ad..a5a7f4bdc 100644
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
> > @@ -277,6 +278,16 @@ and
> >  arguments specify the empty set, then the memory is allocated on
> >  the node of the CPU that triggered the allocation.
> >  .TP
> > +.BR MPOL_PREFERRED_MANY " (since Linux 5.15)"
> > +.\" commit b27abaccf8e8b012f126da0c2a1ab32723ec8b9f
> > +This mode specifies a preference for nodes from which the kernel will
> > +try to allocate from. This differs from
>
> Please use semantic newlines.  See man-pages(7):
>
> $ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
>    Use semantic newlines
>        In  the source of a manual page, new sentences should be started
>        on new lines, long sentences  should  be  split  into  lines  at
>        clause  breaks (commas, semicolons, colons, and so on), and long
>        clauses should be split at phrase boundaries.  This  convention,
>        sometimes  known  as "semantic newlines", makes it easier to see
>        the effect of patches, which often operate at the level of indi-
>        vidual sentences, clauses, or phrases.
>
> > +.BR MPOL_PREFERRED
> > +in that it accepts a set of nodes versus a single node. This policy
> > +is intended to benefit page allocations where specific memory types
> > +(i.e. non-volatile, high-bandwidth, or accelerator memory) are of
> > +greater importance than node location.
> > +.TP
> >  .BR MPOL_LOCAL " (since Linux 3.8)"
> >  .\" commit 479e2802d09f1e18a97262c4c6f8f17ae5884bd8
> >  .\" commit f2a07f40dbc603c15f8b06e6ec7f768af67b424f
> > diff --git a/man/man2/set_mempolicy.2 b/man/man2/set_mempolicy.2
> > index 2d0b1da19..f4651ccd3 100644
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
> > @@ -234,6 +235,16 @@ arguments specify the empty set, then the policy
> >  specifies "local allocation"
> >  (like the system default policy discussed above).
> >  .TP
> > +.BR MPOL_PREFERRED_MANY " (since Linux 5.15)"
> > +.\" commit b27abaccf8e8b012f126da0c2a1ab32723ec8b9f
> > +This mode specifies a preference for nodes from which the kernel will
> > +try to allocate from. This differs from
> > +.BR MPOL_PREFERRED
> > +in that it accepts a set of nodes versus a single node. This policy
> > +is intended to benefit page allocations where specific memory types
> > +(i.e. non-volatile, high-bandwidth, or accelerator memory) are of
> > +greater importance than node location.
>
> Should we refer from one page to the other?  It's hard to keep in sync
> two manual pages with the same text.
>
>
> Have a lovely day!
> Alex
>
> > +.TP
> >  .BR MPOL_LOCAL " (since Linux 3.8)"
> >  .\" commit 479e2802d09f1e18a97262c4c6f8f17ae5884bd8
> >  .\" commit f2a07f40dbc603c15f8b06e6ec7f768af67b424f
> > --
> > 2.39.5 (Apple Git-154)
> >
>
> --
> <https://www.alejandro-colomar.es/>

