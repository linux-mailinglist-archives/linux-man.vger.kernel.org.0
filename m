Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 833E1267FE0
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 17:16:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725939AbgIMPQt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 11:16:49 -0400
Received: from vmicros1.altlinux.org ([194.107.17.57]:41958 "EHLO
        vmicros1.altlinux.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725937AbgIMPQs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 11:16:48 -0400
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
        by vmicros1.altlinux.org (Postfix) with ESMTP id 5D69B72CA54;
        Sun, 13 Sep 2020 18:16:42 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
        id 448A17CFA2F; Sun, 13 Sep 2020 18:16:42 +0300 (MSK)
Date:   Sun, 13 Sep 2020 18:16:42 +0300
From:   "Dmitry V. Levin" <ldv@altlinux.org>
To:     Konstantin Bukin <kbukin@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] stat.2: fixed inode printing in example program
Message-ID: <20200913151642.GA14054@altlinux.org>
References: <20200913150449.11188-1-kbukin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200913150449.11188-1-kbukin@gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Sep 13, 2020 at 08:04:49AM -0700, Konstantin Bukin wrote:
> inode numbers are expected to be positive. Casting them to a signed type
> may result in printing negative values. E.g. running example program on
> the following file:
> 
> $ ls -li test.txt
> 9280843260537405888 -r--r--r-- 1 kbukin hardware 300 Jul 21 06:36 test.txt
> 
> resutls in the following output:
> 
> $ ./example test.txt
> ID of containing device:  [0,480]
> File type:                regular file
> I-node number:            -9165900813172145728
> Mode:                     100444 (octal)
> Link count:               1
> Ownership:                UID=2743   GID=30
> Preferred I/O block size: 32768 bytes
> File size:                300 bytes
> Blocks allocated:         8
> Last status change:       Tue Jul 21 06:36:50 2020
> Last file access:         Sat Sep 12 14:13:38 2020
> Last file modification:   Tue Jul 21 06:36:50 2020
> 
> Such erroneous reporting happens for inode values greater than maximum
> value which can be stored in signed long. Casting does not seem to be
> necessary here. Printing inode as unsigned long fixes the issue.
> ---
>  man2/stat.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/stat.2 b/man2/stat.2
> index 7e5417480..76997bcbe 100644
> --- a/man2/stat.2
> +++ b/man2/stat.2
> @@ -681,7 +681,7 @@ main(int argc, char *argv[])
>      default:       printf("unknown?\en");                break;
>      }
>  
> -    printf("I\-node number:            %ld\en", (long) sb.st_ino);
> +    printf("I\-node number:            %lu\en", sb.st_ino);

By the way, the type of st_ino is ino_t which might be larger than long,
so both the old and the new variants are not correct.


-- 
ldv
