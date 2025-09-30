Return-Path: <linux-man+bounces-4009-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 111DBBAD0BE
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 15:23:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 681D91889CA1
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 13:23:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FCAF2F3C3B;
	Tue, 30 Sep 2025 13:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=landley.net header.i=@landley.net header.b="d7o4hzXR"
X-Original-To: linux-man@vger.kernel.org
Received: from seashell.cherry.relay.mailchannels.net (seashell.cherry.relay.mailchannels.net [23.83.223.162])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD814224AF0
	for <linux-man@vger.kernel.org>; Tue, 30 Sep 2025 13:23:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=23.83.223.162
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759238601; cv=pass; b=SivgXHKQwvjycGGOfYwsSsD1/mZtowvHv9ZZxoqMNGmEC36Wa15kHTn8r3DdU3nCMcSVjed6zr1kmRV+7DOwgT9EMlBHxPm7Y/I/zK7y4sKO0U8GUzJ7KuHtf9VTfgaFZrUuUAMhsNO8H0S08MKwhpRnKseN8yAXtd6QUuy2p7A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759238601; c=relaxed/simple;
	bh=ygXrloS4MLL1a/9NrDmrs3KYTkWaGm9wNDUDK9vfiEc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bfmF2jFimUlKG+kpGvexFJodfnvMLuITsFJNWU/Dilx3PIgjwh3GzkGm0nc7gluGt1MwcxkgUQhsxbEe+q/qZsc0TFtUHAN9Oirz3vNktXQQhNCqps6yqBbWFE8D4FUSLS8j8rgQsIoh4GGUwiCn8OUQhOw/EfDrSGDBZEaZcmY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=landley.net; spf=pass smtp.mailfrom=landley.net; dkim=pass (2048-bit key) header.d=landley.net header.i=@landley.net header.b=d7o4hzXR; arc=pass smtp.client-ip=23.83.223.162
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=landley.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=landley.net
X-Sender-Id: dreamhost|x-authsender|rob@landley.net
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id D50B51E2345;
	Tue, 30 Sep 2025 13:23:11 +0000 (UTC)
Received: from pdx1-sub0-mail-a208.dreamhost.com (trex-blue-2.trex.outbound.svc.cluster.local [100.113.90.84])
	(Authenticated sender: dreamhost)
	by relay.mailchannels.net (Postfix) with ESMTPA id 344CF1E1765;
	Tue, 30 Sep 2025 13:23:11 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1759238591; a=rsa-sha256;
	cv=none;
	b=RPl8I9Yxd/LdBpEVcBwxtwr1zdzQAI+aIYG+BpPOJYg05r3td3PuaOQbejW9zytvZUBUlY
	fl4+uXsP5NsvGZC4QlN+j3j1FnxyHaE8KK1/qyd9s9IvuniQc2A8fjNowjOThM7km2/yl8
	YAbaAKbEjBeebj9ngfqmXbBXDGtMVPzRPr68tH940AsWhixUtsH4HACRF5OPv7TezBUlTO
	VOyH1W2zvjjFaB1/uTaffmG1gULXeWd/S2YxCwESaM6jD57HrfArBXlW7LXWMkTmkJOmkU
	Ao5z1uRXrE05dUENDyFjLPcEfx+cIq8KfDwwO21dYy4z5u3d7ub2+qX1xv6V5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1759238591;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=oC/N53qOtXaML061LPpBNpivOw77QZIJAlPhQw0xvLI=;
	b=xZ7Y842T8uDUtPzyb1K8WqUAbM66NIlsdmzJy2gEwBFzxi6KmpjQy6oRkLFmqAfKAMhsW4
	VDCiAbU6MpJJViuEFLMOV4lEMax4P1XChZB2lfVw4G2C2DVnGKVDsqsfQQMYgJzXv86mfj
	W6cFRwcAXniTObPWlqLUNjalecxfQ+Lk3IOVIhYPJcIUCk5KCJ/dRu7AWneFolDx8BuVLT
	nX5NHRNELAlHUArNuOnck7weWaCbTQvwd0nAdD/yqVQTpsgwLhCjHiYEK6HX9G5brdzdZF
	m3kLNBqJWs9sYQJeCJ33dEVCeqmxjhITgRDkpub0vdXHcQQXl1TBt+9Zt0U9VA==
ARC-Authentication-Results: i=1;
	rspamd-9695c5dfc-4g9hb;
	auth=pass smtp.auth=dreamhost smtp.mailfrom=rob@landley.net
X-Sender-Id: dreamhost|x-authsender|rob@landley.net
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|rob@landley.net
X-MailChannels-Auth-Id: dreamhost
X-Coil-Shelf: 5c372e30770885c2_1759238591455_1919346677
X-MC-Loop-Signature: 1759238591455:1121188794
X-MC-Ingress-Time: 1759238591455
Received: from pdx1-sub0-mail-a208.dreamhost.com (pop.dreamhost.com
 [64.90.62.162])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.113.90.84 (trex/7.1.3);
	Tue, 30 Sep 2025 13:23:11 +0000
Received: from [192.168.88.7] (unknown [209.81.127.98])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	(Authenticated sender: rob@landley.net)
	by pdx1-sub0-mail-a208.dreamhost.com (Postfix) with ESMTPSA id 4cbdzL5cGYzF0;
	Tue, 30 Sep 2025 06:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=landley.net;
	s=dreamhost; t=1759238591;
	bh=oC/N53qOtXaML061LPpBNpivOw77QZIJAlPhQw0xvLI=;
	h=Date:Subject:To:Cc:From:Content-Type:Content-Transfer-Encoding;
	b=d7o4hzXRN8YcN7OYa/SRIGLa+A92aj6+rX15wlVUJ++5RTo6J4B9pBFQfpINkuHL4
	 E7CEoPLn2DK/Boo8r/EWqBxPPacmvDxsS5+rUCnoqd/9vtFp6P7mEymu6GeYU2HGPM
	 aYzDWOy6Y3RULaYW1DPaPVSx5AezyWkMUJLH1VzD5HqskwUD8hP1ctrHDgZr6mNxCd
	 U1TMVnYXUb/4pZ5O2W7xd06PLU3A7Lb7K6uJMj1gS7k1Kc4ebyW/sE+BrSFVjKT5+f
	 cyBotkp+57QxzIzSFtnx+m4w6AXmJI57rqcu6Zf4h7c+izjKpMCVlvFhiZ/uiXMjeI
	 9Qi+QVauQOvIg==
Message-ID: <e369c200-a7cd-4b92-b700-d9d48d347ce8@landley.net>
Date: Tue, 30 Sep 2025 08:23:10 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Move GNU manual pages to the Linux man-pages project
To: =?UTF-8?Q?Arsen_Arsenovi=C4=87?= <arsen@aarsen.me>,
 Alejandro Colomar <alx@kernel.org>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87jz1sm2t3.fsf@aarsen.me>
 <fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
 <87cy7e7hml.fsf@aarsen.me>
Content-Language: en-US
From: Rob Landley <rob@landley.net>
In-Reply-To: <87cy7e7hml.fsf@aarsen.me>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 9/25/25 09:04, Arsen Arsenović wrote:
> Unfortunately, it is.  A collection of linear mostly-unrelated pages in
> predetermined shape simply cannot document complex software, a
> hierarchical approach is non-negotiable.
> 
> libc, (most of) the syscall API and coreutils are a lucky case in that
> they are, fundamentally, large collections of *very* simple bits
> (functions and programs),

It wasn't "lucky". "Do one thing and do it well" was an explicit design 
decision the Bell Labs guys made in 1971. Doug McIlroy wrote about it in 
1978 in the Forward to the article on "The Unix TimeSharing System" in 
the Bell System Technical Journal in 1978: "do one thing and do it well" 
and then compose more complicated things from simple parts. Peter Salus 
reiterated it in "a quarter century of unix" (a book about the 
anniversary), and Mike Gancarz' book "the unix philosophy" went into 
this in some detail.

That's why they could get away with a flat namespace and simple man 
pages and so on for decades.

Gnu's Not Unix in quite a number of ways.

> but the fact that manpages are insufficient is
> visible in everything about Linux other than the syscall API.  Finding
> documentation for Linux cmdline parameters, pseudo-FSes and various
> components is a Herculean task.

The utility command line parameters are on the web at 
https://man7.org/linux/man-pages/man1/intro.1.html which seemed 
reasonably straightforward to me. (Over the years it's accumulated a lot 
of extra crap from optional packages, but as failure modes go it could 
be worse...)

The kernel command line arguments are at 
https://kernel.org/doc/Documentation/admin-guide/kernel-parameters.txt 
and filesystems are at 
https://kernel.org/doc/Documentation/filesystems/squashfs.txt (first 
I've heard pseudo, it's usually called "synthetic", ala 
https://landley.net/toybox/doc/mount.html unless you have a reference I 
don't?)

But then I was briefly the linux kernel's Documentation maintainer in a 
previous life so I may be biased. (Jonathan Corbet of lwn.net has that 
position now, I believe.) I did a certain amount of analysis back when 
it was my job, ala https://kernel.org/doc/ols/2008/ols2008v2-pages-7-18.pdf

The man pages present simple text output created from text input. The 
source is in a legacy typesetting format from 1971 (created for the AT&T 
patent and licensing department and aimed at a brand of daisy-wheel 
printer that no longer exists), but even 
http://www.catb.org/~esr/doclifter/doclifter.html back in 2003 could 
already migrate that to something else and people decided "nah, qwerty 
ain't so bad, better the devil you know...".

> No, it's both.  The 'man' macro package is imperative and unstructured
> rather than declarative and structured,

People were offered docbook 20 years ago. It was worse. (There's no 
docbook gui editor because it's TOO structured, in ways that are not 
easily visually represented. It's an ivory tower academic solution.)

> and 'roff' is quite cumbersome
> to use.  The BSDs (I think?) have attempted to solve this partially with
> mdoc.  I've found authoring with it slightly better.  Unfortunately,
> however, it is still 'roff'.
> 
> But, indeed, pagers are inadequate viewers also.

The man package's build scripts have produced html output for many 
years, you can do it on your laptop from a git clone.

> OpenBSD, IIRC,
> provided slight improvement in this regard by letting 'less' read some
> type of list of tags that it produces out of the manual page, or
> somesuch, to facilitate jumping.  This is a significant move in the
> right direction, but it doesn't manage to address the fact that manpages
> are non-hierarchical.

If I want "man insmod" I don't have to know it's in section 8. Making it 
more granular turns out to be less useful.

You're complaining about 40 year old design decisions that have 
persisted for good reason. People have been free to change it all along.

> This addresses half of the issue (what if the pages are old?), and still
> leaves the fact its a separate software distribution unsolved.

Either people updated the docs or they didn't. Having an active 
well-known place to go look and complain at is useful. Requiring 
somebody to read the source code and provide a copyright assignment to 
tweak documentation... well you've tried that since 1983, how did it go?

There may be some selection bias in the people who constantly read and 
edit this source code finding this source code to be the best place to 
put the docs. Learn to cook at the oven factory.

Rob

