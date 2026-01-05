Return-Path: <linux-man+bounces-4636-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E58CF50CA
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 18:44:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1D8AD30F6ED4
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 17:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D157A329E5D;
	Mon,  5 Jan 2026 17:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b="oVszWiXg"
X-Original-To: linux-man@vger.kernel.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E188433A036
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 17:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.229.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767634780; cv=none; b=gQYskHK+Zz1lbDg7WKNV/xjNbbflcquA5nfyYewbg+AYCcWm5lTbARL27chmcEjFVzIe7GCKoByT5pU3uJqAN2IIiRM+JSJlBSpJYNw1bNbtjWkHYUAaQ1lGR0Xvafqkt1CktC92BEYKazxa4XJFIYXSsNFmwXB23jaoPwikCvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767634780; c=relaxed/simple;
	bh=BOygBAFI7QLKykSGvPZhX4nWCCjj8Sv0N+BrEVudMvM=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NFE3QBz7Qyzln8ykCBxtdbSh5usXsiMKqKDOBOqqON6x1jwFr0lnzXuzQZHar3loJLXxQNtvO2xibevTPrI4RyZJrI5zQ74Uaeh9htP7ZQp6QS6IBYvLnb9vVjxLKlpCxkbXPi3Ico5OkTwYkXgAFi3DeE5k1VPWh4CeyDY00XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org; spf=pass smtp.mailfrom=treblig.org; dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b=oVszWiXg; arc=none smtp.client-ip=46.235.229.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=treblig.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=Content-Type:MIME-Version:Message-ID:Subject:From:Date:From
	:Subject; bh=SX9Es/SM1ypW6rI0UBH0PlZYrOtBJJOsuoDP/Rlxdw4=; b=oVszWiXg1eAFT1ad
	eP1G3Ck4imFgcnmfTWr96D3q2fKsiNwANQU+rXOxYF16ZAsm1f7o73OfNxDqWo4I0BS0b772b9IsB
	cauLYvvzSX1zS6ZV4F/6F4r9BB/xsCFJZ46Zp2/JScRgjKty6k7RhLj+K5DSJHKa+PYFRi2NnH1KL
	ZOIWARv0kA74gfYO9Cm4NEKq2FuhY+GaiYoBj4+fUqtstLJrgCGJm6InJuPQyaS47QPJIXXIns0yo
	C6ou8Em598RcAslpsMguzdzdBolZhym7iqvcOJ+6Al/qa1DU/Qdpri44hcNooFgRsrdOaYBsxiM/Q
	HIkzAoXPKbraSEfwhA==;
Received: from dg by mx.treblig.org with local (Exim 4.98.2)
	(envelope-from <dg@treblig.org>)
	id 1vcoYL-0000000CVXB-1pOb;
	Mon, 05 Jan 2026 17:39:37 +0000
Date: Mon, 5 Jan 2026 17:39:37 +0000
From: "Dr. David Alan Gilbert" <dave@treblig.org>
To: alx@kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man5/gai.conf: Document glibc label additions
Message-ID: <aVv3WTIdZUuVFKKC@gallifrey>
References: <20260105173904.219815-1-dg@treblig.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <20260105173904.219815-1-dg@treblig.org>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/6.12.48+deb13-amd64 (x86_64)
X-Uptime: 17:39:28 up 70 days, 17:15,  2 users,  load average: 0.00, 0.01,
 0.00
User-Agent: Mutt/2.2.13 (2024-03-09)

* dg@treblig.org (dg@treblig.org) wrote:
> From: "Dr. David Alan Gilbert" <dave@treblig.org>
> 
> Glibc includes some extra entries in its default label table
> as listed in the gai.conf it distributes:
>    https://sourceware.org/git/?p=glibc.git;a=blob;f=posix/gai.conf
> 
> Update the EXAMPLES to include the spec default and the version glibc
> actually uses.
> 
> Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
> ---
> v2
>   Semantic newlines added.

Erp no, they escaped, try again....

> 
>  man/man5/gai.conf.5 | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/man/man5/gai.conf.5 b/man/man5/gai.conf.5
> index ef330995d..0d3c86842 100644
> --- a/man/man5/gai.conf.5
> +++ b/man/man5/gai.conf.5
> @@ -87,6 +87,20 @@ .SH EXAMPLES
>  precedence ::/96          20
>  precedence ::ffff:0:0/96  10
>  .EE
> +.P
> +Glibc includes some extra rules in the label table for site-local addresses,
> +ULA, and Teredo tunnels. Its default label table is:
> +.in +4n
> +.EX
> +label ::1/128        0
> +label ::/0           1
> +label 2002::/16      2
> +label ::/96          3
> +label ::ffff:0:0/96  4
> +label fec0::/10      5
> +label fc00::/7       6
> +label 2001:0::/32    7
> +.EE
>  .in
>  .\" .SH AUTHOR
>  .\" Ulrich Drepper <drepper@redhat.com>
> -- 
> 2.52.0
> 
-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/

