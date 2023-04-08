Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7EF3C6DBB34
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 15:41:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229631AbjDHNl4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 09:41:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjDHNlz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 09:41:55 -0400
Received: from eggs.gnu.org (eggs.gnu.org [IPv6:2001:470:142:3::10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0368CD524
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 06:41:54 -0700 (PDT)
Received: from fencepost.gnu.org ([2001:470:142:3::e])
        by eggs.gnu.org with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <eliz@gnu.org>)
        id 1pl8pC-0008FH-RF; Sat, 08 Apr 2023 09:41:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnu.org;
        s=fencepost-gnu-org; h=References:Subject:In-Reply-To:To:From:Date:
        mime-version; bh=iFVoS9BMhip9df1/1V0/IqurOmKA6gqzZ7wfKGFfbRM=; b=C9GteaKlTf0O
        chSmJ6Lb/4R3Wb2ENOPD7pCBxicd/DVkXa8IuNHlkcRfJPj7CZKpHF4u8awpkPRjTekO4U4OZNRT+
        xfv+NI4yF54i0V1fFyQp4gJEJJPDCNStFMHjxBjilYcUnD63dWVzkDeltoDyMXT6P48BEAEk0SW0t
        Cx0pMmcomp+XFeyvDT55R6pHIw/bSpsJx7Hybl2Z+U3a+MYmOlyy0IA6BWUySDwomRsI/rdMQVupZ
        rU3DwV7M7G3srXd7FxJrz7aCYQRoWTEMTutuf3QrDepIiINnJgXGHvT5oFwt2UpyTmwB5PJb1qDCY
        tG2b9nIMMZ/RLZnKVJ6N4Q==;
Received: from [87.69.77.57] (helo=home-c4e4a596f7)
        by fencepost.gnu.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <eliz@gnu.org>)
        id 1pl8pB-0008Bm-RW; Sat, 08 Apr 2023 09:41:50 -0400
Date:   Sat, 08 Apr 2023 16:42:22 +0300
Message-Id: <83mt3imqwx.fsf@gnu.org>
From:   Eli Zaretskii <eliz@gnu.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     cjwatson@debian.org, dirk@gouders.net, linux-man@vger.kernel.org,
        help-texinfo@gnu.org, nabijaczleweli@nabijaczleweli.xyz,
        g.branden.robinson@gmail.com, groff@gnu.org
In-Reply-To: <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> (message from
        Alejandro Colomar on Sat, 8 Apr 2023 15:02:59 +0200)
Subject: Re: Accessibility of man pages (was: Playground pager lsp(1))
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org> <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> Date: Sat, 8 Apr 2023 15:02:59 +0200
> Cc: dirk@gouders.net, linux-man@vger.kernel.org, help-texinfo@gnu.org,
>  nabijaczleweli@nabijaczleweli.xyz, g.branden.robinson@gmail.com,
>  groff@gnu.org
> From: Alejandro Colomar <alx.manpages@gmail.com>
> 
> If you want how symlinks are dereferenced by find(1):
> 
> $ man find | grep sym.*link | head -n1
>        The  -H,  -L  and  -P  options control the treatment of symbolic links.

That's because the text appears verbatim in the man page.  Suppose the
person in question doesn't think about "symbolic links", but has
something else in mind, for example, "dereference".  (Why? because
he/she just happened to see that term in some article, and wanted to
know what does Find do with that.  Or for some other reason.)  Then
they will not find the description of symlink behavior of Find by
searching for "dereference".

Do you see the crucial issue here?  Indexing can tag some text with
topics which do not appear verbatim in the text, but instead
anticipate what people could have in mind when they are searching for
that text without knowing what it says, exactly.

> >> After this patch, if you apropos "system" or "sysctl", you'll see
> >> proc(5) pop up in your list.
> > 
> > This literally adds the text to what the reader will see.  It makes
> > the text longer and thus more difficult to read and parse, and there's
> > a limit to how many key phrases you can add like this.
> 
> If a page has too many topics, consider splitting the page (I agree
> that proc(5) is asking for that job).

Indexing can tag any paragraph of text, not just the entire page.  A
page cannot usefully have too many keywords in its title, but it _can_
benefit from different keywords for different paragraphs.

> >  By contrast,
> > Texinfo lets you add any number of index entries that point to the
> > same text.  A random example from the Emacs manual:
> > 
> >   @cindex arrow keys
> >   @cindex moving point
> >   @cindex movement
> >   @cindex cursor motion
> >   @cindex moving the cursor
> 
> Using consistent language across pages helps for these things.

There's no consistency when we want to be friendly to different people
with vastly different backgrounds and cultural preferences.  Good
indexing will anticipate any "inconsistent" habits.  And, once again,
since the index entries don't appear in the text presented to the
reader, the text remains consistent even if the index entries draw
from different inconsistent sources.

> > Texinfo has:
> > 
> >   - chapters
> >   - sections
> >   - subsections
> >   - subsubsections
> >   - unnumbered variants of the above (unnumberedsubsec etc.)
> >   - appendices (appendix, appendixsubsec etc.)
> >   - headings (majorheading, chapheading, subheading, etc.)
> > 
> > More importantly, all those have meaningful names, not just standard
> > labels like "DESCRIPTION" or "Conversions".
> 
> "Conversions" is not a standard subsection.  It's about conversion
> specifiers; something exclusive of sscanf(3).  However, sections and
> above do be standardized, and I believe that's good, so that you can
> have some a-priori expectations of the organization of a page.

But it then makes it impossible to add sections with meaningful names,
if those names aren't standardized.

> >  So when you see them in
> > TOC or any similar navigation aid, you _know_, at least approximately,
> > what each section is about.
> 
> I know a priori that if I'm reading sscanf(3)'s SYNOPSIS, I'll find
> the function prototype for it.  Or if I read printf(3)'s ATTRIBUTES
> I'll find the thread-safety of the function.

SYNOPSIS is at least approximately self-describing (although some
non-native English speakers might stumble on it).  But how would a
random reader know that ATTRIBUTES will describe thread-safety, for
example?  I wouldn't.  Isn't it better to have a section named "Thread
Safety" instead?

> text search has false positives, like anything else.  But having good
> tools for handling text is the key to solving the problem.  grep(1)
> and sed(1) are your friends when reading man pages.

Modern documentation is not plain text (even if we ignore
compression), so tools which just search the text have limitations,
sometimes serious ones.
