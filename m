Return-Path: <linux-man+bounces-2229-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 626FBA112AC
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 22:01:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F0AD3A3E6F
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 21:01:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 644CD21146D;
	Tue, 14 Jan 2025 21:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="DyCgj4zL"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93C9120F988
	for <linux-man@vger.kernel.org>; Tue, 14 Jan 2025 21:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736888451; cv=none; b=lIIfUylmSaMvuK0ZWSJGhDZ7MFffCRZXnhXBUNs0izTEGNUiJhU4uOAI40qzms11NtLirgewUiy486X+Auz5oCkKSopRAvfPoIeQHKwBjb1rpUPYZl/D5V84NC6g9FawooynHqauVauByVXvgqfkCN2kD2bMZTKnQmYWhUJtc20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736888451; c=relaxed/simple;
	bh=Aqycvd8UppSE+kGqA+XsGb83038rvAQMs6usNynjeTE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lapG9JPAA2ikiPOQ1N2N09mNes+CB7uSC6af1EOTUHWj4ZcVgEhJieyQHwg8RVcPgVPcqcIC9Yb2N4ieDAFe8KOVR3mPTVlGkTM7hvX/IKAr+1YCKjCxS26t/5Iv1Ez7zWkHCJ4bCmuWOJClWv/ZDVfqlQrEpZh/LVcJCojx4TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=DyCgj4zL; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1736888446;
	bh=Aqycvd8UppSE+kGqA+XsGb83038rvAQMs6usNynjeTE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DyCgj4zLDZ7is/RThGg11ABhatVs1lQenyvJG+VPYSAFeUxCWc9p7Z4FECE08Ae9G
	 2C5HFMK1G8v1MtPWFrsn0aU/y1vK4JcbD5agoLhGb72bWYl4/annZc9zQyYuRqAYBp
	 DyO/uw2GHNLuV2c6HEeEeR0HvYYtlbsHmEBmezMjeP2oa+jPweh6RpRzEJNiAnbSsy
	 r9syPz0ADJ1C3ETolMEJTCn1C+AR0tRM2ZK6ONxY98+b35QK8W/+nFti90gNO065bK
	 DsRNGaWbe9+Qqtaelxzw/lLKCvEwSD2ilTf7W80Vo/maWa+lZ6KT2WuSup+TW70JJy
	 /TxfvOcW/bwLg==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id D7F3E7E26E;
	Tue, 14 Jan 2025 16:00:46 -0500 (EST)
Date: Tue, 14 Jan 2025 16:00:46 -0500
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v2] man/man7/path-format.7: Add file documenting format
 of pathnames
Message-ID: <r6bjj4gemyri65nlgq5pm4sro5cdkuml4d5f5nelyuebinb2u7@yuf4ducafb2v>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250114125453.27520-1-jason@jasonyundt.email>
 <4hr3zjbop6w5bsvcm4op32akjibwt4vkz52itcdjsdjpsvp7cs@nfahhxnwzlsk>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4hr3zjbop6w5bsvcm4op32akjibwt4vkz52itcdjsdjpsvp7cs@nfahhxnwzlsk>

On Tue, Jan 14, 2025 at 02:14:42PM +0100, Alejandro Colomar wrote:
> Maybe we should call the page pathname(7)?

I don’t really have an opinion one way or the other.  If you want, I can
submit a new version of this patch that changes it to pathname(7).

> There's a specific term for this: string.
> 
> Which means you don't need to explain so much about the null byte.
> It is understood that a string cannot contain null bytes (except for the
> terminator itself).

I purposefully avoided using the term string because I thought that
using the term string would make the manual harder to understand.  The
term string is associated with several different concepts, and those
concepts would hinder someone’s understanding of paths:

• The term string is often used to refer to counted strings, and counted
  strings can contain null bytes.  I’m more used to counted strings than
  null-terminated strings personally because I have more experience with
  Java, Python and Rust than I do with languages that default to using
  null-terminated strings.  I know that the Linux man-pages mainly focus
  on the C programming language, but paths in particular are something
  that applies to all programming languages.

• Even in the context of the C programming language, the term string can
  still refer to counted strings.  The Windows kernel has three
  different structures: ANSI_STRING [1], OEM_STRING [2] and
  UNICODE_STRING [3].  All three of them are counted and can contain
  null bytes.  As a result, it’s possible to create valid paths on
  Windows that contain NUL characters [4].  When I wrote this manual
  page, I wanted to make it clear that this was one of the ways that the
  Linux kernel differs from the Windows kernel.

• People often think of strings as sequences of characters.  In
  programming languages like Python, this is literally true (you have to
  convert a str object into a bytes object if you want to work with
  bytes instead of characters).  To have the best possible understanding
  of how the kernel handles paths, you should think of them as sequences
  of bytes, not as sequences of characters, and the term string makes
  people think of sequences of characters.

• When I’m writing code in C or C++ and I see a char *, I assume that
  it’s supposed to contains characters that are encoded in the execution
  character set.  That is not a good assumption for paths.

When I first tried to figure out character encoding of paths on Linux, I
found stuff like this post [5].  That post (among others) really helped
me understand paths better because it specifically describes paths as
sequences of bytes rather than strings

[1]: <https://learn.microsoft.com/en-us/windows/win32/api/ntdef/ns-ntdef-string>
[2]: <https://learn.microsoft.com/en-us/previous-versions/windows/hardware/kernel/ff558741(v=vs.85)>
[3]: <https://learn.microsoft.com/en-us/windows/win32/api/ntdef/ns-ntdef-_unicode_string>
[4]: <https://googleprojectzero.blogspot.com/2016/02/the-definitive-guide-on-win32-to-nt.html>
[5]: <https://unix.stackexchange.com/a/39179/316181>

> I think I would skip this.  It is implicit by the fact that the only
> forbidden character in a filename is '/'.

OK, I’ll submit a v3 that removes that part.

> It might be good to mention that some filesystems restrict the valid
> characters in a filename.

OK, I’ll submit a v3 that adds an example of a filesystem that puts
restrictions on the bytes that can be in filenames.

> Do we want to recommend that?  IMHO, for maximum portability, programs
> should assume the Portable Filename Character Set (or at most some
> subset of ASCII), and fail hard outside of that, which will itself favor
> that users self-restrict to portable file names.

I have a concern about programs failing hard when paths contain
non-ASCII characters.  I have a lot of songs and medleys saved on my
computer.  The paths for over 10,000 of them contain non-ASCII
characters.  Most of those non-ASCII characters come from Chinese,
Japanese or Korean characters that are in the titles of songs or
medleys.  If programs failed hard on paths that contain non-ASCII
characters, what impact would that have on my music collection?

Even if we were to only use a subset of ASCII characters, I would still
be concerned about programs failing hard when paths contain characters
outside of the POSIX Portable Filename Character Set.  I dual boot Linux
and Windows.  When I installed Windows, it automatically created
partitions named “Microsoft reserved partition” and “Basic data
partition”.  At the moment, I can access those partitions using the
paths /dev/disk/by-partlabel/Microsoft\x20reserved\x20partition and
/dev/disk/by-partlabel/Basic\x20data\x20partition.  If programs failed
hard on paths that contain characters outside of the POSIX Portable
Filename Character Set, would I have to fall back to using /dev/sda1 and
/dev/sda2?

