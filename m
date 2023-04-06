Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 425F26D913D
	for <lists+linux-man@lfdr.de>; Thu,  6 Apr 2023 10:11:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235194AbjDFILV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 Apr 2023 04:11:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234878AbjDFILU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 Apr 2023 04:11:20 -0400
Received: from eggs.gnu.org (eggs.gnu.org [IPv6:2001:470:142:3::10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2029E57
        for <linux-man@vger.kernel.org>; Thu,  6 Apr 2023 01:11:17 -0700 (PDT)
Received: from fencepost.gnu.org ([2001:470:142:3::e])
        by eggs.gnu.org with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <eliz@gnu.org>)
        id 1pkKi8-0004o6-Ee; Thu, 06 Apr 2023 04:11:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnu.org;
        s=fencepost-gnu-org; h=MIME-version:References:Subject:In-Reply-To:To:From:
        Date; bh=nfLSR+2QMlZk2gK8C8HHGeZuHXiPeo79txYV3cZECJc=; b=A8C5RclDmQlsoMtcgBK9
        r7m5V+3qP24DpOEISe2MML0zh40xLHHc1IamIGwbWiW92vsNwTZRm6Eeh9EpjZ1Ko77qCQH0Biifo
        9A7rd7PqdZnJNhrhnZVSe4YhFFYIZNLlC67mc4Yceo+l8ILcFTkin5afXmfjD2/LSvVp8QygCvP3d
        zOWugrIWEHPMEL6j5eCHsUWettYvjaxbF9k4aBSwjXRtRaj/cxnLisJDC1dOxgyuJCLaQQmOB50C5
        yYW7D6l+32RzYP70j/xDjUWVAlKQtcF6qSVDqOniSpmATfVB5CC+d78Tss7NUOWstuBdrJ5ausKFG
        XdGvw6bP0puxYw==;
Received: from [87.69.77.57] (helo=home-c4e4a596f7)
        by fencepost.gnu.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <eliz@gnu.org>)
        id 1pkKi7-0003hf-Ki; Thu, 06 Apr 2023 04:11:11 -0400
Date:   Thu, 06 Apr 2023 11:11:40 +0300
Message-Id: <83sfddqvk3.fsf@gnu.org>
From:   Eli Zaretskii <eliz@gnu.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     dirk@gouders.net, linux-man@vger.kernel.org, help-texinfo@gnu.org
In-Reply-To: <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> (message from
        Alejandro Colomar on Thu, 6 Apr 2023 03:10:59 +0200)
Subject: Re: Playground pager lsp(1)
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org> <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
MIME-version: 1.0
Content-type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> Date: Thu, 6 Apr 2023 03:10:59 +0200
> Cc: dirk@gouders.net, linux-man@vger.kernel.org, help-texinfo@gnu.org
> From: Alejandro Colomar <alx.manpages@gmail.com>
> 
> > This last sentence is a misunderstanding.  The goal of Texinfo is not
> > to improve the man pages.  Texinfo is a completely different approach
> > to software documentation, which allows to write large books and then
> > produce various on-line and off-line formats to read and efficiently
> > search those books.
> 
> "The manual was intended to be typeset; some detail is sacrificed on
> terminals." (man(1), _Unix Time-Sharing System Programmer's Manual_,
> Eighth Edition, Volume 1, February 1985)
> 
> You mean books like this one?  Courtesy of groff(1)'s Deri James =)
> <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-pages-6.04.01.pdf>
> 
> Or maybe you prefer HTML?
> <https://man7.org/linux/man-pages/man1/intro.1.html>

No, I mean books like "GNU Emacs Manual" or "Debugging with GDB"
(https://shop.fsf.org/collection/books-docs).  Or "War and Peace", for
that matter.

> As to efficiency, I'm not going to open that melon, because we're
> both very biased to be efficient on the formats we each maintain.
> I'll just say that I don't see an objective winner in those terms.

How do you find the description of, say, "dereference symbolic link"
(to take just a random example from the Emacs manual) when the actual
text of the manual include neither this string nor matches for any
related regular expressions, like "dereference.*link"?

The way Info does it is to use the index (which should be present in
any respectable reference document) to find description of the
corresponding subject.  The indexing, which is done by the author of
the document, if it's a good indexing, should include index entries
that specify subjects the reader could have in mind when he/she is
looking for this kind of information.

The corresponding index-searching commands of Info readers are a
primary means for finding information quickly and efficiently,
avoiding too many false positives and also avoiding frustrating
misses, i.e., searches that fail to find anything pertinent.

So this is not about objectivity, this is about features that either
are present in the documentation system or are absent.  I prefer the
Info format to the HTML format of the same manual for this single
reason: HTML browsers don't have the index searching capabilities
(this is hopefully about to change, I hope, see the JS support in
latest Texinfo), and that issue alone was enough to avert me from
HTML, because I cannot afford wasting time on looking up information I
cannot find instantly.

> About variety of output formats, anything that can be produced by
> groff(1), man(7) can be translated.  And groff(1) can do many formats.

Groff (and any other typesetting program) can be used for writing any
kind of documents.  I'm not talking about the processors, I'm talking
about the design of the documentation system as a whole and about what
the products actually look like.  IOW, I'm talking about the man pages
produced by the typesetter, not about what can be done with the
typesetter.

> > Man pages have no means of specifying structure
> 
> .SH, .SS, .TP, .TQ, and very soon (hopefully weeks not months) .MR

These provide just one level.

And how frequently are they used in actual man pages out there, even
when available?

> Those can be used to produce very precise links such as this one
> (one of my favourite references when reviewing man-pages patches):
> <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-pages-6.04.01.pdf#pdf%3Abm11886>

It's full of mojibake when I try reading it here.  But anyway: what
structure do you have there?  It looks just a long sequence of
separate man pages.

> > and hyper-links except
> > by loosely-coupling pages via "SEE ALSO" cross-references at the end;
> > they have no means of quickly and efficiently finding some specific
> > subject except by text search (which usually produces a lot of false
> > positives).
> 
> I guess you mean searching from the command line by the name of the
> parameter to a function, or what?

No, I mean looking a specific subject of interest without having to
search/read through the entire document.

> I would be interested in a more detailed description of what you
> want to be able to search in current pages (hopefully ones that I
> maintain, so I can speak of them) that you can't find easily?  Maybe
> I can help making something more accessible.

See above, the example of using index-searching commands.

> > By contrast, Texinfo documents have sectioning structure, have
> > cross-references that can appear where you need them and point
> > anywhere else in the document (or into another document).
> 
> This was discussed as a possible extension to '.MR'.  We're just not
> sure that there's a real need for that in manual pages (although
> there's not a consensus on that regard, and Branden, which I'm sure
> is reading this, may jump in at any moment :).

Cannot say about man pages, but in a serious documentation of any
computer software you always need cross-references, because you cannot
make any description self-contained without repeating the same stuff
over and over and over again.

Here's a short examples from a random place in the Emacs Lisp
Reference manual:

     When an editing command returns to the editor command loop, Emacs
  automatically calls ‘set-buffer’ on the buffer shown in the selected
  window (*note Selecting Windows::).  This is to prevent confusion: it
  ensures that the buffer that the cursor is in, when Emacs reads a
  command, is the buffer to which that command applies (*note Command
  Loop::).  Thus, you should not use ‘set-buffer’ to switch visibly to a
  different buffer; for that, use the functions described in *note
  Switching Buffers::.

The three places which say with "see SOMETHING" are cross-references
to other parts of the manual.  Without being able to cross-reference
there, the text would have to explain what it means by "selected
window", what it means by "commands" and "command loop", and mention
explicitly the functions to switch to a buffer which are already
described in detail elsewhere.  This allows readers who already know
about those subjects to read the text without having to skip large
amounts of unnecessary information, while also allowing readers who
are not sure they know about that to be able to follow the link, read
there, and then come back to the same place to continue reading.

> >  They also
> > have indexing and commands that allow the reader to use the index in
> > order to find the subject he/she is interested in very quickly and
> 
> You mean whatis(1) and apropos(1)?

No.  These perform text searches on the titles of the man pages, and
are therefore limited to what is in the title.  Indexing is much more
powerful, and works on the topics in the index (which, as explained
above, could contain text not present anywhere else in the document).
And every respectful Info manual has an index (some have several
indices).  See above about the commands which use the index.

> > accurately, even if the text of the index entry doesn't appear
> > anywhere in the manual.
> 
> man pages have several ways:
> 
> -  Including keywords in the NAME section.
> -  Link pages.
> -  TH line.

This is not enough, IME.  You need a way of "tagging" a chunk of text
as describing, or being pertinent to, a particular subject, even if
that subject does not appear literally in the text the reader will
see.  That's because when readers are after some specific material,
they don't always have in mind the exact words used in the manual for
describing that material, they could have some alternative phrases in
their minds.  Good indexing anticipates this in advance, and provides
index entries for those alternative phrases, allowing readers to find
stuff quickly.

> Of course, this is for the terminal.  For PDF or HTML, you can
> get hyperlinks to any subsection (and in the future maybe even
> tagged paragraphs) within a page.

In Info, references to any paragraph are available since long ago.
They are invaluable in some situations, especially when some section
is very long and you want to point to a very specific part thereof.

> > How can you document a large and flexible software package, such as
> > GDB or Texinfo or Emacs, in man pages?
> 
> git is a huge program, yet its man pages are quite useful.

Git is a huge heap of separate commands, with very little to glue them
together in terms of documented functionalities.  Still, even in Git,
there's the stuff that belongs to neither command in particular, and
thus is documented in man pages with invented names like
"gitrevisions", which is impossible to guess in advance for a newbie
who needs this information.

Moreover, the introduction material and the explanation of basic
concepts is not in man pages, but in a separate HTML document ("The
Git User's Manual"), and likewise the API documentation, which in
itself is a telltale sign.

While something like a huge heap of man pages is perhaps borderline
reasonable for Git, it isn't reasonable for programs which are not
easily broken into separate independent "pages", like GDB and Emacs.
The more complex is the system of objects and concepts manipulated by
the software, the less appropriate is the man-page format for
describing it.

> Just split your documentation at the right boundary, which
> usually requires a good design for your software that allows
> such division.

Whether the manual is split or not is immaterial.  Info manuals can
also be split.  The relevant issue is what the viewer allows the
reader to do to read these chunks in a reasonable way, using efficient
commands and features to find related information quickly.

> The fact that current man(1) implementations don't exploit
> the whole power of man(7) doesn't mean you can't design a
> software that does.

Indeed, it doesn't mean that.  But we are discussing what is there,
not what could be there in some distant future.

> I'm sure you could build something similar to info(1) that
> got man(7) pages as its input.

No!  The information about subsections, cross-references, and indices
is missing.  That information must be there to begin with, otherwise
it cannot be recreated, because it's inserted by humans, not by
programs.

> > It isn't missing.  The TOC is presented as top-level menu in each
> > manual, and large manuals have also the "detailed menu" with all the
> > sub-nodes spelled out.  In addition, the Emacs Info reader has the
> > Info-toc command, which presents a structured menu with all the
> > sectioning levels of a manual even if the manual didn't produce it.
> 
> Ahh, yes, this is true.  What I found missing is a kind of a map for
> knowing what I have available for navigating (also the fact that I
> don't usually run info(1) makes me be a bit fuzzy on detailing what
> is it that I miss from it).  So, info(1) has a map of the sections
> available in a page, and does it also have a map of all the pages
> in the system (or whatever you call your pages, I don't yet really
> understand the organization of info manuals).

Yes, it does.  If you invoke 'info' with no arguments, it will show
the "directory" of all the installed manuals -- a large menu where
each manual has at least one line explaining what the manual
describes.  Some manuals have much more than one line; examples
include Coreutils and Binutils (which have a line for each individual
command) and glibc (which has a line for every _function_).
