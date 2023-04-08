Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35C586DBCFD
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 22:47:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229459AbjDHUrI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 16:47:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbjDHUrH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 16:47:07 -0400
Received: from mx10.gouders.net (mx10.gouders.net [202.61.206.94])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DECFA5271
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 13:47:06 -0700 (PDT)
Received: from localhost (ip-109-40-241-98.web.vodafone.de [109.40.241.98])
        (authenticated bits=0)
        by mx10.gouders.net (8.17.1.9/8.16.1) with ESMTPSA id 338KkpSs031689
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
        Sat, 8 Apr 2023 22:46:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gouders.net; s=gnet;
        t=1680986812; bh=ekB2ZWk1EALjFPLxhfDPAa+7PpFwgf9dOpfOQ9kBPeM=;
        h=From:To:Cc:Subject:In-Reply-To:References:Date;
        b=HxnbeUX8tC+9RfenEf9C5rX7RdNqTLfihCKosVCRqqDxV9oAoDmKHD37LHjdNLAPw
         GakkKK0YogM71bAp60No07tLWVDPs2cY2fwcZVkghOCutIExAB8+XfUyzRp2iqBtdQ
         jKkYN7dpRVfiRZHcaye8ThUkfmb6462Wd+snoKU0=
From:   Dirk Gouders <dirk@gouders.net>
To:     Eli Zaretskii <eliz@gnu.org>
Cc:     alx.manpages@gmail.com, cjwatson@debian.org,
        linux-man@vger.kernel.org, help-texinfo@gnu.org,
        nabijaczleweli@nabijaczleweli.xyz, g.branden.robinson@gmail.com,
        groff@gnu.org
Subject: Re: Accessibility of man pages
In-Reply-To: <83bkjym9bw.fsf@gnu.org> (Eli Zaretskii's message of "Sat, 08 Apr
        2023 23:02:11 +0300")
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
        <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
        <834jpuuc1a.fsf@gnu.org>
        <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
        <83sfddqvk3.fsf@gnu.org>
        <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com>
        <837cumonv9.fsf@gnu.org>
        <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
        <ZDFwisXkZNvthBc6@riva.ucam.org> <ghh6tqkveq.fsf@gouders.net>
        <83bkjym9bw.fsf@gnu.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
Date:   Sat, 08 Apr 2023 22:46:46 +0200
Message-ID: <ghcz4eksp5.fsf@gouders.net>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Eli Zaretskii <eliz@gnu.org> writes:

>> From: Dirk Gouders <dirk@gouders.net>
>> Cc: Colin Watson <cjwatson@debian.org>, Eli Zaretskii <eliz@gnu.org>,
>>         linux-man@vger.kernel.org, help-texinfo@gnu.org,
>>         nabijaczleweli@nabijaczleweli.xyz, g.branden.robinson@gmail.com,
>>         groff@gnu.org
>> Date: Sat, 08 Apr 2023 21:48:13 +0200
>> 
>> $ find /usr/share/man -type f -exec bzgrep -l RLIMIT_NOFILE {} \;
>> /usr/share/man/man1/runuser.1.bz2
>> /usr/share/man/man1/su.1.bz2
>> /usr/share/man/man1/nghttpx.1.bz2
>> /usr/share/man/man3/getdtablesize.3.bz2
>> /usr/share/man/man3/mq_open.3.bz2
>> /usr/share/man/man3/errno.3.bz2
>> /usr/share/man/man3/sysconf.3.bz2
>> /usr/share/man/man3p/getrlimit.3p.bz2
>> /usr/share/man/man3p/sysconf.3p.bz2
>> /usr/share/man/man3p/posix_spawn_file_actions_addclose.3p.bz2
>> /usr/share/man/man0p/sys_resource.h.0p.bz2
>> /usr/share/man/man2/pidfd_open.2.bz2
>> /usr/share/man/man2/poll.2.bz2
>> /usr/share/man/man2/getrlimit.2.bz2
>> /usr/share/man/man2/open.2.bz2
>> /usr/share/man/man2/select.2.bz2
>> /usr/share/man/man2/fcntl.2.bz2
>> /usr/share/man/man2/seccomp_unotify.2.bz2
>> /usr/share/man/man2/dup.2.bz2
>> /usr/share/man/man2/pidfd_getfd.2.bz2
>> /usr/share/man/man7/fanotify.7.bz2
>> /usr/share/man/man7/capabilities.7.bz2
>> /usr/share/man/man7/unix.7.bz2
>> /usr/share/man/man5/proc.5.bz2
>> 
>> Yes, it's very slow but close to `man -K`:
>> 
>> find...             man -K...
>> 
>> real 107.45         real 96.34
>> user 117.06         user 70.11
>> sys 14.43           sys 26.86
>> 
>> [a thought later]
>> 
>> Oh, I found something much faster:
>> 
>> $ time -p find /usr/share/man -type f | xargs bzgrep -l RLIMIT_NOFILE
>> [snip]
>> 
>> real 24.30
>> user 32.34
>> sys 6.84
>> 
>> Hmm, perhaps, someone has an explanation for this?
>
> Multiprocessing, obviously.  Your CPU has more than one execution
> unit, so the pipe via xargs runs 'find' and 'bzgrep' in parallel on
> two different execution units.  By contrast, "find -exec" runs them
> sequentially, in a single thread.

Yes, that must be it, thanks.  I noticed `man -K...` uses up to four
CPUs in parallel and therefore was unsure.

With your explanation, we can get even faster:

$ time -p find /usr/share/man -type f | xargs -P 6 bzgrep -l RLIMIT_NOFILE
[snip]

real 7.56
user 32.97
sys 7.02

Dirk

PS: Colin, too late, I noticed a Mail-Followup-To Header in your mail.
    For the future: Is it correct that in such a case one should use
    that recipient list (without your address) -- even if he replies to
    something you wrote?  In that case: I'm sorry I did that wrong.
