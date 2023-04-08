Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 322236DBCDA
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 22:01:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229521AbjDHUBs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 16:01:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbjDHUBs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 16:01:48 -0400
Received: from eggs.gnu.org (eggs.gnu.org [IPv6:2001:470:142:3::10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E572E6184
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 13:01:46 -0700 (PDT)
Received: from fencepost.gnu.org ([2001:470:142:3::e])
        by eggs.gnu.org with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <eliz@gnu.org>)
        id 1plEkn-0003Tb-Dp; Sat, 08 Apr 2023 16:01:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnu.org;
        s=fencepost-gnu-org; h=References:Subject:In-Reply-To:To:From:Date:
        mime-version; bh=Yvt38icGOBHd41IKUhY2yJZrQODpIrKxSmFka0PVe6g=; b=XLZ7JOBEDTcd
        y+szYRoLiVlAUfcKhsvgOEwiTvDjoVEpT9vDpl2232F1sImz9D4JEuzM66giS6x9xV7Cvu/AtuTJk
        vRvGi4/sbrIu4r0K7R93YtE0R8mb6sUaYQUXyoH2udd8zkWIjcSu4y6nTFnsUCm2ZVpSJExmhAAP/
        nNeeI3g3Sq/wgK7rbw+jjVmaT3qBaDJLQz9VyIOhQHHWxkOA99aTyVIC7mUDM8wIcdI8N8qJPwjUS
        ZCrnTbuRjXER/yNEoWSUwAD0aHyt7CQDsUrt4lt9/jTvyelTnuXNvibHU1zgxwA5ZELEfIqFrimEg
        5IUNm7lGtIRkHVkay1PLWw==;
Received: from [87.69.77.57] (helo=home-c4e4a596f7)
        by fencepost.gnu.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <eliz@gnu.org>)
        id 1plEki-000353-Ig; Sat, 08 Apr 2023 16:01:40 -0400
Date:   Sat, 08 Apr 2023 23:02:11 +0300
Message-Id: <83bkjym9bw.fsf@gnu.org>
From:   Eli Zaretskii <eliz@gnu.org>
To:     Dirk Gouders <dirk@gouders.net>
Cc:     alx.manpages@gmail.com, cjwatson@debian.org,
        linux-man@vger.kernel.org, help-texinfo@gnu.org,
        nabijaczleweli@nabijaczleweli.xyz, g.branden.robinson@gmail.com,
        groff@gnu.org
In-Reply-To: <ghh6tqkveq.fsf@gouders.net> (message from Dirk Gouders on Sat,
        08 Apr 2023 21:48:13 +0200)
Subject: Re: Accessibility of man pages
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
        <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
        <834jpuuc1a.fsf@gnu.org>
        <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
        <83sfddqvk3.fsf@gnu.org>
        <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com>
        <837cumonv9.fsf@gnu.org>
        <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
        <ZDFwisXkZNvthBc6@riva.ucam.org> <ghh6tqkveq.fsf@gouders.net>
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> From: Dirk Gouders <dirk@gouders.net>
> Cc: Colin Watson <cjwatson@debian.org>, Eli Zaretskii <eliz@gnu.org>,
>         linux-man@vger.kernel.org, help-texinfo@gnu.org,
>         nabijaczleweli@nabijaczleweli.xyz, g.branden.robinson@gmail.com,
>         groff@gnu.org
> Date: Sat, 08 Apr 2023 21:48:13 +0200
> 
> $ find /usr/share/man -type f -exec bzgrep -l RLIMIT_NOFILE {} \;
> /usr/share/man/man1/runuser.1.bz2
> /usr/share/man/man1/su.1.bz2
> /usr/share/man/man1/nghttpx.1.bz2
> /usr/share/man/man3/getdtablesize.3.bz2
> /usr/share/man/man3/mq_open.3.bz2
> /usr/share/man/man3/errno.3.bz2
> /usr/share/man/man3/sysconf.3.bz2
> /usr/share/man/man3p/getrlimit.3p.bz2
> /usr/share/man/man3p/sysconf.3p.bz2
> /usr/share/man/man3p/posix_spawn_file_actions_addclose.3p.bz2
> /usr/share/man/man0p/sys_resource.h.0p.bz2
> /usr/share/man/man2/pidfd_open.2.bz2
> /usr/share/man/man2/poll.2.bz2
> /usr/share/man/man2/getrlimit.2.bz2
> /usr/share/man/man2/open.2.bz2
> /usr/share/man/man2/select.2.bz2
> /usr/share/man/man2/fcntl.2.bz2
> /usr/share/man/man2/seccomp_unotify.2.bz2
> /usr/share/man/man2/dup.2.bz2
> /usr/share/man/man2/pidfd_getfd.2.bz2
> /usr/share/man/man7/fanotify.7.bz2
> /usr/share/man/man7/capabilities.7.bz2
> /usr/share/man/man7/unix.7.bz2
> /usr/share/man/man5/proc.5.bz2
> 
> Yes, it's very slow but close to `man -K`:
> 
> find...             man -K...
> 
> real 107.45         real 96.34
> user 117.06         user 70.11
> sys 14.43           sys 26.86
> 
> [a thought later]
> 
> Oh, I found something much faster:
> 
> $ time -p find /usr/share/man -type f | xargs bzgrep -l RLIMIT_NOFILE
> [snip]
> 
> real 24.30
> user 32.34
> sys 6.84
> 
> Hmm, perhaps, someone has an explanation for this?

Multiprocessing, obviously.  Your CPU has more than one execution
unit, so the pipe via xargs runs 'find' and 'bzgrep' in parallel on
two different execution units.  By contrast, "find -exec" runs them
sequentially, in a single thread.
