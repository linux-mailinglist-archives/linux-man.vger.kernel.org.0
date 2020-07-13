Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA89D21E2A8
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2020 23:51:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726670AbgGMVve (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Jul 2020 17:51:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726150AbgGMVve (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Jul 2020 17:51:34 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3B1CC061755
        for <linux-man@vger.kernel.org>; Mon, 13 Jul 2020 14:51:33 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 06DLpUjl010054
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Mon, 13 Jul 2020 21:51:30 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 06DLpUjl010054
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 06DLpUqP007509;
        Mon, 13 Jul 2020 21:51:30 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 06DLpUb9007508;
        Mon, 13 Jul 2020 21:51:30 GMT
Date:   Mon, 13 Jul 2020 21:51:30 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] man1/*: srcfix: remove superfluous quotes around
 space-free arguments
Message-ID: <20200713215130.GA7245@rhi.hi.is>
References: <20200705132529.GA9922@rhi.hi.is>
 <CAKgNAkjG6mov6to301WzOznPB1WVAOtXytid5PF7iPk7eb3PGg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKgNAkjG6mov6to301WzOznPB1WVAOtXytid5PF7iPk7eb3PGg@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Jul 06, 2020 at 11:53:50AM +0200, Michael Kerrisk (man-pages) wrote:
> Bjarni,
> 
> On Sun, 5 Jul 2020 at 15:25, Bjarni Ingi Gislason <bjarniig@rhi.hi.is> wrote:
> >
> >   Remove quotes around a space-free argument for the single-font macros.
> 
> Your commit message doesn't explain why this patch/this series is
> useful. Please explain.
> 

  Remove the misuse of quotation marks.

####

Know yourself, and the kinds of errors you make.  Once you have
found and fixed a bug, make sure that you eliminate other bugs
that might be similar.  Think about what happened so you can
avoid making that kid of mistake again.

Brian W. Kernighan, Rob Pike "The Practice of
Programming". Addison-Wesley. 1999. Page 137.

-- 
Bjarni I. Gislason
