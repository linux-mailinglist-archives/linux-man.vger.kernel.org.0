Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76EDC77C3F1
	for <lists+linux-man@lfdr.de>; Tue, 15 Aug 2023 01:27:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232055AbjHNX0e (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Aug 2023 19:26:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233482AbjHNX0M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Aug 2023 19:26:12 -0400
Received: from smarthost01c.ixn.mail.zen.net.uk (smarthost01c.ixn.mail.zen.net.uk [212.23.1.22])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9BFCBE
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 16:26:10 -0700 (PDT)
Received: from [82.71.22.80] (helo=pip.localnet)
        by smarthost01c.ixn.mail.zen.net.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <deri@chuzzlewit.myzen.co.uk>)
        id 1qVgwq-0003EH-Ap; Mon, 14 Aug 2023 23:26:08 +0000
From:   Deri <deri@chuzzlewit.myzen.co.uk>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Brian.Inglis@shaw.ca
Subject: Re: No 6.05/.01 pdf book available
Date:   Tue, 15 Aug 2023 00:26:07 +0100
Message-ID: <5865599.MhkbZ0Pkbq@pip>
In-Reply-To: <3a7c42dd-d631-0ea2-3b0b-55f24f26fe20@kernel.org>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca> <4859011.31r3eYUQgx@pip> <3a7c42dd-d631-0ea2-3b0b-55f24f26fe20@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-smarthost01c-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Monday, 14 August 2023 22:32:49 BST Alejandro Colomar wrote:
> Hi Deri,
> 
> On 2023-08-14 23:22, Deri wrote:
> > On Monday, 14 August 2023 21:01:46 BST Alejandro Colomar wrote:
> >> On 2023-08-14 19:37, Alejandro Colomar wrote:
> >>>> Another change which would need to be accepted is
> >>>> to allow a fourth parameter to .MR which is the destination name.
> >>>> Normally the name of the destination is derived from the first two
> >>>> parameters concatenated with "_", but if the name part of the .MR call
> >>>> to the man page includes non- ascii characters (such as ".MR
> >>>> my\-lovely\-page 7 ,") then it needs to provide a "clean" destination
> >>>> name.
> >> 
> >> I just re-read this, and am confused.  '\-' is an ASCII character, isn't
> >> it? In fact, all of the Linux man-pages pathnames are composed
> >> exclusively of ASCII characters, aren't they?
> > 
> > Hi Alex,
> > 
> > You are correct, but it is not relevent since we are talking about the
> > LinuxManBook. In this context .MR is a pointer to another page in the pdf,
> > this is termed an internal reference, it could be forward or backwards
> > within the pdf. If you look at the keyrings(7) man page you see examples
> > such as:-
> > 
> > .SH SEE
> > .ad l
> > .nh
> > .BR keyctl (1),
> > .BR add_key (2),
> > .BR keyctl (2),
> > .BR request_key (2),
> > .BR keyctl (3),
> > .BR keyutils (7),
> > .BR persistent\-keyring (7),
> > .BR process\-keyring (7),
> > .BR session\-keyring (7),
> > .BR thread\-keyring (7),
> > .BR user\-keyring (7),
> > .BR user\-session\-keyring (7),
> > .BR pam_keyinit (8),
> > .BR request\-key (8)
> > .PP
> > 
> > Which when converted to .MR calls looks like:-
> > 
> > .SH SEE ALSO
> > .ad l
> > .nh
> > .MR "keyctl" "1" "," "keyctl"
> > .MR "add_key" "2" "," "add_key"
> > .MR "keyctl" "2" "," "keyctl"
> > .MR "request_key" "2" "," "request_key"
> > .MR "keyctl" "3" "," "keyctl"
> > .MR "keyutils" "7" "," "keyutils"
> > .MR "persistent\-keyring" "7" "," "persistent-keyring"
> > .MR "process\-keyring" "7" "," "process-keyring"
> > .MR "session\-keyring" "7" "," "session-keyring"
> > .MR "thread\-keyring" "7" "," "thread-keyring"
> > .MR "user\-keyring" "7" "," "user-keyring"
> > .MR "user\-session\-keyring" "7" "," "user-session-keyring"
> > .MR "pam_keyinit" "8" "," "pam_keyinit"
> > .MR "request\-key" "8" "" "request-key"
> > .PP
> > 
> > On the keyrings(7) page in the pdf you should be able to see the
> > difference
> > between HYPHEN (U+2010), which is what \- becomes, and HYPHEN-MINUS
> > (U+002D) which is the ascii character.
> 
> It shouldn't be that way.  We use '\-' precisely to make it a HYPHEN-MINUS,
> as it's the name of the file.  There shouldn't be any pages using '-', and
> if there are, those are bugs.  All of our MR calls that have something
> resembling a dash should be using '\-', which I expect to produce an ASCII
> '-' (i.e., 45, 0x0D).
> 
> Am I missing something?
> 
> Cheers,
> Alex

Hi Alex,

It turns out we are both wrong! I confused my hyphen with my minus as seen in 
the font:-

-       333,257 0       45      hyphen  002D
hy      "

\-      564,286 0       173     minus   2212

But as you can see \- is not ascii, it is unicode U+2212 which is why it can't 
be used to specify a destination, but it looks nicer as a glyph. The precise 
reason is because special characters are converted to a node internally and 
nodes can't be used as part of a .ds string name. This illustrates it:-

[derij@pip]$ echo ".ds pdflook(user\-keyring_7) 2508" | groff -z
troff:<standard input>:1: error: a special character is not allowed in an 
identifier
troff:<standard input>:1: error: bad string definition
[derij@pip]$ echo ".ds pdflook(user-keyring_7) 2508" | groff -z

In old gropdf this may in fact have worked because I fudged the issue by 
.asciifying the name which would convert \- to chr(173) which is ascii but 
this meant that you could not use any UTF-8 text which preconv converted to \
[uXXXX] since that .asciified to nothing.

There are other possible solutions. On my branch I have a new command 
.stringhex, which operates like .stringup/down but converts the contents to 
ascii hex, which hides the contents from  groff. So something like:-

[derij@pip]$ printf ".ds a user\-keyring_7
.stringhex a
.ds pdflook(\*a) 2508         
.tm \*a
"|groff -z
757365721A6B657972696E675F37


Cheers 

Deri

> > The problem is that the MR request is a bit
> > naughty in that it uses the first two parameters for two purposes, first
> > it is used as a destination, but it is also output as text. So as text it
> > may contain escapes to enhance the typography, for example using \- for a
> > better looking hyphen. It is not my job to impose artificial restrictions
> > on how a man page author wants his creation to look, better to separate
> > the two purposes, so there is no restriction.
> > 
> >>> Is this really needed?  Can't gropdf just translate them internally? 
> >>> Say,
> >>> do unconditionally the equivalent of `| tr - _ |` or something like
> >>> that.
> >>> 
> >>> [...]
> > 
> > This is all happening in groff macros way before it gets to gropdf.
> > 
> > Cheers
> > 
> > Deri




