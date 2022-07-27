Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C4735824C7
	for <lists+linux-man@lfdr.de>; Wed, 27 Jul 2022 12:49:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbiG0Ktp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Jul 2022 06:49:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229801AbiG0Ktp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Jul 2022 06:49:45 -0400
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e752])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E861C26C7
        for <linux-man@vger.kernel.org>; Wed, 27 Jul 2022 03:49:43 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oGebl-000tNb-Ex; Wed, 27 Jul 2022 12:49:42 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oGebk-006rsb-RP; Wed, 27 Jul 2022 12:49:40 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oGebk-00017y-Qm; Wed, 27 Jul 2022 12:49:40 +0200
Date:   Wed, 27 Jul 2022 12:49:40 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, groff@gnu.org,
        g.branden.robinson@gmail.com,
        Ralph Corderoy <ralph@inputplus.co.uk>
Subject: Re: [PATCH v3] NULL.3const: Add documentation for NULL
Message-ID: <YuEYRGc1/KBiIfuw@asta-kit.de>
References: <20220722153127.14528-1-alx.manpages@gmail.com>
 <20220724191931.15683-1-alx.manpages@gmail.com>
 <Yt7loB0u3RgKGiDt@asta-kit.de>
 <7368e5aa-4f26-4623-9f29-7564ff36fde5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7368e5aa-4f26-4623-9f29-7564ff36fde5@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Tue, Jul 26, 2022 at 02:02:56PM +0200:
> On 7/25/22 20:49, Ingo Schwarze wrote:
>> Alejandro Colomar wrote on Sun, Jul 24, 2022 at 09:19:32PM +0200:

>>> +.B 0

>> There is really no need to mark up integer constants.

> groff_man_style(7):
>                Use  bold for literal portions of syntax synopses,
>                for command‐line options in running text, and  for
>                literals  that are major topics of the subject un‐
>                der discussion; for example, this page  uses  bold
>                for  macro,  string,  and  register  names.  In an
>                .EX/.EE example of  interactive  I/O  (such  as  a
>                shell session), set only user input in bold.
> 
> Since this is a literal that is a major topic of the subject under 
> discussion, I prefer to be a bit pedantic here and boldface it.
> 
> I guess it's no big issue; does it hurt readability too much for you?

No, it's no big deal and doesn't hurt readability.  It only looks
slightly unusual.

There are cases where a bare '0' character needs to be bold face,
for example when discussing ".Fl 0" in xargs(1).  But here, you
are just talking about the integer 0.  The "major topic" here
is ".Dv NULL", not the ordinary integer 0 that is internally used
to define that constant.
Bold face is mostly for literals that the user needs to type -
and the user is specifically *not* supposed to type this 0.

That's why i consider the .B pointless; then again, it does not
do much harm either.


>>> +.SH CONFORMING TO

>> That should be ".SH STANDARDS".

> We use CONFORMING TO in Linux.  Don't know why; just history, I guess.
> See man-pages(7).

Weird.

I failed to find a single instance of "CONFORMING TO" in AT&T UNIX
(including v6, PWB, v7, 32v, v8, v10, System III, SVR1, SVR2) nor in
any version of UCB CSRG BSD.  So considering that System V and BSD are
widely considered the two main original branches of the development
of Unix-like operating systems and Linux is often considered to have
drawn inspiration from both, the section name "CONFORMING TO" does
not appear to be a UNIX thing.  For example, Aeleen Frisch, "Essential
System Administration", O'Reilly, Cambridge 1995, considers Linux
as slightly more influenced by 4.3BSD than by System V Release 3.

STANDARDS, on the other hand, is present since 4.3BSD-Reno (June 1990).

4.3BSD-Reno predates the first version of the Linux kernel by more than
a year, and the first Linux manual pages probably for longer than that.

So i have no idea where "CONFORMING TO" may have come from.


[...]
>>> +.SH BUGS

>> The following is misplaced in BUGS.  It is not talking about any bug,
>> nor about any API design defect.

> Oh, I do consider this a bug in the API design.  I placed it there on 
> purpose.
> 
> Allowing the bit pattern of all 0s to represent a valid pointer (and 
> thus not a null pointer) is something that could be meaningful many 
> decades ago, when architectures were more different.
> 
> Nowadays, every arch out there is 2's complement, and uses 0s as the 
> null pointer.  The standard should simplify, and allow memset(2)ing 
> pointers.
> 
> In fact, AFAIK, the next revision of POSIX will fix that bug.  But I 
> don't remember well the details of that.

Fair points.  You convinced me this isn't misplaced in BUGS.

Yours,
  Ingo
