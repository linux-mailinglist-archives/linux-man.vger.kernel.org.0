Return-Path: <linux-man+bounces-607-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5720D87C736
	for <lists+linux-man@lfdr.de>; Fri, 15 Mar 2024 02:25:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11E0E28252E
	for <lists+linux-man@lfdr.de>; Fri, 15 Mar 2024 01:25:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D426C17E9;
	Fri, 15 Mar 2024 01:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="nfgiAxTJ"
X-Original-To: linux-man@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EA317C8
	for <linux-man@vger.kernel.org>; Fri, 15 Mar 2024 01:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710465950; cv=none; b=VRKlSdgQ10KvxUBM9qkJtL0pn0kreRuQQMtZ6Xy9TF3sOtuF454O1JFWUXhbiNPUAWj0Uhtu9kpT4vLE5jUVffXa2JkJnG4SF3isEzGtAjB8c8sgwB7jy5q+e6dOu6zADhL89NvlWskVDMY700WjHS/PVY2cbhquABW9Ta/tTUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710465950; c=relaxed/simple;
	bh=TJqP6aqRG91XUsym6K7vIDDxbHZihjQEPE4WqwuPQXo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=V/7/0vnbrmuAUwAELYp2wyyPNeBxhhFnzGLKTP7m4xDEnR78ZHd0/lKfAIHLn1bOa6iQRC2ewv1fQ8S1kN+n+xNAm1gZLGqjaAcCwqqdWJ70zfxqy757HPNSsCtCW1NcKNozT6MhRxq5Nq+6OSZt9GkOvR0QnIJmI38mWGMfBuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=nfgiAxTJ; arc=none smtp.client-ip=192.198.163.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1710465948; x=1742001948;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=TJqP6aqRG91XUsym6K7vIDDxbHZihjQEPE4WqwuPQXo=;
  b=nfgiAxTJRVz3GrK4IzzwBXsqW4Uga8YncUf7Lg9HS3urHM0UwrkWkR9r
   i7/9mn/92hBtUhu0uOsXsvMeUTMIOKqmeOgYKLB80c4TdDwg7Q/FbyEkW
   OdtkA4nwgjCoJgR571+KRjoYaY8phbfN12TpevU15jyZ8oaYcwXksTSOa
   Erbo72hIlxTqcq/yxOz1xHQZBaFrdgF/oO1hZOYqvI3nQoSETqg42Hk3M
   Ni18BZeV48t48J6lY8MQyXNiB2j6/aXfDXISLVli7uCzMQZGByQIBWcbu
   pLYBjZ9syXL6/AXTqjzpFMe4swCOSnq/u2q+4U1UwoqrQLDAthSri2JV9
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="5523754"
X-IronPort-AV: E=Sophos;i="6.07,127,1708416000"; 
   d="scan'208";a="5523754"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Mar 2024 18:25:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,127,1708416000"; 
   d="scan'208";a="12415341"
Received: from yhuang6-desk2.sh.intel.com (HELO yhuang6-desk2.ccr.corp.intel.com) ([10.238.208.55])
  by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Mar 2024 18:25:34 -0700
From: "Huang, Ying" <ying.huang@intel.com>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: <alx@kernel.org>,  <linux-man@vger.kernel.org>,
  <gregory.price@memverge.com>
Subject: Re: [PATCH] man2: add MPOL_WEIGHTED_INTERLEAVE descriptions
In-Reply-To: <20240314-weighted_interleave-v1-1-ce85d64db0d4@memverge.com>
	(Svetly Todorov's message of "Thu, 14 Mar 2024 14:59:47 -0700")
References: <20240314-weighted_interleave-v1-1-ce85d64db0d4@memverge.com>
Date: Fri, 15 Mar 2024 09:23:40 +0800
Message-ID: <87wmq41e5f.fsf@yhuang6-desk2.ccr.corp.intel.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ascii

Hi, Svetly,

Thanks for patch!

Svetly Todorov <svetly.todorov@memverge.com> writes:

> ---
> Adding documentation for the new MPOL_WEIGHTED_INTERLEAVE mode in the same
> manpages that mention MPOL_INTERLEAVE; namely, mbind(2), set_mempolicy(2),
> and get_mempolicy(2).
>
> Descriptions were based on the changes introduced in this patch: 
> https://lore.kernel.org/all/20240202170238.90004-4-gregory.price@memverge.com/
>
> Which was upstreamed to 6.9 here:
> https://lore.kernel.org/linux-mm/20240313200532.34e4cff216acd3db8def4637@linux-foundation.org/
>
> Signed-off-by: Svetly Todorov <svetly.todorov@memverge.com>
> ---
>  man2/get_mempolicy.2 |  8 ++++++--
>  man2/mbind.2         | 13 +++++++++++++
>  man2/set_mempolicy.2 | 13 +++++++++++++
>  3 files changed, 32 insertions(+), 2 deletions(-)
>
> diff --git a/man2/get_mempolicy.2 b/man2/get_mempolicy.2
> index 5248f04ba..03550331d 100644
> --- a/man2/get_mempolicy.2
> +++ b/man2/get_mempolicy.2
> @@ -137,7 +137,9 @@ specifies
>  but not
>  .BR MPOL_F_ADDR ,
>  and the thread's current policy is
> -.BR MPOL_INTERLEAVE ,
> +.BR MPOL_INTERLEAVE
> +or
> +.BR MPOL_WEIGHTED_INTERLEAVE ,
>  then
>  .BR get_mempolicy ()
>  will return in the location pointed to by a non-NULL
> @@ -206,7 +208,9 @@ specified
>  but not
>  .B MPOL_F_ADDR
>  and the current thread policy is not
> -.BR MPOL_INTERLEAVE .
> +.BR MPOL_INTERLEAVE
> +or
> +.BR MPOL_WEIGHTED_INTERLEAVE .
>  Or,
>  .I flags
>  specified
> diff --git a/man2/mbind.2 b/man2/mbind.2
> index b0e961f9c..cc994a01e 100644
> --- a/man2/mbind.2
> +++ b/man2/mbind.2
> @@ -105,6 +105,7 @@ argument must specify one of
>  .BR MPOL_DEFAULT ,
>  .BR MPOL_BIND ,
>  .BR MPOL_INTERLEAVE ,
> +.BR MPOL_WEIGHTED_INTERLEAVE ,
>  .BR MPOL_PREFERRED ,
>  or
>  .B MPOL_LOCAL
> @@ -243,6 +244,18 @@ at least 1\ MB or bigger with a fairly uniform access pattern.
>  Accesses to a single page of the area will still be limited to
>  the memory bandwidth of a single node.
>  .TP
> +.B MPOL_WEIGHTED_INTERLEAVE
> +This mode interleaves page allocations across the nodes specified in
> +.I nodemask
> +according to the weights in /sys/kernel/mm/mempolicy/weighted_interleave.
> +That is, if bits 0, 2, and 5 are raised in
> +.IR nodemask ,
> +and the contents of /sys/kernel/mm/mempolicy/weighted_interleave/node0,
> +/sys/.../node2, and /sys/.../node5 are 4, 7, and 9, respectively, then
> +the first 4 pages in this region will be allocated on node 0;
> +the next 7 will be on node 2; and the next 9 on node 5.
> +Subsequent allocations will continue in this pattern.

I prefer to describe the algorithm in more general words instead of
reflecting the current implementation.  Because we may change the
implementation in the future.  May be something like, the proportion of
the number of pages allocated in node 0, 2, 5 will be 4:7:9,
respectively.

--
Best Regards,
Huang, Ying

> +.TP
>  .B MPOL_PREFERRED
>  This mode sets the preferred node for allocation.
>  The kernel will try to allocate pages from this
> diff --git a/man2/set_mempolicy.2 b/man2/set_mempolicy.2
> index fc3ad9df8..a1b11b307 100644
> --- a/man2/set_mempolicy.2
> +++ b/man2/set_mempolicy.2
> @@ -63,6 +63,7 @@ argument must specify one of
>  .BR MPOL_DEFAULT ,
>  .BR MPOL_BIND ,
>  .BR MPOL_INTERLEAVE ,
> +.BR MPOL_WEIGHTED_INTERLEAVE ,
>  .BR MPOL_PREFERRED ,
>  or
>  .B MPOL_LOCAL
> @@ -199,6 +200,18 @@ the memory bandwidth of a single node.
>  .\" To be effective the memory area should be fairly large,
>  .\" at least 1 MB or bigger.
>  .TP
> +.B MPOL_WEIGHTED_INTERLEAVE
> +This mode interleaves page allocations across the nodes specified in
> +.I nodemask
> +according to the weights in /sys/kernel/mm/mempolicy/weighted_interleave.
> +That is, if bits 0, 2, and 5 are raised in
> +.IR nodemask ,
> +and the contents of /sys/kernel/mm/mempolicy/weighted_interleave/node0,
> +/sys/.../node2, and /sys/.../node5 are 4, 7, and 9, respectively, then
> +the first 4 pages in this region will be allocated on node 0;
> +the next 7 will be on node 2; and the next 9 on node 5.
> +Subsequent allocations will continue in this pattern.
> +.TP
>  .B MPOL_PREFERRED
>  This mode sets the preferred node for allocation.
>  The kernel will try to allocate pages from this node first
>
> ---
> base-commit: a4ea5f76215dcf1d8d017eb65ab12919ccf09f3f
> change-id: 20240313-weighted_interleave-e8141ed754f9
>
> Best regards,

