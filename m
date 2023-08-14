Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1A2D77C256
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 23:23:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232849AbjHNVWn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Aug 2023 17:22:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232900AbjHNVWV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Aug 2023 17:22:21 -0400
X-Greylist: delayed 18960 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 14 Aug 2023 14:22:19 PDT
Received: from smarthost01c.ixn.mail.zen.net.uk (smarthost01c.ixn.mail.zen.net.uk [212.23.1.22])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BD79E7E
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 14:22:19 -0700 (PDT)
Received: from [82.71.22.80] (helo=pip.localnet)
        by smarthost01c.ixn.mail.zen.net.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <deri@chuzzlewit.myzen.co.uk>)
        id 1qVf0z-00073f-3E; Mon, 14 Aug 2023 21:22:17 +0000
From:   Deri <deri@chuzzlewit.myzen.co.uk>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Brian.Inglis@shaw.ca
Subject: Re: No 6.05/.01 pdf book available
Date:   Mon, 14 Aug 2023 22:22:16 +0100
Message-ID: <4859011.31r3eYUQgx@pip>
In-Reply-To: <8611cdd7-c2a1-1a19-52ec-0478f75d68a6@kernel.org>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca> <04e326c5-1bfa-357f-cce1-d3315615fe86@kernel.org> <8611cdd7-c2a1-1a19-52ec-0478f75d68a6@kernel.org>
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

On Monday, 14 August 2023 21:01:46 BST Alejandro Colomar wrote:
> On 2023-08-14 19:37, Alejandro Colomar wrote:
> >> Another change which would need to be accepted is
> >> to allow a fourth parameter to .MR which is the destination name.
> >> Normally the name of the destination is derived from the first two
> >> parameters concatenated with "_", but if the name part of the .MR call
> >> to the man page includes non- ascii characters (such as ".MR
> >> my\-lovely\-page 7 ,") then it needs to provide a "clean" destination
> >> name.
> 
> I just re-read this, and am confused.  '\-' is an ASCII character, isn't it?
> In fact, all of the Linux man-pages pathnames are composed exclusively of
> ASCII characters, aren't they?

Hi Alex,

You are correct, but it is not relevent since we are talking about the 
LinuxManBook. In this context .MR is a pointer to another page in the pdf, 
this is termed an internal reference, it could be forward or backwards within 
the pdf. If you look at the keyrings(7) man page you see examples such as:-

.SH SEE
.ad l
.nh
.BR keyctl (1),
.BR add_key (2),
.BR keyctl (2),
.BR request_key (2),
.BR keyctl (3),
.BR keyutils (7),
.BR persistent\-keyring (7),
.BR process\-keyring (7),
.BR session\-keyring (7),
.BR thread\-keyring (7),
.BR user\-keyring (7),
.BR user\-session\-keyring (7),
.BR pam_keyinit (8),
.BR request\-key (8)
.PP

Which when converted to .MR calls looks like:-

.SH SEE ALSO
.ad l
.nh
.MR "keyctl" "1" "," "keyctl"
.MR "add_key" "2" "," "add_key"
.MR "keyctl" "2" "," "keyctl"
.MR "request_key" "2" "," "request_key"
.MR "keyctl" "3" "," "keyctl"
.MR "keyutils" "7" "," "keyutils"
.MR "persistent\-keyring" "7" "," "persistent-keyring"
.MR "process\-keyring" "7" "," "process-keyring"
.MR "session\-keyring" "7" "," "session-keyring"
.MR "thread\-keyring" "7" "," "thread-keyring"
.MR "user\-keyring" "7" "," "user-keyring"
.MR "user\-session\-keyring" "7" "," "user-session-keyring"
.MR "pam_keyinit" "8" "," "pam_keyinit"
.MR "request\-key" "8" "" "request-key"
.PP

On the keyrings(7) page in the pdf you should be able to see the difference 
between HYPHEN (U+2010), which is what \- becomes, and HYPHEN-MINUS (U+002D) 
which is the ascii character. The problem is that the MR request is a bit 
naughty in that it uses the first two parameters for two purposes, first it is 
used as a destination, but it is also output as text. So as text it may 
contain escapes to enhance the typography, for example using \- for a better 
looking hyphen. It is not my job to impose artificial restrictions on how a 
man page author wants his creation to look, better to separate the two 
purposes, so there is no restriction.

> > Is this really needed?  Can't gropdf just translate them internally?  Say,
> > do unconditionally the equivalent of `| tr - _ |` or something like that.
> > 
> > [...]

This is all happening in groff macros way before it gets to gropdf.

Cheers 

Deri




