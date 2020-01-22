Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6CFA7144EA1
	for <lists+linux-man@lfdr.de>; Wed, 22 Jan 2020 10:26:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727022AbgAVJ0u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Jan 2020 04:26:50 -0500
Received: from 19.mo7.mail-out.ovh.net ([178.33.251.118]:59407 "EHLO
        19.mo7.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725911AbgAVJ0u (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Jan 2020 04:26:50 -0500
X-Greylist: delayed 443 seconds by postgrey-1.27 at vger.kernel.org; Wed, 22 Jan 2020 04:26:49 EST
Received: from player732.ha.ovh.net (unknown [10.108.1.121])
        by mo7.mail-out.ovh.net (Postfix) with ESMTP id 4854414EB0F
        for <linux-man@vger.kernel.org>; Wed, 22 Jan 2020 10:19:24 +0100 (CET)
Received: from jwilk.net (ip-5-172-255-197.free.aero2.net.pl [5.172.255.197])
        (Authenticated sender: jwilk@jwilk.net)
        by player732.ha.ovh.net (Postfix) with ESMTPSA id 50D65E604614;
        Wed, 22 Jan 2020 09:19:21 +0000 (UTC)
Date:   Wed, 22 Jan 2020 10:19:19 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Aaron <aaron_ng@inode.at>, linux-man@vger.kernel.org
Subject: Re: bug in example in
 http://man7.org/linux/man-pages/man7/pkeys.7.html void -> int
Message-ID: <20200122091919.i4v6rle3j7f3h4l4@jwilk.net>
References: <1f443971-a9c2-214e-5daf-0e03fbb769c2@inode.at>
 <CAKgNAkiKjWyCbVWrgUV7nc8U4TUaYG-KU-=HqOVmL2pwu0GBLA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAKgNAkiKjWyCbVWrgUV7nc8U4TUaYG-KU-=HqOVmL2pwu0GBLA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Ovh-Tracer-Id: 1413004387198818173
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudelgdduvddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggugfgjfgesthekredttderjeenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuffhomhgrihhnpehmrghnjedrohhrghenucfkpheptddrtddrtddrtddphedrudejvddrvdehhedrudeljeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejfedvrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I think Aaron's point is that if you tried to compile the example 
program, you would get:

   pkeys.c: In function ‘pkey_set’:
   pkeys.c:22:12: error: void value not ignored as it ought to be
      22 |     return wrpkru(pkru);
         |            ^~~~~~~~~~~~

-- 
Jakub Wilk
