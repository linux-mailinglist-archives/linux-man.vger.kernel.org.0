Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B43276EF01
	for <lists+linux-man@lfdr.de>; Thu,  3 Aug 2023 18:07:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229634AbjHCQHm convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Thu, 3 Aug 2023 12:07:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234311AbjHCQHl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Aug 2023 12:07:41 -0400
Received: from smtp.gentoo.org (woodpecker.gentoo.org [IPv6:2001:470:ea4a:1:5054:ff:fec7:86e4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 166263A93
        for <linux-man@vger.kernel.org>; Thu,  3 Aug 2023 09:07:36 -0700 (PDT)
References: <oc67sum2hk73gl7oim7kitbqac6gcursqcxf6j2qjxzzdzgbxq@afirbuozty2f>
User-agent: mu4e 1.10.4; emacs 30.0.50
From:   Sam James <sam@gentoo.org>
To:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] fsync.2: no writability requirements, must operate on
 directories
Date:   Thu, 03 Aug 2023 17:07:00 +0100
Organization: Gentoo
In-reply-to: <oc67sum2hk73gl7oim7kitbqac6gcursqcxf6j2qjxzzdzgbxq@afirbuozty2f>
Message-ID: <87y1isnm7w.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URI_HEX autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


наб <nabijaczleweli@nabijaczleweli.xyz> writes:

> [[PGP Signed Part:Undecided]]
> POSIX has for a long time implied that directories are fsyncable,
> and since Issue 8 explicitly specifies directory syncing semantics:
>   https://www.austingroupbugs.net/view.php?id=672
>
> Simultaneously, directories being unopenable for writing is a
> Longest-Standing UNIX Semantic, present in the UNIX Programmer's Manual
> under directory (V), and has always been enshrined in the standards.
>
> Kill the FUD that says that some UNIXes require the fd to be writable:
> they /must not/ and this confuses users:
>   https://101010.pl/@eater@cijber.social/110824211348995583

Must not, or need not be?

>
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
>  man2/fsync.2 | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/man2/fsync.2 b/man2/fsync.2
> index 1043e6a1b..9ced40b28 100644
> --- a/man2/fsync.2
> +++ b/man2/fsync.2
> @@ -155,12 +155,6 @@ .SH VERSIONS
>  .\" POSIX.1-2001: It shall be defined to -1 or 0 or 200112L.
>  .\" -1: unavailable, 0: ask using sysconf().
>  .\" glibc defines them to 1.
> -.PP
> -On some UNIX systems (but not Linux),
> -.I fd
> -must be a
> -.I writable
> -file descriptor.
>  .SH STANDARDS
>  POSIX.1-2008.
>  .SH HISTORY

