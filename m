Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B555731CE93
	for <lists+linux-man@lfdr.de>; Tue, 16 Feb 2021 18:02:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229787AbhBPRCZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Feb 2021 12:02:25 -0500
Received: from out2-smtp.messagingengine.com ([66.111.4.26]:51735 "EHLO
        out2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229784AbhBPRCZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Feb 2021 12:02:25 -0500
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
        by mailout.nyi.internal (Postfix) with ESMTP id 93A785C00A5;
        Tue, 16 Feb 2021 12:01:19 -0500 (EST)
Received: from imap35 ([10.202.2.85])
  by compute7.internal (MEProxy); Tue, 16 Feb 2021 12:01:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aliddell.com; h=
        mime-version:message-id:date:from:to:cc:subject:content-type; s=
        fm2; bh=jR+mQEYjxNrZOEcLe83Km3VtZcjJ01OD4J4arnwJHRE=; b=s//LtiKl
        3mZ4DCG9yUwf0ei1wZN19A6F2HAMV1GNdpEIgraizoYYQWf9pgRdzyIqJJg/v7Wu
        pBVHFdnxtWXnQ2BDYGE7rtZiQYC+622Tv9Pt4J4JoOlOYGRaviq4xvTXdu1WRurK
        nLD/5ZYa0K6ciZRgTc5soMVKvK9y/zmf1RsjUxqLsOuSfKnQKVtxG4yYmRKQmlsl
        vKqvLTdKAUABR/bQewYiKigg0lec+FWdVkd8I35iQcxGpG8BYgzsujXFYRK1jIEz
        yGZFU9fdt3kbC4F10s77f4DdKavypRdlp22UFDZMWBI09C+DJvQPGNvp9muM3bnn
        EL6K+sfT4/Yq1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:message-id
        :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
        :x-me-sender:x-sasl-enc; s=fm2; bh=jR+mQEYjxNrZOEcLe83Km3VtZcjJ0
        1OD4J4arnwJHRE=; b=NCqYR9jIbOh8zyS5NQPX4aZnAVkcklgiFS939UpYpHTkG
        +0LXOFuhd7HsSQ9Nn+pGMaZcmzvK9kXKsOngXhIbfqhWST3TFJek9f08WZtIeT/3
        znZDh5XzAu2W2eWkP3xtq5TnTdyYEQqwjQ2/gvnvpsfn6hkdWcMqQpbo8HXLXD/L
        zYPMnX7vfF7bOEqLbnAmJ9YLoysAhk8P/DmrWzQOTvXB/T+7b21NUHaiWmzAI9vQ
        /nR3T5FNDDyqbg8qps3XDdg9NOG7NIUtQijg0F0OhGiTFfTSAKyptjujZ8oLRqX2
        MoNHgpEWTGA7hj83edkljQrHisEL/eOcnhrHBLvlg==
X-ME-Sender: <xms:X_orYORUZ-EAWLe8LudXhHF_DvaCz_xBfnY36yycUSFJy1DoV08oxg>
    <xme:X_orYDwZahEncJJ3ACVzJM9ZHhHVKuoOg_wiNKfhsC_KCu15-8ny0gpqVqjZBkAnS
    Brnbb5dIcRxWK6lTw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedtgdelhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkfffhvffutgesthdtredtre
    ertdenucfhrhhomhepfdetuggrmhcunfhiugguvghllhdfuceomhhlodhkvghrnhgvlhdr
    ohhrghesrghlihguuggvlhhlrdgtohhmqeenucggtffrrghtthgvrhhnpedtgeevhfehie
    ehfeekkeektedvuefgtedtffekuddvvdelveevudekvdejieevleenucevlhhushhtvghr
    ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmlhdokhgvrhhnvghlrdhorh
    hgsegrlhhiugguvghllhdrtghomh
X-ME-Proxy: <xmx:X_orYL3-iP9wEL4EpQEFuANJHtgYUa8CFiLGSGzB7wljwn6pvqdOtA>
    <xmx:X_orYKCwUeN5kKTJgsg6kkDd4svC0DSRhjNwM7b3zCHtTOCKxyizOQ>
    <xmx:X_orYHi4O_4KBMCy7HxXpwl47Nc-_QkIiwycZfoutx-PPHu3dptMEA>
    <xmx:X_orYHJWfmMOOCPJANgjC0XmRI20lfunA31LjDzQGIeexnZQ7EqteA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 349E815A005F; Tue, 16 Feb 2021 12:01:19 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-141-gf094924a34-fm-20210210.001-gf094924a
Mime-Version: 1.0
Message-Id: <6bbb488b-bee2-4ddb-873b-983973984c70@www.fastmail.com>
Date:   Tue, 16 Feb 2021 17:00:57 +0000
From:   "Adam Liddell" <ml+kernel.org@aliddell.com>
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: arp(7) description of gc_stale_time
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

The arp(7) page's description of gc_stale_time doesn't quite describe the behaviour correctly, at least as I understand it.

The current description suggests this is the time interval at which a loop will look for stale entries. However, this field is the threshold for marking an entry dead for removal, based on when it was last used (see net/core/neighbour.c lines 935-942) and whether the table is over gc_thresh1. How often this check is done appears to be determined by base_reachable_time (/2) and the third option gc_interval is not involved in this process as far as I can tell, despite its name.

Perhaps a draft alternate description could be something along the lines of:

Determines the threshold for removing a cache entry after it was last used and when the cache is larger than gc_thresh1. Defaults to 60 seconds.

Thanks,
Adam
