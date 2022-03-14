Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9138F4D85DB
	for <lists+linux-man@lfdr.de>; Mon, 14 Mar 2022 14:24:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233051AbiCNNZ2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Mar 2022 09:25:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230349AbiCNNZ2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Mar 2022 09:25:28 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C10326AFD
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 06:24:17 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id x15so23888296wru.13
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 06:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=mUVxKDxUJYe8AQzstv+ZWNb1OdvbT47o9cvTZgg6yuM=;
        b=qgYAuX3+miufLA+XSdZsKRWU6xICypgsZKolQQ7Fd+vtVbTLEuUVAyrPbpgjuNel8j
         mQUdHGVHiolN9nS9h/rT65loGvEewhsj0bEoVpLRg0M82F+QHJz1pDMKv8/5t0qqhpPV
         JAOvzrXZ1kkJTup+JnWRdccJnBos6+hlnFjlcTPXg30s+vMFaapuMgZox3DL4WrbvnlT
         8FFSZedSTTdj+Ul9SURtg3IvYbP0YhWtKzC81iqwR01LO330zi3C6LEe7cEL4f8+5+FA
         G6KJDMxh4Hi4fn+Ifzqrc0A/3mKNwuy5PiX0WISUXMj/Mcw+LGuUwqCQ/FXoNfZTO4u+
         4uUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=mUVxKDxUJYe8AQzstv+ZWNb1OdvbT47o9cvTZgg6yuM=;
        b=BZDPdT4OT/e5m3Bs5iTk/u7ioF83URUPcJ7UCnbQL53qsqfZA3/XjNuNAw9nX6a5vc
         BkpldpxnYnPPOc8kGtI+xAY88DSU8vqIc5MqTNIVTg3aHFK8P8fZRIABiUXVnDdwmldW
         YP1dMjycP7rW7ZwnrqQOrof+zsuK8AEHfK4cxkGJFLcBfbmlcpmcD9vm5VlzBoNLmMMi
         QjXiTaPF7t31KDM3xuNBdu7T6pfwzU+WcvRTINViwul5hNM8VuTgb+JjEze/Zs66IDpX
         +nEG+5Iukb2DHQY6ambFPP2fne0JllUUUnCmcOA8DeS6eeGWJy+d0y6UssPDHO7YItUD
         nC3g==
X-Gm-Message-State: AOAM531ti0fQB/vhOYQ9ohgzPco9mzga874TofsqYBZ3OCZgCob0nkSw
        a/9IPjc5+NUEnqNd9V1pmlc=
X-Google-Smtp-Source: ABdhPJyuEe+YiT3q5t9Nks6aI2YTjVri/kBxiyQtGHXPoxG3ERzu+59HbpzLuHeWbW/jIS4u/jJlGw==
X-Received: by 2002:a5d:6d04:0:b0:1f0:7a8b:297a with SMTP id e4-20020a5d6d04000000b001f07a8b297amr16988799wrq.498.1647264256084;
        Mon, 14 Mar 2022 06:24:16 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 10-20020adf808a000000b001edd413a952sm13320625wrl.95.2022.03.14.06.24.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 06:24:15 -0700 (PDT)
Message-ID: <dad1522f-21ee-620e-8fcf-b290bbb9aba5@gmail.com>
Date:   Mon, 14 Mar 2022 14:24:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH] fix descriptions for AT_NO_AUTOMOUNT
Content-Language: en-US
To:     =?UTF-8?Q?P=c3=a1draig_Brady?= <P@draigBrady.com>,
        Andreas Schwab <schwab@linux-m68k.org>,
        Paul Eggert <eggert@cs.ucla.edu>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Cc:     Gnulib bugs <bug-gnulib@gnu.org>, Coreutils <coreutils@gnu.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Ian Kent <raven@themaw.net>,
        David Howells <dhowells@redhat.com>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Colin Walters <walters@redhat.com>,
        Ondrej Holy <oholy@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Neil Brown <neilb@suse.com>
References: <ed3ac15c-9e92-73b7-b7f9-8281488e8778@draigBrady.com>
 <3a4c9f63-0203-a810-6113-5c77a16e3690@cs.ucla.edu>
 <95140173-2913-e377-5824-8a569ac78b5b@draigBrady.com>
 <5c608ef7-f279-6afc-37f5-6a50442a3143@cs.ucla.edu>
 <bdd68a31-ef3a-f022-bc72-c051690cee59@draigBrady.com>
 <6645f678-4293-4692-8472-eee0bacee63f@cs.ucla.edu>
 <670898ee-3b1c-97cd-290c-b6d91bfdaa07@draigBrady.com>
 <5612cf59-a6da-6974-6a97-e406a4f4d557@cs.ucla.edu> <87bkyemetm.fsf@igel.home>
 <9293ccdd-ca30-81b3-2042-c91327da6b28@draigBrady.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <9293ccdd-ca30-81b3-2042-c91327da6b28@draigBrady.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[Added a few CCs from the relevant kernel commits]

Hi Pádraig,

On 3/10/22 14:46, Pádraig Brady wrote:
> On 10/03/2022 07:44, Andreas Schwab wrote:
>> On Mär 09 2022, Paul Eggert wrote:
>>
>>> I audited gnulib's uses of fstatat and found one fishy one that doesn't
>>> use AT_NO_AUTOMOUNT, namely, in fts.c where the follow-symlink branch
>>> uses
>>> 'stat' whereas the no-follow-symlink branch uses fstatat without
>>> AT_NO_AUTOMOUNT. I installed the first patch to cause it be
>>> consistent in
>>> using AT_NO_AUTOMOUNT, which is also consistent with what glibc does
>>
>> ??? In glibc, stat is the same as fstatat(,,,0).
> 
> Indeed. It looks like the man page for fstatat is out of date.
> After looking at the kernel code, it seems that:
>   fstatat() did _not_ imply AT_NO_AUTOMOUNT from 2.6.38 -> 4.11
>     I'm not sure it even honored the AT_NO_AUTOMOUNT flag before 4.11
>   fstatat() did imply AT_NO_AUTOMOUNT since 4.11
> 
> The attached patch clarifies this is the fstatat and statx man pages.
> 
> sorry for the confusion,
> Pádraig

---

> Subject: [PATCH] fix descriptions for AT_NO_AUTOMOUNT
> 
> Don't mention AT_NO_AUTOMOUNT for fstatat.2
> as it's implied since v4.11-rc7-14-gdeccf497d804

Even though it's implied, since code may pass it,
and especially code written based on the old manual page,
it would be good to keep the paragraph in fstatat.2,
even if the text is replaced by something like
"Before Linux x.xx, this flag was ignored.
After Linux y.yy, this flag is implied."

Does it make sense to you?

> 
> Don't mention commit v4.13-9318-g42f461482178 as it was reverted

Please also mention v4.15-rc1-50-g5d38f049cee1 as the commit in which it
was reverted.
Since it was present in some kernel releases, we might want to mention
it in the manual page?

> 
> Mention that stat(), lstat(), and fstatat()
> imply AT_NO_AUTOMOUNT, on the statx.2 man page

Please sign the patch with "Signed-off-by: ..."
<https://www.kernel.org/doc/man-pages/patches.html>

> ---
>  man2/stat.2  | 31 -------------------------------
>  man2/statx.2 | 18 +++++++++++++++---
>  2 files changed, 15 insertions(+), 34 deletions(-)
> 
> diff --git a/man2/stat.2 b/man2/stat.2
> index 016c1f47d..43ab5b777 100644
> --- a/man2/stat.2
> +++ b/man2/stat.2
> @@ -317,37 +317,6 @@ This flag is Linux-specific; define
>  .\" Before glibc 2.16, defining _ATFILE_SOURCE sufficed
>  to obtain its definition.
>  .TP
> -.BR AT_NO_AUTOMOUNT " (since Linux 2.6.38)"
> -Don't automount the terminal ("basename") component of
> -.I pathname
> -if it is a directory that is an automount point.
> -This allows the caller to gather attributes of an automount point
> -(rather than the location it would mount).
> -Since Linux 4.14,
> -.\" commit 42f46148217865a545e129612075f3d828a2c4e4
> -also don't instantiate a nonexistent name in an
> -on-demand directory such as used for automounter indirect maps.
> -This
> -flag has no effect if the mount point has already been mounted over.
> -.IP
> -Both
> -.BR stat ()
> -and
> -.BR lstat ()
> -act as though
> -.B AT_NO_AUTOMOUNT
> -was set.
> -.IP
> -The
> -.B AT_NO_AUTOMOUNT
> -can be used in tools that scan directories
> -to prevent mass-automounting of a directory of automount points.
> -.IP
> -This flag is Linux-specific; define
> -.B _GNU_SOURCE
> -.\" Before glibc 2.16, defining _ATFILE_SOURCE sufficed
> -to obtain its definition.
> -.TP
>  .B AT_SYMLINK_NOFOLLOW
>  If
>  .I pathname
> diff --git a/man2/statx.2 b/man2/statx.2
> index 04b3e5075..d4e638756 100644
> --- a/man2/statx.2
> +++ b/man2/statx.2
> @@ -195,11 +195,23 @@ Don't automount the terminal ("basename") component of
>  if it is a directory that is an automount point.
>  This allows the caller to gather attributes of an automount point
>  (rather than the location it would mount).
> -This flag can be used in tools that scan directories
> -to prevent mass-automounting of a directory of automount points.
> +This
> +flag has no effect if the mount point has already been mounted over.
> +.IP
>  The
>  .B AT_NO_AUTOMOUNT
> -flag has no effect if the mount point has already been mounted over.
> +flag can be used in tools that scan directories
> +to prevent mass-automounting of a directory of automount points.
> +.IP
> +All of
> +.BR stat () ,

s/() ,/(2),/

See man-pages(7) for when to put a number and when not:
   Formatting conventions for manual pages describing functions
       [...]

       Any reference to the subject of the current  manual  page
       should  be  written  with  the name in bold followed by a
       pair of parentheses in Roman (normal) font.  For example,
       in the fcntl(2) man page, references to  the  subject  of
       the page would be written as: fcntl().  The preferred way
       to write this in the source file is:

           .BR fcntl ()



> +.BR lstat () ,

same

> +and
> +.BR fstatat ()

s/()/(2)/

> +act as though
> +.B AT_NO_AUTOMOUNT
> +was set.
> +.IP
>  This flag is Linux-specific; define
>  .B _GNU_SOURCE
>  .\" Before glibc 2.16, defining _ATFILE_SOURCE sufficed
> -- 
> 2.31.1
> 

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
