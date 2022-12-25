Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4845655E6B
	for <lists+linux-man@lfdr.de>; Sun, 25 Dec 2022 23:13:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229540AbiLYWNr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Dec 2022 17:13:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbiLYWNq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Dec 2022 17:13:46 -0500
X-Greylist: delayed 399 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 25 Dec 2022 14:13:43 PST
Received: from mail.ljabl.com (mail.ljabl.com [IPv6:2a01:4f8:173:2dd8::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D53F12D9
        for <linux-man@vger.kernel.org>; Sun, 25 Dec 2022 14:13:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ljabl.com; s=20220906;
        t=1672006022;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=PJHUOYqXQTtS+hxz85AoquvF69tjWeHMoZ3ue9WEW3Y=;
        b=IWed50Ktncz5NNky/2A/LkKTsczcjj/ZZc7FqdnD9JtHXBlovNt5fyRMcqvDHiAQqQZJ47
        PWUP0wMB3R2yRPZHv39CBLsyftczWHFmSeUtSI+O3RZXCaK+LP5z3lYK+FaeDgRw/ujflD
        fJ37YenF0bTN4o4JmbEIG+Lxgs9J7KA=
Received: by ljabl.com (OpenSMTPD) with ESMTPSA id 5125dd01 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
        Sun, 25 Dec 2022 22:07:02 +0000 (UTC)
Received: by fluorine.ljabl.com (OpenSMTPD) with ESMTPA id a5e8408f;
        Sun, 25 Dec 2022 23:07:01 +0100 (CET)
Date:   Sun, 25 Dec 2022 22:07:01 +0000
From:   Lennart Jablonka <ljabl@ljabl.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>,
        Deri <deri@chuzzlewit.myzen.co.uk>
Subject: Re: Doubts about a typo fix
Message-ID: <Y6jJhU2rQ3qBYwWD@fluorine.ljabl.com>
Mail-Followup-To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>,
        Deri <deri@chuzzlewit.myzen.co.uk>
References: <842adff8-8d8c-b189-8e6c-34be111b8b19@gmail.com>
 <20221123214019.6w2cv525fmr3akdr@illithid>
 <b91ea285-22f4-5f13-beb2-b0c74cc4db10@cs.ucla.edu>
 <20221126035253.pli53qzgfx6tbax5@illithid>
 <f406b9fd-8c2b-3ea2-d956-086442abfc00@cs.ucla.edu>
 <20221126215604.p3un3a4hxf32h24p@illithid>
 <e6908ec3-8f9b-1568-e753-a38df6c61da7@cs.ucla.edu>
 <20221213192410.aisrx6gwqcwlodq5@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221213192410.aisrx6gwqcwlodq5@illithid>
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Quoth G. Branden Robinson:
>> > I believe Solaris troff to be fossilized
>>
>> Yes and no. Solaris 10 is no longer supported after January 2024, so
>> if it and all the other traditional troffs die out by 2024 we can stop
>> worrying about this then.
>
>That may in fact prove out; the only _currently-maintained_ troffs I
>know of are groff, Heirloom Doctools troff (though it has slowed down)
>and neatroff.

I am devastated that 9front troff is unhesitatingly disregarded 
again and again like this.  While it’s seeing few commits, it is 
serving us very well.

Nope, not all traditional troffs will die that easily.
