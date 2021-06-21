Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C33793AE25C
	for <lists+linux-man@lfdr.de>; Mon, 21 Jun 2021 06:25:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229459AbhFUE2E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Jun 2021 00:28:04 -0400
Received: from mail.kernel.org ([198.145.29.99]:48590 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229441AbhFUE2E (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 21 Jun 2021 00:28:04 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7157E60C3E;
        Mon, 21 Jun 2021 04:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1624249550;
        bh=xEhxTIw7Mf6QtghwDm+63P+NfOJNLOiFskG2+suQaNY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Sv7HYb6rmt4xv7Ia2FfNlTIJ9vbS8KoLDQDrWHC/3CwnFzX9pMM7+YkExsNVvYHBW
         7uZIkOXZVF8y1dpM5h5OqhwW4frvOo6mzqMkMd4bh6sM02yK+t+5ZpMdGsbsHFQ11g
         d9Dq22Q6MBl2HwFFZV5BNSEF6TLLc9Pl2uFOHcq8Hz+bmjXJlVY8QAdmpcIhX44/RP
         eWy5abWT20sbGVEtsO+K5OocgUXakt9uZjryEbs0zjC2td9MQ3URlpft9aEayfV3IJ
         UwOx0w3GVit6+0+kbJ4b8MNaKvvpNU6+sG0XjX/zBJx1McvczE0v924ClKD1EWzfN0
         SxljCuCsgIkVA==
Date:   Sun, 20 Jun 2021 21:25:50 -0700
From:   "Darrick J. Wong" <djwong@kernel.org>
To:     Dan Robertson <dan@dlrobertson.com>
Cc:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com
Subject: Re: [PATCH 1/1] man2/fallocate.2: tfix documentation of shared blocks
Message-ID: <20210621042550.GG158232@locust>
References: <20210621004453.7437-1-dan@dlrobertson.com>
 <20210621004453.7437-2-dan@dlrobertson.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210621004453.7437-2-dan@dlrobertson.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Jun 20, 2021 at 08:44:53PM -0400, Dan Robertson wrote:
> Fix a typo in the documentation of using fallocate to allocate shared
> blocks. The flag FALLOC_FL_UNSHARE should instead be documented as
> FALLOC_FL_UNSHARE_RANGE.
> 
> Fixes: 07c7a6a35497 ("man2/fallocate.2: Document behavior with shared blocks")
> Signed-off-by: Dan Robertson <dan@dlrobertson.com>

Definitely an artifact of unshare being added and removed repeatedly
during the development of XFS reflink.  Thanks for fixing this...

Reviewed-by: Darrick J. Wong <djwong@kernel.org>

--D

> ---
>  man2/fallocate.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/fallocate.2 b/man2/fallocate.2
> index a62706193..b4cb3516f 100644
> --- a/man2/fallocate.2
> +++ b/man2/fallocate.2
> @@ -81,7 +81,7 @@ Preallocating zeroed blocks beyond the end of the file in this manner
>  is useful for optimizing append workloads.
>  .PP
>  If the
> -.B FALLOC_FL_UNSHARE
> +.B FALLOC_FL_UNSHARE_RANGE
>  flag is specified in
>  .IR mode ,
>  shared file data extents will be made private to the file to guarantee
