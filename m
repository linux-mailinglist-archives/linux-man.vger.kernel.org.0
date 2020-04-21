Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ABF151B21BE
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2020 10:34:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726018AbgDUIeQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Apr 2020 04:34:16 -0400
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:45367 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726600AbgDUIeQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Apr 2020 04:34:16 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.209])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 2BC233723F55;
        Tue, 21 Apr 2020 10:34:14 +0200 (CEST)
Received: from jwilk.net (37.59.142.104) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Tue, 21 Apr
 2020 10:34:13 +0200
Date:   Tue, 21 Apr 2020 10:34:10 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     Helge Kreutzmann <debian@helgefjell.de>,
        <linux-man@vger.kernel.org>
Subject: Re: Errors in man pages, here: setpgid.2.po: Inconsistent formatting
Message-ID: <20200421083410.pmnkvk5fetjqfywd@jwilk.net>
References: <20200419064823.GA31864@Debian-50-lenny-64-minimal>
 <29000770-9fe0-c412-6721-c50d575c38d1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <29000770-9fe0-c412-6721-c50d575c38d1@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.104]
X-ClientProxiedBy: DAG6EX1.mxp6.local (172.16.2.51) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 7dc833c1-ccfb-4e57-bb9c-8e9cd8f8d5c2
X-Ovh-Tracer-Id: 12683543925827622877
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrgeehgddtiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtgeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>, 2020-04-20, 08:12:
>># FIXME: inconsistant formatting/markup (compared to previous entries)
>>
>>"B<pid_t getpgrp(pid_t >I<pid>B<);\\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ > /* BSD "
>>"version */"
>
>I need more context here. I can't see the problem.

I think it's about comment indentation:
for the BSD functions, it's done with escaped spaces:

   .BI "pid_t getpgrp(pid_t " pid ");\ \ \ \ \ \ \ \ \ \ \ "
   /* BSD version */

whereas for the other functions, plain spaces are used:

   .BR "pid_t getpgrp(void);" "                 /* POSIX.1 version */"

While we can't just remove backslashes, we could do something like this:

   .BI "pid_t getpgrp(pid_t " pid ");\fR            /* BSD version */"

This is more readable IMO, and should make translators happy. :)

-- 
Jakub Wilk
