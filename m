Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92FE34D8D8D
	for <lists+linux-man@lfdr.de>; Mon, 14 Mar 2022 20:58:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236704AbiCNT7j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Mar 2022 15:59:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244821AbiCNT6E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Mar 2022 15:58:04 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2409D1161
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 12:56:54 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id n31-20020a05600c3b9f00b003898fc06f1eso206269wms.1
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 12:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=mMcaNRak9LRJiJJP9V2YIbgLmOizGKTAgb69keGzPeM=;
        b=XyAeIC57kBRLRI4Pf+0qARCaPCMArE96+0BxlwyorXne+ki/82NRIjj/vEGj/NW/Xi
         2aSvnltCGGboPOTPF0qNhroEOEp7+M69Tu2DAxHjC+sx4g2DRQfAy/95803irOgSqUCA
         GXBjn7AFW1p4DnFOD43NMmxyzXnIDhjaot2I5L37eWFjJo4MRcaXbxqq4mRQM6ztlcxh
         p1oQPnLCvBdAruLWXMl4Y97kBPdkqk8/Hr5jSYGJethQ9bIyVFxP8zSixt9ZOYWTwN7a
         qrEsjBgt0cin5ErqMu+qZWTJaLz9j2D2llFHPaVfZ80dcZGniBSWPHfxZvX4jhfixgZh
         nnLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=mMcaNRak9LRJiJJP9V2YIbgLmOizGKTAgb69keGzPeM=;
        b=2B/JTaJdYWJTpJCbvTQWRu4e0uSBZ/Mk0S2hWRRZC+YaPwH5yGnTSVqPqKnL3AYjEy
         NgJ3Mw/+vgBlhk+S1iRO7ZU9o0rwSptAMfrtkgGa6m4Cc1alsM3xD/JpS75VeIqAVTkU
         EuM04Dh4avG2qrgMz9hA7dHdTEFwX6GOheLYlSFjzui5gVujE2zRyp0KKxu57GnqWOzS
         t9ruYPo/2DzHDfwyJAl4ao3tUbsj0RLoZXzIn/eVVAAqx+s5/mpmpvztJRFAM9Lpucvl
         0BMWX/TMs41Am37SVzLJ3+B0RRwDzIcNIR+98ZsN3fZHZ4/8DUl9MUvlFqvfxkGSX58w
         jv9A==
X-Gm-Message-State: AOAM530JEICapYW9qiu1yFBWVjJmtdu+Oj6/HbpM4ybF+lJGfh/JKXLA
        JMlMi5n2p/S6hsd4FaFIwX8=
X-Google-Smtp-Source: ABdhPJzBFMKcEVMwrjlT4FzKQDAfA4AzsJrrn/4JT9fdI9iukH2A2lWeXPSw6JhW6afnHVV9I/7ZqQ==
X-Received: by 2002:a05:600c:4e94:b0:389:e900:5ba9 with SMTP id f20-20020a05600c4e9400b00389e9005ba9mr639374wmq.166.1647287812536;
        Mon, 14 Mar 2022 12:56:52 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m185-20020a1c26c2000000b003899ed333ffsm330687wmm.47.2022.03.14.12.56.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 12:56:52 -0700 (PDT)
Message-ID: <9488e311-ab35-96ee-7791-ec65fa6fe948@gmail.com>
Date:   Mon, 14 Mar 2022 20:56:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH] fix descriptions for AT_NO_AUTOMOUNT
Content-Language: en-US
To:     =?UTF-8?Q?P=c3=a1draig_Brady?= <P@draigBrady.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Cc:     Gnulib bugs <bug-gnulib@gnu.org>, Coreutils <coreutils@gnu.org>,
        Andreas Schwab <schwab@linux-m68k.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Ian Kent <raven@themaw.net>,
        David Howells <dhowells@redhat.com>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Colin Walters <walters@redhat.com>,
        Ondrej Holy <oholy@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Neil Brown <neilb@suse.com>, Paul Eggert <eggert@cs.ucla.edu>
References: <ed3ac15c-9e92-73b7-b7f9-8281488e8778@draigBrady.com>
 <3a4c9f63-0203-a810-6113-5c77a16e3690@cs.ucla.edu>
 <95140173-2913-e377-5824-8a569ac78b5b@draigBrady.com>
 <5c608ef7-f279-6afc-37f5-6a50442a3143@cs.ucla.edu>
 <bdd68a31-ef3a-f022-bc72-c051690cee59@draigBrady.com>
 <6645f678-4293-4692-8472-eee0bacee63f@cs.ucla.edu>
 <670898ee-3b1c-97cd-290c-b6d91bfdaa07@draigBrady.com>
 <5612cf59-a6da-6974-6a97-e406a4f4d557@cs.ucla.edu> <87bkyemetm.fsf@igel.home>
 <9293ccdd-ca30-81b3-2042-c91327da6b28@draigBrady.com>
 <dad1522f-21ee-620e-8fcf-b290bbb9aba5@gmail.com>
 <4a4ad936-bb1c-328c-dd43-95f4abbb905c@draigBrady.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <4a4ad936-bb1c-328c-dd43-95f4abbb905c@draigBrady.com>
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



On 3/14/22 19:02, Pádraig Brady wrote:
> On 14/03/2022 13:24, Alejandro Colomar (man-pages) wrote:
>> On 3/10/22 14:46, Pádraig Brady wrote:
>>> Subject: [PATCH] fix descriptions for AT_NO_AUTOMOUNT
>>>
>>> Don't mention AT_NO_AUTOMOUNT for fstatat.2
>>> as it's implied since v4.11-rc7-14-gdeccf497d804
>>
>> Even though it's implied, since code may pass it,
>> and especially code written based on the old manual page,
>> it would be good to keep the paragraph in fstatat.2,
>> even if the text is replaced by something like
>> "Before Linux x.xx, this flag was ignored.
>> After Linux y.yy, this flag is implied."
>>
>> Does it make sense to you?
> 
> Yes good point.
> I went through the git history and the summary is fstatat()
> honored the flag since 2.6.38,
> ignored the flag since 3.1,
> implied the flag since 4.11,
> 
> I'll add that info to fstatat(2), and the details to the commit message.
> 
>>> Don't mention commit v4.13-9318-g42f461482178 as it was reverted
>>
>> Please also mention v4.15-rc1-50-g5d38f049cee1 as the commit in which it
>> was reverted.
>> Since it was present in some kernel releases, we might want to mention
>> it in the manual page?
> 
> Well since the flag for fstatat() doesn't change anything since 3.1
> it's probably best not to mention this old, short lived, and very
> specific info.

Okay.

> 
>>> Mention that stat(), lstat(), and fstatat()
>>> imply AT_NO_AUTOMOUNT, on the statx.2 man page
>>
>> Please sign the patch with "Signed-off-by: ..."
>> <https://www.kernel.org/doc/man-pages/patches.html>
> 
> Done in the attached.

Please send the patch inline (or both inline and attached),
if you don't mind.
However, if it's a big hassle for you,
I can apply it from an attachment.

> 
> thanks!
> Pádraig


---

> 
> Subject: [PATCH] fix descriptions for AT_NO_AUTOMOUNT
> 
> fstatat(..., AT_NO_AUTOMOUNT) has had the following history in Linux:
>   v2.6.37-7314-g6f45b65672c8
>     add AT_NO_AUTOMOUNT and fstatat honors it
>   v3.1-rc7-68-gb6c8069d3577
>     ignore AT_NO_AUTOMOUNT since default operation now less eagerly mounts
>   v4.10-11255-ga528d35e8bfc
>     adds statx which reinstated 2.6.38 behavior for fstatat (not released)
>   v4.11-rc7-14-gdeccf497d804
>     adjust fstatat so that AT_NO_AUTOMOUNT always specified (to statx)
> 
> * man2/stat.2:
> Adjust AT_NO_AUTOMOUNT description for fstatat.2 as per the above,
> to indicate AT_NO_AUTOMOUNT should be avoided with fstatat() since
> it's ignored since 3.1 and implied since 4.11.
> 
> Don't mention commit v4.13-9318-g42f461482178 as it was reverted,
> and moot anyway since we can't adjust AT_NO_AUTOMOUNT since 3.1.
> 
> * man2/statx.2:
> Mention that stat(), lstat(), and fstatat() imply AT_NO_AUTOMOUNT.
> 
> Signed-off-by: Pádraig Brady <P@draigBrady.com>

Makes sense to me.
But see a few minor comments below.

Thanks,

Alex

> ---
>  man2/stat.2  | 31 +++----------------------------
>  man2/statx.2 | 18 +++++++++++++++---
>  2 files changed, 18 insertions(+), 31 deletions(-)
> 
> diff --git a/man2/stat.2 b/man2/stat.2
> index 016c1f47d..9000b2ca6 100644
> --- a/man2/stat.2
> +++ b/man2/stat.2
> @@ -319,34 +319,9 @@ to obtain its definition.
>  .TP
>  .BR AT_NO_AUTOMOUNT " (since Linux 2.6.38)"
>  Don't automount the terminal ("basename") component of
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
> +.I pathname.
> +Since Linux 3.1 this flag is ignored.
> +Since Linux 4.11 this flag is implied.
>  .TP
>  .B AT_SYMLINK_NOFOLLOW
>  If
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

Weird break point there.
I see that it was like that in existing code, but please fix it :)

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

> +.BR lstat () ,

s/() ,/(2),/

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


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
