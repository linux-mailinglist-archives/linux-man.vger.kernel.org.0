Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8AD3A4558E
	for <lists+linux-man@lfdr.de>; Fri, 14 Jun 2019 09:17:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725999AbfFNHRk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 Jun 2019 03:17:40 -0400
Received: from mx01-fr.bfs.de ([193.174.231.67]:9785 "EHLO mx01-fr.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725837AbfFNHRj (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 14 Jun 2019 03:17:39 -0400
Received: from mail-fr.bfs.de (mail-fr.bfs.de [10.177.18.200])
        by mx01-fr.bfs.de (Postfix) with ESMTPS id 0A1C520336;
        Fri, 14 Jun 2019 09:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1560496653; h=from:from:sender:reply-to:reply-to:subject:subject:date:date:
         message-id:message-id:to:to:cc:cc:mime-version:mime-version:
         content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=/qL1V8kWkzwxEM0Mn2gsgS4pBXaX8aJ5HIbbKDkOV98=;
        b=A0sgXsZSHjhx4KtQyNluBh7mM0tI8wmjANXhJYbxLwBHFEO17MwwQP4cbegK0r7taxOLoc
        BPmb/DVpQzx5v9GWZNizYlWgjpW3tZgU/F+wAUvQVj0FVOgaV+VFsNAFoM0xNjbve7UCFJ
        WBAKpncmgP3hTMgj1CRFpJQaIJjfXSPgdgqOgkgGN9HIelHYrKjmQTL7AJT0Ze/Wd58FKi
        MZFIc//reg0bwzoVnrudhPQK9cyP4AFGv18FoaGP4EAQ2Bg5KOdcq/5bz/asDOTcbSfbua
        zVnvz8NM0J07OF9suDDfYMMBM+Fer4y+kteejx//VHk/lHa+J+kaSHaD2qBCJA==
Received: from [134.92.181.33] (unknown [134.92.181.33])
        by mail-fr.bfs.de (Postfix) with ESMTPS id DC1F0BEEBD;
        Fri, 14 Jun 2019 09:17:32 +0200 (CEST)
Message-ID: <5D034A0C.2010302@bfs.de>
Date:   Fri, 14 Jun 2019 09:17:32 +0200
From:   walter harms <wharms@bfs.de>
Reply-To: wharms@bfs.de
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.1.16) Gecko/20101125 SUSE/3.0.11 Thunderbird/3.0.11
MIME-Version: 1.0
To:     kerolasa@gmail.com
CC:     linux-man <linux-man@vger.kernel.org>
Subject: Re: [patch] on_exit.3: Add example code
References: <20190507211735.31785-1-kerolasa@iki.fi> <CAKgNAkjArBeBeYU4A7OPFi5jx7aVfAbxN7kb7E-vcDpkMsYrnA@mail.gmail.com> <CAG27Bk1HN5Ku93ZU9hv0+Te=rt5f5JKOFe5RmRf45=xex5P0NA@mail.gmail.com>
In-Reply-To: <CAG27Bk1HN5Ku93ZU9hv0+Te=rt5f5JKOFe5RmRf45=xex5P0NA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.10
Authentication-Results: mx01-fr.bfs.de
X-Spamd-Result: default: False [-3.10 / 7.00];
         HAS_REPLYTO(0.00)[wharms@bfs.de];
         TO_DN_SOME(0.00)[];
         REPLYTO_ADDR_EQ_FROM(0.00)[];
         RCPT_COUNT_TWO(0.00)[2];
         FREEMAIL_TO(0.00)[gmail.com];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-3.00)[99.99%];
         ARC_NA(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         MIME_GOOD(-0.10)[text/plain];
         DKIM_SIGNED(0.00)[];
         NEURAL_HAM(-0.00)[-0.999,0];
         RCVD_COUNT_TWO(0.00)[2];
         RCVD_TLS_ALL(0.00)[]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



Am 13.06.2019 21:39, schrieb Sami Kerola:
> On Wed, 12 Jun 2019 at 23:20, Michael Kerrisk (man-pages)
> <mtk.manpages@gmail.com> wrote:
>> On Tue, 7 May 2019 at 23:17, Sami Kerola <kerolasa@iki.fi> wrote:
>>>
>>> Example tries to clarify one should not refer to variables that are not in
>>> on_exit() scope.  Such variables include heap in main().  In short only
>>
>> I must confess I never thought about this one at length. Why are heap
>> variable not in scope for fcuntions registered with
>> on_exit()/atexit()?
> 



> Hello Michael,
> 
> To be honest I do not know why heap variables do not work.  If I must guess
> I would say probably something to do with when during execution main() heap
> is returned back to free memory - that is before on_exit() runs.
> 

The memory of i in brocken.c is allocated in main() and freed when you
leave main. Because on_exit() is running after main(), game over.

hope that helps,
re,
 wh

> Any way the following shell script will print 42 when on_exit() refers
> variable that is allocated.  At least with up to date (2019-06-13) arch
> linux (glibc 2.29-1) compiled either gcc or clang will print 0 when
> executing broken version.  I suppose zero is just co-incident.  More
> probably value does not have any guarantees.
> 
> Whether on_exit() update should example code showing how to use function
> properly, or a warning in BUGS section is matter of taste.  Either way it
> would be nice if others would not need wonder what is this function doing.
> 
> -- snip
> #!/bin/sh
> 
> cat > ./broken.c <<EOF
> #include <stdio.h>
> #include <stdlib.h>
> #include <string.h>
> #include <unistd.h>
> 
> static void run_on_exit(int exit_val, void *arg)
> {
>         int *i = (int *)arg;
> 
>         printf("%d\n", *i);
>         _exit(exit_val);
> }
> 
> int main(int argc, char **argv)
> {
>         int i = 42;
> 
>         on_exit(run_on_exit, &i);
>         return 0;
> }
> EOF
> 
> cat > ./works.c <<EOF
> #include <stdio.h>
> #include <stdlib.h>
> #include <string.h>
> #include <unistd.h>
> 
> static void run_on_exit(int exit_val, void *arg)
> {
>         int *i = (int *)arg;
> 
>         printf("%d\n", *i);
>         free(i);
>         _exit(exit_val);
> }
> 
> int main(int argc, char **argv)
> {
>         int *i = malloc(sizeof(int));
> 
>         *i = 42;
>         on_exit(run_on_exit, i);
>         return 0;
> }
> EOF
> 
> gcc -Wall -pedantic -o broken broken.c
> gcc -Wall -pedantic -o works works.c
> set -x
> ./broken
> ./works
> -- snip
> 
> $ ./snip.sh
> + ./broken
> 0
> + ./works
> 42
> 
