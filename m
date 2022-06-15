Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC2DE54C2CB
	for <lists+linux-man@lfdr.de>; Wed, 15 Jun 2022 09:42:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238448AbiFOHmK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Jun 2022 03:42:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346900AbiFOHmJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Jun 2022 03:42:09 -0400
X-Greylist: delayed 382 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 15 Jun 2022 00:42:06 PDT
Received: from smtp-8faa.mail.infomaniak.ch (smtp-8faa.mail.infomaniak.ch [IPv6:2001:1600:4:17::8faa])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6DE73A1A2
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 00:42:06 -0700 (PDT)
Received: from smtp-3-0001.mail.infomaniak.ch (unknown [10.4.36.108])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4LNHCf1vHczMqPJN;
        Wed, 15 Jun 2022 09:35:42 +0200 (CEST)
Received: from ns3096276.ip-94-23-54.eu (unknown [23.97.221.149])
        by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4LNHCd60yRzln2Gl;
        Wed, 15 Jun 2022 09:35:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
        s=20191114; t=1655278542;
        bh=PNXMw7X/b5rpwW17cONp59+cX+lfHxQ87NYoqqGAlgo=;
        h=Date:To:Cc:References:From:Subject:In-Reply-To:From;
        b=v11LT/z3oBlKWDPivjl/IWokR8leGlsTdqbZeuVCpTVONp9fNuMVM2AqmW2CRIFch
         cXpv7+OQAYy5uCdE0D62BzYMZs2J/Iumhv8Sw7GpvU7Y05w+yLku8fBf0EfK3Eb/gz
         VaYoMUczOdi3ilVCX/nC7CJSB+viIxjc2nBbLEWo=
Message-ID: <ec159458-a863-3852-babd-aa758f9b6849@digikod.net>
Date:   Wed, 15 Jun 2022 09:35:41 +0200
MIME-Version: 1.0
User-Agent: 
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, landlock@lists.linux.dev
References: <20220523161245.2451265-1-mic@digikod.net>
 <165342401733.5255.6026414404497432650.pr-tracker-bot@kernel.org>
 <71967548-c0d6-2997-4058-20bad59e7084@gmail.com>
From:   =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Subject: Re: [GIT PULL] Landlock changes for v5.19
In-Reply-To: <71967548-c0d6-2997-4058-20bad59e7084@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 03/06/2022 18:35, Alejandro Colomar wrote:
> Hi Mickaël,
> 
> On 5/24/22 22:26, pr-tracker-bot@kernel.org wrote:
>> The pull request you sent on Mon, 23 May 2022 18:12:45 +0200:
>>
>>> git://git.kernel.org/pub/scm/linux/kernel/git/mic/linux.git 
>>> tags/landlock-5.19-rc1
>>
>> has been merged into torvalds/linux.git:
>> https://git.kernel.org/torvalds/c/cb44e4f061e16be65b8a16505e121490c66d30d0 
>>
>>
> 
> Do we need any update in the manual page?  Is this already covered by 
> patches that I applied from you?

Yes, this new release brings some changes and the man pages need update.

Documentation fixes:
* Fix landlock_add_rule(2) documentation: 
https://git.kernel.org/torvalds/c/a13e248ff90e81e9322406c0e618cf2168702f4e
* Reduce the maximum number of layers to 16: 
https://git.kernel.org/torvalds/c/75c542d6c6cc48720376862d5496d51509160dfd

New features:
* Add support for file reparenting with LANDLOCK_ACCESS_FS_REFER: 
https://git.kernel.org/torvalds/c/b91c3e4ea756b12b7d992529226edce1cfd854d7
* Document LANDLOCK_ACCESS_FS_REFER and ABI versioning: 
https://git.kernel.org/torvalds/c/6f59abfae35fbbe688ff790ff9638576956d760c

Documentation improvements:
* Document good practices about filesystem policies: 
https://git.kernel.org/torvalds/c/09340cf4135f942d56742b36aaa3c37738aba000
* Explain how to support Landlock: 
https://git.kernel.org/torvalds/c/5e469829baa1b1320e843adf3631edef1d6d2cf2

For a complete overview: 
https://git.kernel.org/torvalds/c/cb44e4f061e16be65b8a16505e121490c66d30d0

It would be easier to have a way to easily/automatically synchronize the 
kernel documentation and the man pages.


> 
> The latest one I have applied from you regarding landlock is 
> <http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?id=38454e3fcd7876dcd3441f4bb86246b9f3b8f9da>. 
> 
> 
> 
> Cheers,
> 
> Alex
> 
