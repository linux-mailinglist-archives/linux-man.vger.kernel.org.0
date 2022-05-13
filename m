Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5409526AEF
	for <lists+linux-man@lfdr.de>; Fri, 13 May 2022 22:07:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1384027AbiEMUHX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 May 2022 16:07:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346040AbiEMUHV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 May 2022 16:07:21 -0400
X-Greylist: delayed 2242 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 13 May 2022 13:07:18 PDT
Received: from 10.mo548.mail-out.ovh.net (10.mo548.mail-out.ovh.net [46.105.77.235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8E232E681
        for <linux-man@vger.kernel.org>; Fri, 13 May 2022 13:07:17 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.210])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id 38F0D21132;
        Fri, 13 May 2022 19:29:53 +0000 (UTC)
Received: from jwilk.net (37.59.142.98) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Fri, 13 May
 2022 21:29:51 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-98R002a28de851-3aea-4999-a1b1-33d430fb84d1,
                    7A959D75776B27127E9795AE1A6F9D8B78B92641) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.23
Date:   Fri, 13 May 2022 21:29:45 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Rich Felker <dalias@libc.org>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: Erroneous text about POSIX in tmpfile(3) man page
Message-ID: <20220513192945.2ly2kttdhyztmzgy@jwilk.net>
References: <20220513172929.GA15832@brightrain.aerifal.cx>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20220513172929.GA15832@brightrain.aerifal.cx>
X-Originating-IP: [37.59.142.98]
X-ClientProxiedBy: DAG1EX2.mxp6.local (172.16.2.2) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 6b65ed5c-a168-4b5c-9d5f-8fedc3235474
X-Ovh-Tracer-Id: 12803733742296291293
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrgeelgddufeehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvvefukfhfgggtuggjihesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepueefgfdvfeekhfdvleefveekuddvveegleeitdekvdeitdetgfefgfdvjeekfeefnecuffhomhgrihhnpehophgvnhhgrhhouhhprdhorhhgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Rich Felker <dalias@libc.org>, 2022-05-13, 13:29:
>tmpfile.3 contains the following text:
>
>NOTES
>       POSIX.1-2001 specifies: an error message may be written to stdout if
>       the stream cannot be opened.
>
>I can find no such text in POSIX.1-2001 (looking at 
>https://pubs.opengroup.org/onlinepubs/007904975/functions/tmpfile.html) 
>and such an allowance would contradict ISO C which makes no such 
>allowance for it to write to stdout. I'm not sure where this came from 
>but it should probably be removed, or changed to indicate whichever 
>historical implementation wrongly did this if there was one.

I suppose it's a typo: it should say "stderr", not "stdout".

-- 
Jakub Wilk
