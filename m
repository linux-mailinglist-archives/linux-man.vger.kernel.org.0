Return-Path: <linux-man+bounces-2511-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68562A41233
	for <lists+linux-man@lfdr.de>; Mon, 24 Feb 2025 00:19:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5CCB3170275
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2025 23:19:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D5C7201027;
	Sun, 23 Feb 2025 23:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=finder.org header.i=@finder.org header.b="FnRX+Fk+"
X-Original-To: linux-man@vger.kernel.org
Received: from greenhill.hpalace.com (greenhill.hpalace.com [192.155.80.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2582F155A2F
	for <linux-man@vger.kernel.org>; Sun, 23 Feb 2025 23:19:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.155.80.58
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740352744; cv=none; b=Z/uCknwZny8im0Tvphz7C5/SrPT4QSvir37/aEhouueOK+p+zL8GIjkq2LEjPOROnltBA2KYC2v61XtxZTj7zOEXIIPilrGfVo8vGKjbRyOEVICK001EI/J5A6ltErW/BiRQxCdHDoEl7xRpEuAPq3HnjlTQpqewIq4+8iVTXGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740352744; c=relaxed/simple;
	bh=JBz6BE46FArmSwbQIpwwW/PWXBCM8rCSA+gt3UwelkI=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=i60WrET7yF4XW/mdtjygpg29BLZUrF3MnnIE8E5TFVhI45W6IdzEXrZTcB75Dn7RgEDAO0AQ9y7yLN7EynvcdQeyPz6cJOBM+2D01XBGsNQu1ACCrB23J6DJqQMU/bWRVERpkYup5Dj0TkLlx56RYxbUMw7QKNkGu6A5AFaRFhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=finder.org; spf=pass smtp.mailfrom=finder.org; dkim=pass (2048-bit key) header.d=finder.org header.i=@finder.org header.b=FnRX+Fk+; arc=none smtp.client-ip=192.155.80.58
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=finder.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=finder.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=finder.org; s=2018;
	t=1740352742; bh=JBz6BE46FArmSwbQIpwwW/PWXBCM8rCSA+gt3UwelkI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=FnRX+Fk+kdiZNm3jy6KdRFP8BgpcYaQh8v/yGX4XvMn/TR+VNSpVEa5sSV/V8wytd
	 /PW6lNLnWD+UrskA60jnhnn0Z3Kdvy4KoNMSkGpK9UCZx+5t1/R/+E8lKC9lc5Ri2h
	 uJGZLbjAkfpLZz6PNG5YWNLNQtj2O23XYH1UAu627jeQacJcnj9InNKWUDV0PP5/b7
	 ZzLLPsQQi2nyAq4fKXrZUF9xh374SWT04Om5eZllQYZYKtn5OcECY2qVMiQq76O1xt
	 fRsUTiYQvYCj+KqSzNk6TUt49iAuCSyc1HBvFC4dDoyTwdSX6CXGG66a5eud6Shyjl
	 RogGC3+A6v3jw==
Received: from mail.finder.org (unknown [192.155.80.58])
	by greenhill.hpalace.com (Postfix) with ESMTPSA id 5D65BC68;
	Sun, 23 Feb 2025 23:19:02 +0000 (UTC)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Sun, 23 Feb 2025 15:19:02 -0800
From: Jared Finder <jared@finder.org>
To: =?UTF-8?Q?G=C3=BCnther_Noack?= <gnoack3000@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
 =?UTF-8?Q?Hanno_B=C3=B6ck?= <hanno@hboeck.de>, Jann Horn <jannh@google.com>,
 Jiri Slaby <jirislaby@kernel.org>, jwilk@jwilk.net
Subject: Re: [PATCH man v2 2/2] TIOCLINUX.2const: Document missing
 TIOCL_SETSEL selection modes
In-Reply-To: <20250223213642.10042-3-gnoack3000@gmail.com>
References: <20250223213642.10042-1-gnoack3000@gmail.com>
 <20250223213642.10042-3-gnoack3000@gmail.com>
Message-ID: <ef429ddf8a438c47e6fdfbb41b25943f@finder.org>
X-Sender: jared@finder.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit

Similarly to the other part of the patch, feel free to ignore my 
comments if they're not aligned with the usual documentation details.

On 2025-02-23 13:36, Günther Noack wrote:
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
> Cc: Jared Finder <jared@finder.org>
> Cc: Hanno Böck <hanno@hboeck.de>
> Cc: Jann Horn <jannh@google.com>
> Cc: Jiri Slaby <jirislaby@kernel.org>
> Cc: jwilk@jwilk.net
> Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> ---
>  man/man2const/TIOCLINUX.2const | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/man/man2const/TIOCLINUX.2const 
> b/man/man2const/TIOCLINUX.2const
> index 5db3f6ea6..3aa1c7eb2 100644
> --- a/man/man2const/TIOCLINUX.2const
> +++ b/man/man2const/TIOCLINUX.2const
> @@ -82,6 +82,35 @@ and saved in a kernel buffer.
>  Select line-by-line.
>  The indicated screen characters are highlighted
>  and saved in a kernel buffer.
> +.TP
> +.B TIOCL_SELPOINTER
> +Show the pointer at position
> +.RI ( xe ,\~ ye ).

nit: Technically, "at the greater position of start or end".  See how ps 
and pe are swapped if ps > pe in vc_selection().

> +.TP
> +.B TIOCL_SELCLEAR
> +Remove the current selection highlight, if any,
> +from the console holding the selection.

I'd recommend stating explicitly if this affects the stored characters. 
(I believe it does not.)

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

   -- MJF

