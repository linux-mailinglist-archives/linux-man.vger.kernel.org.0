Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F2EB57E330
	for <lists+linux-man@lfdr.de>; Fri, 22 Jul 2022 16:44:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235311AbiGVOoI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jul 2022 10:44:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235213AbiGVOoF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jul 2022 10:44:05 -0400
Received: from scc-mailout-kit-02-level5.scc.kit.edu (scc-mailout-kit-02-level5.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e765])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDC9C72EF0
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 07:44:02 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oEtsm-000anj-PT; Fri, 22 Jul 2022 16:44:01 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oEtsm-006kIL-6Z; Fri, 22 Jul 2022 16:44:00 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oEtsm-0008Qf-5f; Fri, 22 Jul 2022 16:44:00 +0200
Date:   Fri, 22 Jul 2022 16:44:00 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Colin Watson <cjwatson@debian.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        g.branden.robinson@gmail.com
Cc:     linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: All caps .TH page title
Message-ID: <Ytq3sB/coOoikKLJ@asta-kit.de>
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <Ytnt4dPmkrPmL1Sh@riva.ucam.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Ytnt4dPmkrPmL1Sh@riva.ucam.org>
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

Colin Watson wrote on Fri, Jul 22, 2022 at 01:22:57AM +0100:

> man-db doesn't index on the .TH section at all, and I don't believe
> I've encountered the practice of doing so in other indexers
> (I could be wrong, but I think that's something I would have
> remembered if I'd noticed it).

FWIW, the mandoc(1) implementation of the indexes uses the following
to derive names for a page:

 * the first component of the file name,
   including of hard, soft, and .so links
 * in man(7) pages, the first argument of the .TH macro        <<=====
 * in man(7) pages, any words preceding the first "-" or "\-"
   in the NAME section
 * in mdoc(7) pages, the first argument of the .Dt macro       <<=====
 * in mdoc(7) pages, arguments of .Nm macros in the NAME section
 * in mdoc(7) pages, arguments of .Nm macros in the SYNOPSIS
 * in mdoc(7) pages, first arguments of .Fo and .Fn macros in the SYNOPSIS

The last two - mdoc(7) SYNOPSIS content - are only used for man -k
searches explicitly specifying the Nm search key.  All others are also
used for plain man(1) name lookup.

In mandoc the following are used as section names:

 * if the directory name starts with "man" or "cat", the rest of it
 * the file name suffix, starting after the last dot
 * in man(7) pages, the second argument of the .TH macro
 * in mdoc(7) pages, the second argument of the .Dt macro

The above rules often cause pages to end up with more than on name
and and more than one section.  For example, a file called

  man3p/strcpy.3

containing

  .TH strlcat 3bsd
  .SH NAME
  wcslcpy, wcslcat \- yadayada

can be found with any of the following commands, and several more:

  man 3bsd strcpy
  man 3 strlcat
  man wcslcat
  man 3p wcslcpy

As a special case, if the .TH or .Dt argument agrees with one among
the other names but differs in case, it is not used, because
mandoc assumes the other name is likely correctly cased while
the name in the .TH or .Dt macro may have been converted to all caps.

> man-db's man(1) performs case-insensitive lookups by default, which
> I've found to be more useful behaviour.  Case-sensitive lookup can be
> requested using the -I/--match-case option.

In the mandoc implementation, plain man(1) follows the tradition of
being case-sensitive, but i must admit examples of manual pages with
names that differ only in case are hard to find indeed, so it might
make sense to change this and make it agree with man-db.

In the mandoc implementation of apropos(1), searches use case-insensitive
extended regular expressions by default (which originally was a
proposal coming from FreeBSD).  If the regular expression operator '~'
is explicitly specified, the search becomes case-sensitive.  If the -i
option is given, it becomes case-insensitive again.  The substring-search
operator '=' always remains case-insensitive no matter what.

> As far as I know this was an innovation when I introduced it in 2002,
> so I don't know how widespread this behaviour is among man(1)
> implementations.  You probably can't rely on it.
> 
> But in any case, as above, changing the arguments to .TH doesn't affect
> this.  I haven't noticed it being widespread practice to spuriously
> capitalize the name part of lines in the "NAME" section.

Indeed, doing that would be very bad style, not least because it would
make the correct capitalization of the name hard to find for the
human reader of the manual page.

Yours,
  Ingo
