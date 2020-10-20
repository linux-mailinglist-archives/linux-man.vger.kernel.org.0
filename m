Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5CC0293A9D
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 14:01:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404580AbgJTMB3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 08:01:29 -0400
Received: from mail.kernel.org ([198.145.29.99]:33978 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2404556AbgJTMB0 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 20 Oct 2020 08:01:26 -0400
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id E50C122253;
        Tue, 20 Oct 2020 12:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1603195285;
        bh=m7yUJ4DTsqo4MdAimqotlN8nOUy7Gs4YTVuOGM8kZiA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=1kmtiETRMzb0fCEzw5xb94YaAzS1vWwA/PFj3lczwhAw5css3pS1lFgfimClzB9vi
         jibZrVEMcZT+yiGGWtCnJt6f5iWVshNcA8FO7+mBlPK+wuwhJx3GNpiLK8UaT8guJL
         zPS4TtNGVDwCP78APV3HDguXkPZZkF1MWmLk+3tg=
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
        id B0E88403C2; Tue, 20 Oct 2020 09:01:20 -0300 (-03)
Date:   Tue, 20 Oct 2020 09:01:20 -0300
From:   Arnaldo Carvalho de Melo <acme@kernel.org>
To:     Alexey Budankov <alexey.budankov@linux.intel.com>
Cc:     Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Andi Kleen <ak@linux.intel.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Ingo Molnar <mingo@redhat.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "linux-security-module@vger.kernel.org" 
        <linux-security-module@vger.kernel.org>,
        "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v1 0/2] doc/admin-guide: update perf-security.rst with
 CAP_PERFMON usage flows
Message-ID: <20201020120120.GA2294271@kernel.org>
References: <161a51d3-7cdf-f9ee-c438-42bb7404693e@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <161a51d3-7cdf-f9ee-c438-42bb7404693e@linux.intel.com>
X-Url:  http://acmel.wordpress.com
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Em Mon, Oct 19, 2020 at 08:15:14PM +0300, Alexey Budankov escreveu:
> 
> Assignment of CAP_PERFMON [1] Linux capability to an executable located
> on a file system requires extended attributes (xattrs) [2] to be supported
> by the file system. Even if the file system supports xattrs an fs device
> should be mounted with permission to use xattrs for files located on the
> device (e.g. without nosuid option [3]). No xattrs support and nosuid
> mounts are quite common in HPC and Cloud multiuser environments thus
> applicability of privileged Perf user groups based on file capabilities
> [4] is limited in that environments. Alternative method to confer Linux
> capabilities into a process does still exist and it is thru creation of
> capabilities-enabled-semi-privileged shell environment. Usage of this
> method to extend privileged Perf user groups approach is documented in
> this patch set as an extension to perf-security.rst admin guide file.
> 
> [1] https://man7.org/linux/man-pages/man7/capabilities.7.html
> [2] https://man7.org/linux/man-pages/man7/xattr.7.html
> [3] https://man7.org/linux/man-pages/man8/mount.8.html
> [4] https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html#privileged-perf-users-groups



Thanks, applied.

- Arnaldo

 
> ---
> Alexey Budankov (2):
>   doc/admin-guide: note credentials consolidation under CAP_PERFMON
>   doc/admin-guide: document creation of CAP_PERFMON privileged shell
> 
>  Documentation/admin-guide/perf-security.rst | 81 ++++++++++++++++++---
>  1 file changed, 70 insertions(+), 11 deletions(-)
> 
> -- 
> 2.24.1
> 

-- 

- Arnaldo
