Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8F336DBCD4
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 21:48:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229527AbjDHTsl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 15:48:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbjDHTsk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 15:48:40 -0400
Received: from mx10.gouders.net (mx10.gouders.net [202.61.206.94])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BC07268D
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 12:48:38 -0700 (PDT)
Received: from localhost (ip-109-40-241-98.web.vodafone.de [109.40.241.98])
        (authenticated bits=0)
        by mx10.gouders.net (8.17.1.9/8.16.1) with ESMTPSA id 338JmJiO028909
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
        Sat, 8 Apr 2023 21:48:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gouders.net; s=gnet;
        t=1680983300; bh=mwXRC8jrxSvSLlgg0nulINNuMXc5ZxZvPlQ7GRUE89I=;
        h=From:To:Cc:Subject:In-Reply-To:References:Date;
        b=KNHkIXnmBbSehDB/W21GtBS+qrbFBFz9AeZUPoI0chhYVV/WE252Sl9qnWczJ000S
         l0JEB+GmQtk2JlcaK8yQA+rxL9H7ffYL20kwBMKt8+jA/HMLwoyKs+opvJhTJtDFsU
         GbSf/xEtZZxxQE7aRt/+IJ+ZudnTAolVZi6O5ksI=
From:   Dirk Gouders <dirk@gouders.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Colin Watson <cjwatson@debian.org>, Eli Zaretskii <eliz@gnu.org>,
        linux-man@vger.kernel.org, help-texinfo@gnu.org,
        nabijaczleweli@nabijaczleweli.xyz, g.branden.robinson@gmail.com,
        groff@gnu.org
Subject: Re: Accessibility of man pages
In-Reply-To: <ZDFwisXkZNvthBc6@riva.ucam.org> (Colin Watson's message of "Sat,
        8 Apr 2023 14:47:54 +0100")
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
        <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
        <834jpuuc1a.fsf@gnu.org>
        <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
        <83sfddqvk3.fsf@gnu.org>
        <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com>
        <837cumonv9.fsf@gnu.org>
        <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
        <ZDFwisXkZNvthBc6@riva.ucam.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
Date:   Sat, 08 Apr 2023 21:48:13 +0200
Message-ID: <ghh6tqkveq.fsf@gouders.net>
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

Hi Alex,

Colin Watson <cjwatson@debian.org> writes:

> On Sat, Apr 08, 2023 at 03:02:59PM +0200, Alejandro Colomar wrote:
>> Colin, I've had a feeling for a long time that compressed pages are
>> not very useful.  These days, storage is cheap.  How would you feel
>> about having the man pages installed uncompressed in Debian?  That
>> would allow running text tools directly in /usr/share/man/.
>
> I'm not personally all that bothered either way, but it's a
> distribution-wide policy decision rather than something I'd decide on.
> I suspect there are still some people who would push back against the
> space cost.
>
>> I've had to do that several times, and lucky me that I have the source
>> code of the Linux man-pages checked out in my computers, but other
>> users don't and they might have trouble finding for example which
>> pages talk about RLIMIT_NOFILE.  The only way I know of is:
>>
>> $ grep -rl RLIMIT_NOFILE man*
>> man2/dup.2
>> man2/pidfd_getfd.2
>> man2/open.2
>> man2/fcntl.2
>> man2/poll.2
>> man2/pidfd_open.2
>> man2/getrlimit.2
>> man2/select.2
>> man2/seccomp_unotify.2
>> man3/getdtablesize.3
>> man3/mq_open.3
>> man3/errno.3
>> man3/sysconf.3
>> man5/proc.5
>> man7/unix.7
>> man7/fanotify.7
>> man7/capabilities.7
>
> man -Kaw RLIMIT_NOFILE

Sometimes it is good to have options and one would be bzgrep(1).
As far as I know it doesn't understand "-r" but:

$ find /usr/share/man -type f -exec bzgrep -l RLIMIT_NOFILE {} \;
/usr/share/man/man1/runuser.1.bz2
/usr/share/man/man1/su.1.bz2
/usr/share/man/man1/nghttpx.1.bz2
/usr/share/man/man3/getdtablesize.3.bz2
/usr/share/man/man3/mq_open.3.bz2
/usr/share/man/man3/errno.3.bz2
/usr/share/man/man3/sysconf.3.bz2
/usr/share/man/man3p/getrlimit.3p.bz2
/usr/share/man/man3p/sysconf.3p.bz2
/usr/share/man/man3p/posix_spawn_file_actions_addclose.3p.bz2
/usr/share/man/man0p/sys_resource.h.0p.bz2
/usr/share/man/man2/pidfd_open.2.bz2
/usr/share/man/man2/poll.2.bz2
/usr/share/man/man2/getrlimit.2.bz2
/usr/share/man/man2/open.2.bz2
/usr/share/man/man2/select.2.bz2
/usr/share/man/man2/fcntl.2.bz2
/usr/share/man/man2/seccomp_unotify.2.bz2
/usr/share/man/man2/dup.2.bz2
/usr/share/man/man2/pidfd_getfd.2.bz2
/usr/share/man/man7/fanotify.7.bz2
/usr/share/man/man7/capabilities.7.bz2
/usr/share/man/man7/unix.7.bz2
/usr/share/man/man5/proc.5.bz2

Yes, it's very slow but close to `man -K`:

find...             man -K...

real 107.45         real 96.34
user 117.06         user 70.11
sys 14.43           sys 26.86

[a thought later]

Oh, I found something much faster:

$ time -p find /usr/share/man -type f | xargs bzgrep -l RLIMIT_NOFILE
[snip]

real 24.30
user 32.34
sys 6.84

Hmm, perhaps, someone has an explanation for this?

Cheers,

Dirk
