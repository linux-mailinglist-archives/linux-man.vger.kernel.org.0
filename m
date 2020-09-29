Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3268127C287
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 12:37:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725554AbgI2Kh0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 06:37:26 -0400
Received: from foss.arm.com ([217.140.110.172]:39538 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725536AbgI2Kh0 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 29 Sep 2020 06:37:26 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6695E31B;
        Tue, 29 Sep 2020 03:37:25 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9C1023F6CF;
        Tue, 29 Sep 2020 03:37:24 -0700 (PDT)
Date:   Tue, 29 Sep 2020 11:37:21 +0100
From:   Dave Martin <Dave.Martin@arm.com>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     mtk.manpages@gmail.com, g.branden.robinson@gmail.com,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [RFC] system_data_types.7: wfix + ffix
Message-ID: <20200929103719.GJ6642@arm.com>
References: <b49c082f-06fb-aeed-d6c0-6ab619215d43@gmail.com>
 <20200928151646.20271-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200928151646.20271-1-colomar.6.4.3@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Sep 28, 2020 at 05:16:47PM +0200, Alejandro Colomar wrote:
> The previous format/wording for the includes wasn't very clear.
> Improve it a bit following Branden's proposal.
> 
> Reported-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi,
> 
> What do you think about this?
> 
> Would you change something?

Why should the user of a man page have to go look at the comments in the
page source in order to find an explanation of what the notation in the
page means?  That seems very strange.

> 
> Thanks,
> 
> Alex
> 
> 
>  man7/system_data_types.7 | 285 ++++++++++++++++-----------------------
>  1 file changed, 113 insertions(+), 172 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 16930985e..dc4a3bae4 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -33,20 +33,21 @@ system_data_types \- overview of system data types
>  .\"	Each entry will have the following parts:
>  .\"		* Include
>  .\"			The headers will be in the following order:
> +.\"			"Include:"
>  .\"			1) The main header that shall define the type
> -.\"			   according to the C Standard,
> -.\"			   and
> -.\"			   the main header that shall define the type
> -.\"			   according to POSIX,
> -.\"			   in alphabetical order.
> -.\"			;
> -.\"			2) All other headers that shall define the type
> +.\"			   according to the C Standard.
> +.\"			["or"]
> +.\"			2) The main header that shall define the type
> +.\"			   according to POSIX.
> +.\"			[". Alternatively,"]
> +.\"			3) All other headers that shall define the type
>  .\"			   as described in the previous header(s)
>  .\"			   according to the C Standard or POSIX,
>  .\"			   in alphabetical order.
>  .\"			*) All headers that define the type
>  .\"			   *if* the type is not defined by C nor POSIX,
>  .\"			   in alphabetical order.
> +.\"			"."

It is fine to have notes about page maintenance here -- i.e., which
headers should be placed where in the list, and what order to sort them
in.

However, I think that statements about which header(s) provide the type
under which standard need to be in the actual page text.  Programmers
need this information.

>  .\"
>  .\"		* Definition (no "Definition" header)
>  .\"			Only struct/union types will have definition;
> @@ -203,8 +204,8 @@ See also:
>  .RS
>  .br
>  Include:
> -.IR <stdio.h> ;
> -or
> +.IR <stdio.h> .
> +Alternatively,
>  .IR <wchar.h> .
>  .PP
>  An object type used for streams.
> @@ -268,19 +269,14 @@ type in this page.
>  .RS
>  .br
>  Include:
> -.IR <sys/types.h> ;
> -or
> -.I <grp.h>
> -or
> -.I <pwd.h>
> -or
> -.I <signal.h>
> -or
> -.i <stropts.h>
> -or
> -.I <sys/ipc.h>
> -or
> -.I <sys/stat.h>
> +.IR <sys/types.h> .
> +Alternatively,

How does the reader of the page know that "alternatively" here has a
specific and different meaning from "or"?

Can we describe this somehow along the lines of:

The C standards specify this type in the following header:

	<stddef.h>

In POSIX environments, it is sufficient instead to include any of the
following headers, but the resulting program may not be portable to
other C implementations unless <stddef.h> is also included:

	[etc.]


(I'm not sure this is 100% true, but it seems a safe recommendation.
I'm also being lazy by writing "the C standards" and "POSIX
environments" here -- it would be better to be specific.)

[...]

Cheers
---Dave
