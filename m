Return-Path: <linux-man+bounces-2850-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A37AA73CC
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 15:34:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 09A9A188E72F
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 13:32:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF98322094;
	Fri,  2 May 2025 13:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=martinlemaire.fr header.i=@martinlemaire.fr header.b="UV5k8Myw"
X-Original-To: linux-man@vger.kernel.org
Received: from 15.mo581.mail-out.ovh.net (15.mo581.mail-out.ovh.net [87.98.180.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B353115E90
	for <linux-man@vger.kernel.org>; Fri,  2 May 2025 13:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=87.98.180.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746192723; cv=none; b=Rlp30crhU8OCjnoahA7Fg4zt2P9UUv2smQK7x6wCusISWXxTbVHh3Mpwwxhi0UeXx9y3C2UuIX5nH4FH3jOGAc2HtwK11uDYPsjy+jUWe0kK+hIjO3uyAQlGVtsG3YD6coVLZXCkjveihl/lqiffqBjJ+mYvkplGvQnqgodSkFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746192723; c=relaxed/simple;
	bh=TMi0hQjP7/ejEEFdBm2H9ml2JTLiuLK0lGGl89uU5xQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uM8qpkyBmpAWAi/XbJDdnT8Uigco8EWOjvyBm8t6Txd/QnzSTJH4qzg9QmLGGbMaaJHx0SCnrfnxY7fPwFu+cg8snuys178EqAj316vNDE5Mt7BZKBmD9rlpvBJspYj6vtQfLNFpbpHkK0ni/UgZX06OxjTcYKSq2XTY5RgICqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=martinlemaire.fr; spf=pass smtp.mailfrom=martinlemaire.fr; dkim=pass (2048-bit key) header.d=martinlemaire.fr header.i=@martinlemaire.fr header.b=UV5k8Myw; arc=none smtp.client-ip=87.98.180.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=martinlemaire.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=martinlemaire.fr
Received: from director2.ghost.mail-out.ovh.net (unknown [10.108.17.234])
	by mo581.mail-out.ovh.net (Postfix) with ESMTP id 4Zprm93Dhpz1C3g
	for <linux-man@vger.kernel.org>; Fri,  2 May 2025 13:06:49 +0000 (UTC)
Received: from ghost-submission-5b5ff79f4f-lpp9r (unknown [10.111.182.122])
	by director2.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 742F51FEBF;
	Fri,  2 May 2025 13:06:48 +0000 (UTC)
Received: from martinlemaire.fr ([37.59.142.114])
	by ghost-submission-5b5ff79f4f-lpp9r with ESMTPSA
	id GSxAA2jDFGjQkQEAhf+FNA
	(envelope-from <contact@martinlemaire.fr>); Fri, 02 May 2025 13:06:48 +0000
Authentication-Results:garm.ovh; auth=pass (GARM-114S0085e4b5089-f12c-4dcf-8d28-1a13230442fb,
                    3B2BB2785341758176629FC674206738387415D9) smtp.auth=contact@martinlemaire.fr
X-OVh-ClientIp:92.184.108.75
Date: Fri, 2 May 2025 15:06:46 +0200
From: Martin Lemaire <contact@martinlemaire.fr>
To: groff@gnu.org, linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>
Subject: Re: Paragraphs formatted differently depending on previous ones
Message-ID: <aBTDZiUVotN_80RM@starship>
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250502120139.yqstcq32hdtagozl@illithid>
X-Ovh-Tracer-Id: 14080785710452907418
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvjedvheefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvvefukfhfgggtugfgjgesthekredttddtjeenucfhrhhomhepofgrrhhtihhnucfnvghmrghirhgvuceotghonhhtrggtthesmhgrrhhtihhnlhgvmhgrihhrvgdrfhhrqeenucggtffrrghtthgvrhhnpeehffelfeelgeegtdejueduffeuieehheeggeekleeludekkeeitdegueeigedtueenucffohhmrghinhepghhnuhdrohhrghdpthhuhhhsrdhorhhgnecukfhppeduvdejrddtrddtrddupdelvddrudekgedruddtkedrjeehpdefjedrheelrddugedvrdduudegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpegtohhnthgrtghtsehmrghrthhinhhlvghmrghirhgvrdhfrhdpnhgspghrtghpthhtohepuddprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehkedumgdpmhhouggvpehsmhhtphhouhht
DKIM-Signature: a=rsa-sha256; bh=Vzpdn+IfmtcLT4ySFnli+rfAMBpH2crVqY03/CstUlA=;
 c=relaxed/relaxed; d=martinlemaire.fr; h=From; s=ovhmo3189267-selector1;
 t=1746191209; v=1;
 b=UV5k8MywmGu4KKfAmk0Qsi6+H/AkxvQXYGiYsWEyq2rvDy7e1SVrCDkwK9Fr2hM7E7CbQOvA
 3LgqM6ZbhvBOAKSINmjUqrAcPakkJyKOuoiJCWkTc799ClJj1FTW6Y7yHN2hH+1d/y7D2jI6NZK
 AKa7IB/t7kGxj5WvvfnmOWA9tkK9/0Fc4cq22GEJHb2PeVTkrEEa5C9bVVTzSZuXOe/X7AXhFZM
 nUoZWVeu+gyURvz/ebCa3vIL/zQPKLarfgw/QM5gqoaaqxc1HEzR/pTX0IZEK66BA3DclF6cju2
 nTcrk5Gj6tLXdn8JZRV/JvJU9/3qHQJmSsbav2sU/zqLQ==

Thank you Branden for those historical insights. 
Off-topic to Alejandro's initial question but related to the subject of
justifying text set in monospace, do we owe this typographic gesture to
the early *roff formaters or was it already a thing in previous
publication tool, either software or hardware ?
Are you aware of theory or paper on the subject ?

Martin


Le Fri, May 02, 2025 at 07:01:39AM -0500, G. Branden Robinson a écrit :
> Hi Alex,
> 
> At 2025-05-02T12:56:51+0200, Alejandro Colomar wrote:
> > I'd like to understand why groff(1) formats differently a paragraph
> > depending on the previous ones.  I sometimes experience different
> > placement of spaces for an unchanged paragraph.  I use a script to
> > diff manual pages at different commits, which is useful to quickly see
> > the effects of a commit in a formatted page.  That script sometimes
> > shows suprious space changes (produced by groff(1)) for parts of the
> > page that haven't been changed, and which one would expect should not
> > be formatted differently.
> 
> What you're observing is an artifact of the adjustment process that pads
> out filled text lines to a consistent width.  It's a feature of *roff
> formatters going back essentially forever--as in, to the early 1970s.
> 
> And it is indeed not a man page-specific phenomenon.
> 
> groff_diff(7) briefly mentions it:
> 
>      When adjusting output lines to both margins, AT&T troff at first
>      adjusts spaces starting from the right; GNU troff begins from the
>      left.  Both implementations adjust spaces from opposite ends on
>      alternating output lines in this adjustment mode to prevent
>      “rivers” in the text.
> 
> Some typography people refer to this practice as achieving "uniform
> grayness".  Imagine your eyes defocused so that the text of a printed
> page is a smear of gray--if every line were supplemented with space
> favoring either the left or right side, you would perceive the opposite
> side as being "blacker".  As far as I understand the concept, not being
> a trained typographer, it's the same thing, or tautologically related.
> Rivers create anisotropies in your grayness.
> 
> I have proposed the term "adjustment parity", a property that tells you
> whether an output line requiring adjustment gets adjusted from the left
> or the right.  Roughly, if you change filled text in a *roff document
> that uses adjustment such that you add or delete an _even_ number of
> lines, the adjustment of subsequent lines won't change.  If you add or
> delete an odd number of lines, it will.  However, that's a *truly* rough
> statement because a change prior to groff 1.23.0 made GNU troff ignore,
> for purposes of adjustment parity, lines that don't get adjusted at all.
> I'll put some more background in a footnote.[1]
> 
> When diffing changes to man pages for the groff and ncurses projects
> (and occasional others to which I contribute), I disable adjustment when
> rendering the pages before and after, using the `-d AD=l` option.
> 
> groff_man(7):
> 
> Options
>      The following groff options set registers (with -r) and strings
>      (with -d) recognized and used by the man macro package.  To ensure
>      rendering consistent with output device capabilities and reader
>      preferences, man pages should never manipulate them.
> 
>      -dAD=adjustment‐mode
>               Set line adjustment to adjustment‐mode, which is typically
>               “b” for adjustment to both margins (the default), or “l”
>               for left alignment (ragged right margin).  Any valid
>               argument to groff’s “.ad” request may be used.  See
>               groff(7) for less‐common choices.
> 
> As you can see, I turn off adjustment when pasting man page contents
> into emails as well.[2]
> 
> For example, the script I use to diff groff man pages before pushing a
> set of commits has this stuff in it.
> 
> BFLAG=
> #BFLAG=-b
> ...
> : ${AD:=l}
> ...
> ARGS="$BFLAG -ww -dAD=$AD -rCHECKSTYLE=3 -rU1 -Tutf8 -e -t -mandoc"
> ...
> for P in *.[157]
> do
>     if [ "$P" = groff_mmse.7 ]
>     then
>       LOCALE=-msv
>     else
>       LOCALE=
>     fi
> 
>     echo $0: $P >&2
>     echo "groff $ARGS $LOCALE $P" > "$P.cR.txt"
>     groff $ARGS $LOCALE "$P" >> "$P.cR.txt"
> ...
> done
> 
> I then diff(1) the ".cR.txt" file I saved from my last push
> (corresponding to "origin/master") to the tip of the trunk.
> 
> I will point out something about your diff, though.
> 
> > 	@@ -118,11 +130,11 @@ .SH DESCRIPTION
> > 	 this operation yields an
> > 	 .B EINVAL
> > 	 error.
> > 	-.RE
> > 	 .IP
> > 	-Since Linux 6.7, using this subcode requires the
> > 	+Since Linux 6.7, using this selection mode requires the
> > 	 .B CAP_SYS_ADMIN
> > 	 capability.
> > 	+.RE
> > 	 .TP
> > 	 .BR subcode = TIOCL_PASTESEL
> > 	 Paste selection.
> 
> This change involving movement of the `RE` macro call can potentially
> change the output as well.
> 
> > There are several paragraphs which shouldn't report changes: every
> > paragraph that doesn't start with "Since Linux 6.7," should be
> > unchanged.
> 
> ...unless the moved `RE` call creates a surprise.
> 
> > Is this a bug?  Is it a feature?
> 
> It's a feature.  Some people do hate adjustment of nroff output, though,
> which is why I added a feature to groff man(7) to support disabling it.
> 
> The history of this practice is inconsistent.  Seventh Edition Unix
> (1979) disabled adjustment of man pages when rendering in nroff mode,[3]
> and BSD retained that disablement until death.  SunOS commented it as
> early as SunOS 2.0 (1985), thus restoring adjustment in nroff mode, and
> retained that all the way through Solaris 10 (2005).  When James Clark
> wrote groff starting in about 1989, his man(7) implementation closely
> emulated SunOS.  With the Solaris 11 release in 2010, Oracle discarded
> its AT&T-descended troff in favor of the then-current groff release.
> They're still on groff 1.22.2 (2013) today, and so they've been
> adjusting their man pages in nroff mode for at least 40 years, as has
> groff for about 35).  I don't know what other System V Unices did.
> 
> Some people have lobbied me to turn the default for adjustment off in
> nroff mode for man pages, but I've resisted, in part for consistency
> with groff's own entire history and the expectations of the once large
> (but now aging) population of Sun Unix users, but also because I feel
> that groff's defaults in nroff mode should be as similar to troff mode
> as practical, to minimize surprises when switching among output devices.
> 
> As of groff 1.23.0 (2023) the default adjustment setting in groff man(7)
> (and mdoc(7)) is completely under user control.
> 
> Regards,
> Branden
> 
> [1]
> 
> commit 69efbe0a69a8e7de8904d78e3de8c7e8a58a8b92
> Author: G. Branden Robinson <g.branden.robinson@gmail.com>
> Date:   Sat Sep 4 23:20:54 2021 +1000
> 
>     [troff]: Don't adjust nonadjustable lines.
> 
>     This means that the direction from which an output line in adjustment
>     mode "b" (or its "n" synonym) is filled with supplemental space is not
>     changed if that output line does not require adjustment.  This will
>     result in whitespace changes to documents using that adjustment mode,
>     and these changes will be plainly visible on low-resolution output
>     devices like terminals.
> 
>     To illustrate, in the following "A" means an output line requiring
>     adjustment; "F" a line that is "full" and does not; and "L" and "R"
>     indicate distribution of adjustment spaces from the left and right,
>     respectively.
> 
>     groff 1.22.4    groff 1.23.0
>     ------------    ------------
>     A    L          A    L
>     A    R          A    R
>     F    L          F    R
>     A    R          A    L
> 
>     * src/roff/troff/env.cpp (distribute_space): Return early if either the
>       amount of desired space to be distributed or the count of space nodes
>       in the output line to distribute it among is zero.
> 
>     * tmac/tests/an_TH-repairs-ad-damage.sh: Update test to expect space to
>       be distributed differently.
> 
>     Fixes <https://savannah.gnu.org/bugs/?61089> and
>     <https://savannah.gnu.org/bugs/index.php?60673>.
> 
> [2] $ type mailman
> mailman is a function
> mailman ()
> {
>     local cmd=;
>     case "$1" in
>         -*)
>             opts="$opts $1";
>             shift
>         ;;
>     esac;
>     set -- $(man -w "$@");
>     cmd=$(zcat --force "$@" | grog -Tutf8 -b -ww -P -cbou -rU0 -rLL=72n -rHY=0 -dAD=l $opts);
>     zcat --force "$@" | $cmd | less
> }
> 
> [3] https://minnie.tuhs.org/cgi-bin/utree.pl?file=V7/usr/lib/tmac/tmac.an
> 
>     Also see variously:
> 
>     https://minnie.tuhs.org/cgi-bin/utree.pl?file=32V/usr/lib/tmac/tmac.an
>     https://minnie.tuhs.org/cgi-bin/utree.pl?file=3BSD/usr/lib/tmac/tmac.an.new
>     https://minnie.tuhs.org/cgi-bin/utree.pl?file=4BSD/usr/lib/tmac/tmac.an.new
>     https://minnie.tuhs.org/cgi-bin/utree.pl?file=4.3BSD/usr/lib/tmac/tmac.an.new
>     https://minnie.tuhs.org/cgi-bin/utree.pl?file=4.3BSD-Tahoe/usr/lib/tmac/tmac.an.new
>     https://minnie.tuhs.org/cgi-bin/utree.pl?file=4.4BSD/usr/share/tmac/tmac.groff_an



