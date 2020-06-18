Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A76A31FFBFB
	for <lists+linux-man@lfdr.de>; Thu, 18 Jun 2020 21:47:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729416AbgFRTrE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Jun 2020 15:47:04 -0400
Received: from gateway36.websitewelcome.com ([192.185.188.18]:27575 "EHLO
        gateway36.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729414AbgFRTrE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Jun 2020 15:47:04 -0400
X-Greylist: delayed 1503 seconds by postgrey-1.27 at vger.kernel.org; Thu, 18 Jun 2020 15:47:03 EDT
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
        by gateway36.websitewelcome.com (Postfix) with ESMTP id A29FA416803F4
        for <linux-man@vger.kernel.org>; Thu, 18 Jun 2020 13:22:35 -0500 (CDT)
Received: from gator3278.hostgator.com ([198.57.247.242])
        by cmsmtp with SMTP
        id lzmwj1bgnSxZVlzmxjCgPt; Thu, 18 Jun 2020 14:01:27 -0500
X-Authority-Reason: nr=8
Received: from 89-69-237-178.dynamic.chello.pl ([89.69.237.178]:43822 helo=localhost)
        by gator3278.hostgator.com with esmtpa (Exim 4.93)
        (envelope-from <arkadiusz@drabczyk.org>)
        id 1jlzmw-000oBC-7O; Thu, 18 Jun 2020 14:01:26 -0500
Date:   Thu, 18 Jun 2020 21:01:17 +0200
From:   Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To:     Walter Harms <wharms@bfs.de>
Cc:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH] fread.3: Add example
Message-ID: <20200618190117.tissd5pzvif5jggp@comp.lan>
References: <20200617184530.20811-1-arkadiusz@drabczyk.org>
 <be5391cc853c41a683069fa0c42d0a88@bfs.de>
 <20200618133647.rq2w6lanuatoweri@comp.lan>
 <80edb808679e48cc905421345c249127@bfs.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <80edb808679e48cc905421345c249127@bfs.de>
User-Agent: NeoMutt/20180716
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.69.237.178
X-Source-L: No
X-Exim-ID: 1jlzmw-000oBC-7O
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-69-237-178.dynamic.chello.pl (localhost) [89.69.237.178]:43822
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 1
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Jun 18, 2020 at 02:47:54PM +0000, Walter Harms wrote:
> 
> ________________________________________
> Von: Arkadiusz Drabczyk [arkadiusz@drabczyk.org]
> Gesendet: Donnerstag, 18. Juni 2020 15:36
> 
> >>
> >> +    ret = fread(buffer, 1, 1, fp);
> >> +    if (ret != 1) {
> >> +        fprintf(stderr, "fread() failed: %zu\en", ret);
> >> +        exit(EXIT_FAILURE);
> >> +    }
> >> +
> >> please drop a line what case you want to explain here, looks like the same as above.
> 
> >As said a few lines above, this retrieves ELF class. I wanted to show
> >that file pointer moves automatically after fread() finishes.
> 
> ok i get the point(s).
> 1. you show you can read an "item" a bunch of bytes
> 
> the second read() should demonstrate that consecutive reads return
>  consecutive blocks of data (here the magic and class id of an ELF).

Exactly.

> perhaps you can support what want to show with a
> printf("pos=%ld\n",ftell(fp));
> before and after read.

Let's what Michael says. If he thinks this suggestion and the entire
example in the first place is a good idea I will add it.

-- 
Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
