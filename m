Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 19DEEE2DFF
	for <lists+linux-man@lfdr.de>; Thu, 24 Oct 2019 11:56:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2393135AbfJXJ4A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Oct 2019 05:56:00 -0400
Received: from mx2.suse.de ([195.135.220.15]:47920 "EHLO mx1.suse.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S2393132AbfJXJ4A (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 24 Oct 2019 05:56:00 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx1.suse.de (Postfix) with ESMTP id 748ABABD6;
        Thu, 24 Oct 2019 09:55:58 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
        id 1D8171E4A99; Thu, 24 Oct 2019 11:55:58 +0200 (CEST)
Date:   Thu, 24 Oct 2019 11:55:58 +0200
From:   Jan Kara <jack@suse.cz>
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, jack@suse.cz
Subject: Re: [PATCH] quotactl.2: Add some details about Q_QUOTAON
Message-ID: <20191024095558.GL31271@quack2.suse.cz>
References: <1571904693-22537-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1571904693-22537-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu 24-10-19 16:11:33, Yang Xu wrote:
> For Q_QUOTAON, on old kernel we can use quotacheck -ug to
> generate quota files. But in current kernel, we can also hide them
> in system inodes and indicate them by using "quota" or project feature.
> 
> For user or group quota, we can do as below(etc ext4):
> mkfs.ext4 -F -o quota /dev/sda5
> mount /dev/sda5 /mnt
> quotactl(QCMD(Q_QUOTAON, USRQUOTA), /dev/sda5, QFMT_VFS_V0, NULL);
> 
> For project quota, we can do as below(etc ext4)
> mkfs.ext4 -F -o quota,project /dev/sda5
> mount /dev/sda5 /mnt
> quotactl(QCMD(Q_QUOTAON, PRJQUOTA), /dev/sda5, QFMT_VFS_V0, NULL);
> 
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>

...
>  The quota file must exist; it is normally created with the
>  .BR quotacheck (8)
> -program.
> +program. It also can been stored as hidden system inode. In this case, there
> +are no visible quota files in filesystem and no need to use
> +.BR quotacheck (8)
> +program. This is indicated by 'quota' and 'project' features.
>  This operation requires privilege
>  .RB ( CAP_SYS_ADMIN ).
>  .TP 8

This is a good clarification. Thanks! I'd just somewhat expand this like:

Quota information can be also stored in hidden system inodes for ext4, xfs,
and other filesystems if the filesystem is configured so. In this case,
there are no visible quota files and there is no need to use quotacheck(8).
Quota information is always kept consistent by the filesystem and Q_QUOTAON
quotactl only enables enforcement of quota limits. The presence of hidden
system inodes with quota information is indicated by DQF_SYS_FILE flag in
Q_GETINFO output.

> @@ -638,7 +641,8 @@ The
>  .I id
>  argument is ignored.
>  .TP
> -.B Q_XQUOTARM
> +.B Q_XQUOTARM (Since linux 3.16)
> +.\" 9da93f9b7cdf8ab28da6b364cdc1fafc8670b4dc

Not sure if we need to specify commit ID here...

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
