Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE4BB30CFFA
	for <lists+linux-man@lfdr.de>; Wed,  3 Feb 2021 00:51:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229949AbhBBXvF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Feb 2021 18:51:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbhBBXvE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Feb 2021 18:51:04 -0500
X-Greylist: delayed 417 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 02 Feb 2021 15:50:23 PST
Received: from outpost.hi.is (outpost.hi.is [IPv6:2a00:c88:4000:1650::165:166])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E872DC061573
        for <linux-man@vger.kernel.org>; Tue,  2 Feb 2021 15:50:23 -0800 (PST)
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by outpost.hi.is (8.14.7/8.14.7) with ESMTP id 112NhRca014845
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
        for <linux-man@vger.kernel.org>; Tue, 2 Feb 2021 23:43:27 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 outpost.hi.is 112NhRca014845
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 112NhKbe020280
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Tue, 2 Feb 2021 23:43:20 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 112NhKbe020280
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 112NhKuf029797;
        Tue, 2 Feb 2021 23:43:20 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 112NhJPM029796;
        Tue, 2 Feb 2021 23:43:19 GMT
Date:   Tue, 2 Feb 2021 23:43:19 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] man-pages.7: Formatting suggestion revisions
Message-ID: <20210202234319.GA29621@rhi.hi.is>
References: <20210128205734.nhvua6ameelaomaw@localhost.localdomain>
 <2c95eb35-3e8a-a745-3242-fc8c8947660c@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2c95eb35-3e8a-a745-3242-fc8c8947660c@gmail.com>
Sender: bjarniig@hi.is
User-Agent: Mutt/1.5.20 (2009-12-10)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Feb 02, 2021 at 02:14:33PM +0100, Michael Kerrisk (man-pages) wrote:
> Hello Branden,
> 
> {I've also seen you reply to this mail.]
> I think I'm okay with everything you say in this patch/mail, but I have one concern
> On 1/28/21 9:57 PM, G. Branden Robinson wrote:
> > 
> > The problem with .na before a table, which is the more popular approach,
> > and which you probably already discovered given that you're recommending
> > ".ad l" instead, is that people who have found a way to force adjustment
> > off already will be angry with man pages taking your advice because
> > "full" adjustment (to both margins) will spring to life after the table.
> > 

  This is caused by a bug in groff,
see bug #59795
(the original had the subject:
[PATCH] troff/env.cpp: fix wrong restoration of link adjustment after 
 '.na' and '.ad'
)
in "savannah.gnu.org/bugs/index.php?59795"

  "link adjustment" should be "left adjustment" (.ad l).

-- 
Bjarni I. Gislason
