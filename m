Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7ED82109912
	for <lists+linux-man@lfdr.de>; Tue, 26 Nov 2019 07:11:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726947AbfKZGLA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Nov 2019 01:11:00 -0500
Received: from newman.eecs.umich.edu ([141.212.113.18]:34226 "EHLO
        newman.eecs.umich.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725730AbfKZGLA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Nov 2019 01:11:00 -0500
X-Greylist: delayed 1455 seconds by postgrey-1.27 at vger.kernel.org; Tue, 26 Nov 2019 01:10:59 EST
Received: from email.eecs.umich.edu (email.eecs.umich.edu [141.212.113.60])
        by newman.eecs.umich.edu (8.14.4/8.14.4) with ESMTP id xAQ5kbuT030224
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Tue, 26 Nov 2019 00:46:37 -0500
Received: from email.eecs.umich.edu (localhost [127.0.0.1])
        by email.eecs.umich.edu (8.14.4/8.13.0) with ESMTP id xAQ5kams011000;
        Tue, 26 Nov 2019 00:46:36 -0500
Received: from localhost (tpkelly@localhost)
        by email.eecs.umich.edu (8.14.4/8.14.4/Submit) with ESMTP id xAQ5ka83010996;
        Tue, 26 Nov 2019 00:46:36 -0500
Date:   Tue, 26 Nov 2019 00:46:36 -0500 (EST)
From:   Terence Kelly <tpkelly@eecs.umich.edu>
To:     mtk.manpages@gmail.com
cc:     linux-man@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
        "Michael Kerrisk (man7.org)" <mtk@man7.org>
Subject: [patch]: mmap.2: New sample code: persistent data structure
Message-ID: <alpine.LRH.2.21.1911260040540.10521@email.eecs.umich.edu>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="-728941455-1865862933-1574743659=:28828"
Content-ID: <alpine.LRH.2.21.1911252348180.6526@email.eecs.umich.edu>
X-Spam-Status: No, score=3.3 required=5.0 tests=BAYES_99,BAYES_999,
        RP_MATCHES_RCVD autolearn=disabled version=3.4.1
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on
        newman.eecs.umich.edu
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---728941455-1865862933-1574743659=:28828
Content-Type: text/plain; FORMAT=flowed; CHARSET=US-ASCII
Content-ID: <alpine.LRH.2.21.1911252348181.6526@email.eecs.umich.edu>



[Verbatim re-transmission of my very recent e-mail (below), this time with 
the correct TO: and CC: and SUBJECT: fields.  Sorry about the confusion; 
I'm new at the manpage patch game.]


---------- Forwarded message ----------
Date: Mon, 25 Nov 2019 23:51:53 -0500 (EST)
From: Terence Kelly <tpkelly@email.eecs.umich.edu>
To: "Michael Kerrisk (man7.org)" <mtk@man7.org>
Cc: Christoph Hellwig <hch@lst.de>
Subject: Re: suggesting an enhancement for man mmap(2)



Hi Michael,

Per our earlier conversation, attached is a patch for the mmap(2) manpage
(against man-pages-5.04/man2/mmap.2, which I downloaded earlier today and which
I believe is the latest version).  Per the online instructions, the patch is
also inline below (apologies if my e-mail software mangles it).

My intent is to illustrate succinctly mmap()'s versatility and its most
important virtues:

Laying out application data structures in memory-mapped files obviates the need
for serializing/parsing for persistence by enabling applications to manipulate
persistent data with CPU instructions (LOAD and STORE). Moreover mmap() offers
high efficiency:  Only accessed data are faulted in, and only modified data are
pushed back down to durability; in my example program, only the first and last
pages move between storage and memory.

I've tried to strike a tasteful division of labor between shell commands and C
code.  My code compiles cleanly with all warnings enabled and it checks syscall
return values carefully.

Regarding my qualifications on this topic:  I've been working on it for years;
search the ACM Digital Library for "persistent memory programming" to see a
recent example of my work.

Please let me know what you think.  I'm willing to iterate with you on this.  I
firmly believe that the full power of mmap() should be documented for developers
and I'll do whatever I can toward that end.

Thanks.

-- Terence




--- mmap.2_latest_from_man-pages-5.04	2019-11-25 19:00:44.908460718 -0800
+++ mmap.2_modified_by_Terence_Kelly	2019-11-25 20:17:13.843893947 -0800
@@ -36,6 +36,7 @@
  .\" Modified 2006-12-04, mtk, various parts rewritten
  .\" 2007-07-10, mtk, Added an example program.
  .\" 2008-11-18, mtk, document MAP_STACK
+.\" 2019-11-25, Terence Kelly <tpkelly@eecs.umich.edu>, Added new example
program.
  .\"
  .TH MMAP 2 2019-10-10 "Linux" "Linux Programmer's Manual"
  .SH NAME
@@ -900,7 +901,7 @@
  .BR tmpfs (5)
  (for example, when using the POSIX shared memory interface documented in
  .BR shm_overview (7)).
-.SH EXAMPLE
+.SH EXAMPLES
  .\" FIXME . Add an example here that uses an anonymous shared region for
  .\" IPC between parent and child.
  .PP
@@ -985,6 +986,100 @@
      exit(EXIT_SUCCESS);
  }
  .EE
+.PP
+The following program maintains within a memory-mapped file a
+.I persistent data structure
+that outlives invocations of the program.  Compile the program to
+.B a.out
+and use the
+.B truncate
+shell utility to create a sparse file named "pstack" that the program
+will populate with a persistent stack-of-integers data structure.
+Invoke the program with two kinds of command-line arguments:
+integers, which are pushed onto the persistent stack, and the string
+"pop," which causes the top integer on the stack to be printed and
+removed.  In the sample shell session below, note that values pushed
+onto the stack by the first invocation of the program persist beyond
+program exit; the second invocation of the program pops these values.
+.PP
+.in +4n
+.EX
+.B $ truncate -s `getconf PAGESIZE` pstack
+.B $ ./a.out 1 2 3
+.B $ ./a.out pop pop pop pop
+3
+2
+1
+<stack empty>
+.EE
+.in
+.SS Program source
+.EX
+#include <fcntl.h>
+#include <inttypes.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <unistd.h>
+#include <sys/mman.h>
+#include <sys/stat.h>
+#include <sys/types.h>
+
+#define handle_error(msg) \\
+    do { perror(msg); exit(EXIT_FAILURE); } while (0)
+
+int
+main(int argc, char *argv[])
+{
+    int fd, a;
+    struct stat sb;
+    size_t len;
+    struct pstack {             /* persistent stack header */
+        int32_t n;              /* number of items in stack */
+        int32_t s[];            /* array containing stack */
+    } *p;                       /* ptr to mmap'd stack file */
+
+    fd = open("pstack", O_RDWR);
+    if (fd == \-1)
+        handle_error("open");
+
+    if (fstat(fd, &sb) != 0)    /* to obtain file size */
+        handle_error("fstat");
+
+    len = (size_t) sb.st_size;
+
+    p = (struct pstack *) mmap(NULL, len, PROT_READ | PROT_WRITE,
+                               MAP_SHARED, fd, 0);
+    if (p == MAP_FAILED)
+        handle_error("mmap");
+
+    for (a = 1; a < argc; a++) {
+        if (strcmp(argv[a], "pop") == 0) {
+            if (p->n <= 0) {
+                printf("<stack empty>\\n");
+                exit(EXIT_FAILURE);
+            } else {
+                printf("%" PRId32 "\\n", p->s[--p->n]);
+            }
+        } else {
+            if (sizeof *p + (size_t) p->n * sizeof p->n >= len) {
+                printf("<stack full>\\n");
+                exit(EXIT_FAILURE);
+            } else {
+                p->s[p->n++] = atoi(argv[a]);
+            }
+        }
+    }
+
+    if (close(fd) != 0)         /* implicit on exit() */
+        handle_error("close");
+
+    if (munmap(p, len) != 0)    /* implicit on exit() */
+        handle_error("munmap");
+
+    exit(EXIT_SUCCESS);
+}
+.EE
  .SH SEE ALSO
  .BR ftruncate (2),
  .BR getpagesize (2),
@@ -1010,6 +1105,13 @@
  .IR /proc/[pid]/smaps .
  .PP
  B.O. Gallmeister, POSIX.4, O'Reilly, pp. 128\(en129 and 389\(en391.
+.PP
+T. Kelly, "Persistent Memory Programming on Conventional Hardware,"
+ACM
+.I
+Queue
+magazine, Vol. 17, No. 4, July/August 2019
+\%https://queue.acm.org/detail.cfm?id=3358957
  .\"
  .\" Repeat after me: private read-only mappings are 100% equivalent to
  .\" shared read-only mappings. No ifs, buts, or maybes. -- Linus




On Thu, 21 Nov 2019, Michael Kerrisk (man7.org) wrote:

> Hello Terence,
> 
> My apologies for the slow reply. Manual page topics should really be
> directed as per https://www.kernel.org/doc/man-pages/contributing.html
> 
> I'm agnostic about your proposal. It could be interesting and useful,
> but I wonder if the example itself might be a large piece of code?
> 
> Thanks,
> 
> Michael
> 
> On Wed, 18 Sep 2019 at 05:59, Terence Kelly <tpkelly@eecs.umich.edu> wrote:
> > 
> > 
> > 
> > Mr. Kerrisk,
> > 
> > First, many thanks for your efforts to improve the Linux man pages, and
> > for your excellent book.  The community owes you a debt of gratitude.
> > 
> > I'm writing to suggest an enhancement for man mmap(2).  My goal is to
> > teach readers that good old fashioned mmap(2) can support what we might
> > call "the persistent memory style of programming" on conventional hardware
> > and OSes.  I've written an article on this subject containing simple
> > example programs:
> > 
> > https://queue.acm.org/detail.cfm?id=3358957
> > 
> > Nowadays often lost in the hype surrounding non-volatile memory hardware
> > (Intel Optane) is the simple fact that mmap() alone, together with a few
> > very simple idioms and tricks, can support a useful software abstraction
> > of persistent memory on conventional hardware.
> > 
> > With your permission I'd like to write a new example program for the
> > mmap(2) man page.  You might also consider including a pointer to the
> > article above if you deem it appropriate.
> > 
> > If you're open to my basic suggestion, please advise how I may help.
> > 
> > Thank you.
> > 
> > -- Terence Kelly
> > 
> > P.S.:  I notice from your Web site that you're a Kiwi.  When the
> > ionosphere is in a cooperative mood I often get my news from Radio New
> > Zealand via shortwave.
> > 
> 
> 
> -- 
> Michael Kerrisk, man7.org Training and Consulting
> mtk@man7.org, http://man7.org/training/
> "The Linux Programming Interface" -- http://man7.org/tlpi/
---728941455-1865862933-1574743659=:28828
Content-Type: application/x-gzip; NAME=mmap.2.for_kerrisk.tar.gz
Content-Transfer-Encoding: BASE64
Content-ID: <alpine.LRH.2.21.1911252347390.28828@email.eecs.umich.edu>
Content-Description: 
Content-Disposition: ATTACHMENT; FILENAME=mmap.2.for_kerrisk.tar.gz

H4sICC2t3F0CA21tYXAuMi5mb3Jfa2Vycmlzay50YXIA7Ft7d9s2ss+/y0+B
9d3cSpFEi5L8drN+Ka22fl1L6aZb52ghEpKw5qsEKUfpzXe/MwOQomTZebU9
555TnTwsEhjMDGYGvxmMg4DHdsseR8nwTiSJVHebz37rTxM+O80m/u/sbLXL
/+efZ057a3vHaW23cZzTdnZaz9jWsz/gk6mUJ4w9k6GKnxr3sff/Tz/Bw/2P
eepOf+v97zy+/zvb28X+t7c7Hdj/Tqu99Yw1/9z/3/3TaDSYtoGhz1Oh0uE4
iYJhwMNGzCdCNbbsZucvraaz13CcRmuLOXv7zeZ+p2PvNXc7280dZ5c1mrvN
plWr1XJKQeTJsRTecDQfDkQiQlcMfxC+Py8TajX3nZ19p23vdtq7e+29zo4h
dHTEGu3t+jarwb877OjIYvbtBrswRGFic7vhtBrNTp0F6V2dzXgio0yxmCep
Yom4T2SailBPg9E7DfjjNM3oY88DIjxk4h0PYl+wOIkmCQ/sYvwucujsmvFe
5GaBCFN2cXw97A+OT3+wanpgLkqdGSEZCckO0/gOfzgSwlV2Fkh3agsve5mv
HYr79YvDP4Pv2QUsxFqGfhP+sI1zGWbvNsz/7FrPCUTyjWIXPMy4j1P737PL
44su6W+v2QTV1faaTq7BkxuWBvFYscpW1WIVcPichzq7n4qQZUqGE5ZOBbu+
6vfeMDXlCTAbiCBK5kyGqUjGHGTM9QHvZKgJq2kwjGYimUmQrLJTrdpWA9np
vjm+uD7vgr4WX/paza96by66zEaNlPdiCooEHngK7AiFb3gYhfMAt9cwlIiJ
jEIGAmhKvetTNhLpvQAZwAJwp3joMXcqfQ/Ven2tNbK7hSa1t7tdd5pN0gl+
xDuZVrpveoNh//Xpabffrx5Y7ANM6yLbMLc2AI2MI9+P7lE/Zr9YwEEj8Fex
e5lOJfBpNNUAF4iBzbEEcTjQ6LFYJEqqFDnzeMqZSpPMTbNEWDUSNcpSX85A
XBnOIpenIJ5i0Zj2IrcPxk6jIEaapacsjWCBE8ZtIGHVUGxQG46gx7BMCOTg
i5qCPbIslb5M5zCLuYmAF8C0ApXBFOI25AEwvhFDRHTvNvQ2lFazavcSqMRR
nGGoIMGBQkk6mtiIxg20lgk8X5HXtmo9EPFuWQiik95H7E6GHgnuRhBIQq/h
yxB4TCZkb2rfquV00WTBq+AdkMlAOo9FIYhFZFf4qZM54BvgA7bQqm2ACPUN
Q8LlZGn4Po1iZlYAcmYKUECFjZBfSVYP5KxaAps9Ex7sS8+M1AasNQ0UFRrp
SIDZ1FkYpcaqZ9zPYDXNs1UrmNbrjOb0ZSwTlZaMYcUWcgmB+jxCXvLnaMsH
mpxw4c1TJKKYZIat1yzZxtptMOVaJ4Qfum/IiP5WmBFrKPbviUiB9JhdH3/X
7ff+1f030+ZixtqbZIvMgQDWXnkGa5b/WjUY0LJqjlU71OKLIE7nL3HpLjGC
caOfRzumoixxhWHsv2To+pkn2OHYDVPfnr4sP4N9SucxCLX8WKWejB4+8+Xo
wUM0lJWHWQg691ZHztUm2uqaxyBTuubxgjF444kxmvgUTMoXQ8BfUVIJ1KTK
bm+tGoYnL2K/4n7nLw5KAevVce/89U0Xnn1AWwbjqzSrSBbEt2oYoCoSg2Ey
cesQDgHlvICfZz+/hUG/avL4fuyBhxzo79pT0Rrhn1H+UL4Xw5T5IlwepTce
+Ct/Nl88cEAI6twDl3qxqaebhdstIBoesNXpYRaM0AHHTKYiwKBoyKybr35+
e7AynycJn0MIofCMIXt59gf2Il5ZdIn5NEF3RyDzjWemUnDE+ZrC2GPfsigW
YSUPlXV2Nbw5++dN1ShIjuGAhVHfstuGU11wvbTPG0hiA6eUJqHmK7gj/61G
VfbXb1mzahgDpqIRiqTZwU1Z0sgybSJUIg6bB0xX9FZWYW9tQHr4rRgR0/ul
nX1RJT1ULl+fn9eRRJ1d31wNhjfd4zP2v/rnf970Bt36go1HPoSdvj++6Z7V
yeCaZVXFqCkcgRbdPXtUYchMSSaEMBUObDsHcAwdkqHDT7Valf1aspQxieUG
cYWsn7+tMzwANqq4anNpbMFQ42XIDte9JU3hOTCubCxFrdtbvZerg9e46/Kg
D0z4EIWfWOf5Bqi657VbbANXqTNgT/3caCCXbx+QW3xdT5n0ARsP/vUiZrWF
TZDQL5h5R99efou7/ilKGGe+/7voAEVFXmq1t7DTPI1kvo1PSW5cvexarh8p
Aa5V8qrc5yWc3NKVKR76xGv1Cc8iOituG2Qh+klc1+oqu+1n0dZ0SsTXodPa
B31CEuDvd7vs+Lx/pXH4uDiqK61qXT+DA5sSOYwX9BTBsNOEdAjQsOM0t+pO
W2cIvRu2CfjA3fw5lt7bTQWsKGYQNDuxr2z2Hff9QGBsT+o6S7AhB7v65kYA
MJyDYcY2c1q7txUROq09wl2Q2uHX9p6TI4yBrdMkcMPrxUlxodOMPLXBuA0a
O43CGbwFAMN99j1PvHtAfPUNq3Z8eoHQ2qr9TyYygafdhL+Ho7TOfox8YGKn
zi4jmwF3/8j8+eZxNoE8n1Iqq3b7fJqmsdrf3PwFJ9vcDewomWx6AsKrb7vj
4O/S+7bd3trd29rJ8zJING5EDKCZ8TGID2B/H31ghsoGLO01ohAyP8T+wLoi
YAppxnMmfslgkI8iAlgnOkUeszrLBp7BngDdjrIU/oX4FvD5COACgywdcz9l
/RH1n2JXhuTctvv71n/arZ2Wrv80t9rw6lnT2d5pdf6s//wRnzVAej2OXgOj
16HodSB6HYZeD6HXI+hHALT1BHy2vgw8Wwidn0TOv1oruHkdbF5FzV8Hmr8S
M38VZP5KxGx9FC8vw2VEy0+DZevLofJHkLL1EZxsfT1K/gKQ/ChGfhoiWx8F
yJ+Bj5+Ex5+GjmnvPgUXroWFn4KM1wDjZXT4JNUvQ8WfBIp/Y9GfBMSPSKzd
eOE7n42FPwKFrS8Gwh/DwdZjKPiD9ezPz++D/z56HfTb4r+dZmdrx9z/Oa2t
dudZs+U4nfaf+O+P+GBCchrF80ROpimrnFaZs7e3zY5DL5FCsZMkyu4BWRxy
MTpy76Ud+i8tnIO53fI8vJar03Ubu5AAmoQPeR5ZFDsM0jsbbIhM6GgSUJoV
BUSJqD1//vy8d9q97Hfxhu1mUPmxe3NyPOhdVOk15ImB1BV1qRgkiFSHR9DB
7wSx4kmEm5A2CTYTyYinMgA8E6MIVPmWiggFdFmGVfCZxJs4LIm7hRRhlEpX
mOsCWCheLJu/SgTRiROhRDKjawcGSbFZyy4EepRjXG2V4/y6FFlXi8ufZZ6z
EOGgZjj0pL4kwhO+LO8cwFu9LJ6+wSE6mEcnmKyqzE8R5AE9iSLcR8kdcrng
yCutBsluQAxxLfkDncBKQNkFFukuAwhFoVhooi/xYhQp6ctLiDIhmAaqAFKG
hJOZYboMYoErQg4yR8gdTkiUBzsHFoRJMd7HAOEoSQQgMdBClKV48eRB0LIZ
wzs7nqVTOExUlXGlskAAv0QJFBDDUnKkL8PoIhSPHUVkjHA6+8Z3Hg/Qakt6
w4hIlFAovG8zdysyhPGBvm4xWBo0iTeaMnzAE8oACiQ6Uz4DDYEpFzdJAs7P
GWgJ78JQNzLMb288QJ7FfQ7oWuulTnT0hRY8hINWhAovIRNB7GEOMxGQr9Cl
z5wFZO907Yu7j7di2qyjsb65ApueL/bwFcmFdgEKwRIRDFpjrjkzCAWykLvg
4jEP0bBH80Jh+hqnzgIsyABKCqN7X3gTseKLaB9aWwvyyKq9Gi+6l2cFn0WL
AMSwnUbTabQdvFPrJtJlfZvd8HmA12KHQiVH6XSeqEwVcWipv6DZaLaxRwEm
/wM860cesn8BRyk7/E8yO5rx8D1+s4PZ+ukO3ts3OzQ9mobsXMxgyw6D6P0R
6kRFLkZDm7t2dvdwdrvRbMEfnA1hWLIffLzaPuR3R0Hm2p5YO2Or0SJZPyf0
/gXzifOr0x+6Z6RbRabNWvaW3d55sEingW0XO5+7yCoN7JlAGnCgrHmNbR27
dc0HbVtXpRJcIeQJKB8ClmuLxZMjtG97nLx8nBK1cGi/JOdNpTdvZLGyvqyl
5DM7Sj61oYQM+ItbP4rOD0Ru6FmIntltAwuL6LH6O+bCFOM8MYP4gEUCPEGp
7kok+j9dXl33e33LDseWfcLWl2iwhmuf9NjGLJIee0Gpr/4RQIHnJQzyMFP7
2MAsYJJO2a0FD7FmQiEmZcW3sc8nitU1wXI6pt96ODIaj4kW/K9EygD702gc
YtKNjy2PU8aSOO9DPLy8GnT7FNvLERtbSgTHLgWGuBd05yYR7PwvGZya1H9g
k5bOuv3Tm971oHd1aWF9HRXAKlVLd1TAUUbtPaakmwfumUxSPL6QQ4id2HXh
YmC2KOhBsDWtJRhYbWugGwISMth8CvKLo5eoIyXhahuWYJ29G60EogFfjQas
vIeiGK4bHox+zPmVU63oc4QCNByzExIMFwcLb1Zt0mNvjNRxLQuYoNIHyqKl
NUe8O42ivLWigqGhwX05gTOxmgtl8dQcWouWlBInBxaFfalJBJHCHoIk5SNw
sUDA2eDR2YbzSFNl3dgrLMJZ+wibePDCIikejpxNqfA3wn6Fe92MFLHY5+4K
Y2At5JD1MiXdHiMh80dWeAJRjvAKUAs9nsxZBcAVwMV7Ple4xkxYCD5+yXLs
ZJoxSpuKB2dxL4NuOAsoPxsGMhzSVlctOiohOgVxul6P+DM23/TG2E2FX4o3
3MdriDmm2CpVeuCSTChObtS5KSKstBDA6AsK0q0nYhF6edsMalFHvxMBhptj
v5a9bbc6mn5O7B7UnqCCEHXGuR5C8S4l5RGRXIEH4NqIJnM6sGlyMduL7sO/
kvPktI1hr7hMIsDLEZppNGSQXT4YvVHb+EBjbazJagCsy4mFm8D0KI4jpYH9
UqtabidMCYGhFCP98eXV5U8XV6/7FnUFVetMIzuA8uAX71F8RUCs8NrRHAPK
IhKkJgbiEPOTiS/EWAXxK+1uNPoPwOIqSDaGE1rzV/QWwUhPKDeRcRolZF0Q
Z+0SzdzxOYQAQLx4oOXdQ2jNVE7lJTUaGwXrxM6gyrB/OsTuoCG2B1WZ1uXx
WIcQsRwzMXWalmjV1/FYz5mswwTsqWJUeIKIB+egJ8HYIWXAJjJ0WhmCC0lP
R4SSDxRbioLiIbSIiXqlkYlU8E2W+h5xqHDLLVSGoFVBvyNdof2j6AC7U9PN
BuOwYo2pXaE9FAvCZ4+MVkjcKbQNKhCDbXQtE+FHMr2XkFZc3eBMSKbIz9CL
ckJFNyKdn/sAHa6ZYzuyINd90z21rilvMcmSeCdczOxsHFyMwxr18jgMB8tj
qHa9PMigoeVxJMJiGCoFjcjVycKS/ont8gZgkgnZksKYSxacxR6dpiYc5DpH
j5lJyN18Csza2vOERJXjnc6idK9onULkKmnKOTkAWEqUIYhMpvlylP36c9Iw
bBqeprBlIwGJmkTYoBYso/kzDZRwOCBAFzNY2DXrwW6Z5j9zUGvss5/rcFH8
t/p4QZxnVMZ6X69VCPsahVRM8HC5zmFR1MYIUjK0fnMlXbU+R02VQYSlERes
19f3SUnkm+7ix7VurSeXYy9VyrN19FDz0MVeBrtqlHdT0t7wx+Pz3tnxoAv4
r6KPC334dGxnq7qhtxJ1n5dJ1EI7xQ5ztbIl4p0r8HjFk2/5TXHlD9AGfTQL
MaUNzfYu7bVtnRitcJWarusSesk3yxwDj0hFACY/nSED12gOA2nMKSvXa6Ge
NSO41WPIyEjOnN1FmKLaB63WvboGaNx/DX46pqyhJIhxgcKe5rFAN+C+KjCy
Z9pkubFF3DEVBQtb1V5fEfbEri/E++nylFXtshdc3/R+BEmt07xHOe+zwOpA
IwobGH7EJ7kGBqHH3cN64B5od7pfOJ/90PSttaavo3oWLqBbHm+omEW+6Imc
R90c/viZWHZr46WmrVw7sI6mJyDPijVib/KKGpFWfsRhlmAad5wGFipI1tKD
XXuZYGF3iKG58STAZiJUBRu9EAEXVSTr7L2ArOnR88pEQHOMX90s0pblaKht
o9066Q1W3bhld+wWZN6AAcGbr7N0adNlWGgYe6hb7Ds54RpHLTqgcfeXUzG7
FBYwqcpiTDSovEvBnL3b3W5sd6iSwLY7DTii8yRf0d4jiuVUBkAoiOKixcBZ
qi/EVe4b8Ab7szzyDEowFhCOGL5l350gqxp+1C3wL06zZYDxyiDSd2lDgQdD
4hSLhHJYVBDwSQ4HqYc/txZsorxRoqvTDDNg7H/a39z070M7FOnmMeBL1xdq
s7XX2e602MYALNbXeJy4Q0EUJNbOHjvOJqy5a10ArklytZTWAJ9hfhRiB72u
apo6esEjDAWjDkiwonZaUj36XBFQKJuIMI7MFfY1mLT2ZGEdVj5PR1/yujAf
8ar3BlwC91OkSxEGobjVnxNcp18kyS2uwOgQq88EHmW8jJmWYfygbHeac3N6
YnkrnJOXH1gSsocijViF/LCx6DFFvj72FrBoIdWBNY3uxQy77miD8S6VahLm
d0WMwgwBbWq3DYfJ8UOuKyviQgJZLiNoaFCk2SAeoFqzjAKE7XsMfD8z+KTg
26QOizqDHgp8aPFyyyMPnMBohr8vNEY/cacCMmawMy8aUjWpujzc1H2KYWAL
NA5/5ok73QQj3NTnIWbIQ/g63O7Yrq6jFLhhRQ2SavT/yUKN7fE4XAmlK3HA
hB8KCDoemTMYA1LZQM66lz9pzLwUU8xWatl6iIy8zNUBGaC73d6uM/M7JfpR
GzJcQFTnER5lk+i2IoI8ADYpaqOXS5HgC3BzBfQ5+KxFdz6mHECBQ5+Wj2As
s0+ID3IdABAYvBmcvO7/hICF4qvUaTo3xXt0Wk+EYMN45YIXYXQ3llKkK0AZ
KQMTkdeD45Pzz9TG7jptsFc4G6tz+jGGnaE+XIa+DM3dQKEyqg/keln8NtOq
CqTSpVvMj9DmNZXvc4ejeeVCIWpCRym8JEEDw9rvnIK5re8rqVWTpdzHYKCL
SWdXfZjhc3MNuKwbavhkwNs9lSRAFOp/Hesiddmm/l5W7qseqBV/LQwYy2+z
QENwIJW1e2VOBRND64v9LOKsKYRQNQONpbTyIiLiL4pi+dphF5DeYRF8mReM
tWdR+E2qf1cQgmdaFOCK0tr+w2Ia1jXytEkbrz6Z7WJ2XpBQmcQdguCq64j7
dBxTXRADgcREPUuoBruucmFR5YLcejyWroQ4dcCWA+syGUxjIdTiAZQDHO5b
8CZNJIUNRTU1kkVXC8zvJq7U74wOEJpRbcfC2OdjdzVdmFBtKTQ1OFSIUUxF
VakeovGBmQMY0MJLiVywNZN0HRL05UkF8NVDQzBsLhjL4Q9AMZOpoyHXl6Ao
0fm/9q68u20kueffwadA9DJZcQxREqnD13gj2bKtxBIVkfLMZuSnBUmQ4pok
uARpDScz+eypsw8Qsj2O9yVv09zDIgg0+qiuruNXVcgacCkuonY+WNylGp+Z
FjNWzjg2Tg8MYSgahqgnDZMH7X7SPNCrmUTvs0yt5KBLO3uU6CEepyvcOmR6
ExHjD4VOtepdJJgiCxD/OknbtO1hoD32J2t4qNWa2McbPRcf9MpeI96ag8jC
ahnvGty6GajJRJSX8cZz6D6iu1ZkL2G7EUz2kh3jvkwzZYfDP254si1NyM15
6/Lk4s3R8ypl9bDGTk0MhkTr9N5g8DB7eNDY6TcHe4P9nbS3193bzR7uHBx2
D/vNR/s7+wcP95pVCq7Ra5mZwQ4YTUbjFHGb/v6ltUEHOXrV+cgw9JshD+yR
2MH8qj8aDDDGk0REqxeXRhZNcX+hya7bxbtxKTOPalGrwUUzVIp8iZk8XY/v
iKR6wOhhNBJ2Ol2jfGPZHxVkxBWld03RjU9Ofjxtd1yRH/URMn2TrVr2AvsD
7lKKl00X+QQxDiBXb5YnibVKkZJrrike91E6NXuNRvM4QoueKAe0w4plr5eB
kEdKPDVW8A/zDLcVjYOCZ3ETnptQ0nyMEA0m6ULcKP1cjqZeDvT/S8UedBZG
diO8CNR5Hly8uZwBAaN1qydWCZr2QmWkiuWDf2vRAPvelVjZNN4A0XrruueR
BHzdYMMB7A+lyMcR4RFkuGgEdidMyZUpDeVKcgz7NGKOi46uYEI9AVbV3+rJ
6YicSdhXJCyKBUpuSx0C8t50iJHdi/te5Bx7ry5bP7RftH4498Uboh88nFj7
Y/PAtI+StDVUKDcS36DwNWE4hhWq6VOFb9S92deBAyTWSQ+yuKtzKANhMA7b
7ZFFihfPObFgQlKd5wiY7pLIgH1IfQd3Isy30pEJr86XcHAivTjv5mc3hkvo
54Z4wjLWjO3hTytPMdiR57HK4+EcbkVNih6V7YoX6fiYsrF6xv1cThcgwLoN
4I0s/kp4fkQdkFPzdjS8jclfNbDuJp4gw02Mb3KWjyh6R4a4NighXnIi0ZuA
Ntqnr9onr95GLH7WPdb/+urVSefN8bph46DebADTPxIjgTcezs6wcbsc8nIW
9Y1INSQPWCUiOoq2yLpfCNiAZNfttA/n7NZwCXx0ezLZxtYW4y7N77xYkNlv
sJwTP3NEXsIN3WFcO/xLh1nCK7k+rpvG2TG64Dfsld1Xa0Nt1h/K4abWiKLK
HLHfbO49erQdXRVMivcpbDKhqPgWcE730McKEugUOv8BmudBWudVEW8K94af
MQ6tcR1Dr/Hc30XzSw29uyIt89YQPdBKlettMnc+w/NjmE1BeqAIN9ehZJaO
PWjqysqng9FwOWerQTbt5ehHoL3QBYFjqwFkOUxBhbudKLFqg7Yt2WrF6Gd0
HhWxsA71Frrr0359+rIDit3mkfiaoVGy2Y3k6ESbEUiIwGo8+3g/G6RI4P4o
nkT3/6YjRMEIhVcEjI1SFSlew70alxjx+7Kf2Znq+byBTSElxqBZdW6XhfiO
0XdOKSMUNMiWFY4HwpP7MS2HJjPAlAEaLORRKnw2G7vx06elCaqt345kjLc3
d6pux4DMOpky2W/MggvMrT8nQk/YV2tbEM8sU1y0Pmvw+1jOW7pv2e2PEPaY
E3RS7KcEDhAriOxsVi78PSporzXWg4gv2JJn6fz9urVZZHzgSu/tmUD2cpSO
yFcCSgP+TF4Z5tS+jUrkjDkJUyaDyCbIEkQ6NWry7jYf69R1l4tq03g/zwpU
Ml2TRXxy3jo7OYtGKnij5OcIBDCcvyBrw1cVAn68xRFO4zFhW9CU3ZZMHNkk
RTyrmvRS9MDPyaSwNtDW1FV4vL7OxsvS7RH5e7yeqJMBnaQzMbipU8CaCdMK
77NaQt1VXbOFwkp5QqJYWwZoD03cZWZKoSUSZbC4419A//IJ6Lx1foyvqyKh
vQPPv4b+oizFeDJQldhwVs3EueWL1sXVG/Rw1cWMIGZjDpRNMR7usaCseEPR
hBWIa6aNQC/AE4xGE5mNphAXwmxP6Yi+PDqD9S6dvY1m4qhtnBZmrXN4xrCQ
fUurgBTQT4XTg7DZHU11udafZeeMP4+R8bubDVMyOKPA3j65fHsC0yLSPWHP
aY0EScbgMNdf/AMSm3MH4V4Ys56QTHgrRh+UZBCdnvGMMaQGGLFxmhE6feUT
X0XrTs/69ALeZkM6gIw8ROpFyjZJ3K5T4Aa3q4Lg45ppCvbFB9jAbItDAYG8
jFU6thVzPIAU8k3Wmm8E3ohMEiYeb8L8V3X0Wanm1GUWASTgrv8taGcZaB2I
LhfCitQPib1nEJoGbntbxBDyfVvkooL/uRSNq5nayX5JX13sUaJaLqUusvtD
4VcOaIE29W02JmQVMIUldKeLLEki7Om9wo6IF9bX6dazhNMOk4kwvm/HKu5u
KH9eCOpaJfU2Du+TenELW41C7H+ZTJBoJQybsb62uhzCDhvqLeeoPaLlEChu
K58Ze349MoZeFL9gC+YrPmjl8cR3geDpbPwf6YK11wVsoIJTj6G3kENPVWYc
CaFCW5F7LNqTdLDk3Fgs3/AGXBb29+F41O3JEMla5p+sxuGIJErtoe2M5dZq
m+YmLXRN7b9sFUQMIjJXbDgyqqt6LNnY+fX8h45hq9d/9DDd2Uv3H2WNwaO9
QXqw19/vDnazxsHeo4f9xuFe47C/nzEgXd7MTdaHcFRnlLuB/xrTkooUdNjY
2dtt0FMbM37gho+PzVpcyIRhyMJKe/hEOM1okvFuQRf8Ij7YY6S6ul5jcb3m
M7hTjuc/AgEb1QkaK3hhmKB8DyebSslc/9jfG5GgMAlZhvwZiY14UM34dtnY
pNoJgynkFya04/aLolbaeIix+BQaxmW7vJ/VcnYfIsAFgzyxOBjsB1wpedPY
0jUa8x4RrIyZl4/730ktJfS6/IBvfXH0Y7TJgrBhFxiha+PomffXmIHyvFEr
SRXoRgarnWB1nowYKfmTHXAMGRLFJM6pPFzeXJSbEjXKP2x5f1LigYhBMubw
k9NlpcKZcIEydNw1zCTRaGGs/iXciMG1qFZIF8SpinEULHJGVgWB6UmLW44V
ILGhm+cklJyuS29uDBR0d57D0YBM/PnFVYwmtDmHKxUJQ7mNSgmPcGBPsUSo
uTd1KYNHMnXSoJaBYLpJSocWpRTkkDnlynbRfcK/Oj89P+2cAsH+R5XSc1Bv
NmEPsLQJDCydOxBeNrKUvJboxReQh+IxSgCMbNLNCAciURalFm5zFs1ZGh54
6PG0cK0B7u573jp/efrq5owccm/etH7wRxYhJ0IV5jgjkUCpo8jg4EOvIMde
p2Yl0HpMj7DgBr1Ho182xb1vMS/loUSbo3oG3EbjRxgfr7IkWlrH2SIzsD/F
UzsIalx1uy0RO9QaOAo9YYASev86hMOJc/gUgskc6eQaVF5JvF0YSCUsIkbT
ScGokBJEgo8+zVmK/Ij1RjwisjtG8p0WxTKLH6rNFbQC9Rr163VugBOr4hEM
u9k278kB7jEHi4lsap4vZ90liJl42C7S4Q2+9IasdrPb2R/xyqj//cNPPYlP
0QN48/4Ozf+ZdaaJ5cXRYWnDqkiP4TAFK0QDDBilXFKGBRBTSRcSP1oI6Ns4
2C0rUxNasYYp9wRdtfxjiORHcOiJmOgnkrfEclG0aQkcSN4uKGDUPMQEny7U
wKGKuACbUe11oXpsW1d1YBBpfKpY3X4xHStjC8h1aU6nqem8xFBQ/CpGozJs
jDZbPjfIB+5c4eo6JZAhhiS1NQyqZmwCEgEGV5Sjk+Ukw/1ZuAK2DSta9wyT
HYbcoZEoGla+GXC+40K6PWe0sZjaF8b+hVZ8MoaissfAfOsp1zbUcTEUfkT7
NF0ucjQ+s1eKhoOe7zv1hiuKD2ODCIjNOK2W+Mqpm5hTIqFYAV0q0hZtYAHZ
kmjdeb4Wph82AEQjlcpYhI8FR2CYjxPGMc0w5zPZVYCRHI3HQgJOvp2UAg0j
E0jMniL1f6YEKxYqJn5XLLsF+qWmC2ciBUddZK49x8w/0oVo4bHCVcn2NGXP
qJxGUfnlZo6kuwRVcO1GHBZ3edK5ujyPQTi8OsFlIKcmSiYuQ2HvFPmAcwKJ
uJjdjEC3KS0i9SixEVHmOKDkN9GmsAeODNmgAMDr+LvaNaLeNhjRZkNKBHgB
bU5zQQPSAS4DFQy8c26qgIfnU3kkZmfpWHaow+KjJfVNf4G+fOnL0TKQd0kK
JBf9ZXxyeg5zSycR5tK+vGxdttVKdHKEWVGU3Tr0TbTBmzRGjywQ9xLd/szT
WmWzggEFkb+TnPwCKRRaoZCWATVMqii2UZbz3SZigSM7cSQ8Bfe1DeSFTW+z
fah+eRxvSqooWFSMpdE3VrfosUmy73KGvbqdqVdHp+e0sek2FFy6iAxh2zYF
/S/yHJYZpVLmVKV7QIjMeDfBW+fjEaqwcBZaCPvJ8dGLl/7Y0ph5X3l9Nh24
thVFFGAG7TutEmjhXl8+PrMWCqrRtZr/mje0dSuYeFHBJl0qx+qNWQG4D2ph
e0VUGf2AbAKF6PHofWajUBOnTfhC0WbqlBLNlewnhCmCWR9zkgKYGJo0BnlR
hg0/jrJWfv+aXL/bqDkMGCdnp/yMCUOyqRqmFGvlGG4ZQU/xyS6NOwjacnSG
fcs5ofNQJOtIECsZVVhhdJLaZ0MKLqY7f8K+H77DfPrZ5AZFmBuYqyUc7Vtb
z/gikpBzcZgtbijFFv4gIoBIvFt3qHUygYroscgX6dhJFsf7mTRrQ+Ww/3q3
ih2kweC/5GKhqDL8KpymR54P8Rho2nuXO5i5aL04ectwXF9AEvEkL6PTeKPo
yaNCu4/8cptH5895Xm1B9u/qeHCGSfrzaLKcOFNiVVEaHIHYaV4wAigjLB2t
J7NpNAeSvJL3QNUyUHJzSiQssfDhzQe9CjqCwhj1+yInViGaCkmeMipciwQ6
PgvU2SxcoSCFbcTGoVHfxJbL27oZYQhEhijPSckwdFjzZwnvvHxzenbauQEa
P4qIpBIvpiSSTLOWH8LI751AfXvr7cnlS9Bm8QBtNihawTVWArkOOYTGqBnE
IZg6TBCKqqWMkOCoB2I8nDigRhAjZ4VZOFKEjsMm0GX30fuEdfHAFL+OP2yA
SM7MCmMfNqLNZoMc8Q6juji5PKsOP02L94VQjhO82XUCW0QyIswFLjWd56xf
TOUvBzVE7A54C5mYp/kWIpsFGd2W6Om9emM/3iZOuWPx2qaPCn8UsDPogB/Y
YE1oHMaNZ+lYo5vhoMHUoewS1bYQQt7+0zomng4qkIF0fByqvIaY5bPTyBso
D5gg3qvCUayskxr3okXhsCDM8JvCBFmqG+qIMXqZ6IMcNmT2ps55YXP01p0W
juGMtg1wgCuvCdkmrXOqu0TYGiuajhitOl/kBoP5BVm4sgPLgxalxNFpNtgU
xXUK3mRLjMb2q25EHj5JCN13I5BRgjzqdC5Pj686IDeS2o37czZOp56zmXM/
WV8EiVo9hgTp2lulHyu/4Dy1I2BN3fznJ9G4e7f7MB534b/ROIb/oA1R6sh8
c6QPfvOWRPzOf7q6Qlnc7vz2TUecPOkgW6y+OetsteEveN8JDQhtZK3Ls9Pz
V3GnFbkWosQzDyVx++18LwE+t3fcfiE+Dbhi0rIUDthb2XyONsuT8x9PW6R+
8YEmz161PzQ+4+EzlAf4aeV7shJvQak5Oj59c9r5E3JCqb4jVivcg4hCq5gb
DYNNjGPZThc5vvUMJPnlhtq9gd14AQILdqYdUSAzQ2Zgfa8HpzZB7/Xggmma
UUJ+EpB6tKl+WZaEOfQ/3mzWJALCnf/H8SkGBKUCSpcXQuNbuyjr7eD/4X27
jTc8pVvwyHJqux/vPEYuKRxe8wyIUY69Y9wqpfGAhnd5ZgmqFmn8w62kDy85
xEQQHTUfHtDEeqoF2k0FBWBzuqr27J1VnP+CrNUc9+nH2NuWHB7Pgm49ulDw
vIYUKqhEUoUwiMt5kFX1ldijydHE4f1EbCpbeNlQ1J5hgPoCbDaFgJxINsTR
ET9euQEcOzGluK0JQn4y8hHfEadFc4KdTw0YuxBDnVqjnMQw5fQ2TuqXzIWx
9jAOEFcyFu2Icum5OReqQijE5ucAW3YUZV7qvHqeTBycau6aQMYO34Rk6Dmh
mUzEAaN38qQ/z+aoXnj6RgVkTR0C1se9lozIeyDaFIzGCk9lQeDV2KEIx+3L
o6s3nZt26+oSlUOcHt4njfruo1jN109Uk7kBTqg366X221NzDQjKedwJPgNG
cKI+c37s1fmVPiUGd3TjZAWvBHuc+exKNceSzDmb+spSI7mCxvkQf7byMJ7t
Ns4dOQsJr1vaVL0mRsVx9iFF2Lje+7gUXJysh35yYg8m1ypfgH3ESDVOMzao
y7lIrN9+NaBx55qCgpMyVC9Zh165lwQb5Fwz8JPEAxwx+kIM81MX1UCSk0lo
oaBnE5nkBtRHFkkBJE+ZH5XbsLCzTYp6D1VIJ4/BhFI1ZiIhYq6zdju+Im5u
tiCd6+MVy58EJ4Hv5Fp0A3SNP0iSMzlMgq0ba6mTSrFXag9AoRYzvPFI2MXB
50spRRJsEvyKGVmSciYKr0e36S9wwqBO3xU3HCJp83mPNinb9Iuq6AnYG+La
hAeytFgpAAgNzAxNyPpGqiO+N58vZwvyV1GGBx+Mjyv80pUmSX8uMo0pICnq
CDZVjnHpkoPDYKiezkb9Z9tY+4N2LGII53221ApAJ0WFliNkvKlX/BiSE4oh
fh4LXmRUiNm/Q704xkgkGGY6zXgt0p7k/OAYtznHxAwEzpJOssh7pyDRzJis
XXysaJ7CSE6bphu12HrM2atDSHANUirlzrKTdqyBEfZwK3qYiXCUo1tV7jH2
/rWzleEKY8pjBZ1bqUs7NWFoyATJQZtwFOWUceQGi9gfk04EglZEC5L2PVgI
W5eksUTDi4gDW8So0wb5hegu9X9oR0wiBWssKZHZS/YGTSjgJh1zGOZ05Q3F
pGr1UU8SVoXKKjS6FtKnXgHvhYmaNyy8AmSv2+kIlhtti3gMyqwqZsk4BOvR
Ce+FQrQnnoiuujGJQugpnBX+7kOG+LoeDBdHZzZ5bVS/ulS3693dHYOQtmYp
FZWBH0+E6bZL4X1J1RanSne4gSoDKMvBWyigU/JDimkh/uOYZTjDHBmgJCZN
ImvW6BJhdqAc/my3NIMEbkXWEsOgsEmOyVnnY5a1d0YTkFpgxguT/UQxPOUE
Q8Spqn5INFKgWNxgemONEnAFRQu9ISrjHEN9Rg2uGMeloZ9lLLkupVXHrYWM
MrfZnBzGw8YK0USDcDX0h18rD2AXR1iGw588ASF7WbBgYD0amJxO8H1SGqjj
nxFISElDcRwILtDKnQxC96R+GgDPcsICvcBgU4eH+mpm5OHB2oQqY2kRvx3R
V0ZMjiRrGdpEC0sVr00oxCb9CeJOzacDywCQ+gQ8Z0OeEhOQpyk5DTWYIqEm
SZRd55JqzMGEkoAlLYUUeg2bvmlBWlarOKxIdBkHviDnbklT/4y0eo5R3A8X
qTvm/JJLnLwjhSPUSIKZ39O412Frsl4PWMf2uftwzvz+18j6m2BriVMxYZ3o
uyajOj3kp+OzdYdNVnOJlyGNxI9XnyNZYwgbI9TQWTgajqYai4U+GAWvjagO
bR/p3YFIqCMC0SxYDVejBGyqD0kI4T5kXCcgZ2XzIuv7SJqGsdEAO7hL++mq
cBKjp5S90qpX2416IxFrggsaAYUNYWb16POGLuMr/F5Egq+ziRT6f1mSo5at
PANJCCnoQLaiHF+9IiOKzXc6zwQwY/GMBbn+NFvPcjgU/y/huog2KnQWyocm
qmtCLFuFXAmCeg+8DFit8PNJPhH7ytS1JsyXCJHhPAF63EtaqnWIf/0wcZV/
A3EXzH/hYf5HA2Ot9xBoqWMRwqyHesBftT80vQy76cJbJDfZCrcte2tE/kkD
WxtV9ny34YMpJGzcsc2ioeUxLovrz9dQXnPgpSbUOuu7GYNLlL7+wnvj6dmh
amJQsBs8I2LK9GbEXTo2CrKVK6IoxAGeXkQJmPRUE/5rVghgSLJDxW2QatII
aZAtPZRwgM87phuLFZUdHsnzYmdHRQoarztkTlS2ypfSDoFO0S62JN3Y7ZsJ
2FrrnsR/cglsNOSNLAJMdGQLwLUAJZxCTnBKBb0V+0Rmlw9E+5yJTttGkIEZ
MqLXXL8CDC0bD5LIQQyZUxbFpkJiiE0NCsFrkoZDqgUup2aN6WlWJxYWuytN
Xl0SFYRs+WAg1YKSLFPuFyeZFbWpAX1UhiJnV6KtVP/VCtXfU6feLVP/1erS
f7osvZpj1wvLUw0p1X8d4J+H7kCCZeG0slQ6USoo1X1UCIA1zjCKzwtL5ZR4
fl1zj8dhqK4cA1SqgxmVyWDqVhmXeinz/j112+vqTmblxuRJ97U+HawmJYqM
BcomTGQWNrXqMG9OpDjMw0ED9UKkaZgMkiyVEaeQ4C+qQVhRJ/EzKyLa6ocf
K12Y/Y1rF8o1YPpPnFqG9xcyZDc600ICdHnDf5arHAJ5yCW5Vjh1wbA38dO4
Gf/6K/UsfhbvuQXUBlI5DaYHhpzEG98WCqAlEvyJX/DuOsMybzSeHbfe2X3l
1H4rVyCkR3ffcQHC1vmbP62VILz+8hqE8rRfHrHz5cUIZfBulbeGjtqsA46M
//jn+L8270nCfb0V7zrTBd2SZ0jNIfCwyffPp5qAr7SGI45WHnn2vVMW8aOL
KA+QYA9tiycbp+E686rifWL5DAXBBHtkI9Ayd4KaLlk4vX6gNz9ze+8VzDOt
2Rtw4lxyL5W+fJ5OrzfTv2IqpALOtpWw1fJozSxqVT95/DzXd0LXYXDPTDvo
0fOf/x2dlFkjse77Um1KfPaBLj48Z8jIKVq5XqfSAcNxZUrzmLN9+H2/u0hl
AX0kNr7Z7rxoXXXIWXLeSrj/9/SVR+K8vMBag3K1XNxybVev94g6YLpUScwq
9JlbP5N4BZyPo/n4CshjpjbjR4sfUr4Jt/53RfnvyurfJKdlk4E1bJqr1kmT
+JkLkrIuS18lM75zBeMwZs53C1DAr/Qr4xf5aDe/FD5wTCS11PmKgUOkJgKP
du+5UUt2UinfGTFLMbdeOIXNoj8aSyINJ0b8cVQuiE710JOqyzfcQmJwtFV1
1Clj81eooq7Frr5COfL/cTVyBt68aV28bp07JpyRlV8lBCrGupE686Riofpr
ykpGMF+oMdWjI3etnDBH0qciNw8n59XkHGm4ihjnZE30XL1S0/qZlHz4NlNG
YkCmF1DSbUV4NOCzCswl4TEDDTB57uV2Pfp/VP9TNcKb7uqmw2a6m3/LgEK/
cv33w4Pdg12p/9lo7u/uYv3P5kEj1P8M9T9D/c9Q/zPU/wz1P0P9z1D/8++8
/qcU/dwFsktikbdikrfip4vZe/zjX7KsV9SXE5j9etZfPtM3I9C36tWhpGgo
KRpKioaSoqGkaCgpGkqKhpKioaRoKCkaSoqGkqKhpGgoKRpKioaSoqGkaCgp
GkqKhpKioaRoKCkaSoqGkqKhpGgoKRpKioaSoqGkaCgpGkqKhpKioaRoKCka
SoqGkqKhpGgoKRpKioaSoqGkaCgpGkqKhpKioaRoKCkaSoqGkqKhpGgoKRpK
ioaSoqGkaCgpGkqKhpKioaRoKCkaSoqGkqKhpGgoKRpKioaSoqGkaCgpGkqK
hpKioaRoKCkaSoqGkqKhpGgoKRpKioaSoqGkaCgpGkqKhpKioaRoKCkaSoqG
kqKhpGgoKRpKioaSoqGkaCgpGkqKhpKifz8lRduhpmioKRpqioaaoqGmaKgp
GmqKhpqi/+drit4rQ+ApgCzHYPL1sN1yzWYpqTc2YE4kVTwBMBCF44SWi/Ho
Ax35HzQQ1Ik+o/I1cYxJCNmsb895zi2W1qEFkl2tRdOgUkAjwqwyywUnL3RN
kxhPW8ixj5p4HxaAIlI3rBYhb2KTl0kqoWmq7LjoOUxViWLOEBHR/khR1kVt
2es+6zl3OSih0z4NuVq4eRxpq4m4zlA3ni1haOjVVSt6qTeJ0ccwmSDIzxvQ
/0Srgkm8BUM2Z7G8QG0BHJjri25oq5GwEViOUxP6N6OUfDjJBdcK48Q9CVom
RZ4VkY57HJke81tM1QgUNS0JlChAhyf6VKSXkXSfuJLiR1rIZ4U4drlDLCK7
GVyAcP7JkE68VcR/HmYLwp3gQYfn3J9jphG+tb5NxBfvxo246V+Ct7n/i5pR
I9qNnvKYCU/7zKZ0+ZTsWCEPwqJgDGzxRVIiU8R9kuOXyax41fToY8Ln9d9Y
+GRhE8j/fnnTipTePby0fHa6Z3B5a8WYCQF2i3NmwkubDWhy+mTtBLd4zxHh
rTByn1qpeLz46d2T0uPpfJ6u3Ege7+Hf4u9mT+LqD/Z8QW5VPA3/IMkLfHHB
iq3K/BIJh/iaUiscnDs16dLiy4VVWC/o7SavXs0RT+T3Gf3qreV3tZJ04ggh
8a+On2NdIqkQUNgBwvLJjjNBsy8QSgYUnQE93n0CZ8lTImj468GDNeFiMe9N
Zix6pu9QTMihFXzjjnur6cvWs2n8tOJHmiGWODY8PnR97UnKnxI69KOS5r0v
+XYD5ve032zEG/gKEOm2nhU/bW1hD9+VG4s+2izNAyw0bKLvZiDbGBqg0X4X
y2/07RlJaZ8xekyv+vUHj2PEfjx48M7TGtKPDLmsiRgBze4c3dEcaM0BF9TJ
2v27h5rx9qVIirOEp8jdl7+nYW5mI9SkDzXpq2vS45jqXK4SGNaFPT8lGlyL
TIr/6Xk+Rfw/Y5pfC4o22YiOnp9BX6N/X2ZLrCszTH8BmSKJ3+ZjeP1hAtpt
PYZ+/etyvNo+Wg7RuoCFLZ0C7n/FR+tpb8L127MF1SIdTDBCvdncf/ho/9CU
i72kXJ9iK59kj00SIoPRt4ZtlMB3d3a+xdp6cNOYLaLUjLHVlh+qozY+GhQU
SMgVhSfpqgsSE2Y+p4zugjN/07p43Tp3PJYja62ViP94v76zp3RCHgVUtUBW
49r0KCCjg6AeHbmU5cjE5D6I3LTznEaeUwLjwmBYv0WkoOYD8ytZrE0Ganyb
qZo2IE9junAWAPEq7PHhFcCEi+n0mnu5XY/+IXzCJ3zCJ3zCJ3z+tz//DWxl
+4QAGAEA

---728941455-1865862933-1574743659=:28828--
