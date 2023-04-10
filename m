Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4583E6DC2F9
	for <lists+linux-man@lfdr.de>; Mon, 10 Apr 2023 05:35:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229562AbjDJDfx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Apr 2023 23:35:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbjDJDfv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Apr 2023 23:35:51 -0400
Received: from out30-99.freemail.mail.aliyun.com (out30-99.freemail.mail.aliyun.com [115.124.30.99])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58C8030CF
        for <linux-man@vger.kernel.org>; Sun,  9 Apr 2023 20:35:49 -0700 (PDT)
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R231e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018045192;MF=hsiangkao@linux.alibaba.com;NM=1;PH=DS;RN=3;SR=0;TI=SMTPD_---0Vff-UkS_1681097745;
Received: from 30.97.49.25(mailfrom:hsiangkao@linux.alibaba.com fp:SMTPD_---0Vff-UkS_1681097745)
          by smtp.aliyun-inc.com;
          Mon, 10 Apr 2023 11:35:46 +0800
Message-ID: <866e0335-1ee7-d0db-61a3-99301865caa5@linux.alibaba.com>
Date:   Mon, 10 Apr 2023 11:35:45 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.9.0
Subject: Re: [PATCH] filesystems.5, erofs.5: add erofs documentation
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <hpmjk4rzx2prznaxlb2gnc5vrnjmljxndsvxcsc22pliytevup@4lah64un5sht>
From:   Gao Xiang <hsiangkao@linux.alibaba.com>
In-Reply-To: <hpmjk4rzx2prznaxlb2gnc5vrnjmljxndsvxcsc22pliytevup@4lah64un5sht>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-10.9 required=5.0 tests=ENV_AND_HDR_SPF_MATCH,
        NICE_REPLY_A,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        UNPARSEABLE_RELAY,USER_IN_DEF_SPF_WL autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi!

On 2023/4/10 01:16, наб wrote:
> Modelled after tmpfs(5) ‒ there's a listing of mount options,
> and a summary of limitations. The feature flags are described in
> mkfs.erofs, and they're versioned and maintained upstream quite well
> there, so no need to duplicate those, since you only care on image
> creation.
> 
> The real value add is the mount options, but I cannot figure out
> how device_id and fsid interact with the system at large,
> so I just noted they're there.

Thanks for the document.

Currently EROFS has two main userspace progs --- erofs-utils and
Nydus [1].  Later maybe more userspace progs such as composefs[3].

device_id and fsid are mainly used for Nydus image service to keep
its multiple layers, so that the data source of each chunk could be
from such external blobs.

erofs-utils (with the upcoming tarerofs) is having such use case as
well, in that case, one image could consist of a manifest and several
original tar blobs with different device_ids.  So that you could
directly mount a EROFS merged image with several tarballs.  Note that
erofs-utils support is still under development, you could refer to [2]


[1] https://github.com/dragonflyoss/image-service
     https://github.com/dragonflyoss/image-service/blob/master/rafs/src/metadata/layout/v6.rs
[2] https://lore.kernel.org/r/20230401072705.99060-1-hsiangkao@linux.alibaba.com
[3] https://github.com/containers/composefs/pull/112

> 
> State as of 6.3-rc5.
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
>   man5/erofs.5       | 84 ++++++++++++++++++++++++++++++++++++++++++++++
>   man5/filesystems.5 |  6 ++++
>   2 files changed, 90 insertions(+)
>   create mode 100644 man5/erofs.5
> 
> diff --git a/man5/erofs.5 b/man5/erofs.5
> new file mode 100644
> index 000000000..de5b56121
> --- /dev/null
> +++ b/man5/erofs.5
> @@ -0,0 +1,84 @@
> +.\" Copyright (c) 2016 by Michael Kerrisk <mtk.manpages@gmail.com>
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH erofs 5 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +erofs \- the Enhanced Read-Only File System
> +.SH DESCRIPTION
> +.B erofs
> +is a create-once read-only filesystem,
> +with support for compression and a multi-device backing store.
> +.PP
> +There are two inode formats:
> +32-byte compact with 16-bit UID/GID, 32-bit file size, and no file times,
> +and 64-byte extended with 32-bit UID/GID, 64-bit file size,
> +and a modification time
> +.RI ( st_mtim ).
> +.\" See fs/erofs/super.c:shmem_parse_options for options it supports.
> +.SS Mount options
> +.TP
> +.BR user_xattr / nouser_xattr
> +Controls whether
> +.I user
> +extended attributes are exposed.
> +Defaults to yes
> +.TP
> +.BR acl / noacl
> +Controls whether POSIX
> +.BR acl (5)s
> +are exposed.
> +Defaults to yes.
> +.TP
> +.BR cache_strategy = disabled | readahead | readaround
> +Cache allocation for compressed files:
> +never, if reading from start of file, regardless of position.
> +Defaults to
> +.BR readaround .
> +.TP
> +.BR dax ", " dax = always | never
> +Direct Access control.
> +If
> +.B always
> +and the source device supports DAX, uncompressed non-inlined files
> +will be read directly, without going through the page cache.
> +.B dax
> +is a synonym for
> +.BR always .
> +Defaults to unset, which is equivalent to
> +.BR never .
> +.TP
> +.BR device = \fIblobdev\fP
> +Add extra device holding some of the data.
> +Must be given as many times and in the same order as
> +.B \-\-blobdev
> +was to
> +.BR mkfs.erofs (8).
> +.\" Nominally there's a device_table feature and it somehow scans(?) for them,
> +.\" cf. super.c:erofs_scan_devices(), but I haven't gotten it to work

See above.

> +.TP
> +.BR domain_id = \fIdid\fP ", " fsid = \fIid\fP
> +Control CacheFiles on-demand read support.
> +To be documented.

See above and
https://github.com/dragonflyoss/image-service/blob/master/docs/nydus-fscache.md

Currently the main user is still Nydus since on-demand read
quite relies on high-level stuffs (such as container
registries, etc.). But we could develop a fscache API interfaces
to erofs-utils later as well if some new users would like to use
it with erofs-utils.

Thanks,
Gao Xiang

> +.RE
> +.IP
> +.SH VERSIONS
> +.B erofs
> +images are versioed through the use of feature flags;
> +these are listed in the
> +.B \-E
> +section of
> +.BR mkfs.erofs (1),
> +.SH NOTES
> +The kernel must be configured with the
> +.B CONFIG_EROFS_FS
> +option to mount EROFS filesystems.
> +There are sub-configuration items that restrict the availability
> +of some of the parameters above.
> +.SH SEE ALSO
> +.BR mkfs.erofs (1),
> +.BR fsck.erofs (1),
> +.BR dump.erofs (1)
> +.PP
> +.I Documentation/filesystems/erofs.txt
> +in the kernel source.
> diff --git a/man5/filesystems.5 b/man5/filesystems.5
> index 3c15f14da..c9b0bf695 100644
> --- a/man5/filesystems.5
> +++ b/man5/filesystems.5
> @@ -48,6 +48,12 @@ filesystems in the Linux kernel.
>   See the kernel documentation for a comprehensive
>   description of all options and limitations.
>   .TP 10
> +.B erofs
> +is the Enhanced Read-Only File System, stable since Linux 5.4.
> +.\" commit 47e4937a4a7ca4184fd282791dfee76c6799966a moves it out of staging
> +See
> +.BR erofs (5).
> +.TP
>   .B ext
>   is an elaborate extension of the
>   .B minix
