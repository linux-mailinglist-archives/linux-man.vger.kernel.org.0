Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2A1478A31C
	for <lists+linux-man@lfdr.de>; Mon, 28 Aug 2023 00:53:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229481AbjH0WxA convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Sun, 27 Aug 2023 18:53:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229513AbjH0Wwd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 27 Aug 2023 18:52:33 -0400
Received: from bird.elm.relay.mailchannels.net (bird.elm.relay.mailchannels.net [23.83.212.17])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62FC0A9
        for <linux-man@vger.kernel.org>; Sun, 27 Aug 2023 15:52:31 -0700 (PDT)
X-Sender-Id: instrampxe0y3a|x-authuser|calestyo@scientia.org
Received: from relay.mailchannels.net (localhost [127.0.0.1])
        by relay.mailchannels.net (Postfix) with ESMTP id BFE3F540AD3;
        Sun, 27 Aug 2023 22:52:30 +0000 (UTC)
Received: from cpanel-007-fra.hostingww.com (unknown [127.0.0.6])
        (Authenticated sender: instrampxe0y3a)
        by relay.mailchannels.net (Postfix) with ESMTPA id BEF79540C3F;
        Sun, 27 Aug 2023 22:52:29 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1693176750; a=rsa-sha256;
        cv=none;
        b=r0Mhm6gJNgf+dtctUIQeiobM7C4snlroNVCrZ6JwC6nIIV4KY97XEbO2YCIp/YD2yAm2Pg
        v7NxN9Rm03LHVTu3TCfmfUzw7Kav2/dITt8mESmvCPywR18SmFo101Kjl5U20trBTlasOk
        kFZ4rjF0HUZt6c4xh1t7nplnSR5B064//Ig05Sq1MzTE5a+Bq34cYPB8zt8Y4YyOFY19p7
        QPzNHZiO1GtWbPJIAQSf1It2cME2Mpzkf+42b8UX5uKOG5MNZfmMZrWTXbEV4qiG5U+8m/
        C/+10dErrjU6PyoZfc07MYhEmUTSUDqKGPQcKI948dr9jQkz5t4qipofyklAfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
        s=arc-2022; t=1693176750;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=XgaqBxwNNnBd/MwkQMiJ6gCNLvYOdXDMExmNg2/0DL0=;
        b=JXliSa7s9eKZf7b2a1AMvUvW2ZpkxBYUQeEnwZAXoV13YcuuNCeUCOWgA8FcBmLNVFFZRK
        L89WX4KPYQmjm92h+1li5b9fMoDNcv4++6qZqP1zIxpa2B27/rfPydvkxrZH8tS4CYen9a
        xAhSqo3Szj1ch6v494+WQRFXXkBmcJD25jGaN4TOsX71/c3MEAv/b3165ZmdsZHkplyCd2
        YDShFadRTId8rJmZq7WYRMUQ25VIVExgIIqHPWqGyCNvo/4tPMPlR9F10dUUIa9POS24E9
        j5bFiQwZKtWnoPFz6SjSr4+Q0e6n1sEkYk0K0gv5SlGZwXyyd7Z1cWyNp17kPA==
ARC-Authentication-Results: i=1;
        rspamd-bfd6864c7-wdxk2;
        auth=pass smtp.auth=instrampxe0y3a smtp.mailfrom=calestyo@scientia.org
X-Sender-Id: instrampxe0y3a|x-authuser|calestyo@scientia.org
X-MC-Relay: Neutral
X-MailChannels-SenderId: instrampxe0y3a|x-authuser|calestyo@scientia.org
X-MailChannels-Auth-Id: instrampxe0y3a
X-Cooing-Whispering: 06d708cb585c76b6_1693176750536_3634163828
X-MC-Loop-Signature: 1693176750536:1256834522
X-MC-Ingress-Time: 1693176750536
Received: from cpanel-007-fra.hostingww.com (cpanel-007-fra.hostingww.com
 [3.69.87.180])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384)
        by 100.124.152.234 (trex/6.9.1);
        Sun, 27 Aug 2023 22:52:30 +0000
Received: from p54b6d196.dip0.t-ipconnect.de ([84.182.209.150]:60164 helo=heisenberg.fritz.box)
        by cpanel-007-fra.hostingww.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.96)
        (envelope-from <calestyo@scientia.org>)
        id 1qaOcK-009V1P-2S;
        Sun, 27 Aug 2023 22:52:28 +0000
Message-ID: <798b1909e4172c0d2a7c9f54a9c2720f066de705.camel@scientia.org>
Subject: Re: [PATCH] open.2: Clarify different POSIX uses of EOPNOTSUPP and
 ENXIO
From:   Christoph Anton Mitterer <calestyo@scientia.org>
To:     Florian Weimer <fweimer@redhat.com>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Date:   Mon, 28 Aug 2023 00:52:22 +0200
In-Reply-To: <87ttsk8e8y.fsf@oldenburg.str.redhat.com>
References: <979345cf576e86c42743ea48d797484fc41f8bf7.camel@scientia.org>
         <87ttsk8e8y.fsf@oldenburg.str.redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.49.2-3 
MIME-Version: 1.0
X-AuthUser: calestyo@scientia.org
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey Florian.

On Sun, 2023-08-27 at 21:41 +0200, Florian Weimer wrote:
> To what degree is this dependent on the file system?  Does the VFS
> layer
> restrict these error codes for anything else?  I don't think so. 

THB, no idea what the various filesystems or the VFS do - I merely
tried to clarify between what's already documented as of now and what
POSIX specifies.


> Maybe
> strictly speaking, the added wording is still accurate, but the
> conclusion that ENXIO means socket would be incorrect draw, I think.

Well, strictly speaking, I think that my wording doesn't say that...
but I see that one could easily conclude that.

If I add something like

> …
> ENXIO, which Linux uses to indicate (amongst others) that the file is
> a UNIX domain socket.

?


But the same possible ambiguity might come up in the future for
POSIX/EOPNOTSUPP.
Should POSIX add further semantics to that error (like it also already
does for ENXIO), a reader could conclude that in POSIX EOPNOTSUPP would
only be used to indicate a socket (which would then no longer be the
case).

OTOH, I think it might get a bit overkill if we describe all these
details.



Cheers,
Chris
