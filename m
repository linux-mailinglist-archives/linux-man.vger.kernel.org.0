Return-Path: <linux-man+bounces-2504-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EE6A40FC9
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2025 17:35:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA2333B69EA
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2025 16:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87D616F099;
	Sun, 23 Feb 2025 16:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=finder.org header.i=@finder.org header.b="wmg0QcDs"
X-Original-To: linux-man@vger.kernel.org
Received: from greenhill.hpalace.com (greenhill.hpalace.com [192.155.80.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E044A95C
	for <linux-man@vger.kernel.org>; Sun, 23 Feb 2025 16:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.155.80.58
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740328519; cv=none; b=XSPCvePRDClymUv2Pdb21ASntwjjoX/+vV6Dc/KXWdsKgfXZnb8NqIodiUNG73KnM3f1VvqCEInkoNpvKfTr/GdD3607xk3i22jgRnBzmEB5NYl7PIrEo0yIxdRSw5cRGP0KNMs+7kMrE2D+MCqDgoXvl1oFTUQG0B/Z2mP9n9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740328519; c=relaxed/simple;
	bh=mwd5E3Bc8gqs+By8oRWN9jfkV43InGYzC8BFV5e7YB0=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=jY+FWU976vdoovw+fezrtsTxjBFoVGHQkdxqutMB5MATMHGGKJlr1NokZgrlhaFasNpE1Fgp4veLIz2R51EF4TuY+Qq1FwjMWFWSfYcfKplWUdU2y7eGTAS4fZWhrbK2ApQvgbotkd6QPPmjGxSBxrT3Uo6nK3tdhZQ01yiMC30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=finder.org; spf=pass smtp.mailfrom=finder.org; dkim=pass (2048-bit key) header.d=finder.org header.i=@finder.org header.b=wmg0QcDs; arc=none smtp.client-ip=192.155.80.58
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=finder.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=finder.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=finder.org; s=2018;
	t=1740328516; bh=mwd5E3Bc8gqs+By8oRWN9jfkV43InGYzC8BFV5e7YB0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=wmg0QcDsDjh1aCWOSs7ufw6Riggip8vGX2JKfHOxX7raQq2ylq99JEC86x4MO0Hh8
	 wE6dXMtlUlNWkdKWrrDHvd0wsJl0fFbkGvs/hlNhe1E+Hy3PSuhRIOlME2ngIdyONO
	 gjuMK5vNfsm+V+A4GSmvWHR8P0ptzrvh7d6OaGb/psU7/FWf1/d3qupXohfyiuQmRL
	 I/8nFtlWOqfywO4Y6RJGnGVh8d9UXtN+KdfcZNiS8aUKpt6zCrnBU4zaCVyrWZe1a6
	 IuRdA8i3uuD/ifrvK5uOwjnQpMpK9w6LDJFLvMbBW23EvpxAbvXxm4V8Nv4QwEv9Kk
	 t/SAsVFbrwM5w==
Received: from mail.finder.org (unknown [192.155.80.58])
	by greenhill.hpalace.com (Postfix) with ESMTPSA id 64F3EC68;
	Sun, 23 Feb 2025 16:35:16 +0000 (UTC)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Sun, 23 Feb 2025 08:35:16 -0800
From: Jared Finder <jared@finder.org>
To: =?UTF-8?Q?G=C3=BCnther_Noack?= <gnoack3000@gmail.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org,
 =?UTF-8?Q?Hanno_B=C3=B6ck?= <hanno@hboeck.de>, Jann Horn <jannh@google.com>,
 Jiri Slaby <jirislaby@kernel.org>, jwilk@jwilk.net
Subject: Re: [PATCH man 1/1] TIOCLINUX.2const: Document TIOCL_SETSEL selection
 modes
In-Reply-To: <20250223091342.35523-2-gnoack3000@gmail.com>
References: <20250223091342.35523-1-gnoack3000@gmail.com>
 <20250223091342.35523-2-gnoack3000@gmail.com>
Message-ID: <11238d813065baceaf2a8b84e24eedb8@finder.org>
X-Sender: jared@finder.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit

On 2025-02-23 01:13, Günther Noack wrote:
> These previously undocumented selection modes for the Linux console
> are implemented in drivers/tty/vt/selection.c.
> 
> Cc: Jared Finder <jared@finder.org>
> Cc: Hanno Böck <hanno@hboeck.de>
> Cc: Jann Horn <jannh@google.com>
> Cc: Jiri Slaby <jirislaby@kernel.org>
> Cc: jwilk@jwilk.net
> Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> ---
>  man/man2const/TIOCLINUX.2const | 48 ++++++++++++++++++++++++++++++----
>  1 file changed, 43 insertions(+), 5 deletions(-)
> 
> diff --git a/man/man2const/TIOCLINUX.2const 
> b/man/man2const/TIOCLINUX.2const
> index c0acdd0ea..27758584e 100644
> --- a/man/man2const/TIOCLINUX.2const
> +++ b/man/man2const/TIOCLINUX.2const
> @@ -65,11 +65,49 @@ are the ending
>  column and row.
>  (Upper left corner is row=column=1.)
>  .I sel_mode
> -is 0 for character-by-character selection,
> -1 for word-by-word selection,
> -or 2 for line-by-line selection.
> -The indicated screen characters are highlighted and saved
> -in a kernel buffer.
> +may be one of the following operations:
> +.RS
> +.TP
> +.B TIOCL_SELCHAR
> +Select character-by-character.
> +The indicated screen characters are highlighted
> +and saved in a kernel buffer.
> +.TP
> +.B TIOCL_SELWORD
> +Select word-by-word.
> +The indicated screen characters are highlighted
> +and saved in a kernel buffer.
> +.TP
> +.B TIOCL_SELLINE
> +Select line-by-line.
> +The indicated screen characters are highlighted
> +and saved in a kernel buffer.
> +.TP
> +.B TIOCL_SELPOINTER
> +Show the pointer at position
> +.RI ( xe ", " ye ).
> +.TP

Wouldn't it be appropriate to call out here that this specific code is 
not intended to be protected by CAP_SYS_ADMIN?

> +.B TIOCL_SELCLEAR
> +Remove the current selection highlight, if any,
> +from the console holding the selection.
> +.TP

And this one too?

> +.B TIOCL_SELMOUSEREPORT
> +Report
> +.RI ( xs ", " ys )
> +as the current mouse location.
> +In this selection mode,
> +the lower 4 bits of
> +.I sel_mode
> +.RB ( TIOCL_SELBUTTONMASK )
> +may additionally be set to indicate the desired button press and
> +modifier key information for the mouse event.
> +.\" 
> https://invisible-island.net/xterm/ctlseqs/ctlseqs.html#h3-Normal-tracking-mode
> +.IP
> +If mouse reporting is not enabled for the terminal,
> +this operation yields an
> +.B EINVAL
> +error.
> +.RE
>  .IP
>  Since Linux 6.7, using this subcode requires the
>  .B CAP_SYS_ADMIN

   -- MJF

