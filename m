Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91DF757F132
	for <lists+linux-man@lfdr.de>; Sat, 23 Jul 2022 21:29:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236362AbiGWT3Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 23 Jul 2022 15:29:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231370AbiGWT3X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 23 Jul 2022 15:29:23 -0400
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e752])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D78EB1B7B9
        for <linux-man@vger.kernel.org>; Sat, 23 Jul 2022 12:29:21 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oFKoR-003CfN-Li; Sat, 23 Jul 2022 21:29:19 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oFKoR-006lU1-2t; Sat, 23 Jul 2022 21:29:19 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oFKoR-0000bi-25; Sat, 23 Jul 2022 21:29:19 +0200
Date:   Sat, 23 Jul 2022 21:29:19 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     g.branden.robinson@gmail.com,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
Subject: Re: All caps .TH page title
Message-ID: <YtxMD7ovz1Xy/cfq@asta-kit.de>
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
 <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

On 7/22/22 12:35, Alejandro Colomar (man-pages) wrote:

> BTW, I think I didn't reply (or if I did was very short) to your comment 
> that other languages may find it difficult to mirror our use of 
> subsections, since their main section is already a subsection (e.g., 
> 3pl).

Other languages are usually better off to live *outside* the $MANPATH
and tell users to use "man -M" to access their documentation.
For example, on OpenBSD, the TCL manuals live
in /usr/local/lib/tcl/tcl8.5/man/ .
Putting them into /usr/local/man/ would be quite disruptive because
that would cause lots of clashes, including "apply", "break", "cd",
"close", "eval", "exec", "exit", "expr", "glob", "info", "join", "open",
"puts", "pwd", "read", "socket", "time", and so on.  I expect most
other language will cause similar noise.
Perl is better because the clashing names are mostly part of perlfunc(1),
and the majority of other Perl manual page names contain colons.
FORTRAN (traditionally in man3f) is also better because in this
instance, the cryptic FORTAN six-letter identifiers become a virtue
in so far as they prevent clashes.

> I'd say that since C is the native Unix language, and others are 
> just... others?, I'd optimize for C, and let other languages find
> a way to document their things.

True - not because C is better or more worthy, but because looking up
an identifier logically requires specifying the language, and as
explained elsewhere, section suffixes are a poor solution for that.

> It would be easy to say just go away, the man pages are for C,

Absolutely not.  While the manual page format may have some feature
that are particularly well-suited to documenting C, it is not
limited to that role.

> but I won't dare to say that, since I like man pages, 
> and I'd like to see more documentation for languages that I sometimes 
> have to use be in the form of man pages, so I'll try to come up with a 
> more imaginative answer:  how about using subsubsections of the form 
> 3pl_type?  At least it's a possibility.  man(1) would handle them as any 
> other subsection, but that's not a big problem.  Maybe man(1) could 
> develop a way to provide subsubsections...  Colin, any ideas in this 
> regard?

See above.

Alejandro Colomar wrote on Fri, Jul 22, 2022 at 01:46:37PM +0200:

> Or, maybe it's the time to write a whole new volume?  I think there's a 
> comparable difference between 3type and 3 than between 2 and 3 or 1 and 
> 8, so it would be merited.  I didn't do it before for two reasons: it 
> might break software that assumes than Unix manuals use a single number 
> followed by an optional string (I'd say it's not a fair assumption to 
> say that man9 would be the last one ever used; if there's 9, there might 
> be a 10 some day), and because other projects had already used 3type.
> 
> But, that would start a clean namespace.  Maybe it's worth it.

No, that would absolutely not be clean design.  I advise strongly
against it.

First, concatening integer numbers and strings is often bad design
because it significantly complicates processing in various way.
For example, the traps set by the strtol(3) family of functions,
in particular regarding trailing non-digit characters, are
legendary.  Bugs love the breeding ground.  As another example,
numerical vs. alphabetical sorting is a similarly famous trap,
consider the difference of sort(1) vs. "sont -n".  I'm sure
you do *not* want to design a data type represented as a string
such that the first part needs to be sorted numerically and the
second part needs to be sorted alphanumerically - with not even
a delimiting character in between.

Less technically, having a small number of sections with non-desciptive
names is fine; people get used to the meaning of 1 to 9.  But when
you start adding more sections, a scheme with non-descriptive names
sooner or later becomes unsustainable.  "What was section 42 again...
i guess i'll have to look that up."

So the design already strikes me as terrible even before starting
to sonsider portability.
I would expect no end of compatibility problems.

 * Most man(1) implementations will probably treat section 10
   as a subsection of section 1.
 * While "man -s 10" may work with some man(1) implementations,
   "man 10 wchar_t" will fail saying
     man: No entry for 10 in the manual.
   on most.
 * When sorting, you will probably get 1, 10, 11, 2, 3, ...
 * I expect lots of code does
     char sc = '1' + sn - 1;
     asprintf(&fn, "%s.%c%s", name, sc, suffix);
   which leaves you with "name.:suffix" if sn == 10.
 * ...

> How would you feel if I inaugurate man10 for types, and later man11 for 
> non-function-like macros? :D

I wouldn't feel well at all.
I think i'd prefer contracting a common cold to having to deal with that.

Yours,
  Ingo
