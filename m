Return-Path: <linux-man+bounces-4307-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC31C7BBA2
	for <lists+linux-man@lfdr.de>; Fri, 21 Nov 2025 22:11:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 869A335D3B8
	for <lists+linux-man@lfdr.de>; Fri, 21 Nov 2025 21:10:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9068A2E8B81;
	Fri, 21 Nov 2025 21:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ot8J/14u"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B312248B9
	for <linux-man@vger.kernel.org>; Fri, 21 Nov 2025 21:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763759436; cv=none; b=tmDGdmk+xNgGp2kCP6H4FO5XgtoZLwdkNEooUOOGRVVzTReNzWEe+DPz9SGnzc+MRkqZ+IdgoTc1nOSBXzddoocHOtczCniinuCvJjdEohjok77sk7qDIrmZgrm6PRLXHUCWlpg8ot6bhiuKZKOwyqgkV8GWRPoNcqmWo0vTxIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763759436; c=relaxed/simple;
	bh=FdAfCSuj5AicYaYFynPfnenO/logAfn0d2MKSbdMj70=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DwzmGhWLb49nNcW/jklrdhsb4wonslN2dALw2cM6xOy3ULlVTXEmnDAWFMD27dA0dAfhOIfkwlBvzhgQsnSSqhmCHONrw/ifay7alAPVISKlHvPXQ2OVkK6UaatCFebhEws1R5gRMg339m4lexhhB+3P5bdl8tcCSJGfwR2IM6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ot8J/14u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F5ADC4CEF1;
	Fri, 21 Nov 2025 21:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763759435;
	bh=FdAfCSuj5AicYaYFynPfnenO/logAfn0d2MKSbdMj70=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ot8J/14uGJJ4tHMhVX5ux02zK/VuRFRVwJhOd+okiOSc81N84IAEodNvrJTVfm7RC
	 ZQ9xrMhQnK141/uKjwj081BG4n4Q34sjgKxGXFbRmeewX+0CFaAmRdTII34MZL58Gq
	 QnrPMCUPN6NUm8Oft96ZuQTysTD4YHCy3fVcLB8k2L5NZTf5hZPxM9RojjFTwiO8xw
	 peCRaLbNOPyCsIb9VXaDa/CSNOSMWNDJ88tZQxv3nnUevn4VFhZVphoNKXtFdG1DEm
	 LXAaEmSG/h4Hrefaai2ldIq58NehwNedZyh4uY/nBRX0yOUAnat0oFZxOvGNCrE22p
	 HSlFlTLD82KsA==
Received: by pali.im (Postfix)
	id 80EB89F6; Fri, 21 Nov 2025 22:10:28 +0100 (CET)
Date: Fri, 21 Nov 2025 22:10:28 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jan Kara <jack@suse.cz>,
	Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH v2] man/man3/readdir.3, man/man3type/stat.3type: Improve
 documentation about .d_ino and .st_ino
Message-ID: <20251121211028.tbqopxtbay5eun4n@pali>
References: <h7mdd3ecjwbxjlrj2wdmoq4zw4ugwqclzonli5vslh6hob543w@hbay377rxnjd>
 <7cce7dac8fb57608d71b073f8a3c94532e5cb688.1761693028.git.alx@kernel.org>
 <20251028235306.sxnpm333u4xtxgt5@pali>
 <20251029070039.6axt6yugqobyv2nh@illithid>
 <20251029193413.mjm2kzszktkjsak5@pali>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251029193413.mjm2kzszktkjsak5@pali>
User-Agent: NeoMutt/20180716

On Wednesday 29 October 2025 20:34:13 Pali Rohár wrote:
> Hello Branden,
> 
> On Wednesday 29 October 2025 02:00:39 G. Branden Robinson wrote:
> > Hi Pali,
> > 
> > Thanks for following up.
> > 
> > At 2025-10-29T00:53:06+0100, Pali Rohár wrote:
> > > Hello Branden, I'm sorry but I have not received your message because
> > > I'm not subscribed to the list. Otherwise I would have replied to you
> > > earlier.
> > 
> > No worries--it's a risk I take when forgetting to CC people's accounts.
> > 
> > > If you are referring to the "bug" then it is written in informative
> > > part in RATIONALE section of readdir / POSIX.1-2024. I wrote in my
> > > first email in that email thread which Alejandro linked above.
> > > 
> > > Here is direct link to POSIX spec and below is quoted part:
> > > https://pubs.opengroup.org/onlinepubs/9799919799/functions/readdir.html
> > > 
> > > "When returning a directory entry for the root of a mounted file
> > > system, some historical implementations of readdir() returned the file
> > > serial number of the underlying mount point, rather than of the root
> > > of the mounted file system. This behavior is considered to be a bug,
> > > since the underlying file serial number has no significance to
> > > applications."
> > 
> > Thanks--this is precisely what I was asking for!
> > 
> > > That part is in the "informative" section. I have not found anything
> > > in normative sections which would disallow usage of that "historical"
> > > behavior, so my understanding was that "historical" behavior is
> > > conforming too.
> > > 
> > > Please correct me if I'm wrong here, or if it should be understood in
> > > different way.
> > 
> > I can't speak for the Austin Group, but I don't read the text quite the
> > same way.  I interpret it as saying that some historical implementations
> > of readdir() would _not_ "return a pointer to a structure representing
> > the directory entry at the current position in the directory stream
> > specified by the argument dirp, and position the directory stream at the
> > next entry."  But I suspect that's not what it _intends_ to say.
> > 
> > Instead, these implementations "returned [sic] the file serial number of
> > the underlying mount point", which I interpret to mean that they would
> > return a pointer to a _dirent_ struct whose _d_ino_ member was not the
> > file serial number of the file (of directory type) named by the _d_name_
> > member but a pointer to a _dirent_ struct whose _d_ino_ member was the
> > file serial number of the underlying mount point.
> > 
> > I think there are two conclusions we can reach here.
> > 
> > 1.  POSIX.1-2024 might be a little sloppy in the wording of its
> >     "RATIONALE" for this interface.  Presumably no historical
> >     implementation's readdir() returned a _d_ino_ number directly.
> >     (Though with all the exuberant integer/pointer punning that used to
> >     go in Unix, I'd wouldn't bet a lot of money that *no* implementation
> >     ever did.)  I'll wager a nickel that readdir() has always, on every
> >     implementation, returned a pointer to a _dirent_ struct, and it is
> >     only the value of the _d_ino_ member of the pointed-to struct that
> >     some implementations have populated inconsistently when the entry is
> >     a directory that is a mount point.
> > 
> >     If I'm right, this is an example of the common linguistic error of
> >     synecdoche: confusing a container with (a subset of) its contents.
> > 
> > 2.  The behavior POSIX describes as buggy is, in fact, nonconforming.
> 
> Only two? I can image that somebody come up with another conclusion.
> (just a joke)
> 
> Anyway, I think that it is important to document the existing Linux
> behavior and whether it is POSIX-conforming or not is then second step.
> We can drop the information about POSIX conformity from manpage until we
> figure out how it is.
> 
> > > Also I have not read all those 4000 pages, so maybe there is something
> > > hidden. It is quite hard to find information about this topic and that
> > > is why I think this should be documented in Linux manpages.
> > 
> > I reckon someone should open a Mantis ticket with the Austin Group's
> > issue tracker to get clarity on what I characterized as "sloppy"
> > wording.  Either it is and we can get the standard clarified, or I'm
> > wrong and an authority can point out how.  (Maybe both!)
> > 
> > I'm subscribed to the austin-group-l reflector and will take an action
> > item to file this ticket.  I'll try to do within a week.  (I have a lot
> > of old Unix books and would like to rummage around in them for any
> > documented land mines in this area.)
> > 
> > Regards,
> > Branden
> 
> Thanks for taking that part. It would be really nice if austin group can
> clarify how the whole situation is in a non-confusing way.
> 
> Anyway, inode number is always connected to the specific mounted
> filesystem. So when the application is doing something with inodes, it
> always needs a pair (dev_t, ino_t) unless inodes belongs to same fs dev.
> 
> readdir() and getdents() returns just ino_t, and without knowledge of
> dev_t, applications cannot use returned ino_t for anything useful.
> On "historical" implementations, the dev_t can be fetched for example by
> one fstat(dir_fd, &st) call as dev_t would be same for all readdir and
> getdents entries. But on non-"historical" implementation, it would be
> needed to call stat() on every one entry. For example /mnt/ directory
> which usually contains just mountpoints, will contain entries where
> each one has inode number 2 (common inode number for root of fs).
> 
> I looked into archives and I have found that this problem was already
> discussed in the past. Here are some email threads from coreutils:
> https://lore.kernel.org/lkml/87y6oyhkz8.fsf@meyering.net/t/#u
> https://public-inbox.org/bug-coreutils/8763c5wcgn.fsf@meyering.net/t/#u
> https://public-inbox.org/bug-coreutils/87iqvi2j0q.fsf@rho.meyering.net/t/#u
> https://public-inbox.org/bug-coreutils/87verkborm.fsf@rho.meyering.net/
> https://public-inbox.org/bug-coreutils/022320061637.4398.43FDE4D7000110830000112E22007507440A050E040D0C079D0A@comcast.net/
> 
> Maybe they could be a good reference for future discussion by austin group.
> 
> Just my personal idea: If there would be some xgetdents syscall (like
> there statx over stat), it could return both inode numbers with dev_t
> and application can take which it wants.
> 
> For example, NFS4's readdir can return both inode numbers (depending
> what is client asking). NFSv4.1 spec has nicely documented this problem
> with UNIX background of mount point crossing:
> https://www.rfc-editor.org/rfc/rfc8881.html#section-5.8.2.23
> 
> Pali

Hello Branden, did you have a time fill a ticket to austin group?
If the ticket system is public, could you send a link for reference?
Pali

