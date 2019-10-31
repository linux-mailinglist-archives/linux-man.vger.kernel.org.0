Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6E989EAA8D
	for <lists+linux-man@lfdr.de>; Thu, 31 Oct 2019 07:04:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726370AbfJaGEP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Oct 2019 02:04:15 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:44135 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726331AbfJaGEP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Oct 2019 02:04:15 -0400
Received: by mail-wr1-f65.google.com with SMTP id z11so4826933wro.11
        for <linux-man@vger.kernel.org>; Wed, 30 Oct 2019 23:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0erFY0Xh1bBZn5JpWNrrvmbxjJCpVfqDnqzgpMiPPZM=;
        b=ffRmS+1Czq4WeowpFt3AkmbVFojZBR6pJyfheLB1nKtfKV0g42Opkbv/us/PNgDEr/
         mtpiW8vEDpoVPNv0r0xDk1C+gLxoTFZNsX5fMs6SqreJaiwRt+WvAvBkmZM6Yq2cRwBQ
         VoJySdLSKBmjMVTyUaeJN4YE+d3rDSsoiJKhLyfmAXP4GgPbGrzUAhNW6Ef3PVAdEZYJ
         XgxMeEP3qpPH8eOpFwqGhp4HnyKA4LABEYMLQS22O24pbQLyhvfpxwjJalGf9Otw6XFu
         MallHv7U8j1BqEn8kClsKix0LbsthFyLo38LmhVqsZUpJSGuZ4QmtQ0Y+6aZ0KqA2EQe
         tWVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0erFY0Xh1bBZn5JpWNrrvmbxjJCpVfqDnqzgpMiPPZM=;
        b=SlK5SR6bwVWn7kUYsVyou628gQFEMvnCrlufHP3hH3hzD/IyjTzLnwHEC8pYZvmjKq
         4k+MxOoEnhnSO71a+6Tz2Lh35/KpoN0aUqIsYWk6DmXN9eNXYHk1n6VOpM8rzlhlrfp/
         b3q3giRjE8f0zcpDJmqIKZU4hTBV24G6d+ApaN+os8vOfhdKuVv3t+EjFhqDFX5Lczed
         5vlTuhJmKcYyi6d5c4HgmyP18nfKp+gzRNlrMn51tLF2EbjoX29Gt98iquPWKcuTPLKN
         MEJINArX8O2gC9VxD53Vt+0BGqpNwbgVzpB02POz8GKfdn7XsxnKhmbpIDM9ezbhBcV1
         jEDA==
X-Gm-Message-State: APjAAAWgq9QbwgUvtjp2Q1V5CS1pt++Nd8QGQFvzw1AeN6aZlZLqIJ3e
        V9p24KaOdQSeOT2n5O4dQ1gRW6/s2R4=
X-Google-Smtp-Source: APXvYqwzCr73Xyn+3y7eJ6VHa4sE9cHafSRZvRZpFKvuAks2+ZqL6LqI6g1W7WL3xmall6+r7vqFhA==
X-Received: by 2002:adf:f684:: with SMTP id v4mr3452545wrp.336.1572501852266;
        Wed, 30 Oct 2019 23:04:12 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2f38:d7b0:e8b5:a4a9:346b:8c65? ([2a01:e35:2f38:d7b0:e8b5:a4a9:346b:8c65])
        by smtp.gmail.com with ESMTPSA id 74sm3660653wrm.92.2019.10.30.23.04.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 23:04:11 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] quotactl.2: Add some details about Q_QUOTAON
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>, jack@suse.cz
References: <20191024095558.GL31271@quack2.suse.cz>
 <1571983585-8224-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <da661e9a-2155-5abc-f2fb-7feefd6b6a43@gmail.com>
Date:   Thu, 31 Oct 2019 07:04:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1571983585-8224-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Yang Xu and Jan

On 10/25/19 8:06 AM, Yang Xu wrote:
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

Thanks for the patch, Yang Xu, and thanks for the additional input,
Jan.

Patch applied, and a few wording tweaks added.

Thanks,

Michael

> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> ---
>   man2/quotactl.2 | 13 +++++++++++--
>   1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/quotactl.2 b/man2/quotactl.2
> index e0d40a2be..215ec6252 100644
> --- a/man2/quotactl.2
> +++ b/man2/quotactl.2
> @@ -117,7 +117,15 @@ argument points to the pathname of a file containing the quotas for
>   the filesystem.
>   The quota file must exist; it is normally created with the
>   .BR quotacheck (8)
> -program.
> +program. Quota information can be also stored in hidden system inodes
> +for ext4, xfs and other filesystems if the filesystem is configured so.
> +In this case, there are no visible quota files and there is no need to
> +use
> +.BR quotacheck (8).
> +Quota information is always kept consistent by the filesystem and Q_QUOTAON
> +quotactl only enables enforcement of quota limits. The presence of hidden
> +system inodes with quota information is indicated by DQF_SYS_FILE flag in
> +Q_GETINFO output.
>   This operation requires privilege
>   .RB ( CAP_SYS_ADMIN ).
>   .TP 8
> @@ -638,7 +646,8 @@ The
>   .I id
>   argument is ignored.
>   .TP
> -.B Q_XQUOTARM
> +.B Q_XQUOTARM() " (since Linux 3.16)"
> +.\" 9da93f9b7cdf8ab28da6b364cdc1fafc8670b4dc
>   Free the disk space taken by disk quotas. The
>   .I addr
>   argument should be a pointer to an
> 
