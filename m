Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B169C6EADDF
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 17:16:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232134AbjDUPQd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 11:16:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229877AbjDUPQc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 11:16:32 -0400
X-Greylist: delayed 4200 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 21 Apr 2023 08:16:30 PDT
Received: from 1.mo548.mail-out.ovh.net (1.mo548.mail-out.ovh.net [178.32.121.110])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 650F693F6
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 08:16:30 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.62])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id C1B722048C;
        Fri, 21 Apr 2023 12:46:32 +0000 (UTC)
Received: from jwilk.net (37.59.142.99) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Fri, 21 Apr
 2023 14:46:31 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-99G0038115d8a2-a8c5-47a4-a1c8-a05d3d0fa36f,
                    5A732DE9D2D1B83706EA79E4755B3824E8629304) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.86
Date:   Fri, 21 Apr 2023 14:46:30 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH v7 4/8] regex.3: Improve REG_STARTEND
Message-ID: <20230421124630.dn2vc6fsdc3mo4ao@jwilk.net>
References: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
 <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>
 <5918ccbe-d218-df42-cf0f-5eb7b3354e2b@gmail.com>
 <atartvvgxjv7wk5rvdtiyrxjc22lnsgkf75hy3nz3m7fw3m6j4@i7khsjrvuise>
 <20230421101957.3hpuzx4pwgwgjbjg@jwilk.net>
 <qczn5qtfnn5girkwm7peng6lg6arcgm4xxd5jgfryuhwgspeaw@nkdqyubmztzp>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <qczn5qtfnn5girkwm7peng6lg6arcgm4xxd5jgfryuhwgspeaw@nkdqyubmztzp>
X-Originating-IP: [37.59.142.99]
X-ClientProxiedBy: DAG5EX1.mxp6.local (172.16.2.41) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: d62735bf-dbc6-46ca-9557-da8fabb78870
X-Ovh-Tracer-Id: 9630947806544910301
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 23
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrfedtgedgheehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucgfrhhlucfvnfffucdlvdefmdenucfjughrpeffhffvvefukfhfgggtugfgjghisehtkeertddttdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefftdegkedufeeiudehueeljeejfeetudffgfffveettdelffdugefgheetveehieenucffohhmrghinhepuggvsghirghnrdhorhhgnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrdelledphedrudejvddrvdehhedrkeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepnhgrsghijhgrtgiilhgvfigvlhhisehnrggsihhjrggtiihlvgifvghlihdrgiihiidprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehgeekpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* наб <nabijaczleweli@nabijaczleweli.xyz>, 2023-04-21 13:34:
>>>/etc/bash.bashrc: line 7: PS1: unbound variable
>>How come? bash is not supposed to read bashrc if the shell is 
>>non-interactive (unless you instruct it otherwise).
>No clue, surprised me as well, esp. since I didn't see any funny bash 
>flags to force interactivity.

I did some googling, which led me to this this:
https://lists.debian.org/Ywohi2WEtK+TtquZ@wooledge.org

I can reproduce the bug in unstable:

    $ (SSH_CLIENT=moo bash -uc true)
    /etc/bash.bashrc: line 7: PS1: unbound variable

What is this I don't even.

-- 
Jakub Wilk
