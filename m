Return-Path: <linux-man+bounces-2425-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F4DA33515
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 03:00:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 042F5167AAC
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 02:00:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EE14132117;
	Thu, 13 Feb 2025 01:59:58 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from oclsc.com (oclsc.com [206.248.137.164])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79D4B8635E
	for <linux-man@vger.kernel.org>; Thu, 13 Feb 2025 01:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=206.248.137.164
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739411998; cv=none; b=TDqEcbyu0kqCfOzLH7AlrmhJe/E6LA11wC5/yPhN0p1ulNQMlLaztcuGVVPv7UIZ1gTvWuB7pyC2vYlj9ztts1jfLE0VkooGOSKmJ+3LaTG/kJGXGxTfyZCdLhgNjWLj3kEaGf3CJKTjxBf/naKVmIbjxGSpKkRLqHvZGd9FWgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739411998; c=relaxed/simple;
	bh=L7TIntjZTLjgzYLidLUU/LrvrCYz691IbNvUWkEvf+s=;
	h=To:Cc:Subject:Message-ID:Date:From; b=C4jiId1xfnnMsWC2S+yXfM3Wr5FJNSgjHMqsLRewZNK6e67GtXvmhuTb7OxjwWPKO75P+tAj8DNhWLOcbbzqHKIVJFqVHGKvTSvRkANSJCRNbd/d7oWuGwW8448La4XNbyaDf9S4dyLuIv+UqM6J0Fmru7X1yFG2apftRPM3l1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=oclsc.org; spf=pass smtp.mailfrom=oclsc.org; arc=none smtp.client-ip=206.248.137.164
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=oclsc.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oclsc.org
Received: by oclsc.org id E75904FCAE; Wed, 12 Feb 2025 20:52:44 -0500 (EST)
Received: by oclsc.org id 288A4640CF8; Wed, 12 Feb 2025 20:52:45 -0500 (EST)
To: tuhs@tuhs.org
Cc: alx@kernel.org, nabijaczleweli@nabijaczleweli.xyz, linux-man@vger.kernel.org
Subject: [TUHS] Re: Unix V10 Volume 2 PDFs
Message-ID: <CFA0E560813A3A3E61A09CA6E52422E0.for-standards-violators@oclsc.org>
Date: Wed, 12 Feb 2025 20:52:45 -0500 (EST)
From: norman@oclsc.org (Norman Wilson)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>

For the non-TUHS folks who don't know me, I worked in
Center 1127 (the Bell Labs Computing Science Research
Center) 1984-1990, and had some hand in 9th and 10th
Edition Manuals and what passed for the V8-V10
`distributions.'

To answer Branden's points:

A.  I do know what version of troff was used to typeset
the 8th through 10th Edition manuals.  It was the version
we were using in 1127 at the time, which was indeed
Kernighan's.  The macro packages probably matter more
than the particular troff edition.

For the 10th Edition (which files I have at hand), there
was an individual mkfile (mk(1)) for each paper, so
in principle there was no fixed formatting package,
but in practice everything appears to have used troff -mpm,
with various preprocessors according the paper: prefer,
tbl, pic, ideal, and in some cases additional macros and even
odds and ends of sed and awk.

If you wanted to re-render things from scratch you'd
want all the tools.  But if you have the real troff
sources you'll have all the mkfiles--things were stored
one paper per directory.

-mpm (mpm(6) in 10/e vol 1) was a largely ms-compatible
package with special expertise in page layout.

B.  There was no such thing as a `release' after V7.
In fall 1984 we made a single V8 snapshot.  Making
that involved a lot of fiddly work, because we didn't
normally try to build systems from scratch; when we
brought in a new computer we cloned it from an existing
one.  So there was lots of fiddly work to make sure
every program in /bin and /usr/bin on the tape compiled
correctly from the source code that would be on the tape
when the cc and as and ld and libraries on the tape were
used.

We sent V8 tapes to about a dozen external places, few
of which did anything with it (many probably never even
installed it).  Which makes sense, by then we really
weren't a central source for Unix even within AT&T, let
alone to the world.  Neither did we want the support
burden that would have carried--the group's charter was
research, after all, not software support.  So the 9th
and 10th editions existed as manuals, but not as releases.
We did occasionally make one-off snapshots for other parts
of AT&T, and maybe for a university or two.  (I definitely
remember taking a snapshot to help the official AT&T System N
Unix people set up a Research system at one point, and have
a vague memory that I may have carried a tape to a university
under a special one-off license letter.)

On the other hand, troff wasn't a rapid moving target, and
unlike the stars of the modern software world, we tried not
to break things unless there was a real reason to do so.
So I suspect the troff from any system of that era would
render the Volume 2 papers properly, and am all but certain
the 10th-edition-era troff would do so even for older manuals.

C.  Just to be clear, the official 10th Edition manuals
published by Saunders College Publishing were made from
camera-ready copy prepared by us in 1127 (Doug McIlroy
did all the final work, I think) and printed on our
phototypesetter.  We didn't ship them troff source, nor
even Postscript.  We did everything including the tables
of contents and indexes and page numbering.

D.  troff is indeed not TeX, and some of us think of that
as a feature, not a bug.

I think the odds are fairly good (but not 100%) that
groff would do a reasonable job of rendering the papers;
as I said, the hard part is the macro packages.  I'm
not sure -mpm ever made it out of Research.

And there are probably copyright issues not just with
the software but with the papers themselves.  The published
manuals bear a copyright notice, after all.

Norman Wilson
Toronto ON
(A much nicer place than suburban NJ, which is why
I left the Labs when I did)

