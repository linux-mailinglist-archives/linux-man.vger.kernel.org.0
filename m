Return-Path: <linux-man+bounces-657-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F387387E1F6
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 03:02:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 59DFEB235ED
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 02:02:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D0691CFA9;
	Mon, 18 Mar 2024 02:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="efU3g1/H"
X-Original-To: linux-man@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D17F9F7
	for <linux-man@vger.kernel.org>; Mon, 18 Mar 2024 02:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710727365; cv=none; b=oezA6LgwanDM/28IzjL24zxjdG388IGjJRdzVyWBfvZaRPCWJgKSzlza7P2snx8em2G4XT0MSPkBa04etD+kR6lOdQLffZYXbT4801wfVZ6WfLx3dvRNlvVU2svrl2qLrKyX3XFxg0sXbPn8q7G9sXEdWFJZin1Y+JnkojddDgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710727365; c=relaxed/simple;
	bh=aisLmddh3d8ciqPva0N+mMomefLTJh5qimev0/YUa6I=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=ERrn1LYLQzvQQW9sCV8XRWzIFg/C+TO+SYtPVSGwwRu9ipB4nebA3yz1wgufKWACP1YwHZDHsu3VK+xV7tyqJQ2iqQ3lkIu3aUyr2AHMktKaTvD4HALfhJma2aHb9jrYnhVgfTH2ueE70pXASPfVf9UCAW7eqUHyO+zebxkKQh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=efU3g1/H; arc=none smtp.client-ip=198.175.65.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1710727361; x=1742263361;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=aisLmddh3d8ciqPva0N+mMomefLTJh5qimev0/YUa6I=;
  b=efU3g1/HGJfCFCXti/36Hntg/Rj16exjgcsq9KI4h2w/jYUs/jNua7Ez
   Jo6VWdPaE79Kf6+sMfO4fwBa1+fHSjzp061fhu4+G+2AiRYPGUEEMr/gR
   rXpDFrdRnl4szNGSwDFJzUS6oDqN6T625Ik05I+l/+SXPaSvrQN1KMGK7
   eEjxPKckpJGvKyiVyfu1o0eXPMusQ1XReFNRjjSZfJ7o8dcXVNhu1oe/g
   CKfaPb5TALE7RVDgnxwjfzqh5UXnNAhQHhzkXZIrx76xDw+CpEVIE87S+
   7HC5Epdr68aatt7+rVa11uVutslhMk0+AukMXseo9K9eM//xWvVHvPVs9
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11016"; a="5397040"
X-IronPort-AV: E=Sophos;i="6.07,133,1708416000"; 
   d="scan'208";a="5397040"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2024 19:02:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,133,1708416000"; 
   d="scan'208";a="17797290"
Received: from yhuang6-desk2.sh.intel.com (HELO yhuang6-desk2.ccr.corp.intel.com) ([10.238.208.55])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2024 19:02:39 -0700
From: "Huang, Ying" <ying.huang@intel.com>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: <alx@kernel.org>,  <linux-man@vger.kernel.org>,
  <gregory.price@memverge.com>
Subject: Re: [PATCH v2] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
In-Reply-To: <20240315-weighted_interleave-v2-1-b742a48750b0@memverge.com>
	(Svetly Todorov's message of "Fri, 15 Mar 2024 11:02:06 -0700")
References: <20240315-weighted_interleave-v2-1-b742a48750b0@memverge.com>
Date: Mon, 18 Mar 2024 10:00:45 +0800
Message-ID: <87cyrswb76.fsf@yhuang6-desk2.ccr.corp.intel.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ascii

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
> To: alx@kernel.org
> Cc: linux-man@vger.kernel.org
> Cc: gregory.price@memverge.com
> Cc: ying.huang@intel.com
> Signed-off-by: Svetly Todorov <svetly.todorov@memverge.com>
>
> Changes in v2:
> - make flag documentation implementation-agnostic
> - Link to v1: https://lore.kernel.org/r/20240314-weighted_interleave-v1-1-ce85d64db0d4@memverge.com
> ---
>  man2/get_mempolicy.2 |  8 ++++++--
>  man2/mbind.2         | 12 ++++++++++++
>  man2/set_mempolicy.2 | 12 ++++++++++++
>  3 files changed, 30 insertions(+), 2 deletions(-)
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
> index b0e961f9c..4673f077e 100644
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
> @@ -243,6 +244,17 @@ at least 1\ MB or bigger with a fairly uniform access pattern.
>  Accesses to a single page of the area will still be limited to
>  the memory bandwidth of a single node.
>  .TP
> +.B MPOL_WEIGHTED_INTERLEAVE
> +This mode interleaves page allocations across the nodes specified in
> +.I nodemask
> +according to the weights in /sys/kernel/mm/mempolicy/weighted_interleave.
> +For example, if bits 0, 2, and 5 are raised in
> +.IR nodemask ,
> +and the contents of /sys/kernel/mm/mempolicy/weighted_interleave/node0,
> +/sys/.../node2, and /sys/.../node5 are 4, 7, and 9, respectively,
> +then pages in this region will be allocated on nodes 0, 2, and 5
> +in a 4:7:9 ratio.
> +.TP

LGTM for the description of weighted interleave mode.  Thanks!  Feel
free to add

Reviewed-by: "Huang, Ying" <ying.huang@intel.com>

in the future versions for that.

>  .B MPOL_PREFERRED
>  This mode sets the preferred node for allocation.
>  The kernel will try to allocate pages from this
> diff --git a/man2/set_mempolicy.2 b/man2/set_mempolicy.2
> index fc3ad9df8..e2f5e5bf8 100644
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
> @@ -199,6 +200,17 @@ the memory bandwidth of a single node.
>  .\" To be effective the memory area should be fairly large,
>  .\" at least 1 MB or bigger.
>  .TP
> +.B MPOL_WEIGHTED_INTERLEAVE
> +This mode interleaves page allocations across the nodes specified in
> +.I nodemask
> +according to the weights in /sys/kernel/mm/mempolicy/weighted_interleave.
> +For example, if bits 0, 2, and 5 are raised in
> +.IR nodemask ,
> +and the contents of /sys/kernel/mm/mempolicy/weighted_interleave/node0,
> +/sys/.../node2, and /sys/.../node5 are 4, 7, and 9, respectively,
> +then pages in this region will be allocated on nodes 0, 2, and 5
> +in a 4:7:9 ratio.
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

