Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5591A6DBDD8
	for <lists+linux-man@lfdr.de>; Sun,  9 Apr 2023 00:39:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229481AbjDHWj3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 18:39:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbjDHWj3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 18:39:29 -0400
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93C5586A6
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 15:39:26 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1plHDP-003aAT-Aq; Sun, 09 Apr 2023 00:39:23 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1plHDO-001Hdk-3z; Sun, 09 Apr 2023 00:39:22 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1plHDO-0070xY-Bh; Sun, 09 Apr 2023 00:39:22 +0200
Date:   Sun, 9 Apr 2023 00:39:22 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Dirk Gouders <dirk@gouders.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Colin Watson <cjwatson@debian.org>,
        Eli Zaretskii <eliz@gnu.org>, linux-man@vger.kernel.org,
        help-texinfo@gnu.org, nabijaczleweli@nabijaczleweli.xyz,
        g.branden.robinson@gmail.com, groff@gnu.org
Subject: Re: Accessibility of man pages
Message-ID: <ZDHtGq2XbJIcRMcD@asta-kit.de>
References: <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com>
 <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
 <ZDFwisXkZNvthBc6@riva.ucam.org>
 <ghh6tqkveq.fsf@gouders.net>
 <ZDHPH4wOu+jYqFI9@asta-kit.de>
 <gh8rf2ks3v.fsf@gouders.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <gh8rf2ks3v.fsf@gouders.net>
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Dirk,

Dirk Gouders wrote on Sat, Apr 08, 2023 at 10:59:32PM +0200:
> Ingo Schwarze <schwarze@usta.de> writes:
>> Dirk Gouders wrote on Sat, Apr 08, 2023 at 09:48:13PM +0200:

>>> Yes, it's very slow but close to `man -K`:
>>> 
>>> find...             man -K...
>>> 
>>> real 107.45         real 96.34
>>> user 117.06         user 70.11
>>> sys 14.43           sys 26.86
>>> 
>>> [a thought later]
>>> 
>>> Oh, I found something much faster:
>>> 
>>> $ time -p find /usr/share/man -type f | xargs bzgrep -l RLIMIT_NOFILE
>>> [snip]
>>> 
>>> real 24.30
>>> user 32.34
>>> sys 6.84
>>> 
>>> Hmm, perhaps, someone has an explanation for this?

>> These are all terribly slow IMHO.
>>
>> For comparison, this happens on my OpenBSD notebook, with more than
>> five hundred optional software packages installed in addition to the
>> complete default installation:
>>
>>    $ time man -k any=RLIMIT_NOFILE
>>   dup, dup2, dup3(2) - duplicate an existing file descriptor
>>   getrlimit, setrlimit(2) - control maximum system resource consumption
>>   sudoers(5) - default sudo security policy plugin
>>     0m00.21s real     0m00.00s user     0m00.03s system

> Yes, this is really fast and would allow for quite interesting ways to
> work with manual pages.
> 
> But, OpenBSD's `man -k` operates on a makewhatis(8) database and not
> on every single manual page or am I wrong?

Yes, you are completely correct about that.
The database format is documented here:

  https://man.openbsd.org/mandoc.db.5

And the search syntax here:

  https://man.openbsd.org/apropos.1

The concept works very well because in contrast to man(7), mdoc(7)
provides substatial semantic markup (without being harder to write
or maintain).

The comparison seemed relevant to me because as far as i understood the
intention of the thread, participants were looking for ideas to make
searching for content in manual pages more powerful and more efficient.
The combination of semantic markup and indexing of marked up content
is one way to make progress in that direction, and the combination
of mdoc(7) with mandoc(1) is an example of a system demonstrating
the concept.

I understand people familiar with GNU info(1) pointed out that
providing index entries that do not correspond to marked up
content is also occasionally useful.  I do not completely disagree
with that, and the mdoc(7) language as implemented by mandoc(1)
provides a dedicated macro to do just that:

  https://man.openbsd.org/mdoc.7#Tg

Then again, practical experience shows that manual tagging is needed
only in extremely rare cases and completely automatic tagging produces
completely satisfactory index entries for the vast majority of cases.

Yours,
  Ingo
