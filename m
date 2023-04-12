Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A5EA6DF66F
	for <lists+linux-man@lfdr.de>; Wed, 12 Apr 2023 15:05:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229638AbjDLNFA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Apr 2023 09:05:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230182AbjDLNE7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Apr 2023 09:04:59 -0400
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8D8759D3
        for <linux-man@vger.kernel.org>; Wed, 12 Apr 2023 06:04:57 -0700 (PDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 53F565C0221;
        Wed, 12 Apr 2023 09:04:55 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 12 Apr 2023 09:04:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=plushkava.net;
         h=cc:cc:content-transfer-encoding:content-type:content-type
        :date:date:from:from:in-reply-to:in-reply-to:message-id
        :mime-version:references:reply-to:sender:subject:subject:to:to;
         s=fm1; t=1681304695; x=1681391095; bh=3TMoLbpav41H4xc3tnJbHBors
        7QYX+yKzy+HvwT4Zxw=; b=Y86awekC5l5BXasor2XD+SpUBtTAfiQZ566Zs37Mu
        rido0k+fPt7l+nJCmc2fWwcMvJWEgaNPe8Dj4j4zYODKrARL19sw7rMDBZXfadRv
        VcG7isncOHQP1lfzTO1sftKmHY66KcYX87FqtxFENVYvjjE3bXcIMmdode6sUP7j
        xk+E0pNFVqEby5eYGMnlV12nIvcuUu+kobyQ695AZUdVOvJe1TC8ksdLI3kXE/yd
        T6ru3j9CbwX3PAyBOsbux6LdMxrarlIbkwTYqXIwVF1Z6GGo/BRloyhG1els1iVN
        mI6Tt+vYPkUgAPUl8PblPUEpQSkmFtjl1Wx6Mm6ZDuAig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:content-type:date:date:feedback-id:feedback-id
        :from:from:in-reply-to:in-reply-to:message-id:mime-version
        :references:reply-to:sender:subject:subject:to:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
        1681304695; x=1681391095; bh=3TMoLbpav41H4xc3tnJbHBors7QYX+yKzy+
        HvwT4Zxw=; b=VAsf1Cv7ZryP3bqCORmgwcDM2uH72hoqFDzgAY03EFqnpuP91Vg
        XbqHoP+IdJqnpbxNO6JJltxNMOKGhDvBLmmlmvGKDA1qysfD+flUwolDJILP3z2L
        kRjwa9P/IBf7s0z2zN0FQzNeMs7hMY/0a/CYzmuJ/i1lHUhMIXTZvgsVH6W9FWGn
        Jqw0NGNMh8YzXKKMbEd/AMBIiRSw2FNtW08LvbQxk6DThg3hkIQCZF/Mvqc+zhfC
        Rv2e0mVGjSiylKRTNtQiOKRZxFq1druJSnzxsFQ77wt8W7W3h6B2QPIFUUZoXXzK
        VzO21SvImYy9KW7Gnu8gSCrNZW85D0b8nhA==
X-ME-Sender: <xms:dqw2ZItg-cV-gHClw6LGsaKj7jgW8iYcPh46P67YyucxmZCCaKYHnw>
    <xme:dqw2ZFcZBSpmpNeoUg0Cnh66PrhnRxoW58tWM52mtmggLmcTxbLbhZIzkcRwIQsRQ
    FL41o0FXzkSRAKD>
X-ME-Received: <xmr:dqw2ZDxMhD5cDLPfeTqcc14uLkPnId_kJWNlTy-IG5iMUMttBT9riXU1pf3HO5QYL2mG>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvdekiedgiedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkjghfofggtgfgsehtjeertdfjtddvnecuhfhrohhmpefmvghr
    ihhnucfoihhllhgrrhcuoehkfhhmsehplhhushhhkhgrvhgrrdhnvghtqeenucggtffrrg
    htthgvrhhnpeettdeuveetkeettdffheeviedvfeefkefhgfegteeitdfhkeetvddvgfdt
    tdethfenucffohhmrghinhepghgvnhhtohhordhorhhgpdhgihhtlhgrsgdrtghomhenuc
    evlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehkfhhmsehp
    lhhushhhkhgrvhgrrdhnvght
X-ME-Proxy: <xmx:dqw2ZLPJBQ85TAee0AE7k46IEgJU33GdTNuqfPq_Pfn8lGbBBIfFOw>
    <xmx:dqw2ZI939f-5LycDY9wwII2uQJD9itp7Fa8dAewIONHyQ5DuZ5KILw>
    <xmx:dqw2ZDX-qD-O--bfJJxi4fVrT8xMq4db-QUoiBqF5-Q3PgSCu-h3uA>
    <xmx:d6w2ZFOnU8OD5HzDidqIx3BDpbAkAibflKR3YTWH11A7LceLffRedA>
Feedback-ID: i2431475f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 12 Apr 2023 09:04:52 -0400 (EDT)
Date:   Wed, 12 Apr 2023 14:04:51 +0100
From:   Kerin Millar <kfm@plushkava.net>
To:     Sam James <sam@gentoo.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Alexis <flexibeast@gmail.com>, groff@gnu.org,
        linux-man <linux-man@vger.kernel.org>,
        Ingo Schwarze <schwarze@usta.de>,
        Dirk Gouders <dirk@gouders.net>,
        Colin Watson <cjwatson@debian.org>,
        Ralph Corderoy <ralph@inputplus.co.uk>
Subject: Re: Compressed man pages (was: Accessibility of man pages (was:
 Playground pager lsp(1)))
Message-Id: <20230412140451.f03a6c19983694fe844bbb5a@plushkava.net>
In-Reply-To: <875ya1ecq1.fsf@gentoo.org>
References: <ghileoo9dk.fsf@gouders.net>
        <ghbkkgo8x8.fsf@gouders.net>
        <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
        <834jpuuc1a.fsf@gnu.org>
        <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
        <83sfddqvk3.fsf@gnu.org>
        <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com>
        <837cumonv9.fsf@gnu.org>
        <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
        <87a5zhwntt.fsf@ada>
        <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com>
        <875ya1ecq1.fsf@gentoo.org>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; x86_64-unknown-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, 12 Apr 2023 09:13:13 +0100
Sam James <sam@gentoo.org> wrote:

> 
> Alejandro Colomar <alx.manpages@gmail.com> writes:
> 
> > [[PGP Signed Part:Undecided]]
> > [Added back linux-man@, and people that commented on this (sub)topic]
> > [Added Sam, I've got a question for you]
> >
> > Hi Alexis,
> >
> > Please keep (at least) linux-man@ in the loop.
> >
> > On 4/9/23 08:44, Alexis wrote:
> >> 
> >> As a related data point, i'd like to mention Gentoo's position on 
> >> this, i.e. that man pages will continue to be bzip2-compressed by
> >> default:
> >> 
> >> "app-text/mandoc bzip2 support"
> >> https://bugs.gentoo.org/854267
> >> 
> >> "Remove /usr/share/man from default inclusion list for docompress"
> >> https://bugs.gentoo.org/836367
> >
> > As Ingo said[1] 3 years ago, I don't think in this year it makes any
> > sense to compress pages anymore.  However, since it's simple for me
> > to add support for that, and it can be interesting for testing
> > purposes, I added support for installing the Linux man-pages
> > compressed with bzip2 using the Makefile[2].  While I was at it, I
> > also added support for generating .tar.bz2 release tarballs[3].
> >
> > With this, I was able to test a bit more than what I did yesterday:
> >
> >
> > $ sudo rm -rf /opt/local/man/
> > $ sudo make install-man prefix=/opt/local/man/gz_ -j LINK_PAGES=symlink Z=.gz | wc -l
> > 2570
> > $ sudo make install-man prefix=/opt/local/man/bz2 -j LINK_PAGES=symlink Z=.bz2 | wc -l
> > 2570
> > $ sudo make install-man prefix=/opt/local/man/man -j LINK_PAGES=symlink Z= | wc -l
> > 2570
> > $ du -sh /opt/local/man/*
> > 5.4M	/opt/local/man/bz2
> > 5.5M	/opt/local/man/gz_
> > 9.4M	/opt/local/man/man
> >
> >
> > $ export MANPATH=/opt/local/man/gz_/share/man
> > $ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l"
> > 37
> > 0.31
> > $ /bin/time -f %e dash -c "find $MANPATH -type f | xargs zgrep -l RLIMIT_NOFILE | wc -l"
> > 17
> > 1.56
> > $ /bin/time -f %e dash -c "find $MANPATH -type f | xargs -P0 zgrep -l RLIMIT_NOFILE | wc -l"
> > 17
> > 1.56
> > $ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do zcat \$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l"
> > 17
> > 1.24
> > $ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do gzip -d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l"
> > 17
> > 1.14
> >
> >
> > $ export MANPATH=/opt/local/man/bz2/share/man
> > $ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l"
> > 37
> > 10.90
> > $ /bin/time -f %e dash -c "find $MANPATH -type f | xargs bzgrep -l RLIMIT_NOFILE | wc -l"
> > 17
> > 1.33
> > $ /bin/time -f %e dash -c "find $MANPATH -type f | xargs -P0 bzgrep -l RLIMIT_NOFILE | wc -l"
> > 17
> > 1.31
> > $ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do bzcat \$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l"
> > 17
> > 1.21
> > $ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do bzip2 -d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l"
> > 17
> > 1.22
> >
> >
> > $ export MANPATH=/opt/local/man/man/share/man
> > $ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l"
> > 37
> > 0.56
> > $ /bin/time -f %e dash -c "find $MANPATH -type f | xargs grep -l RLIMIT_NOFILE | wc -l"
> > 17
> > 0.01
> > $ /bin/time -f %e dash -c "find $MANPATH -type f | xargs -P0 grep -l RLIMIT_NOFILE | wc -l"
> > 17
> > 0.01
> >
> > Weird thing: today, the symlink bug in man(1) was reproducible in
> > all kinds of pages, while yesterday it only reproduced in
> > uncompressed ones.
> >
> > Another weird thing: times today changed considerably for the
> > find(1) pipelines (half of yesterday's).  It's not a thing of
> > using dash(1), because I get similar times with bash(1) and its
> > builtin time(1).
> >
> > Important note: Sam, are you sure you want your pages compressed
> > with bz2?  Have you seen the 10 seconds it takes man-db's man(1) to
> > find a word in the pages?  I suggest that at least you try to
> > reproduce these tests in your machine, and see if it's just me or
> > man-db's man(1) is pretty bad at non-gz pages.
> >
> > Test results:
> >
> > -  man-db's man(1) is slower with plain man(7) source than with .gz
> >    pages for some misterious reason.
> >
> > -  man-db's man(1) is turtle slow with .bz2 pages.
> 
> I started looking into changing to xz (or just.. not bz2, anyway),
> partially motivated by https://gitlab.com/man-db/man-db/-/issues/4 /
> just interest locally (without having done measurements to see if it
> would be worth a global change) and the xz maintainer ended up
> recommending a different implementation to how man-db currently handles
> external utilties entirely (which I have a draft of).
> 
> The xz author had some suggestions on the best parameters to use
> for man pages too which I need to look into and dig up...
> 
> https://bugs.gentoo.org/169260 was an interesting discussion
> about our choice of bz2 (it came up a bit in
> https://bugs.gentoo.org/372653 too).

Oh, I remember this. Soon after #372653 was closed, I experimented further and found xz --lzma2=preset=6e,pb=0 to be more effective than bzip -9, both in terms of compression ratio and subsequent decompression performance, so I used those settings for a time. Nowadays, I would be more concerned with the time taken to render a man page than in reducing the footprint of the installed documentation.

> 
> (I'll get back and read the rest of the thread later, but wanted
> to add this tidbit.)
> 
> Definitely surprised to learn bz2 is *that* bad though!
> 
> best,
> sam

-- 
Kerin Millar
