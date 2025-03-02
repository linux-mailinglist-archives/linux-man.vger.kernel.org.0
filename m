Return-Path: <linux-man+bounces-2565-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A4AA4B558
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 23:50:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 92DAF188D503
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 22:50:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 665141CAA90;
	Sun,  2 Mar 2025 22:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=finder.org header.i=@finder.org header.b="x84Bhqyf"
X-Original-To: linux-man@vger.kernel.org
Received: from greenhill.hpalace.com (greenhill.hpalace.com [192.155.80.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F5341CA84
	for <linux-man@vger.kernel.org>; Sun,  2 Mar 2025 22:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.155.80.58
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740955813; cv=none; b=rlazVsn/49qCCR9Y9CzN8lzoNKFRUZIUAu5ZX624Ohyc0QAKxO6IpFUn9DgB5rFpFNf4f1pTgTHcOkEUdvZw4qnW9jnHM/M6htBR/QA6EYV/azcel8LTF1NYVj4g7Q3b/W3mBBJpSbevjUgu6+wmn+g2ZVoc6IVwsVPlVtiXHqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740955813; c=relaxed/simple;
	bh=ftPuOmXh4pt5Fz0/3DK1lYmTrOSaf18aM+ZXzwrg6E8=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=s4NVnpBaoz3mA6VpimIXR6Q4IpVBluNAziWE1RJfXPnN+AlUqUl8kcvdVOuawCDYXZSwAyT+BlPY5oK6xo6gDfjcDMOjQF7GSrF5uqSnXwV59B24DNwbVGdEgkrk7LwnwyKBBzkK1fwMTbSmHeQat7GuH2o/Hbb3bFqqyveCwoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=finder.org; spf=pass smtp.mailfrom=finder.org; dkim=pass (2048-bit key) header.d=finder.org header.i=@finder.org header.b=x84Bhqyf; arc=none smtp.client-ip=192.155.80.58
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=finder.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=finder.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=finder.org; s=2018;
	t=1740955809; bh=ftPuOmXh4pt5Fz0/3DK1lYmTrOSaf18aM+ZXzwrg6E8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=x84BhqyfLW2YGoa0rkcXoTFgDuRXprUcwxuCrZX5sWqhGd/DaeAdS3OZOoqNpgctN
	 GVFqJZ8Wn/V0sWfogZNhZuG2pp6kEmqDJIEqq83SL+2iRnqXJ8RXEi8cb/S8S1bzwA
	 V9Ee+KCaFoppbMZhmQ4qXLKaq/8sJjs7xEXKK3gGxVGanykxVMEoyCZmJzqwVRx7iw
	 F6W6H94n94RvV+YR5jB1bC5Lb26OfQKyaSenhsGxbhtY9PQGjzZyRhFH3BwbTe+Tz9
	 RMClmT4YvnS4MkYukAmExUerTY1R7l9IkKthXOiStGah5mz+BuCWb+gp0RxPbxR+88
	 gvgTn92KqkdTQ==
Received: from mail.finder.org (unknown [192.155.80.58])
	by greenhill.hpalace.com (Postfix) with ESMTPSA id DF9E31DA6;
	Sun,  2 Mar 2025 22:50:09 +0000 (UTC)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Sun, 02 Mar 2025 14:50:09 -0800
From: Jared Finder <jared@finder.org>
To: =?UTF-8?Q?G=C3=BCnther_Noack?= <gnoack3000@gmail.com>
Cc: Alexjandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
 =?UTF-8?Q?Hanno_B=C3=B6ck?= <hanno@hboeck.de>
Subject: Re: [PATCH man v3 1/2] TIOCLINUX.2const: Restructure documentation
 for TIOCL_SETSEL selection modes
In-Reply-To: <20250302194331.5135-5-gnoack3000@gmail.com>
References: <20250302194331.5135-3-gnoack3000@gmail.com>
 <20250302194331.5135-5-gnoack3000@gmail.com>
Message-ID: <a8b66420ad75307c2c0a8803df021920@finder.org>
X-Sender: jared@finder.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit

On 2025-03-02 11:43, Günther Noack wrote:
> * Indent the documented selection modes into tagged paragraphs.
> * Document constants from the header file (tiocl.h) instead of numbers.
> * Clarify expansion semantics as suggested by Jared Finder.
> 
> Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> ---
>  man/man2const/TIOCLINUX.2const | 25 ++++++++++++++++++++-----
>  1 file changed, 20 insertions(+), 5 deletions(-)
> 
> diff --git a/man/man2const/TIOCLINUX.2const 
> b/man/man2const/TIOCLINUX.2const
> index c0acdd0ea..f2c8d0720 100644
> --- a/man/man2const/TIOCLINUX.2const
> +++ b/man/man2const/TIOCLINUX.2const
> @@ -65,11 +65,26 @@ are the ending
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
> +Select word-by-word,
> +expanding the selection outwards to align with word boundaries.
> +The indicated screen characters are highlighted
> +and saved in a kernel buffer.
> +.TP
> +.B TIOCL_SELLINE
> +Select line-by-line,
> +expanding the selection outwards to select full lines.
> +The indicated screen characters are highlighted
> +and saved in a kernel buffer.
> +.RE
>  .IP
>  Since Linux 6.7, using this subcode requires the
>  .B CAP_SYS_ADMIN

No additional comments from me, this looks good.

   -- MJF

