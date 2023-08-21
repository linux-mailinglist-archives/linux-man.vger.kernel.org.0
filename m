Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 844BA78361F
	for <lists+linux-man@lfdr.de>; Tue, 22 Aug 2023 01:10:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231459AbjHUXKT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Aug 2023 19:10:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231161AbjHUXKR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Aug 2023 19:10:17 -0400
Received: from smarthost01b.ixn.mail.zen.net.uk (smarthost01b.ixn.mail.zen.net.uk [212.23.1.21])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E939131
        for <linux-man@vger.kernel.org>; Mon, 21 Aug 2023 16:10:15 -0700 (PDT)
Received: from [82.71.22.80] (helo=pip.localnet)
        by smarthost01b.ixn.mail.zen.net.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <deri@chuzzlewit.myzen.co.uk>)
        id 1qYE2G-0007CA-TR; Mon, 21 Aug 2023 23:10:12 +0000
From:   Deri <deri@chuzzlewit.myzen.co.uk>
To:     linux-man@vger.kernel.org, Brian.Inglis@shaw.ca,
        Alejandro Colomar <alx@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
Date:   Tue, 22 Aug 2023 00:10:07 +0100
Message-ID: <1977464.cNyiUUSuA9@pip>
In-Reply-To: <54945a93-399e-620f-be6e-bbe740abb21e@kernel.org>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <3262525.44csPzL39Z@pip> <54945a93-399e-620f-be6e-bbe740abb21e@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-smarthost01b-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Monday, 21 August 2023 23:02:35 BST Alejandro Colomar wrote:
> Hi Deri,
> 
> On 2023-08-21 01:39, Deri wrote:
> > Hi Brian,
> > 
> > I have created the tar files again with the latest sort.
> > 
> > Both are intended to be used with groff 1.23.0, but the plus version
> > includes the latest gropdf, so produces more compact output. It also has
> > the narrower gap between the heading on the intro(1) page, I have not
> > investigated the reason yet!
> > 
> > Also I have a small bone to pick with your "official" sort order - it's
> > not
> > consistent. Most people expect a short word like "cat" to appear before a
> > word like "catatonic", and we see "hosts" does appear before
> > "hosts.equiv", so why does "man" come after "man-pages"! I've also
> > strayed from the official sort order in the 6.05.01 pdf by arranging the
> > latin and iso character code pages in proper numerical order so "latin10"
> > comes after "latin9" rather than following "latin1". I hope this makes
> > sense.
> 
> Is "official" the Book for 6.5.1?  Or is it the scripts/sortman in git HEAD?

Hi Alex,

I have not a clue, at different times it seems to change! I've had various 
diffs from Brian. I think he wanted me to use rpmvercmp for sorting, seemed a 
bit overkill. You've got a script called sortman, which I don't use, but I 
suppose is part of your work when you retire my script and replace it with 
your own.

So I don't think I'm the person to ask.

Cheers 

Deri

> I've found that scripts/sortman had this problem that you report, and fixed
> it:

> 
> Is this order a good one?  Should maybe cat_alike go right after cat?
> 
> Cheers,
> Alex
> 
> [Hopefully, this email should already be signed; I've recovered my keys.]




