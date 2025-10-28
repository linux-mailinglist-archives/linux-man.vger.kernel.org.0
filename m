Return-Path: <linux-man+bounces-4209-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3F6C1768C
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 00:53:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B4EC400AB9
	for <lists+linux-man@lfdr.de>; Tue, 28 Oct 2025 23:53:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 654AE3064AE;
	Tue, 28 Oct 2025 23:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MN+p+mZv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247C62DECC2
	for <linux-man@vger.kernel.org>; Tue, 28 Oct 2025 23:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761695592; cv=none; b=Vts+SFvaLG97o68qHbKc+3I/wu0B0XMjDjSDuRny0pxDHk6mGzYdhlCqfEYBHi+NaPxufExH7L4GkqvgRaSsHJvgR9L59YYtwymDg8WcyIi985/OHVsKmiwsHHYwr0Hv1+08y9nF5cGAiGybfbM/W4As+VX6WRrR4Vmv2sDGQI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761695592; c=relaxed/simple;
	bh=fHhcNNmh/I+I2YBN/2iPt7RdFzCyx/hOiJpWgelDJQo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mrwfutDeWkOLE5WsJVvDOmoMxCKHtgv9ug2UaGm2G0bbf0lknNuUOO1yLtZxKchTZSdn0IpVSe/4KHQ98N5/vx9YWKHpdow4++M6Acb1ie7qtiWVILhoY/xCHCpP3u7VJl+JtEj8BqaX0oUZf6GWXYS2/B9cYCPB8rpjHz6eqI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MN+p+mZv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7ABDFC4CEE7;
	Tue, 28 Oct 2025 23:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761695591;
	bh=fHhcNNmh/I+I2YBN/2iPt7RdFzCyx/hOiJpWgelDJQo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MN+p+mZvLdQZVwu/RkzkdrFhiY3qzjGsD7H7fVVlVEXGlT7QfJ/0Gd5WbcyQ+UkHk
	 HB66CjXZlDDxSXekftCps4mg6pg/LIUHzXBNzOxVcOQTND5wVMJt/iFcgMML2gmL1I
	 mGMTjHQuHiDQkwwaRQszWztQ6xcLHC0FIGb4ZIA/B8TAqCoVGMbuGUT8FQP732N0VI
	 msLCJsjFLdH6+xOXrkcCZcq+gQOTVrR893LsaSmcBYE40g4I/mtoHxgKVOfK0cc317
	 6s74LWXnYlYxGs7LyC/nka6WN5AKbx17+SXX2C1lR5hFpyYAUj5msAiolLtmOCXwnH
	 hNAfT/YmwIMXA==
Received: by pali.im (Postfix)
	id 6C40955E; Wed, 29 Oct 2025 00:53:06 +0100 (CET)
Date: Wed, 29 Oct 2025 00:53:06 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: "G. Branden Robinson" <branden@debian.org>
Cc: linux-man@vger.kernel.org, Jan Kara <jack@suse.cz>,
	Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH v2] man/man3/readdir.3, man/man3type/stat.3type: Improve
 documentation about .d_ino and .st_ino
Message-ID: <20251028235306.sxnpm333u4xtxgt5@pali>
References: <h7mdd3ecjwbxjlrj2wdmoq4zw4ugwqclzonli5vslh6hob543w@hbay377rxnjd>
 <7cce7dac8fb57608d71b073f8a3c94532e5cb688.1761693028.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7cce7dac8fb57608d71b073f8a3c94532e5cb688.1761693028.git.alx@kernel.org>
User-Agent: NeoMutt/20180716

On Wednesday 29 October 2025 00:15:31 Alejandro Colomar wrote:
> Hi Jan,
> 
> Would you mind reviewing this?  The thread started here:
> <https://lore.kernel.org/linux-man/20250525103344.fe27ugiytfyoadz5@pali/T/#u>.
> 
> Hi Branden,
> 
> I wasn't able to do anything after your request from
> <https://lore.kernel.org/linux-man/20250525103344.fe27ugiytfyoadz5@pali/T/#m1bd706844fd322b2b0f9090ceac68e7ba29200eb>.
> Pali will probably be better placed to do that, since he authored that
> text.
> 
> Hi Pali,
> 
> Sorry for being so slow with this!  I wasn't able to work on this until
> now.
> 
> 
> Have a lovely night!
> Alex

Hello Branden, I'm sorry but I have not received your message because
I'm not subscribed to the list. Otherwise I would have replied to you
earlier. If you are referring to the "bug" then it is written in
informative part in RATIONALE section of readdir / POSIX.1-2024. I wrote
in my first email in that email thread which Alejandro linked above.

Here is direct link to POSIX spec and below is quoted part:
https://pubs.opengroup.org/onlinepubs/9799919799/functions/readdir.html

"When returning a directory entry for the root of a mounted file system,
some historical implementations of readdir() returned the file serial
number of the underlying mount point, rather than of the root of the
mounted file system. This behavior is considered to be a bug, since the
underlying file serial number has no significance to applications."

That part is in the "informative" section. I have not found anything in
normative sections which would disallow usage of that "historical"
behavior, so my understanding was that "historical" behavior is
conforming too.

Please correct me if I'm wrong here, or if it should be understood in
different way.

Also I have not read all those 4000 pages, so maybe there is something
hidden. It is quite hard to find information about this topic and that
is why I think this should be documented in Linux manpages.

Pali

