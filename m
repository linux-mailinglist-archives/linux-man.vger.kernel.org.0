Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DDBFB14ABA
	for <lists+linux-man@lfdr.de>; Mon,  6 May 2019 15:17:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726197AbfEFNRV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 May 2019 09:17:21 -0400
Received: from mx01-fr.bfs.de ([193.174.231.67]:26292 "EHLO mx01-fr.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725813AbfEFNRV (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 6 May 2019 09:17:21 -0400
Received: from mail-fr.bfs.de (mail-fr.bfs.de [10.177.18.200])
        by mx01-fr.bfs.de (Postfix) with ESMTPS id B5E332030D;
        Mon,  6 May 2019 15:17:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1557148635; h=from:from:sender:reply-to:reply-to:subject:subject:date:date:
         message-id:message-id:to:to:cc:cc:mime-version:mime-version:
         content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=8KnTNVEInEHioo210bSmCcj5esPT49oJhsPuTuXw7FM=;
        b=PispQuMOyWvLhyL+VOqroBx0GvmaP0YhfMpoA2Wy9GZ0Sxvn5GjDZ9zC2416e1EeIlemG9
        c80QSuS5NQGoY6oN3AcmxaB9b8vqqilw91NIkSBpa3+s5UNjx99Od1RC+OOxGm2S7eGZBi
        8USV8zYgf8uDsi5uJJfYxTWPreYgptF5wqabZc/bNXRGJB4E6lUn9/GyENB0cMRi2OXG/R
        epow/9ai2dQDZDYhBTOU8vgNCqw3W90E5vVUwz8POlGijVlth06Fh/U4CHjzOsdZOPQiKX
        VBWv4Wx8S3BaR/FN99320MWjA0vQIYmRA/eEudARwXZvhcYjpdy7Dn4SAwKP0Q==
Received: from [134.92.181.33] (unknown [134.92.181.33])
        by mail-fr.bfs.de (Postfix) with ESMTPS id 9204DBEEBD;
        Mon,  6 May 2019 15:17:15 +0200 (CEST)
Message-ID: <5CD033DB.90600@bfs.de>
Date:   Mon, 06 May 2019 15:17:15 +0200
From:   walter harms <wharms@bfs.de>
Reply-To: wharms@bfs.de
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.1.16) Gecko/20101125 SUSE/3.0.11 Thunderbird/3.0.11
MIME-Version: 1.0
To:     Shawn Landden <shawn@git.icu>
CC:     linux-man@vger.kernel.org
Subject: Re: [PATCH] read/write: documentation of limits v3
References: <20190506054107.25321-1-shawn@git.icu> <20190506130637.26455-1-shawn@git.icu>
In-Reply-To: <20190506130637.26455-1-shawn@git.icu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.10
Authentication-Results: mx01-fr.bfs.de
X-Spamd-Result: default: False [-3.10 / 7.00];
         ARC_NA(0.00)[];
         HAS_REPLYTO(0.00)[wharms@bfs.de];
         BAYES_HAM(-3.00)[100.00%];
         FROM_HAS_DN(0.00)[];
         TO_DN_SOME(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         REPLYTO_ADDR_EQ_FROM(0.00)[];
         DKIM_SIGNED(0.00)[];
         RCPT_COUNT_TWO(0.00)[2];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         RCVD_TLS_ALL(0.00)[]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

please add a small history for your changes between version
like in this example:

V2->V3: forget comment
V1->V2: fix typo

hope that helps,

re,
 wh

Am 06.05.2019 15:06, schrieb Shawn Landden:
> Looks like PAGE_MASK is in <sys/user.h>
> ---
>  man2/read.2  | 8 ++++++++
>  man2/write.2 | 8 ++++++++
>  2 files changed, 16 insertions(+)
> 
> diff --git a/man2/read.2 b/man2/read.2
> index 6e5123fa4..1ca696af9 100644
> --- a/man2/read.2
> +++ b/man2/read.2
> @@ -151,10 +151,18 @@ and the wrong size buffer was given to
>  .BR read ();
>  see
>  .BR timerfd_create (2)
>  for further information.
>  .TP
> +.B EINVAL
> +.\" MAX_RW_COUNT in include/linux/fs.h
> +The read amount is greater than
> +.B MAX_RW_COUNT,
> +which is
> +.B INT_MAX
> +rounded down to the page size (INT_MAX & ~PAGE_MASK).
> +.TP
>  .B EIO
>  I/O error.
>  This will happen for example when the process is in a
>  background process group, tries to read from its controlling terminal,
>  and either it is ignoring or blocking
> diff --git a/man2/write.2 b/man2/write.2
> index 4df56cd48..1cdf04436 100644
> --- a/man2/write.2
> +++ b/man2/write.2
> @@ -190,10 +190,18 @@ flag, and either the address specified in
>  .IR buf ,
>  the value specified in
>  .IR count ,
>  or the file offset is not suitably aligned.
>  .TP
> +.B EINVAL
> +.\" MAX_RW_COUNT in include/linux/fs.h
> +The write amount is greater than
> +.B MAX_RW_COUNT,
> +which is
> +.B INT_MAX
> +rounded down to the page size (INT_MAX & ~PAGE_MASK).
> +.TP
>  .B EIO
>  A low-level I/O error occurred while modifying the inode.
>  This error may relate to the write-back of data written by an earlier
>  .BR write (2),
>  which may have been issued to a different file descriptor on
