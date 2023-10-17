Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE8D17CC740
	for <lists+linux-man@lfdr.de>; Tue, 17 Oct 2023 17:16:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344273AbjJQPQe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Oct 2023 11:16:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344035AbjJQPQe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Oct 2023 11:16:34 -0400
Received: from mail.hallyn.com (mail.hallyn.com [178.63.66.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C5E092
        for <linux-man@vger.kernel.org>; Tue, 17 Oct 2023 08:16:31 -0700 (PDT)
Received: by mail.hallyn.com (Postfix, from userid 1001)
        id D7EFBEFF; Tue, 17 Oct 2023 10:16:29 -0500 (CDT)
Date:   Tue, 17 Oct 2023 10:16:29 -0500
From:   "Serge E. Hallyn" <serge@hallyn.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     "Serge E. Hallyn" <serge@hallyn.com>,
        Rituparna ghosh <ghosh.rituparna@gmail.com>,
        linux-man@vger.kernel.org, shadow <~hallyn/shadow@lists.sr.ht>,
        Iker Pedrosa <ipedrosa@redhat.com>
Subject: Re: man7 - useradd query
Message-ID: <20231017151629.GB184126@mail.hallyn.com>
References: <CABP5-fx2YvLup4GFXicJapue=qpyZ61oHuRuBB82ne1Ka7uctw@mail.gmail.com>
 <ZSgiKU2TtlDgVkv2@debian>
 <20231017134408.GA181875@mail.hallyn.com>
 <ZS6XjjJO59pVMU8_@debian>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZS6XjjJO59pVMU8_@debian>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Oct 17, 2023 at 04:17:42PM +0200, Alejandro Colomar wrote:
> Hi Iker,
> 
> On Tue, Oct 17, 2023 at 08:44:08AM -0500, Serge E. Hallyn wrote:
> [...]
> 
> > > > The useradd command here is showing an option   -F which is shown as
> > > > invalid in RH 8.8 or RH 9.
> > > > Is this correct?
> > > 
> > > From what I see in the source code of useradd.c in shadow, the feature
> > > is compiled conditionally, #ifdef ENABLE_SUBIDS.  It may be that RHEL,
> > > or your version, doesn't build with that option; I ignore it, I'm a
> > > Debian user.
> > 
> > Yeah - but the manpage should likewise should not show the option if
> > it is not compiled in, I guess.
> 
> This sounds reasonable.
> 
> >  At the moment it looks like we
> > conditionally complie some manpages, like newuidmap.1, but I don't
> > see any sections compiled out in the man/*.xml files.
> 
> You mean that currently it's either the entire page or nothing at all,
> right?  I don't see anything that compiles part of a page either.

Right.

> I imagine that you could do something like that by wrapping the
> conditional part in something like <ifdef id="ENABLE_SUBIDS">...</ifdef>,
> and write some script to handle it.

Yeah.  It shouldn't be too bad.
