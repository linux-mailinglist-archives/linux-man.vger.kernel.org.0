Return-Path: <linux-man+bounces-3738-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CE5B371D5
	for <lists+linux-man@lfdr.de>; Tue, 26 Aug 2025 19:58:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 737477B2051
	for <lists+linux-man@lfdr.de>; Tue, 26 Aug 2025 17:56:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3EF823AB95;
	Tue, 26 Aug 2025 17:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="fUKoe3qd"
X-Original-To: linux-man@vger.kernel.org
Received: from stravinsky.debian.org (stravinsky.debian.org [82.195.75.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0232D26CE32
	for <linux-man@vger.kernel.org>; Tue, 26 Aug 2025 17:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.108
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756231089; cv=none; b=LbNgnUXc5oB7iW5YKpXx7S4wE00FKrzLj1cLC8YrzazREaH3F0YqCePwq/xlV66NysaustXr2AQvdk+OCg51V7zWldymPF7ZG1+SPE2aRR3nfZGDmEFHYcpOETXZRq0Ah/LSQNcsWS1tlW6cR6NKwWDPWkcws104fovRZMHlefA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756231089; c=relaxed/simple;
	bh=B+/R4ZKDax6eWjmTeicf6XvO/teWejzOKnyxunKUeQo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T9obKktStuNc9yB9DA+DLpUbqK+dsa2cYnWwey3B+HEN4vIv76t8rTkxruNR6B6KshE613LJhE56ZZKkS1niwAxINVM6jv/67W+KnkiVKnOT3BY57wEM57j3Q1Wr0FkHZWtOpZSwdvKJFPaF32z9ZE06Ond8EGIkadTOWmUIihc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=fUKoe3qd; arc=none smtp.client-ip=82.195.75.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-ID:Content-Description;
	bh=XAjJZLntIgUvz6hs/odPY3Di9hROnlqAtbQdpMVXbN4=; b=fUKoe3qdv2m5fMLTQHzinaHbbb
	bz8R1drocKtvh12I+zNWyxQMcAQYLO62A0ZDp7LVzHc+vT0EN46Qb2JT8utO1q7y3HZUjaHDd4gif
	tPEzcZSw5Wq/vSwwEWEwhjQTiyOdimQYNX/Xz5cLCq8YLHbBvu2PCnraDDEvqOUV7xlMYnVFkTz8W
	GGgDNfFo72bNgSf8FKQPASWPvEn1IEZhYiqSf1bMC9FzMsGhoTb6BEL3wIaA4LWBoJmLkd9Vt0Vtv
	4X6BupGYL8qSRSni23hOBk615F8KUXgjLd4LJcMkVauwEUxUajLKuliOMdbdYnt2Z5yo2Svt2OWOo
	IxwZBF3g==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94.2)
	(envelope-from <cjwatson@debian.org>)
	id 1uqxXx-00Do2j-8D; Tue, 26 Aug 2025 17:33:25 +0000
Received: from ns1.rosewood.vpn.ucam.org ([172.20.153.2] helo=riva.ucam.org)
	by riva.rosewood.vpn.ucam.org with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <cjwatson@debian.org>)
	id 1uqxXw-00000002Bwt-1oOt;
	Tue, 26 Aug 2025 18:33:24 +0100
Date: Tue, 26 Aug 2025 18:33:23 +0100
From: Colin Watson <cjwatson@debian.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org, groff@gnu.org,
	Helge Kreutzmann <debian@helgefjell.de>,
	mario.blaettermann@gmail.com, man-db-devel@nongnu.org
Subject: Re: URL visibility on terminal devices (was: Issue in man page
 pathname.7)
Message-ID: <aK3v4_PHAtycO4qz@riva.ucam.org>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org, groff@gnu.org,
	Helge Kreutzmann <debian@helgefjell.de>,
	mario.blaettermann@gmail.com, man-db-devel@nongnu.org
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
 <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
 <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>
 <67todkk4wpqgskfy3s75uy7cbtahfpcaxymdse7pjzrjk72r7w@25dwgnvj5imm>
 <aKy3oVSyXS8_Xj5l@meinfjell.helgefjelltest.de>
 <3vzgdnoegfdc7lflbincypzzjl3hitatj3oan5maejqng75kb3@e3enbnrxo4lx>
 <20250825230420.2dl2kkchtmkwjge7@illithid>
 <tal23nvlrjz4thsc4u2godehn25x6x4uiucky735te5ojsgygj@gga4etjwpo7n>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <tal23nvlrjz4thsc4u2godehn25x6x4uiucky735te5ojsgygj@gga4etjwpo7n>
X-Debian-User: cjwatson

On Tue, Aug 26, 2025 at 07:05:49AM +0200, Alejandro Colomar wrote:
>[CC += Colin]

[CC += man-db-devel, and quoting most of this for reference]

>On Mon, Aug 25, 2025 at 06:04:20PM -0500, G. Branden Robinson wrote:
>> tl;dr: Learn and use the "-rU0" option when your terminal device doesn't
>> support OSC 8 hyperlinks.
>>
>> groff_man(7):
>>      -rU0     Disable generation of URI hyperlinks in output drivers
>>               capable of them, making the arguments to MT and UR calls
>>               visible as formatted text.  grohtml(1), gropdf(1), and
>>               grotty(1) enable hyperlinks by default (the last only if
>>               not in its legacy output mode).
>>
>> If you _never_ use a terminal device that supports hyperlinking...
>>
>> groff_man(7):
>>      /.../share/groff/site-tmac/man.local
>>             Put site‐local changes and customizations into this file.
>>
>> Thus, Helge might add
>>
>> .if n .nr U 0 \" Format URLs on terminal devices.
>>
>> to his system's "man.local" file.
>
>[...]
>
>> > I can confirm.  Branden, is this a bug?  I think the Linux console
>> > should print the URI as in the old days.
>>
>> I can't reproduce that behavior with groff 1.23.0 but I can with Git.
>>
>> And that's due to a deliberate change.
>>
>> NEWS[1]:
>> *  Hyperlink support is now enabled by default on PDF and terminal
>>    devices for an (man) and doc (mdoc) documents.  Instructions and
>>    commented code for disabling it are in the "man.local" and
>>    "mdoc.local" files.
>>
>> For the moment, groff's hands are kind of tied.  To get this feature to
>> Just Work(TM) with no user involvement requires three things to happen.
>>
>> 1.  grotty(1) needs to become a terminfo application.  Lennart Jablonka
>
>[...]
>
>>
>> 2.  Once we have a tricked-out, terminfo-aware grotty, we meet another
>>     problem:
>>
>>     There is no terminfo capability advertising OSC 8 hyperlink support.
>
>[...]
>
>> 3.  Even once we have a grotty(1) that knows whether the terminal device
>>     can render hyperlinks or not, we have yet another problem:
>
>[...]
>
>>     Thus, the formatted content of a document can depend on
>>     properties of the output device in a new way, one more, uh,
>>     "exciting" than the ~1972 binary choice of "is this an nroff device
>>     [~terminal/typewriter]?" or "is this a troff device [typesetter]?",
>>     or the ~1980 parameter "what is the name of the output device?"
>>     (such as [Kernighan troff] "post", "l202", or [groff] "ps", "pdf",
>>     "utf8").
>
>
>Hmmmm, that sounds not good at all.  How about moving this to man(1)?
>That is, man(1) knows whether it is being piped or not, and thus can
>tell groff(1) to do OSC8 or not.  And even for the case of the terminal,
>it is in a better position to pass the information to groff(1); we'd
>still need points 1 (modified for man(1)) and 2, but not 3, which is
>very ugly.

Doesn't man(1) have most of the same problem?  It needs to know whether 
the terminal emulator supports OSC 8, and I'm not aware of a way that it 
could discover that at the moment; it's not just a question of whether 
it's piped.  I don't think that "put it in man-db's configuration file" 
or "require a command-line option" would be particularly friendly 
solutions to that problem.

If points 1 and 2 were handled in groff, then I wouldn't be necessarily 
opposed to having man(1) tell the formatter that rendered hyperlinks are 
acceptable, but it's not an area I'm all that familiar with.  I'd be 
happy to review patches provided that they retain compatibility with 
reasonably old groff versions (man-db currently supports groff >= 1.21).

I could of course have man(1) unconditionally pass -rU0 to groff until 
the problem is resolved properly, which would at least preserve existing 
behaviour for users of unreleased groff 1.24.  I'm not sure whether that 
would be considered as playing Core War with the manual page system ...

-- 
Colin Watson (he/him)                              [cjwatson@debian.org]

