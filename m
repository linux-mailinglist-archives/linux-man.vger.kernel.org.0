Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB7D16DBD1B
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 22:59:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229446AbjDHU7y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 16:59:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbjDHU7x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 16:59:53 -0400
Received: from mx10.gouders.net (mx10.gouders.net [202.61.206.94])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08A544EFD
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 13:59:51 -0700 (PDT)
Received: from localhost (ip-109-40-241-98.web.vodafone.de [109.40.241.98])
        (authenticated bits=0)
        by mx10.gouders.net (8.17.1.9/8.16.1) with ESMTPSA id 338Kxbvw032330
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
        Sat, 8 Apr 2023 22:59:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gouders.net; s=gnet;
        t=1680987580; bh=kMmJ0+yd2bS13KiraMh7esScYxDKVi6gpedSH+LI1LY=;
        h=From:To:Cc:Subject:In-Reply-To:References:Date;
        b=aHr3+I6S+eNJSD/frpxDFJakO4SAW6lUKIysiRU/45KXy7msnYHpAybbntUbYd1vq
         fGMOOgZ3nLFYcc+55iipSu8d+ZWKDIq8FJZenbJqjYd9RH29ho8A31tQF1hLvAw8pe
         OpLEFHQ5L8GJfGGIsH/q+5RfyX+8kVf5hv8dkNR8=
From:   Dirk Gouders <dirk@gouders.net>
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Colin Watson <cjwatson@debian.org>,
        Eli Zaretskii <eliz@gnu.org>, linux-man@vger.kernel.org,
        help-texinfo@gnu.org, nabijaczleweli@nabijaczleweli.xyz,
        g.branden.robinson@gmail.com, groff@gnu.org
Subject: Re: Accessibility of man pages
In-Reply-To: <ZDHPH4wOu+jYqFI9@asta-kit.de> (Ingo Schwarze's message of "Sat,
        8 Apr 2023 22:31:27 +0200")
References: <ghbkkgo8x8.fsf@gouders.net>
        <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
        <834jpuuc1a.fsf@gnu.org>
        <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
        <83sfddqvk3.fsf@gnu.org>
        <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com>
        <837cumonv9.fsf@gnu.org>
        <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
        <ZDFwisXkZNvthBc6@riva.ucam.org> <ghh6tqkveq.fsf@gouders.net>
        <ZDHPH4wOu+jYqFI9@asta-kit.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
Date:   Sat, 08 Apr 2023 22:59:32 +0200
Message-ID: <gh8rf2ks3v.fsf@gouders.net>
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

Hi Ingo,

Ingo Schwarze <schwarze@usta.de> writes:

> Hi Dirk,
>
> Dirk Gouders wrote on Sat, Apr 08, 2023 at 09:48:13PM +0200:
>
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
> These are all terribly slow IMHO.
>
> For comparison, this happens on my OpenBSD notebook, with more than
> five hundred optional software packages installed in addition to the
> complete default installation:
>
>    $ time man -k any=RLIMIT_NOFILE
>   dup, dup2, dup3(2) - duplicate an existing file descriptor
>   getrlimit, setrlimit(2) - control maximum system resource consumption
>   sudoers(5) - default sudo security policy plugin
>     0m00.21s real     0m00.00s user     0m00.03s system

Yes, this is really fast and would allow for quite interesting ways to
work with manual pages.

But, OpenBSD's `man -k` operates on a makewhatis(8) database and not on every
single manual page or am I wrong?

Regards,

Dirk
