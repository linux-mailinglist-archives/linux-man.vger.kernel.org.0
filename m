Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE65E27AF3F
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 15:41:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726576AbgI1Nl1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 09:41:27 -0400
Received: from foss.arm.com ([217.140.110.172]:51812 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726485AbgI1Nl1 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 28 Sep 2020 09:41:27 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EBDF81063;
        Mon, 28 Sep 2020 06:41:26 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4690F3F881;
        Mon, 28 Sep 2020 06:41:26 -0700 (PDT)
Date:   Mon, 28 Sep 2020 14:41:23 +0100
From:   Dave Martin <Dave.Martin@arm.com>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 1/2] system_data_types.7: Document size_t
Message-ID: <20200928134122.GG6642@arm.com>
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
 <20200918112755.21428-2-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200918112755.21428-2-colomar.6.4.3@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Sep 18, 2020 at 01:27:55PM +0200, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 103 +++++++++++++++++++++++++++++++++++++--
>  1 file changed, 99 insertions(+), 4 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 84fea85b9..041e7e243 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7

The distinction might not be worth highlighting here, but types like
size_t are a bit special in that they come from the C standards and
assumptions about them are really built into the compiler.

The system can define its own size_t, but it had better be equivalent
to the compiler's definition otherwise bad things will
happen...


> @@ -92,6 +92,101 @@ See also:
>  .\".I siginfo_t
>  .\"type in this page.
>  .TP
> +.I size_t
> +.IP
> +Include:
> +.I <stddef.h>
> +or

Where does this arbitrary-looking list of headers come from?

From the C standards at least, <stddef.h> seems to be the canonical
header for this type.


> +.IR <sys/types.h> ;
> +or
> +.I <aio.h>
> +or
> +.I <glob.h>
> +or
> +.I <grp.h>
> +or
> +.I <iconv.h>
> +or
> +.I <monetary.h>
> +or
> +.I <mqueue.h>

[...]

Cheers
---Dave
