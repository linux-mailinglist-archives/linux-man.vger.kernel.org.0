Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2844557F5E9
	for <lists+linux-man@lfdr.de>; Sun, 24 Jul 2022 17:57:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229598AbiGXP5h (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jul 2022 11:57:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbiGXP5g (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jul 2022 11:57:36 -0400
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e752])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADB8FDF60
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 08:57:34 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oFdz2-005QWD-BO; Sun, 24 Jul 2022 17:57:32 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oFdz1-006mM6-Qx; Sun, 24 Jul 2022 17:57:31 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oFdz1-0000An-Q9; Sun, 24 Jul 2022 17:57:31 +0200
Date:   Sun, 24 Jul 2022 17:57:31 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     alx.manpages@gmail.com
Cc:     Colin Watson <cjwatson@debian.org>, linux-man@vger.kernel.org,
        g.branden.robinson@gmail.com, man-db-devel@nongnu.org
Subject: Re: Linux man-pages Makefile portability
Message-ID: <Yt1r65RJemg3ecmO@asta-kit.de>
References: <d8646de0-e4f0-3d4b-e763-92355162a405@gmail.com>
 <Yq+P39bpy2QEeaSd@asta-kit.de>
 <8b9daa0e-6f08-dd55-5772-51f5052ed8bb@gmail.com>
 <YrB66rgFZqryrmpt@asta-kit.de>
 <6e294373-2661-286c-09c4-e67cd84103d7@gmail.com>
 <fdde7402-5e69-b6ff-60fc-74ad9c9054f1@gmail.com>
 <YtrXbDo5NVxNT/cb@asta-kit.de>
 <80553a14-8f39-d4ad-def3-35d6551a31f3@gmail.com>
 <Ytw65nGl1qouSU5R@asta-kit.de>
 <ff01b98c-563f-dfd3-4996-65ff5e5f44ce@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ff01b98c-563f-dfd3-4996-65ff5e5f44ce@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Sun, Jul 24, 2022 at 01:09:23PM +0200:
> On 7/23/22 20:16, Ingo Schwarze wrote:
>> Alejandro Colomar wrote:

[...]
>>> Although it's interesting to know that this list exists:
>>> I can check it when trying to come up with a section name.

>> I would somewhat advise against that.  While i do think that consistency
>> is good *if* you decide to use a section suffix, i'd still recommend
>> to use section suffixes sparingly, at least in operating systems
>> that use them sparingly now.  They provide relatively little value,
>> make the top directory of the manpath larger and less readable,

> I don't think there's any benefit of keeping $(mandir) contain only the 
> standard man? subdirs.  Everybody already knows about them, so nobody 
> needs to read the output of ls(1) in such a system.

Admitted, it's a weak argument.  Having lots of useless directories
does not do *significant* harm.  Then again, in general, i would say
it is good practice to not add needless files or directories, even
when they are not particularly harmful.  They still make find(1)
and ls -R output and Makefiles longer.  Not doing needless things
is a general aim of design economy.

Besides, when there is not much to gain in the first place, even
weak counter-arguments wield non-zero weight.

> On the other hand, reading the output of ls(1) in a system with free
> use of subsections provides useful information.

I flatly deny that argument.  The Solaris list of suffixes deleted
above does not tell me anything of value.  It's just a list of
random sources of software, often with arbitrary partitions, and
many of the suffixes are non-descriptive.

[...]
>> On the other hand, naming manual pages after symbolic constants
>> or after type names is so unsual that i doubt any scheme exists
>> for that.

> Actually, man3type exists in several systems.  Solaris has it

Not on the Solaris 11 system i have access to:

  > uname -a
  SunOS unstable11s 5.11 11.3 sun4u sparc SUNW,SPARC-Enterprise
  > man -K e | grep 3type
  [ no output]
  > ls -d /usr/share/man/*type*
  /usr/share/man/*type*: No such file or directory
  > ls -d /usr/gnu/share/man/*type*
  /usr/gnu/share/man/*type*: No such file or directory

> (I guess Illumos too),

Not according to https://src.illumos.org/source/search?path=3type
nor according to
https://src.illumos.org/source/xref/illumos-gate/usr/src/man/ .

Again, Solaris suffixes do *not* indicate logical subdivisions,
but only a rather fuzzy, arbitrary, and inconsistent "where we
got these files from", at least if i understand correctly.

> and I've seen it in other systems (something from Oracle, 
> IIRC).  libbsd(7) also documents types, although they put them in the 
> global namespace, which I think you and I agree that it's not quite 
> right because of "documentation about a non-function in man3".

That argument has no merit.  The pre-eminent rule is "all documentation
of function libraries belongs in section 3" and explaining data types
(typically defined by the function libraries in the same header files
as the functions) are clearly part of that.

The rule "all library documentation should be organized by
functions" is secondary to that, and the rule "all section 3
names should be function names" is merely a corollary to that.

So even if you throw the rule "all library dicumentation should
be organized by functions" overboard, that is still no excuse
for moving part of the library documentation out of section 3.
It also makes sense to keep it all together in the same section
because it is needed by exactly the same people (programmers)
in exactly the same way (when reading and writing code and
wondering what words contained in the code mean).

>> The most widely used way to look up manual pages
>> by the names of symbolic constants or type names probably is
>> using macro keys as implemented in the mandoc version of apropos(1).
>> That is used by most FreeBSD, OpenBSD, Alpine Linux, and Void Linux.
>> I admit that doesn't qualify as "widely used", but "most widely used"
>> is probably true all the same.  ;-)

> That leaves out man(7).

Yes.  Searching for preprocessor constants and searching for data
type names are essentially semantic search features.  So it is
your choice to pick a 197x-era markup language that does not provide
semantic markup but only physical markup.  But than it feels
irrational to me to turn around and complain not getting semantic
search.  Unless you are a Prime Minister, you cannot have your cake
and eat it.

Trying to work around the lack of semantic markup by moving
everything into the manual page names feels like very poor design
to me.

> And types tend to be not very well documented if they are
> documented as part of a function page.

We disagree about that, and i won't repeat my full explanation why.
I'll repeat only this one aspect: There are few syntax elements where
context matters as much as for types; types live by how they are
used.  Separating their description from the functions using them
is a disservice to users, forcing them to jump around various pages
instead of having explained together what belongs together.

> And they also tend to be documented several times (out of sync,
> of course).

Any kind of documentation needs discipline and diligence and
maintenance, and none of it can ever be perfect.  But that's no
excuse for artificially tearing apart what users need together.

Yours,
  Ingo
