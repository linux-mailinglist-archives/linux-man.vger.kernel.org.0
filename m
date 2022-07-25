Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17F1B580433
	for <lists+linux-man@lfdr.de>; Mon, 25 Jul 2022 20:49:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231523AbiGYStK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Jul 2022 14:49:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229753AbiGYStK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Jul 2022 14:49:10 -0400
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C306DB89
        for <linux-man@vger.kernel.org>; Mon, 25 Jul 2022 11:49:07 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oG38b-0071ul-Im; Mon, 25 Jul 2022 20:49:05 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oG38a-006nr1-Gf; Mon, 25 Jul 2022 20:49:04 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oG38a-00038K-Fr; Mon, 25 Jul 2022 20:49:04 +0200
Date:   Mon, 25 Jul 2022 20:49:04 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, groff@gnu.org,
        g.branden.robinson@gmail.com,
        Ralph Corderoy <ralph@inputplus.co.uk>
Subject: Re: [PATCH v3] NULL.3const: Add documentation for NULL
Message-ID: <Yt7loB0u3RgKGiDt@asta-kit.de>
References: <20220722153127.14528-1-alx.manpages@gmail.com>
 <20220724191931.15683-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220724191931.15683-1-alx.manpages@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Sun, Jul 24, 2022 at 09:19:32PM +0200:

> - Move to man3const [Ralph, Branden]
> - Added LIBRARY section
> - Added #include [Ralph]
> - Note that it can also be used as a function pointer [Ralph]
> - Document that 0 is another null pointer constant [Ralph]
>   But note that it's to be avoided by most coding standards [alx]
> - Note that NULL is not NUL
> - Improve wording about zeroing a pointer [Ralph]
>   And refer to getaddrinfo(3) for an example.
>   This probably can be further improved; I'm not convinced.
> - Trim SEE ALSO to just void(3type)
> - Other minor fixes
> 
> v3:
> 
> - Don't boldface 0s, since it doesn't refer to the literal constant 0,
>   but to the bit pattern of 0s.
> - Add list of headers that also define NULL (per POSIX.1-2008).
> 
> 
>  man3const/NULL.3const | 80 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
>  create mode 100644 man3const/NULL.3const
> 
> diff --git a/man3const/NULL.3const b/man3const/NULL.3const
> new file mode 100644
> index 000000000..730f670fe
> --- /dev/null
> +++ b/man3const/NULL.3const
> @@ -0,0 +1,80 @@
> +.\" Copyright (c) 2022 by Alejandro Colomar <colomar.6.4.3@gmail.com>
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.\"
> +.TH NULL 3const 2022-07-22 Linux "Linux Programmer's Manual"
> +.SH NAME
> +NULL \- null pointer constant
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc )
> +.SH SYNOPSIS
> +.nf
> +.B #include <stddef.h>
> +.PP
> +.B "#define NULL  ((void *) 0)"
> +.fi
> +.SH DESCRIPTION
> +.B NULL
> +represents a null pointer constant.
> +.PP
> +According to POSIX,

That phrase is misplaced in the DESCRIPTION.
In belongs into STANDARDS.

Not littering the DESCRIPTION with misplaced information is particular
important in the first two sentences, because that's the first point
of contact for the user where they are likely trying to figure out
what the basic idea of the thing is, and whether they are even looking
at the right manual page.

> +it shall expand to an integer constant expression with the value

Using the word "shall" in a manual page is usually terrible style.
Here, it is misleading on top of that because it is unrelated to
anything the user might be expected to do or not do.

A manual page is neither a standard document formally defining
the language nor a guideline for compiler authors.

Considering this sentence in isolation, what you want to say is:

  The macro
  .B NULL
  expands to the integer number 0 cast to the type
  .IR "void *" .

But you are violating an important guideline for writing manual
pages: avoid useless verbosity, don't say the same thing twice.
Here, you are saying exactly the same *three times*:  in the
SYNOPSIS, in the first sentence of the DESCRIPTION, and in the
second sentence of the DESCRIPTION.

Consequently, i suggest deleting the second sentence with no
replacement.

> +.B 0

There is really no need to mark up integer constants.

> +cast to type

Bad grammar:  s/to type/to the type/.

> +.IR "void *" .
> +.PP
> +A null pointer is one that doesn't point to a valid object or function.

That sounds like an afterthought, which is always bad in documentation.
If you think the first sentence is too vague, integrate this information
into the first sentence, where it obviously belongs.
Besides, this wording is misleading: it sounds as if NULL might be
pointing to an invalid object.

I guess what you mean is:

  .B NULL
  represents a null pointer constant, that is, a pointer that
  does not point to anything.

> +.SH CONFORMING TO

That should be ".SH STANDARDS".

> +C99 and later;
> +POSIX.1-2001 and later.
> +.SH NOTES

I throughly hate this section.  It is almost always an indication
that the organization of the page wasn't properly thought through
and random afterthoughts were dumped here.

> +It is undefined behavior to dereference a null pointer

That is formally true, but hardly helpful in a manual page
because what happens when you dereference a NULL pointer is
faily predictable in practice: a segmentation fault.

Any other behaviour of the C language implementation would be such a
massive security risk that i don't think even the most avid compiler
optimizer would seriously consider it.  According to my practical
experience, NULL pointer accesses are among the most frequent bugs,
easily 20-50% of all bugs the can be found by fuzzing real-world code.
Having the C language do anything else than segfault, for example
continue execution with invalid or uninitialized data, would turn
huge numbers of fairly harmless bugs into potentially exploitable
security vulnerabilities.  Using my experience, off the top my head,
i would estimate that *not* segfaulting on NULL pointer accesses
would, in a typical codebase, increase the number of potentially
exploitable vulnerabilities by roughly one power of ten.

So, if you want to be helpful to the reader, you should say
something like:

  While dereferencing a NULL pointer is formally undefined
  behaviour, it almost certainly causes a segmentation fault
  in practice.

> +or to perform pointer arithmetics on it.

Sure.

> +.I NULL \- NULL
> +is, surprisingly, undefined behavior, according to ISO C.

Saying that is completely useless.  Please delete this sentence.

On the one hand, it is irrelevant because nobody in their right
mind would do that in the first place.  A manual page is not
the place to enumerate weird and unusual ways how something
can *not* be used.  Its purpose is to explain proper usage.

Besides, this is already obvious without saying it; it is
not surprising in the least.  Pointer subtraction is only
defined for pointers *into the same object*, and you already
said that NULL pointers are not pointing to an object.

> +.PP
> +.B 0
> +also represents a null pointer constant
> +when used in a context where a pointer is expected.

That is also completely irrelevant because you already told the
user about a better way to create a NULL pointer.  Why digress
into explaining another, no so good way?  On top of that,
taking the SYNOPSIS and standard type coercion rules together,
the content of this sentence is already blazingly obvious:
If an explicit cast (void *)0 yields a NULL pointer, then it
is clear the the implicit coercion "void *p = 0;" can only
have the same result.

> +This is considered bad practise by most coding guidelines,
> +since it can be very confusing,
> +and so
> +.B NULL
> +is preferred.

You do have a minor point here, but all the same, i doubt that
coding style belongs in a manual page, except when it has
security implications.  In that case, it might be appropriate
for the CAVEATS section.  If you think this matters for security,
you might for example say:

  .SH CAVEATS
  To avoid confusing human readers of the code, do not compare
  pointer variables to 0 and do not assign 0 to them.
  Instead, always use
  .BR NULL .

> +.PP
> +.B NULL
> +shouldn't be confused with
> +.BR NUL ,
> +which is an
> +.BR ascii (7)
> +character,
> +represented in C as
> +.BR \(aq\e0\(aq .

That definitely belongs in the CAVEATS section.

> +.PP
> +The following headers also provide
> +.BR NULL :
> +.IR <locale.h> ,
> +.IR <stdio.h> ,
> +.IR <stdlib.h> ,
> +.IR <string.h> ,
> +.IR <time.h> ,
> +.IR <unistd.h> ,
> +and
> +.IR <wchar.h> .

If you think that matters, just put it at the end of the DESCRIPTION,
which is very short anyway.

But usually, i see no need for dwelling on such technicalities.
No harm is done if inexperienced users include <stddef.h>, too,
and experienced users can look up such technicalities in the standard
if they really need them, which happens rarely even for professionals.

> +.SH BUGS

The following is misplaced in BUGS.  It is not talking about any bug,
nor about any API design defect.

If you consider memset of a struct containing pointer members
as unsafe, the section to say so would be CAVEATS because it
would then be considered as a user error, and CAVEATS is the
section to warn users about typical misuse of the API.

It seems in theory, you are correct that

  struct s {
  	void *p;
  };
  s.p = 0;

is guaranteed to set p to NULL whereas

  memset(&s, 0, sizeof(s));

is not.  It's not hugely important though as i doubt that you will
be able to find a system in practice where the latter fails, and if
a future platform would decide to let the latter fail, that would
break such huge amounts of existing code it would not really be
sustainable for the manufacturer of that hypothetical future
system.

> +When it is necessary to set a pointer variable to a null pointer,
> +it is not enough to use
> +.BR memset (3)
> +to zero the pointer
> +(this is usually done when zeroing a struct that contains pointers),
> +since ISO C and POSIX don't guarantee that a bit pattern of all 0s
> +would represent a null pointer.
> +Instead, pointer variables need to be explicitly set to a null pointer
> +when they need to hold a null pointer.
> +See the EXAMPLES section in
> +.BR getaddrinfo (3)
> +for an example program that does this.

That example can also be improved in two respects.

First, and less importantly,

  memset(&hints, 0, sizeof(hints));

is less error prone, more readable, and shorter than

  memset(&hints, 0, sizeof(struct addrinfo));

More importantly, it is not good style to first memset the struct
as a whole and then individual fields like

  hints.ai_flags = 0;
  hints.ai_protocol = 0;

to zero right afterwards.  You should either (preferably, because
that also clears any padding) memset and then only set the fields
you want to be non-0, or set all fields individually, but not both.

Yours,
  Ingo
