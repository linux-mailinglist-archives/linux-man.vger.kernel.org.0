Return-Path: <linux-man+bounces-2388-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C1918A30FC0
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 16:27:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C9541882228
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 15:27:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14BEC252918;
	Tue, 11 Feb 2025 15:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b="K8n3ZcGH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-8fa8.mail.infomaniak.ch (smtp-8fa8.mail.infomaniak.ch [83.166.143.168])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31296253326
	for <linux-man@vger.kernel.org>; Tue, 11 Feb 2025 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=83.166.143.168
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739287657; cv=none; b=doA8L0Mk00hyJS6cM6n1kTUg2ed6V0VdpZzm3/wrixMW6swkVNbMyeamKwTiK6/xfezQq8Qk56MRQ/4y3FMeQHACI1jsa5vLzhAvrZ9EO4DKBDDTxx41vCphIkFsrEf2zftjz1ebzi6f8PZR9IjNn37d/CNluUBCQzc9mAfkwZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739287657; c=relaxed/simple;
	bh=kWTtxQVrKConfwTAlQFCjUwbPtW/PdbSVcS+IchiLDw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R0fhzo0QSMqJpKksJ4x3OrZmbTG4jwmDM4P3SMsbhZrP46jEdezrbbQjjA11iRO3iyyuQRnX+TC1pUkT1V83Ig+ySwlGTDfUIOZ/rHn3/NG+NkPMmYUXBGrn/M6ChLrGHs0ONXnfGwg++yHbZ/lKJz9e6JESWvQGX8iB0T+ZQxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net; spf=pass smtp.mailfrom=digikod.net; dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b=K8n3ZcGH; arc=none smtp.client-ip=83.166.143.168
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=digikod.net
Received: from smtp-3-0000.mail.infomaniak.ch (smtp-3-0000.mail.infomaniak.ch [10.4.36.107])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YslRw1dx3zRf8;
	Tue, 11 Feb 2025 16:17:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=digikod.net;
	s=20191114; t=1739287052;
	bh=p1zuxEihrnjNC82+T9NtIGxS+saUSJKm1xCyiLMo7yo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K8n3ZcGHTLsbVnm/9ObmaLdoY0hoVTRfvtXySszJEAXG07pA/PcDdmv3xiYkpUuDg
	 akTtkMOg6Zp2dVMAy0NJPZva0xqVpYbZX6cVYbIA81qakDeDa9BUauaEqaDjw/EDA1
	 cJJENcKGIUOCHW+Z/OXVlhP1CYRE8iSxIfRHl3nk=
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4YslRv5H2szBCt;
	Tue, 11 Feb 2025 16:17:31 +0100 (CET)
Date: Tue, 11 Feb 2025 16:17:30 +0100
From: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: linux-security-module@vger.kernel.org, 
	Tahera Fahimi <fahimitahera@gmail.com>, Tanya Agarwal <tanyaagarwal25699@gmail.com>, 
	Daniel Burgener <dburgener@linux.microsoft.com>, tools@kernel.org, linux-doc@vger.kernel.org, 
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] landlock: Minor typo and grammar fixes in IPC
 scoping documentation
Message-ID: <20250211.Ree5bu6Eph2p@digikod.net>
References: <20250124154445.162841-1-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250124154445.162841-1-gnoack@google.com>
X-Infomaniak-Routing: alpha

On Fri, Jan 24, 2025 at 03:44:44PM +0000, Günther Noack wrote:
> * Fix some whitespace, punctuation and minor grammar
> * Add a missing sentence about the minimum ABI version,
>   to stay in line with the section next to it
> 
> Cc: Mickaël Salaün <mic@digikod.net>
> Cc: Tahera Fahimi <fahimitahera@gmail.com>
> Cc: Tanya Agarwal <tanyaagarwal25699@gmail.com>
> Signed-off-by: Günther Noack <gnoack@google.com>

Looks good, thanks!

I'm going to take this patch in my tree with the changes explained
below. You can send a v2 with the second patch according to the reviews.

As a side note, applying the patch series from this thread with b4
doesn't work because they apply to different repositories.

Dealing with duplicated doc in two repositories is not practical and
adds work to everyone...  Could we move the non-libc syscall man pages
to the kernel repository?

> ---
>  Documentation/userspace-api/landlock.rst | 4 ++--
>  include/uapi/linux/landlock.h            | 6 ++++--
>  2 files changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/userspace-api/landlock.rst b/Documentation/userspace-api/landlock.rst
> index d639c61cb472..ca8b325d53e5 100644
> --- a/Documentation/userspace-api/landlock.rst
> +++ b/Documentation/userspace-api/landlock.rst
> @@ -329,11 +329,11 @@ non-sandboxed process, we can specify this restriction with
>  A sandboxed process can connect to a non-sandboxed process when its domain is
>  not scoped. If a process's domain is scoped, it can only connect to sockets
>  created by processes in the same scope.
> -Moreover, If a process is scoped to send signal to a non-scoped process, it can
> +Moreover, if a process is scoped to send signal to a non-scoped process, it can
>  only send signals to processes in the same scope.
>  
>  A connected datagram socket behaves like a stream socket when its domain is
> -scoped, meaning if the domain is scoped after the socket is connected , it can
> +scoped, meaning if the domain is scoped after the socket is connected, it can
>  still :manpage:`send(2)` data just like a stream socket.  However, in the same
>  scenario, a non-connected datagram socket cannot send data (with
>  :manpage:`sendto(2)`) outside its scope.
> diff --git a/include/uapi/linux/landlock.h b/include/uapi/linux/landlock.h
> index 33745642f787..048a2c77c4eb 100644
> --- a/include/uapi/linux/landlock.h
> +++ b/include/uapi/linux/landlock.h
> @@ -268,7 +268,7 @@ struct landlock_net_port_attr {
>   * ~~~~~~~~~~~~~~~~
>   *
>   * These flags enable to restrict a sandboxed process to a set of network
> - * actions. This is supported since the Landlock ABI version 4.
> + * actions. This is supported since Landlock ABI version 4.

If that's OK with you, I'll move this sentence to a standalone paragraph
like the one you added below:

+ * actions.
+ *
+ * This is supported since Landlock ABI version 4.

>   *
>   * The following access rights apply to TCP port numbers:
>   *
> @@ -291,11 +291,13 @@ struct landlock_net_port_attr {
>   * Setting a flag for a ruleset will isolate the Landlock domain to forbid
>   * connections to resources outside the domain.
>   *
> + * This is supported since Landlock ABI version 6.
> + *
>   * Scopes:
>   *
>   * - %LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET: Restrict a sandboxed process from
>   *   connecting to an abstract UNIX socket created by a process outside the
> - *   related Landlock domain (e.g. a parent domain or a non-sandboxed process).
> + *   related Landlock domain (e.g., a parent domain or a non-sandboxed process).
>   * - %LANDLOCK_SCOPE_SIGNAL: Restrict a sandboxed process from sending a signal
>   *   to another process outside the domain.
>   */
> -- 
> 2.48.1.262.g85cc9f2d1e-goog
> 
> 

