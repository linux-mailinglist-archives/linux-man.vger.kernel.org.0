Return-Path: <linux-man+bounces-2510-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA6AA4122E
	for <lists+linux-man@lfdr.de>; Mon, 24 Feb 2025 00:13:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B91E03A6FA0
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2025 23:13:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB01C1FFC63;
	Sun, 23 Feb 2025 23:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=finder.org header.i=@finder.org header.b="XTiS37lF"
X-Original-To: linux-man@vger.kernel.org
Received: from greenhill.hpalace.com (greenhill.hpalace.com [192.155.80.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3128D8828
	for <linux-man@vger.kernel.org>; Sun, 23 Feb 2025 23:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.155.80.58
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740352424; cv=none; b=boc+oEoBwQUG3xwVHYPMuQiPm8M6m678kTHKO8L5zElw6xk9GRmjXVlgpUGdLNKbnLdFFwtt55fz9Ou/emOldYqQczPIgyhK6eRbBd1HhJX2pIfqpkPQUBagkF9paygbPTgUGUVK564wdDBC0+mhe7hZNRTDFQffRC7isF13M18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740352424; c=relaxed/simple;
	bh=I4qr5G04mcWpGDEwPNIhvstSesN5DA63SyYEN0E4kOo=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=V/YKFDb8Wv2jriIOHjzYTYlz1F6o+POw2t3FxmnLQYVpKE1cI8SN7WDPw5Co246jqDivfJCW7e+pieu3PItaInKvIX4fm5rzDFv6BXfhslattg4zCxA6SqMFg6Zl8dN6QidEbO4OwNhK0ZGqybqfy0zOLLpn5uoG2BFGIHyaXv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=finder.org; spf=pass smtp.mailfrom=finder.org; dkim=pass (2048-bit key) header.d=finder.org header.i=@finder.org header.b=XTiS37lF; arc=none smtp.client-ip=192.155.80.58
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=finder.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=finder.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=finder.org; s=2018;
	t=1740352415; bh=I4qr5G04mcWpGDEwPNIhvstSesN5DA63SyYEN0E4kOo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=XTiS37lFW+8NmOcXCN//msopCC0d2+Fz8Yy50+Pbn5KLJMs2IuVxR5z73+dd6OZvL
	 WU3YHgOUwvBUbKF3bBjDDiKVgFo5CjZ8rJLd9IEDyT9DtlV547ZWepgqN7sZF1K6JV
	 SAG+gYnYvI2RmdNQIafRJv0426KqH+2m0EJZPpL6Zph0Mqww8OrEUj3Uto9U419IcL
	 BBLT2jA8XWgAh6VXO7pOQgnKq0t/Sjcmq2nBXqRlstFb+AKyeULyjySk0q4CYwr7cY
	 cyedyVw/ehGaFLRNYvMR9XqE78stcWacXxU50JHEXZNV/PiRDeR+xSU4NoYns9pTjM
	 m6vre19IsXL1Q==
Received: from mail.finder.org (unknown [192.155.80.58])
	by greenhill.hpalace.com (Postfix) with ESMTPSA id A4BBFC68;
	Sun, 23 Feb 2025 23:13:35 +0000 (UTC)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Sun, 23 Feb 2025 15:13:35 -0800
From: Jared Finder <jared@finder.org>
To: =?UTF-8?Q?G=C3=BCnther_Noack?= <gnoack3000@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH man v2 1/2] TIOCLINUX.2const: Restructure documentation
 for TIOCL_SETSEL selection modes
In-Reply-To: <20250223213642.10042-2-gnoack3000@gmail.com>
References: <20250223213642.10042-1-gnoack3000@gmail.com>
 <20250223213642.10042-2-gnoack3000@gmail.com>
Message-ID: <1094ef00ff08bbede90c01f7a36df293@finder.org>
X-Sender: jared@finder.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit

I'm not a regular kernel developer, so feel free to ignore my 
recommendations if they are not aligned with the level of documentation 
usually provided.

On 2025-02-23 13:36, Günther Noack wrote:
> * Indent the documented selection modes into tagged paragraphs.
> * Document constants from the header file (tiocl.h) instead of numbers.
> 
> Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> ---
>  man/man2const/TIOCLINUX.2const | 23 ++++++++++++++++++-----
>  1 file changed, 18 insertions(+), 5 deletions(-)
> 
> diff --git a/man/man2const/TIOCLINUX.2const 
> b/man/man2const/TIOCLINUX.2const
> index c0acdd0ea..5db3f6ea6 100644
> --- a/man/man2const/TIOCLINUX.2const
> +++ b/man/man2const/TIOCLINUX.2const
> @@ -65,11 +65,24 @@ are the ending
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

I would recommend also saying

> +.TP
> +.B TIOCL_SELWORD
> +Select word-by-word.
> +The indicated screen characters are highlighted
> +and saved in a kernel buffer.

I would recommend also saying something like "The start is expanded 
backward and the end is expanded forwards to select entire words."

> +.TP
> +.B TIOCL_SELLINE
> +Select line-by-line.
> +The indicated screen characters are highlighted
> +and saved in a kernel buffer.
> +.RE

Similarly, mention how the start / end is expanded here too.

>  .IP
>  Since Linux 6.7, using this subcode requires the
>  .B CAP_SYS_ADMIN

   -- MJF

