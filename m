Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 054692BC456
	for <lists+linux-man@lfdr.de>; Sun, 22 Nov 2020 08:04:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726097AbgKVHEA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Nov 2020 02:04:00 -0500
Received: from mail.kernel.org ([198.145.29.99]:58728 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726957AbgKVHEA (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 22 Nov 2020 02:04:00 -0500
Received: from kernel.org (unknown [77.125.7.142])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 9EA522078E;
        Sun, 22 Nov 2020 07:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1606028639;
        bh=Tpsie6zOv+UJEYxnRgMutvJcnI5x3/oj/0kO+sdkJk8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=wV5sFKSyV1qjEzMLIS2/TZ5zvBUd0aUlgi1CPOLK+AvJAbjUwYvI5gjq8bYsdxZh/
         2iYTWNyNDlbis+dbw/7cD494JbVlAUtwMieffYn7jVuWIn4M4w7P2E2bZON9SeZBaC
         GeQkxmgA5ZaUOEYyJwADmx1VGZk/Wo3dytp4A0z4=
Date:   Sun, 22 Nov 2020 09:03:53 +0200
From:   Mike Rapoport <rppt@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v2] memfd_secret.2: New page describing memfd_secret()
 system call
Message-ID: <20201122070353.GE8537@kernel.org>
References: <20201005073242.GA4251@kernel.org>
 <20201116210136.12390-1-alx.manpages@gmail.com>
 <20201117062630.GC370813@kernel.org>
 <0c706802-b3f5-26c7-8595-4948d262a899@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0c706802-b3f5-26c7-8595-4948d262a899@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

On Sat, Nov 21, 2020 at 10:46:46PM +0100, Alejandro Colomar (man-pages) wrote:
> [[ I'm having trouble with gmail and many CCs lately ]]
> 
> Hi Mike,
> 
> I was reviewing the patch, and have a few questions.
> See below.
> 
> Thanks,
> 
> Alex
> 
> On 11/17/20 7:26 AM, Mike Rapoport wrote:
> > On Mon, Nov 16, 2020 at 10:01:37PM +0100, Alejandro Colomar wrote:
> >> From: Mike Rapoport <rppt@linux.ibm.com>
> >>
> >> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> >> Cowritten-by: Alejandro Colomar <alx.manpages@gmail.com>
> >> Acked-by: Alejandro Colomar <alx.manpages@gmail.com>
> >> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> >> ---
> >>
> >> Hi Mike,
> >>
> >> I added that note about not having a wrapper,
> >> fixed a few minor formatting and wording issues,
> >> and sorted ERRORS alphabetically.
> >
> > Thanks, Alejandro!
> >
> >> Cheers,
> >>
> >> Alex
> >>
> >>  man2/memfd_secret.2 | 178 ++++++++++++++++++++++++++++++++++++++++++++
> >>  1 file changed, 178 insertions(+)
> >>  create mode 100644 man2/memfd_secret.2
> >>
> >> diff --git a/man2/memfd_secret.2 b/man2/memfd_secret.2
> >> new file mode 100644
> >> index 000000000..4e617aa0e
> >> --- /dev/null
> >> +++ b/man2/memfd_secret.2
> >> @@ -0,0 +1,178 @@

...

> >> +.BR memfd_secret ()
> >> +creates an anonymous file and returns a file descriptor that refers
> to it.
> >> +The file can only be memory-mapped;
> >> +the memory in such mapping
> >> +will have stronger protection than usual memory mapped files,
> >> +and so it can be used to store application secrets.
> >> +Unlike a regular file, a file created with
> >> +.BR memfd_secret ()
> >> +lives in RAM and has a volatile backing storage.
> 
> By 'volatile' do you mean as in the keyword?
> If so, maybe we should use [.I volatile].

I don't think the keyword is actually related here. It's more like
volatile in NVRAM :)

> >> +Once all references to the file are dropped, it is automatically
> released.

...

> >> +.BR SECRETMEM_UNCACHED
> >> +In addition to excluding memory areas from the kernel page tables,
> >> +mark the memory mappings uncached in the page table of the owning
> process.
> >> +Such mappings can be used to prevent speculative loads
> >> +and cache-based side channels.
> >> +This mode of
> >> +.BR memfd_secret ()
> >> +is not supported on all architectures.
> >> +.PP
> >> +See also NOTES below.
> 
> Is this paragraph correctly indented?
> It seems like it's a continuation of SECRETMEM_UNCACHED,
> in which case it should use: s/.PP/.IP/

You are right, it should be idented as SECRETMEM_UNCACHED.

> >> +.PP
> >> +As its return value,
> >> +.BR memfd_secret ()
> >> +returns a new file descriptor that can be used to refer to an
> anonymous file.
> >> +This file descriptor is opened for both reading and writing
> >> +.RB ( O_RDWR )
> >> +and
> >> +.B O_LARGEFILE
> >> +is set for the file descriptor.
> >> +.PP
> >> +With respect to
> >> +.BR fork (2)
> >> +and
> >> +.BR execve (2),
> >> +the usual semantics apply for the file descriptor created by
> >> +.BR memfd_secret ().
> >> +A copy of the file descriptor is inherited by the child produced by
> >> +.BR fork (2)
> >> +and refers to the same file.
> >> +The file descriptor is preserved across
> >> +.BR execve (2),
> >> +unless the close-on-exec flag has been set.
> >> +.PP
> >> +The memory regions backed with
> >> +.BR memfd_secret ()
> >> +are locked in the same way as
> >> +.BR mlock (2),
> >> +however the implementation will not try to
> >> +populate the whole range during the
> >> +.BR mmap ()
> 
> s/mmap ()/mmap (2)/

Fixed

> >> +call.
> >> +The amount of memory allowed for memory mappings
> >> +of the file descriptor obeys the same rules as

...

> >> +.SH VERSIONS
> >> +The
> >> +.BR memfd_secret (2)
> >> +system call first appeared in Linux 5.X;
> 
> Was it added in Linux 5.10?
> If so, could you add the commit number in a comment in the next line?

It was not added to 5.10 and it is still only made it up to mmotm tree
but not the mainline.
I'm planning to do another respin of the man page once the code is
actually merged into the Linus tree.

-- 
Sincerely yours,
Mike.
