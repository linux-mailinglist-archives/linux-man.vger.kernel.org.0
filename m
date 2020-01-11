Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A62F213825B
	for <lists+linux-man@lfdr.de>; Sat, 11 Jan 2020 17:20:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730198AbgAKQUn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Jan 2020 11:20:43 -0500
Received: from vmicros1.altlinux.org ([194.107.17.57]:55760 "EHLO
        vmicros1.altlinux.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730168AbgAKQUn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Jan 2020 11:20:43 -0500
X-Greylist: delayed 554 seconds by postgrey-1.27 at vger.kernel.org; Sat, 11 Jan 2020 11:20:42 EST
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
        by vmicros1.altlinux.org (Postfix) with ESMTP id C1A6C72CCEA;
        Sat, 11 Jan 2020 19:11:26 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
        id B08E77CCE30; Sat, 11 Jan 2020 19:11:26 +0300 (MSK)
Date:   Sat, 11 Jan 2020 19:11:26 +0300
From:   "Dmitry V. Levin" <ldv@altlinux.org>
To:     Shawn Landden <shawn@git.icu>, linux-man@vger.kernel.org
Subject: Re: [PATCH] bcmp: note that this function is no longer legacy due to
 LLVM 9
Message-ID: <20200111161126.GA22051@altlinux.org>
References: <20200111145049.5393-1-shawn@git.icu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200111145049.5393-1-shawn@git.icu>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Sat, Jan 11, 2020 at 06:50:49PM +0400, Shawn Landden wrote:
> Signed-off-by: Shawn Landden <shawn@git.icu>
> ---
>  man3/bcmp.3 | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/man3/bcmp.3 b/man3/bcmp.3
> index ba9838019..18d238720 100644
> --- a/man3/bcmp.3
> +++ b/man3/bcmp.3
> @@ -70,15 +70,21 @@ T{
>  .BR bcmp ()
>  T}	Thread safety	MT-Safe
>  .TE
>  .SH CONFORMING TO
>  4.3BSD.
> -This function is deprecated (marked as LEGACY in POSIX.1-2001): use
> -.BR memcmp (3)
> -in new programs.
> +This function was deprecated (marked as LEGACY) by POSIX.1-2001).
>  POSIX.1-2008 removes the specification of
>  .BR bcmp ().
> +LLVM 9, released in 2019, revived
> +.BR bcmp ()
> +and generates calls to it instead of
> +.BR memcmp (3)
> +as appropiate as an optimization (as
> +.BR bcmp ()
> +need not traverse memory in-order).
> +.\" http://releases.llvm.org/9.0.0/docs/ReleaseNotes.html#noteworthy-optimizations

I believe the "CONFORMING TO" is about conformance and therefore
shall not be changed.

Any notes about llvm-specific implementation details should go
to a different section, e.g. "NOTES".


-- 
ldv
