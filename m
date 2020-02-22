Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 349A4168B88
	for <lists+linux-man@lfdr.de>; Sat, 22 Feb 2020 02:17:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727167AbgBVBR1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Feb 2020 20:17:27 -0500
Received: from newman.eecs.umich.edu ([141.212.113.18]:46032 "EHLO
        newman.eecs.umich.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726912AbgBVBR1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Feb 2020 20:17:27 -0500
X-Greylist: delayed 771 seconds by postgrey-1.27 at vger.kernel.org; Fri, 21 Feb 2020 20:17:27 EST
Received: from email.eecs.umich.edu (email.eecs.umich.edu [141.212.113.60])
        by newman.eecs.umich.edu (8.14.4/8.14.4) with ESMTP id 01M14QVH026646
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Fri, 21 Feb 2020 20:04:26 -0500
Received: from email.eecs.umich.edu (localhost [127.0.0.1])
        by email.eecs.umich.edu (8.14.4/8.13.0) with ESMTP id 01M14PwS018358;
        Fri, 21 Feb 2020 20:04:25 -0500
Received: from localhost (tpkelly@localhost)
        by email.eecs.umich.edu (8.14.4/8.14.4/Submit) with ESMTP id 01M14OVd018354;
        Fri, 21 Feb 2020 20:04:24 -0500
Date:   Fri, 21 Feb 2020 20:04:24 -0500 (EST)
From:   Terence Kelly <tpkelly@eecs.umich.edu>
To:     mtk.manpages@gmail.com
cc:     linux-man@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
        "Michael Kerrisk (man7.org)" <mtk@man7.org>
Subject: Re: [patch]: mmap.2: New sample code: persistent data structure
In-Reply-To: <alpine.LRH.2.21.1911260040540.10521@email.eecs.umich.edu>
Message-ID: <alpine.LRH.2.21.2002212002221.10400@email.eecs.umich.edu>
References: <alpine.LRH.2.21.1911260040540.10521@email.eecs.umich.edu>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Spam-Status: No, score=3.3 required=5.0 tests=BAYES_99,BAYES_999,
        RP_MATCHES_RCVD autolearn=disabled version=3.4.1
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on
        newman.eecs.umich.edu
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org




Hi Michael,

Do we have an estimate of when a decision might be made regarding my 
suggesion for man mmap(2)?

Thanks.

-- Terence Kelly



On Tue, 26 Nov 2019, Terence Kelly wrote:

> [Verbatim re-transmission of my very recent e-mail (below), this time with 
> the correct TO: and CC: and SUBJECT: fields.  Sorry about the confusion; I'm 
> new at the manpage patch game.]
>
>
> ---------- Forwarded message ----------
> Date: Mon, 25 Nov 2019 23:51:53 -0500 (EST)
> From: Terence Kelly <tpkelly@email.eecs.umich.edu>
> To: "Michael Kerrisk (man7.org)" <mtk@man7.org>
> Cc: Christoph Hellwig <hch@lst.de>
> Subject: Re: suggesting an enhancement for man mmap(2)
>
>
>
> Hi Michael,
>
> Per our earlier conversation, attached is a patch for the mmap(2) manpage
> (against man-pages-5.04/man2/mmap.2, which I downloaded earlier today and 
> which
> I believe is the latest version).  Per the online instructions, the patch is
> also inline below (apologies if my e-mail software mangles it).
>
> My intent is to illustrate succinctly mmap()'s versatility and its most
> important virtues:
>
> Laying out application data structures in memory-mapped files obviates the 
> need
> for serializing/parsing for persistence by enabling applications to 
> manipulate
> persistent data with CPU instructions (LOAD and STORE). Moreover mmap() 
> offers
> high efficiency:  Only accessed data are faulted in, and only modified data 
> are
> pushed back down to durability; in my example program, only the first and 
> last
> pages move between storage and memory.
>
> I've tried to strike a tasteful division of labor between shell commands and 
> C
> code.  My code compiles cleanly with all warnings enabled and it checks 
> syscall
> return values carefully.
>
> Regarding my qualifications on this topic:  I've been working on it for 
> years;
> search the ACM Digital Library for "persistent memory programming" to see a
> recent example of my work.
>
> Please let me know what you think.  I'm willing to iterate with you on this. 
> I
> firmly believe that the full power of mmap() should be documented for 
> developers
> and I'll do whatever I can toward that end.
>
> Thanks.
>
> -- Terence
>
>
>
>
> --- mmap.2_latest_from_man-pages-5.04	2019-11-25 19:00:44.908460718 -0800
> +++ mmap.2_modified_by_Terence_Kelly	2019-11-25 20:17:13.843893947 -0800
> @@ -36,6 +36,7 @@
> .\" Modified 2006-12-04, mtk, various parts rewritten
> .\" 2007-07-10, mtk, Added an example program.
> .\" 2008-11-18, mtk, document MAP_STACK
> +.\" 2019-11-25, Terence Kelly <tpkelly@eecs.umich.edu>, Added new example
> program.
> .\"
> .TH MMAP 2 2019-10-10 "Linux" "Linux Programmer's Manual"
> .SH NAME
> @@ -900,7 +901,7 @@
> .BR tmpfs (5)
> (for example, when using the POSIX shared memory interface documented in
> .BR shm_overview (7)).
> -.SH EXAMPLE
> +.SH EXAMPLES
> .\" FIXME . Add an example here that uses an anonymous shared region for
> .\" IPC between parent and child.
> .PP
> @@ -985,6 +986,100 @@
>     exit(EXIT_SUCCESS);
> }
> .EE
> +.PP
> +The following program maintains within a memory-mapped file a
> +.I persistent data structure
> +that outlives invocations of the program.  Compile the program to
> +.B a.out
> +and use the
> +.B truncate
> +shell utility to create a sparse file named "pstack" that the program
> +will populate with a persistent stack-of-integers data structure.
> +Invoke the program with two kinds of command-line arguments:
> +integers, which are pushed onto the persistent stack, and the string
> +"pop," which causes the top integer on the stack to be printed and
> +removed.  In the sample shell session below, note that values pushed
> +onto the stack by the first invocation of the program persist beyond
> +program exit; the second invocation of the program pops these values.
> +.PP
> +.in +4n
> +.EX
> +.B $ truncate -s `getconf PAGESIZE` pstack
> +.B $ ./a.out 1 2 3
> +.B $ ./a.out pop pop pop pop
> +3
> +2
> +1
> +<stack empty>
> +.EE
> +.in
> +.SS Program source
> +.EX
> +#include <fcntl.h>
> +#include <inttypes.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <string.h>
> +#include <unistd.h>
> +#include <sys/mman.h>
> +#include <sys/stat.h>
> +#include <sys/types.h>
> +
> +#define handle_error(msg) \\
> +    do { perror(msg); exit(EXIT_FAILURE); } while (0)
> +
> +int
> +main(int argc, char *argv[])
> +{
> +    int fd, a;
> +    struct stat sb;
> +    size_t len;
> +    struct pstack {             /* persistent stack header */
> +        int32_t n;              /* number of items in stack */
> +        int32_t s[];            /* array containing stack */
> +    } *p;                       /* ptr to mmap'd stack file */
> +
> +    fd = open("pstack", O_RDWR);
> +    if (fd == \-1)
> +        handle_error("open");
> +
> +    if (fstat(fd, &sb) != 0)    /* to obtain file size */
> +        handle_error("fstat");
> +
> +    len = (size_t) sb.st_size;
> +
> +    p = (struct pstack *) mmap(NULL, len, PROT_READ | PROT_WRITE,
> +                               MAP_SHARED, fd, 0);
> +    if (p == MAP_FAILED)
> +        handle_error("mmap");
> +
> +    for (a = 1; a < argc; a++) {
> +        if (strcmp(argv[a], "pop") == 0) {
> +            if (p->n <= 0) {
> +                printf("<stack empty>\\n");
> +                exit(EXIT_FAILURE);
> +            } else {
> +                printf("%" PRId32 "\\n", p->s[--p->n]);
> +            }
> +        } else {
> +            if (sizeof *p + (size_t) p->n * sizeof p->n >= len) {
> +                printf("<stack full>\\n");
> +                exit(EXIT_FAILURE);
> +            } else {
> +                p->s[p->n++] = atoi(argv[a]);
> +            }
> +        }
> +    }
> +
> +    if (close(fd) != 0)         /* implicit on exit() */
> +        handle_error("close");
> +
> +    if (munmap(p, len) != 0)    /* implicit on exit() */
> +        handle_error("munmap");
> +
> +    exit(EXIT_SUCCESS);
> +}
> +.EE
> .SH SEE ALSO
> .BR ftruncate (2),
> .BR getpagesize (2),
> @@ -1010,6 +1105,13 @@
> .IR /proc/[pid]/smaps .
> .PP
> B.O. Gallmeister, POSIX.4, O'Reilly, pp. 128\(en129 and 389\(en391.
> +.PP
> +T. Kelly, "Persistent Memory Programming on Conventional Hardware,"
> +ACM
> +.I
> +Queue
> +magazine, Vol. 17, No. 4, July/August 2019
> +\%https://queue.acm.org/detail.cfm?id=3358957
> .\"
> .\" Repeat after me: private read-only mappings are 100% equivalent to
> .\" shared read-only mappings. No ifs, buts, or maybes. -- Linus
>
>
>
>
> On Thu, 21 Nov 2019, Michael Kerrisk (man7.org) wrote:
>
>> Hello Terence,
>> 
>> My apologies for the slow reply. Manual page topics should really be
>> directed as per https://www.kernel.org/doc/man-pages/contributing.html
>> 
>> I'm agnostic about your proposal. It could be interesting and useful,
>> but I wonder if the example itself might be a large piece of code?
>> 
>> Thanks,
>> 
>> Michael
>> 
>> On Wed, 18 Sep 2019 at 05:59, Terence Kelly <tpkelly@eecs.umich.edu> wrote:
>> > > > > Mr. Kerrisk,
>> > > First, many thanks for your efforts to improve the Linux man pages, and
>> > for your excellent book.  The community owes you a debt of gratitude.
>> > > I'm writing to suggest an enhancement for man mmap(2).  My goal is to
>> > teach readers that good old fashioned mmap(2) can support what we might
>> > call "the persistent memory style of programming" on conventional 
>> hardware
>> > and OSes.  I've written an article on this subject containing simple
>> > example programs:
>> > > https://queue.acm.org/detail.cfm?id=3358957
>> > > Nowadays often lost in the hype surrounding non-volatile memory 
>> hardware
>> > (Intel Optane) is the simple fact that mmap() alone, together with a few
>> > very simple idioms and tricks, can support a useful software abstraction
>> > of persistent memory on conventional hardware.
>> > > With your permission I'd like to write a new example program for the
>> > mmap(2) man page.  You might also consider including a pointer to the
>> > article above if you deem it appropriate.
>> > > If you're open to my basic suggestion, please advise how I may help.
>> > > Thank you.
>> > > -- Terence Kelly
>> > > P.S.:  I notice from your Web site that you're a Kiwi.  When the
>> > ionosphere is in a cooperative mood I often get my news from Radio New
>> > Zealand via shortwave.
>> > 
>> 
>> -- 
>> Michael Kerrisk, man7.org Training and Consulting
>> mtk@man7.org, http://man7.org/training/
>> "The Linux Programming Interface" -- http://man7.org/tlpi/
