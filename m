Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D068458168F
	for <lists+linux-man@lfdr.de>; Tue, 26 Jul 2022 17:37:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229763AbiGZPhj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Jul 2022 11:37:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbiGZPhi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Jul 2022 11:37:38 -0400
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e752])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DA972BB0C
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 08:37:36 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oGMcn-00Ah1U-SD; Tue, 26 Jul 2022 17:37:34 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oGMcn-006pKp-Ng; Tue, 26 Jul 2022 17:37:33 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oGMcn-0001tE-Mm; Tue, 26 Jul 2022 17:37:33 +0200
Date:   Tue, 26 Jul 2022 17:37:33 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] man-pages.7: Document CAVEATS section
Message-ID: <YuAKPTxrbJ2XuqJN@asta-kit.de>
References: <20220726120817.100462-1-alx.manpages@gmail.com>
 <Yt/yMJuhXd+jH3sp@asta-kit.de>
 <7effe1a8-c1b4-5542-932a-7edf436036ce@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7effe1a8-c1b4-5542-932a-7edf436036ce@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Tue, Jul 26, 2022 at 04:29:49PM +0200:
> On 7/26/22 15:54, Ingo Schwarze wrote:
>> Alejandro Colomar wrote on Tue, Jul 26, 2022 at 02:08:18PM +0200:

>>> CAVEATS is an interesting section from OpenBSD.

>> It is no doubt nice when credit is given to OpenBSD,
>> but in this case, it happens to be undeserved.  ;-)
>> 
>> I see the following early uses of ".SH CAVEATS":
>> 
>>   * 4.2BSD execve(2), released September 1983, author unknown
>>   * 4.3BSD-Tahoe patch(1), released June 1988, author: Larry Wall
>>   * 4.3BSD-Reno amd(8), released June 1990, author: Jan-Simon Pendry
>>   * 4.4BSD strftime(3), released June 1993, author: Arnold Robbins
>>   * 4.4BSD gzip(1), released June 1993, author (unsure) Jean-loup Gailly ?
>>   * 4.4BSD mount_kernfs(8), released June 1993, author: Jan-Simon Pendry
>> 
>> The first instance of ".Sh CAVEATS" i found is:
>> 
>>   * 4.4BSD-Lite1 realpath(3), released April 1994, author Keith Bostic
>> 
>> It doesn't look as if the UC CSRG used CAVEATS in additional files.
>> 
>> Standardization was decided in NetBSD during a discussion
>> on <tech-userlevel@netbsd.org> leading to this commit:
>> 
>>    /src/share/misc/mdoc.template revision 1.6
>>    date: 2002-07-10 09:45:18 +0000;  author: yamt;  lines: +2 -1;
>>    add CAVEATS section. discussed on tech-userlevel.
>> 
>> The login name "yamt" belongs to YAMAMOTO Takashi.
>> 
>> It was then quickly picked up in OpenBSD by Jason McIntyre.
>> 
>> So the section has a tradition of almost 40 years and has been
>> standardized in *BSD for about two decades, even though it was
>> not originally a BSD invention.

> Wasn't it a BSD invention?  The sources you mentioned seem to say it is.

Well, i looked through BSD history first because that's easiest for me,
but it is striking that the authors listed above are not really BSD
people:

 * Larry Wall is the author of perl(1) and not associated with USB or BSD.

 * Jan-Simon Pendry eventually got an account (pendry@) and ultimately
   scored slightly above 1000 commits to BSD, but he was an outside
   contributor and not a member of the CSRG as far as i know.

 * Arnold Robbins joined the GNU awk(1) project in 1988 and eventually
   to over maintenance from Paul Rubin, Jay Fenlason, and RMS.
   Later on, he also contributed to GNU coreutils.
   In fact, the reason his strftime(3) manual page was included
   in 4.4BSD is because it was part of his gawk(1) distribution
   which was included into BSD back then.

 * gzip(1) was also included into BSD as outside code, below contrib/.

The only unambiguous CSRG person in the above list is Keith Bostic,
and by the time he used CAVEATS, the section had already been in use
for more than a decade.

> Would it be correct to say "... section from the BSDs"?

Some might misunderstand even that.  The final CSRG BSD release
only contained about seven instances, all but about two coming
from outside sources, which is not quite what most would expect
hearing "from the BSDs".  Besides, Version 10 AT&T UNIX preceded
4.4BSD-Lite1 by about five years and contained more instances
of CAVEATS.

I dug up some more instances:

 * AT&T System III UNIX man(7), released 1982
 * AT&T UNIX, Eighth Edition ksh(1), released February 1985
 * AT&T UNIX, Tenth Edition about seven addition pages, released 1989

So you could say something like this:

  This section has been used in pages written in the man(7) language
  by authors from a wide range of projects including AT&T, Korn shell,
  Perl, GNU and BSD since the early 1980s.
  Using the section was first officially recommended in 2002
  by the file /usr/share/misc/mdoc.template in NetBSD and OpenBSD.

According to my knowledge, that would be accurate.

Yours,
  Ingo
