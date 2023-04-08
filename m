Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CABB16DB93E
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 09:04:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229494AbjDHHEs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 03:04:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjDHHEr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 03:04:47 -0400
Received: from eggs.gnu.org (eggs.gnu.org [IPv6:2001:470:142:3::10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECF2BD515
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 00:04:45 -0700 (PDT)
Received: from fencepost.gnu.org ([2001:470:142:3::e])
        by eggs.gnu.org with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <eliz@gnu.org>)
        id 1pl2cr-0001I3-Gy; Sat, 08 Apr 2023 03:04:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnu.org;
        s=fencepost-gnu-org; h=MIME-version:References:Subject:In-Reply-To:To:From:
        Date; bh=D8mrVYRukvneWYSMratrvQhiZ17IKXjP0MxxTAabfJ4=; b=NJUpFVMas61AxIYJ67gP
        Yj+YwI4K6OHaHjnKfHRCxY2hgiap2fspHXXhhkFDvEzXN+JtnCLqHjX2jG+PJgJymTgqDZfSDPdXg
        UdHP4DdKXgRtSzSwGUrcpF1q/sFSUactRbuLRBrvRgtMHxOXrzxML1bPDzVcNsUZ+S+UMSFow22L+
        oGf5AGRd/Q4/wEf+rVMeU1fkIJ1MnsGgr8P7hpuKAKXfQTuZQ+XpHXwbPoXc4vmJl4xB37mcT/sU7
        1pR1g5TE2HxIbeasTeV8xSUCPDPGuPLuZ9VFPOaeq+z5obmUP4+rBVRJmPK9Fn6+QyEhOHvUx4ybA
        gE95EaBXDvSM4w==;
Received: from [87.69.77.57] (helo=home-c4e4a596f7)
        by fencepost.gnu.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <eliz@gnu.org>)
        id 1pl2cr-0001hp-0c; Sat, 08 Apr 2023 03:04:41 -0400
Date:   Sat, 08 Apr 2023 10:05:14 +0300
Message-Id: <837cumonv9.fsf@gnu.org>
From:   Eli Zaretskii <eliz@gnu.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     dirk@gouders.net, linux-man@vger.kernel.org, help-texinfo@gnu.org,
        nabijaczleweli@nabijaczleweli.xyz, g.branden.robinson@gmail.com,
        groff@gnu.org, cjwatson@debian.org
In-Reply-To: <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> (message from
        Alejandro Colomar on Sat, 8 Apr 2023 00:01:08 +0200)
Subject: Re: Playground pager lsp(1)
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org> <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com>
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

> Date: Sat, 8 Apr 2023 00:01:08 +0200
> Cc: dirk@gouders.net, linux-man@vger.kernel.org, help-texinfo@gnu.org,
>  наб <nabijaczleweli@nabijaczleweli.xyz>,
>  "G. Branden Robinson" <g.branden.robinson@gmail.com>, groff <groff@gnu.org>,
>  Colin Watson <cjwatson@debian.org>
> From: Alejandro Colomar <alx.manpages@gmail.com>
> 
> > How do you find the description of, say, "dereference symbolic link"
> > (to take just a random example from the Emacs manual) when the actual
> > text of the manual include neither this string nor matches for any
> > related regular expressions, like "dereference.*link"?
> 
> $ apropos link | grep sym | head -n5
> readlink (2)         - read value of a symbolic link
> readlinkat (2)       - read value of a symbolic link
> sln (8)              - create symbolic links
> symlink (2)          - make a new name for a file
> symlink (7)          - symbolic link handling
> 
> I bet you're looking for readlink(2) and symlink(7), aren't you?

I said "in the Emacs manual", and I said "when the actual text of the
manual doesn't include the phrase you are looking for".  So your
example is not really up to its job: it uses text that is not the
Emacs manual, and it finds only hits that literally appear in the
title text of the man pages.  For example, the above doesn't find the
man page of Find, nor the man pages of cp and ls (and quite a few of
others), all of which discuss what these utilities do with symbolic
links.  By contrast, the Info manual of Coreutils has almost 40 index
entries starting with "symbolic link", and they are all shown when the
user types "i symbolic link TAB" ('i' being the letter that invokes
index-searching command).

> diff --git a/man5/proc.5 b/man5/proc.5
> index 521402fe8..233cc1c9d 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -36,7 +36,7 @@
>  .\"
>  .TH proc 5 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -proc \- process information pseudo-filesystem
> +proc \- process information, system information, and sysctl pseudo-filesystem
>  .SH DESCRIPTION
>  The
>  .B proc
> 
> 
> After this patch, if you apropos "system" or "sysctl", you'll see
> proc(5) pop up in your list.

This literally adds the text to what the reader will see.  It makes
the text longer and thus more difficult to read and parse, and there's
a limit to how many key phrases you can add like this.  By contrast,
Texinfo lets you add any number of index entries that point to the
same text.  A random example from the Emacs manual:

  @cindex arrow keys
  @cindex moving point
  @cindex movement
  @cindex cursor motion
  @cindex moving the cursor
    To do more than insert characters, you have to know how to move
  point (@pxref{Point}).  The keyboard commands @kbd{C-f}, @kbd{C-b},
  @kbd{C-n}, and @kbd{C-p} move point to the right, left, down, and up,
  respectively.  You can also move point using the @dfn{arrow keys}
  present on most keyboards: @key{RIGHT}, @key{LEFT},
  @key{DOWN}, and @key{UP}; however, many Emacs users find
  that it is slower to use the arrow keys than the control keys, because
  you need to move your hand to the area of the keyboard where those
  keys are located.

This paragraph has 5 index entries with different key phrases, all
pointing to it.  Different people will have different phrases in their
minds when they think about "cursor movement", thus the need for
several entries.  One of the phrases appears in the text literally,
the other don't; moreover, one of them, "movement" is a very frequent
word, so searching for it with Grep is likely to bring a lot of false
hits, whereas index-searching commands will not.

> > The corresponding index-searching commands of Info readers are a
> > primary means for finding information quickly and efficiently,
> > avoiding too many false positives and also avoiding frustrating
> > misses, i.e., searches that fail to find anything pertinent.
> 
> That's no different than apropos(1).

See above: it is very different.

> >>> Man pages have no means of specifying structure
> >>
> >> .SH, .SS, .TP, .TQ, and very soon (hopefully weeks not months) .MR
> > 
> > These provide just one level.
> 
> We have many levels:
> 
> book:		/opt/local/foobar/man/
> volume:		man2/, man3/, ...
> chapter:	man3/, man3type/, ...
> page:		sscanf(3)
> section:	sscanf(3)/DESCRIPTION
> subsection:	sscanf(3)/DESCRIPTION/Conversions
> tags:		sscanf(3)/DESCRIPTION/Conversions/n

Texinfo has:

  - chapters
  - sections
  - subsections
  - subsubsections
  - unnumbered variants of the above (unnumberedsubsec etc.)
  - appendices (appendix, appendixsubsec etc.)
  - headings (majorheading, chapheading, subheading, etc.)

More importantly, all those have meaningful names, not just standard
labels like "DESCRIPTION" or "Conversions".  So when you see them in
TOC or any similar navigation aid, you _know_, at least approximately,
what each section is about.

> >>> and hyper-links except
> >>> by loosely-coupling pages via "SEE ALSO" cross-references at the end;
> >>> they have no means of quickly and efficiently finding some specific
> >>> subject except by text search (which usually produces a lot of false
> >>> positives).
> >>
> >> I guess you mean searching from the command line by the name of the
> >> parameter to a function, or what?
> > 
> > No, I mean looking a specific subject of interest without having to
> > search/read through the entire document.
> 
> See symlink above.

Not relevant.

> >> I would be interested in a more detailed description of what you
> >> want to be able to search in current pages (hopefully ones that I
> >> maintain, so I can speak of them) that you can't find easily?  Maybe
> >> I can help making something more accessible.
> > 
> > See above, the example of using index-searching commands.
> 
> Yep.  I hope my answer about symlinks satisfied you.

No, it didn't.
