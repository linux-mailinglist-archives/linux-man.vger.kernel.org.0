Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66F104E3BEB
	for <lists+linux-man@lfdr.de>; Tue, 22 Mar 2022 10:50:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230298AbiCVJvZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Mar 2022 05:51:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229956AbiCVJvY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Mar 2022 05:51:24 -0400
Received: from palmdale.lirum.at (palmdale.lirum.at [88.99.186.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE4FB1AF05
        for <linux-man@vger.kernel.org>; Tue, 22 Mar 2022 02:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=quelltextlich.at; s=20150713mail; h=In-Reply-To:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=uagjfwj5tWM+g7tpCu81K15i8RAa8LmXJrQRhXNgoRo=; b=ggfqLnRBeWwMMZTG3se9hPvAP
        CltEy/jh4k47hpjb6iliF9ioW1ldTKwJekcgCJYnUguahW8xUKMXAKdoRRIRoIjXgNskGw64Cn8yK
        AuuSa3QaQNNDpRSqPtwRu277pzb6khE9UKomrxiBgM+nCaVofnRIq2e1HU8h8lLd3xBKpErwqxhh5
        G8MMiSubaFwN8l6vhQMvOxqEjJnrP9+gE5jPFVarkD2fBzKjNWcsUg3eJKn96lS/Ba1mJ1Enk0Akm
        XJ4PdkTnm4UkKDtt9HmoU+5MgGUecBLTKVF4OVuWJgjG0XBZMGV0NvchAogZIfJS6+4KVTlZuCXea
        RLWLu6t2g==;
Authentication-Results: palmdale.lirum.at;
        iprev=fail smtp.remote-ip=192.168.231.18
Received: from [192.168.231.18] (helo=localhost)
        by palmdale.lirum.at with esmtp (Sendmail 6.22)
        (envelope-from <christian@quelltextlich.at>)
        id 1nWb9D-00036G-5k; Tue, 22 Mar 2022 09:49:51 +0000
Date:   Tue, 22 Mar 2022 10:49:50 +0100
From:   Christian Aistleitner <christian@quelltextlich.at>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Mike Frysinger <vapier@gentoo.org>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        John Marshall <John.W.Marshall@glasgow.ac.uk>
Subject: Re: Man-pages Git repository
Message-ID: <20220322094950.GA3775@quelltextlich.at>
References: <A165C0C4-6879-49AB-8CF1-C1258C3F8773@glasgow.ac.uk>
 <2d3cff38-ba32-b382-c043-397af12d286b@gmail.com>
 <YjjquYSCEnlFr0PJ@vapier>
 <408859e3-dbf2-09a8-e404-210f4280d90b@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <408859e3-dbf2-09a8-e404-210f4280d90b@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

On Mon, Mar 21, 2022 at 11:55:55PM +0100, Alejandro Colomar (man-pages) wrote:
> [...]
> but rather that if someone wants the latest development pages
> one can search my private repo,

When preparing a patch a few days ago, I ran into the same situation
as OP, and I failed to find your private repo.

I did manage to find https://github.com/mkerrisk/man-pages but that
seemed to lag as well, when comparing to the patches marked as merged
on the mailing list. (Just as other forks on GitHub did)

While I also think that it would be nice to have the canonical repo
updated, I can of course also see the isseus of getting push access to
kernel.org.

So as a kind of stop-gap mitigation (?), I've set up
https://github.com/somechris/man-pages

It's a read-only clone of your repo.
This clone gets updated hourly from your private repo.
The description holds a reference to your repo and this thread.
And since it's on GitHub it'll hopefully help get picked up by search
engines and help to better expose the freshly merged commits from your
repo, and help people to create patches against your up-to-date repo.

Have fun,
Christian


P.S.: If you think that yet-another-linux-man-pages-repo-on-GitHub is
counter-productive or you object to have your server queried for new
commits every hour, please let me know and I'll tear that repo down
again.



-- 
---- quelltextlich e.U. ---- \\ ---- Christian Aistleitner ----
                           Companies' registry: 360296y in Linz
Christian Aistleitner
Kefermarkterstrasze 6a/3    Email:   christian@quelltextlich.at
4293 Gutau, Austria         Phone:         +43 677 / 633 47 998
                            Homepage: https://quelltextlich.at/
---------------------------------------------------------------
