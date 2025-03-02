Return-Path: <linux-man+bounces-2564-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A587DA4B557
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 23:49:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BD3657A6187
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 22:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54FF11CAA90;
	Sun,  2 Mar 2025 22:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=finder.org header.i=@finder.org header.b="YTkFJw+H"
X-Original-To: linux-man@vger.kernel.org
Received: from greenhill.hpalace.com (greenhill.hpalace.com [192.155.80.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55501CA84
	for <linux-man@vger.kernel.org>; Sun,  2 Mar 2025 22:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.155.80.58
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740955767; cv=none; b=dKLnl2CyihtSM6piwPhkAhRF32k4Rjz2OiXGLtmavZoz9y1WPYwsIpodAv4/1kaGCAaPHazkoXCmq/F2SHUBIuSn/UOvNvuyWTQKM+Det079CcU9dgdt+m+I3VCi5H3ypoEtENxM6Y0w4cIJsBwH/RZIgiBL9WJRmEnPbJTct0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740955767; c=relaxed/simple;
	bh=+3QKFaZMWrnh/GpJzOJ8q66neazocX0eAKjtdotxmHI=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=S73jZEd2mMGHj34ivCiFhq0CEA//iIPGdq0DdOeLUsSwNIHifmnTdcVNKhLHdQRs+kDjEIUnDEmGyUsZkfbaz4fD2/UvuqKqXzqF1wutO4iadt58/t3wvASHMhGN+mHN72/xHtXUOilXGGVSLfDOEoQBlYMtIeadG8CGhSV6OFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=finder.org; spf=pass smtp.mailfrom=finder.org; dkim=pass (2048-bit key) header.d=finder.org header.i=@finder.org header.b=YTkFJw+H; arc=none smtp.client-ip=192.155.80.58
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=finder.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=finder.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=finder.org; s=2018;
	t=1740955758; bh=+3QKFaZMWrnh/GpJzOJ8q66neazocX0eAKjtdotxmHI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=YTkFJw+H/GSCEnb7TRmqhaIp3yYOWbRfWp/lkX6EzH6yKnwxhNd1rxofCP6Nd79rI
	 lJ3qzQaY7y7Xcg2MfNEmllsmWeadfyxt+xl9M3VdRZMuRkWX5mRvAamZ7VBcVmXvhK
	 WyqNq94Io23dQPXaS/ijndu85qbDXXr3BBR8TcE6v7DQQVLqlLS0VMrJQ6IgmLNa94
	 2OyLhYd/VxPaaI918oyxjczJr6l1wrePIUIftsDkCK1Kp773JBxaH0y+ufyTJ4MBU0
	 Mj4CRHVjRRYUmwpDTIiHSR9LJJtPx/VT9CZR6WUPnks4GtPEQwW1eAqK27CknvQU6t
	 AMqplS/SZQsWg==
Received: from mail.finder.org (unknown [192.155.80.58])
	by greenhill.hpalace.com (Postfix) with ESMTPSA id 501121DA6;
	Sun,  2 Mar 2025 22:49:18 +0000 (UTC)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Sun, 02 Mar 2025 14:49:18 -0800
From: Jared Finder <jared@finder.org>
To: =?UTF-8?Q?G=C3=BCnther_Noack?= <gnoack3000@gmail.com>
Cc: Alexjandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
 =?UTF-8?Q?Hanno_B=C3=B6ck?= <hanno@hboeck.de>, Jann Horn <jannh@google.com>,
 Jiri Slaby <jirislaby@kernel.org>, jwilk@jwilk.net
Subject: Re: [PATCH man v3 2/2] TIOCLINUX.2const: Document missing
 TIOCL_SETSEL selection modes
In-Reply-To: <20250302194331.5135-6-gnoack3000@gmail.com>
References: <20250302194331.5135-3-gnoack3000@gmail.com>
 <20250302194331.5135-6-gnoack3000@gmail.com>
Message-ID: <f9e457a0a6f5fa02eff3ee61a1f4fe84@finder.org>
X-Sender: jared@finder.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit

On 2025-03-02 11:43, Günther Noack wrote:
> Documents the following TIOCL_SETSEL sub-operations:
> 
> * TIOCL_SELPOINTER
> * TIOCL_SELCLEAR
> * TIOCL_SELMOUSEREPORT
> 
> These previously undocumented selection modes for the Linux console
> are implemented in drivers/tty/vt/selection.c.  The name "selection
> mode" is slightly misleading as not all of them actually manipulate
> the kernel's mouse selection buffer.
> 
> Includes clarified semantics pointed out by Jared Finder.
> 
> Cc: Jared Finder <jared@finder.org>
> Cc: Hanno Böck <hanno@hboeck.de>
> Cc: Jann Horn <jannh@google.com>
> Cc: Jiri Slaby <jirislaby@kernel.org>
> Cc: jwilk@jwilk.net
> Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> ---
>  man/man2const/TIOCLINUX.2const | 34 ++++++++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/man/man2const/TIOCLINUX.2const 
> b/man/man2const/TIOCLINUX.2const
> index f2c8d0720..f1021ce99 100644
> --- a/man/man2const/TIOCLINUX.2const
> +++ b/man/man2const/TIOCLINUX.2const
> @@ -84,6 +84,40 @@ Select line-by-line,
>  expanding the selection outwards to select full lines.
>  The indicated screen characters are highlighted
>  and saved in a kernel buffer.
> +.TP
> +.B TIOCL_SELPOINTER
> +Show the pointer at position
> +.RI ( xs ,\~ ys )
> +or
> +.RI ( xe ,\~ ye ),
> +whichever is greater.
> +.TP
> +.B TIOCL_SELCLEAR
> +Remove the current selection highlight, if any,
> +from the console holding the selection.
> +.IP
> +This does not affect the stored selected text.
> +.TP
> +.B TIOCL_SELMOUSEREPORT
> +Make the terminal report
> +.RI ( xs ,\~ ys )
> +as the current mouse location
> +using the
> +.BR xterm (1)
> +mouse tracking protocol
> +(see
> +.BR console_codes (4)).
> +The lower 4 bits of
> +.I sel_mode
> +.RB ( TIOCL_SELBUTTONMASK )
> +indicate the desired button press and
> +modifier key information for the mouse event.
> +.\" 
> <https://invisible-island.net/xterm/ctlseqs/ctlseqs.html#h3-Normal-tracking-mode>
> +.IP
> +If mouse reporting is not enabled for the terminal,
> +this operation yields an
> +.B EINVAL
> +error.
>  .RE
>  .IP
>  Since Linux 6.7, using this subcode requires the

No additional comments from me, this looks good.

   -- MJF

