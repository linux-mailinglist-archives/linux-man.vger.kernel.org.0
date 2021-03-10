Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5C7C3332D7
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 02:43:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231464AbhCJBmm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Mar 2021 20:42:42 -0500
Received: from mga11.intel.com ([192.55.52.93]:20603 "EHLO mga11.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229467AbhCJBmk (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 9 Mar 2021 20:42:40 -0500
IronPort-SDR: 73BHovlxDb9Kt+zNGAQUO6tWPnlRFwgGDPDEzC5PdSHdpG1cXRHNxOKuUsoxvNiVHd2vgNiGWQ
 /tDTuNNLjqWA==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="185004310"
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; 
   d="scan'208";a="185004310"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2021 17:42:38 -0800
IronPort-SDR: tqkym2bmInsABOvl/EZ2feMAWIcDuuUohUD82qfdWXz95sCK+eIXnXSvkRECLKS9nnBQP0V3Qv
 e+LE69U/w+nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; 
   d="scan'208";a="599574529"
Received: from yhuang-dev.sh.intel.com (HELO yhuang-dev) ([10.239.159.130])
  by fmsmga006.fm.intel.com with ESMTP; 09 Mar 2021 17:42:31 -0800
From:   "Huang, Ying" <ying.huang@intel.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>, Mel Gorman <mgorman@suse.de>
Subject: Re: [PATCH] man2/set_mempolicy.2: Add mode flag MPOL_F_NUMA_BALANCING
References: <20210301024555.85484-1-ying.huang@intel.com>
Date:   Wed, 10 Mar 2021 09:42:31 +0800
In-Reply-To: <20210301024555.85484-1-ying.huang@intel.com> (Huang Ying's
        message of "Mon, 1 Mar 2021 10:45:55 +0800")
Message-ID: <878s6vyebc.fsf@yhuang-dev.intel.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=ascii
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Huang Ying <ying.huang@intel.com> writes:

> In Linux kernel 5.12, a new mode flag MPOL_F_NUMA_BALANCING is added
> to set_mempolicy() to optimize the page placement among the NUMA nodes
> with the NUMA balancing mechanism even if the memory of the
> applications are bound with MPOL_BIND.  This patch update the man page
> for the new mode flag.
>
> Related kernel commits:
> bda420b985054a3badafef23807c4b4fa38a3dff

Hi, Colomar,

Do you have time to take a look at this patch?  It has been reviewed in
the following thread,

https://lore.kernel.org/lkml/20210120061235.148637-3-ying.huang@intel.com/

Now the corresponding kernel change has been merged by upstream kernel.
Do you have further comments?

Best Regards,
Huang, Ying

> Signed-off-by: "Huang, Ying" <ying.huang@intel.com>
> Cc: "Alejandro Colomar" <alx.manpages@gmail.com>
> Cc: "Michael Kerrisk" <mtk.manpages@gmail.com>
> ---
>  man2/set_mempolicy.2 | 34 ++++++++++++++++++++++++++++------
>  1 file changed, 28 insertions(+), 6 deletions(-)
>
> diff --git a/man2/set_mempolicy.2 b/man2/set_mempolicy.2
> index 6e695fb13..cd543667f 100644
> --- a/man2/set_mempolicy.2
> +++ b/man2/set_mempolicy.2
> @@ -98,6 +98,28 @@ The supported
>  .I "mode flags"
>  are:
>  .TP
> +.BR MPOL_F_NUMA_BALANCING " (since Linux 5.12)"
> +When
> +.I mode
> +is
> +.BR MPOL_BIND ,
> +enable the kernel NUMA balancing for the task if it is supported by
> +the kernel.
> +If the flag isn't supported by the kernel, or is used with
> +.I mode
> +other than
> +.BR MPOL_BIND ,
> +\-1 is returned and
> +.I errno
> +is set to
> +.BR EINVAL .
> +.TP
> +.BR MPOL_F_RELATIVE_NODES " (since Linux 2.6.26)"
> +A nonempty
> +.I nodemask
> +specifies node IDs that are relative to the set of
> +node IDs allowed by the process's current cpuset.
> +.TP
>  .BR MPOL_F_STATIC_NODES " (since Linux 2.6.26)"
>  A nonempty
>  .I nodemask
> @@ -107,12 +129,6 @@ Linux will not remap the
>  when the process moves to a different cpuset context,
>  nor when the set of nodes allowed by the process's
>  current cpuset context changes.
> -.TP
> -.BR MPOL_F_RELATIVE_NODES " (since Linux 2.6.26)"
> -A nonempty
> -.I nodemask
> -specifies node IDs that are relative to the set of
> -node IDs allowed by the process's current cpuset.
>  .PP
>  .I nodemask
>  points to a bit mask of node IDs that contains up to
> @@ -293,6 +309,12 @@ argument specified both
>  .B MPOL_F_STATIC_NODES
>  and
>  .BR MPOL_F_RELATIVE_NODES .
> +Or, the
> +.B MPOL_F_NUMA_BALANCING
> +isn't supported by the kernel, or is used with
> +.I mode
> +other than
> +.BR MPOL_BIND .
>  .TP
>  .B ENOMEM
>  Insufficient kernel memory was available.
