Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A6166DBCEC
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 22:31:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229436AbjDHUbe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 16:31:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbjDHUbe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 16:31:34 -0400
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B2816590
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 13:31:31 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1plFDc-003ICx-Ik; Sat, 08 Apr 2023 22:31:29 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1plFDa-001HTG-QF; Sat, 08 Apr 2023 22:31:27 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1plFDb-0070E7-1o; Sat, 08 Apr 2023 22:31:27 +0200
Date:   Sat, 8 Apr 2023 22:31:27 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Dirk Gouders <dirk@gouders.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Colin Watson <cjwatson@debian.org>,
        Eli Zaretskii <eliz@gnu.org>, linux-man@vger.kernel.org,
        help-texinfo@gnu.org, nabijaczleweli@nabijaczleweli.xyz,
        g.branden.robinson@gmail.com, groff@gnu.org
Subject: Re: Accessibility of man pages
Message-ID: <ZDHPH4wOu+jYqFI9@asta-kit.de>
References: <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com>
 <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
 <ZDFwisXkZNvthBc6@riva.ucam.org>
 <ghh6tqkveq.fsf@gouders.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ghh6tqkveq.fsf@gouders.net>
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Dirk,

Dirk Gouders wrote on Sat, Apr 08, 2023 at 09:48:13PM +0200:

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

These are all terribly slow IMHO.

For comparison, this happens on my OpenBSD notebook, with more than
five hundred optional software packages installed in addition to the
complete default installation:

   $ time man -k any=RLIMIT_NOFILE
  dup, dup2, dup3(2) - duplicate an existing file descriptor
  getrlimit, setrlimit(2) - control maximum system resource consumption
  sudoers(5) - default sudo security policy plugin
    0m00.21s real     0m00.00s user     0m00.03s system

   $ time man -k 'any=rlimit'       
  ps(1) - display process status
  brk, sbrk(2) - change data segment size
  dup, dup2, dup3(2) - duplicate an existing file descriptor
  execve(2) - execute a file
  fork(2) - create a new process
  getdtablecount(2) - get descriptor table count
  getrlimit, setrlimit(2) - control maximum system resource consumption
  mlock, munlock(2) - lock (unlock) physical pages in memory
  mlockall, munlockall(2) - lock (unlock) the address space of a process
  pledge(2) - restrict system operations
  poll, ppoll(2) - synchronous I/O multiplexing
  quotactl(2) - manipulate filesystem quotas
  sigaction(2) - software signal facilities
  getdtablesize(3) - get descriptor table size
  login_cap, login_getclass, login_close, login_getcapbool, login_getcapnum, login_getcapsize, login_getcapstr, login_getcaptime, login_getstyle, setclasscontext, setusercontext(3) - query login.conf database about a user class
  signal, bsd_signal(3) - simplified software signal facilities
  sigvec(3) - software signal facilities
  core(5) - memory image file format
  login.conf(5) - login class capability database
  sudoers(5) - default sudo security policy plugin
  fork1(9) - create a new process
  mi_switch, cpu_switchto(9) - switch to another process context
      0m00.05s real     0m00.01s user     0m00.00s system

   $ time man -k any=RLIMIT_NOFILE 
  dup, dup2, dup3(2) - duplicate an existing file descriptor
  getrlimit, setrlimit(2) - control maximum system resource consumption
  sudoers(5) - default sudo security policy plugin
    0m00.01s real     0m00.01s user     0m00.01s system

The effect that the time goes down from 210 milliseconds to 10
milliseconds when doing the search a second time is due to the fact
that the kernel now has the required information in the buffer cache
and no longer needs to read from the rotating disk.  The machine in
question has i5 2.3 GHz processors and 8 GB of RAM, so it's hardly
a high-end machine.

Yours,
  Ingo
