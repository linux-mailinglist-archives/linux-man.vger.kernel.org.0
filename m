Return-Path: <linux-man+bounces-1477-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7D193297E
	for <lists+linux-man@lfdr.de>; Tue, 16 Jul 2024 16:45:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D1C5F1C22A23
	for <lists+linux-man@lfdr.de>; Tue, 16 Jul 2024 14:45:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D317719D89F;
	Tue, 16 Jul 2024 14:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b="cvR2TBuv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-42ad.mail.infomaniak.ch (smtp-42ad.mail.infomaniak.ch [84.16.66.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BABA19D09B
	for <linux-man@vger.kernel.org>; Tue, 16 Jul 2024 14:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.66.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721140710; cv=none; b=qXh43h3hnvkzT6DRJw3WIrwvFVSBUuSYbK9pIy+Foh8nW68acD6+h9ii8iZiFTZHxia6gT8tZ1cmbnuFnP8TW3vZV8+QlranplngZ+ld1Kt3Cmya1oHgAJdqcWlykVyzO/oEdDu2mJuJk3l1lX7SjvcoimOXcubf0VlgLl2bCMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721140710; c=relaxed/simple;
	bh=loN/wpkrCIqIFKpngnTs+SiQmjGCRFmpM4NgrW6n/nY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s0qW5KNKLOX755ymwyuBVQ6VsyN1Cu8LMQRx5y+e063BrZvxoYATF7wxkt9qyM6hr9m4e8Pl4XYvH+gPpL3h7iBFfTMJAsxORsLDWhdfNYyaL3ohhoJD2b0oCrGXawR2en6VkmIzbLCDoyemIuBzpVv56doVw2BgsjCmPxZ+dIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net; spf=pass smtp.mailfrom=digikod.net; dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b=cvR2TBuv; arc=none smtp.client-ip=84.16.66.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=digikod.net
Received: from smtp-3-0000.mail.infomaniak.ch (smtp-3-0000.mail.infomaniak.ch [10.4.36.107])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4WNhWZ3dJ2zqwR;
	Tue, 16 Jul 2024 16:38:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=digikod.net;
	s=20191114; t=1721140698;
	bh=ZT6SMQ9Vay3wHFndg1eK3Ov9kf1FqJtgj4uSFvqO6Uk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cvR2TBuvA42qTvrWhVEsqinSLnM7uhNt3mNX/j1iO3Apw4ENd5JMZdOIbSc6vETuB
	 a9B5vgvX3ohTxmpiYvqvD5WYfqY2IlEsij4tX9Lf5tRZL7buVEX443+p1RyWcRoHtM
	 zvDWjGPOCD2scjVPX9GBs3LHwljWXqNvYbczo0x8=
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4WNhWY6zXqzyJk;
	Tue, 16 Jul 2024 16:38:17 +0200 (CEST)
Date: Tue, 16 Jul 2024 16:38:16 +0200
From: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: Alejandro Colomar <alx@kernel.org>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/5] landlock_create_ruleset.2: Update docs for
 landlock_ruleset_attr
Message-ID: <20240716.Zeid7zahthei@digikod.net>
References: <20240715155554.2791018-1-gnoack@google.com>
 <20240715155554.2791018-3-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240715155554.2791018-3-gnoack@google.com>
X-Infomaniak-Routing: alpha

On Mon, Jul 15, 2024 at 03:55:51PM +0000, Günther Noack wrote:
> This updates the documentation for struct landlock_ruleset_attr
> in line with the changed kernel documentation (see link below).
> 
> Cc: Alejandro Colomar <alx@kernel.org>
> Cc: Mickaël Salaün <mic@digikod.net>
> Link: https://lore.kernel.org/all/20240711165456.2148590-2-gnoack@google.com/
> Signed-off-by: Günther Noack <gnoack@google.com>

Reviewed-by: Mickaël Salaün <mic@digikod.net>

> ---
>  man/man2/landlock_create_ruleset.2 | 34 ++++++++++++++++++++++++++++--
>  1 file changed, 32 insertions(+), 2 deletions(-)
> 
> diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_ruleset.2
> index 871b91dcb..105e9b062 100644
> --- a/man/man2/landlock_create_ruleset.2
> +++ b/man/man2/landlock_create_ruleset.2
> @@ -51,8 +51,38 @@ is a bitmask of handled filesystem actions
>  .B Filesystem actions
>  in
>  .BR landlock (7)).
> -This enables simply restricting ambient rights
> -(e.g., global filesystem access) and is needed for compatibility reasons.
> +.IP
> +This structure defines a set of
> +.IR "handled access rights" ,
> +a set of actions on different object types,
> +which should be denied by default
> +when the ruleset is enacted.
> +Vice versa,
> +access rights that are not specifically listed here
> +are not going to be denied by this ruleset when it is enacted.
> +.IP
> +For historical reasons, the
> +.B LANDLOCK_ACCESS_FS_REFER
> +right is always denied by default,
> +even when its bit is not set in
> +.IR handled_access_fs .
> +In order to add new rules with this access right,
> +the bit must still be set explicitly
> +(see
> +.B Filesystem actions
> +in
> +.BR landlock (7)).
> +.IP
> +The explicit listing of
> +.I handled access rights
> +is required for backwards compatibility reasons.
> +In most use cases,
> +processes that use Landlock will
> +.I handle
> +a wide range or all access rights that they know about at build time
> +(and that they have tested with a kernel that supported them all).
> +.IP
> +This structure can grow in future Landlock versions.
>  .P
>  .I size
>  must be specified as
> -- 
> 2.45.2.993.g49e7a77208-goog
> 

