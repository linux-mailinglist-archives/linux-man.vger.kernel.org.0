Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 27ACEB9B02
	for <lists+linux-man@lfdr.de>; Sat, 21 Sep 2019 02:10:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726997AbfIUAKS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Sep 2019 20:10:18 -0400
Received: from 17.mo4.mail-out.ovh.net ([46.105.41.16]:36046 "EHLO
        17.mo4.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726947AbfIUAKS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Sep 2019 20:10:18 -0400
X-Greylist: delayed 23398 seconds by postgrey-1.27 at vger.kernel.org; Fri, 20 Sep 2019 20:10:17 EDT
Received: from player695.ha.ovh.net (unknown [10.109.160.93])
        by mo4.mail-out.ovh.net (Postfix) with ESMTP id 63DEC2056EE
        for <linux-man@vger.kernel.org>; Fri, 20 Sep 2019 19:00:48 +0200 (CEST)
Received: from jwilk.net (user-5-173-80-176.play-internet.pl [5.173.80.176])
        (Authenticated sender: jwilk@jwilk.net)
        by player695.ha.ovh.net (Postfix) with ESMTPSA id A025B9F36B34;
        Fri, 20 Sep 2019 17:00:45 +0000 (UTC)
Date:   Fri, 20 Sep 2019 19:00:42 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Rick Stanley <rstanley@rsiny.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: Man page pre & post operators error
Message-ID: <20190920170042.444behwks42xvs6a@jwilk.net>
References: <a1683c1cc450bf969aca13d8f7a99f08cc07635d.camel@rsiny.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <a1683c1cc450bf969aca13d8f7a99f08cc07635d.camel@rsiny.com>
User-Agent: NeoMutt/20180716
X-Ovh-Tracer-Id: 414331166658123572
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrvddvgddutdejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Rick Stanley <rstanley@rsiny.com>, 2019-09-20, 10:19:
>In the man pages, both in Linux and online in multiple sites, the pre 
>and post operators are listed as equal precedence.  Two different web 
>sites list them on different levels:
>
>http://man7.org/linux/man-pages/man7/precedence.7.html
>	Level 1
>
>https://linux.die.net/man/7/operator
>	Level 2

FWIW, they are not on different levels. In fact, the operator tables are 
identical; the only difference is that the one on linux.die.net is badly 
formatted.

In general, I would recommend avoiding linux.die.net. Their manpages are 
often out-of-date, but you can't easily tell, because they removed 
version information.

-- 
Jakub Wilk
