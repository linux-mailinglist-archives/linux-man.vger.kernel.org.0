Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08C3C64284A
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 13:21:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230262AbiLEMVZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 07:21:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231770AbiLEMVX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 07:21:23 -0500
Received: from 9.mo548.mail-out.ovh.net (9.mo548.mail-out.ovh.net [46.105.48.137])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D165CFD27
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 04:21:20 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.25])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id 779CF213EA;
        Mon,  5 Dec 2022 12:03:08 +0000 (UTC)
Received: from jwilk.net (37.59.142.103) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16; Mon, 5 Dec
 2022 13:03:07 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-103G005c0ca899b-e16a-4be4-b7df-f4019eca46c0,
                    2BD4DE20357223365A5F6F2D36CBE58CF9909313) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.142
Date:   Mon, 5 Dec 2022 13:03:05 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Helge Kreutzmann <debian@helgefjell.de>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: Issue in man page mount_namespaces.7
Message-ID: <20221205120305.htc2sd7r5qtvte5m@jwilk.net>
References: <20221204090710.GA324@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221204090710.GA324@Debian-50-lenny-64-minimal>
X-Originating-IP: [37.59.142.103]
X-ClientProxiedBy: DAG8EX2.mxp6.local (172.16.2.72) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 6077a279-3222-493b-85ab-da8422e322e8
X-Ovh-Tracer-Id: 15995659978460944352
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrudeggdefhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvfevuffkfhggtggugfgjihesthekredttddtjeenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepteegvdfgudeugefffedtffeufeetvdfgtdetkeeivefhhfeugfehueeivefgieejnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutdefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuggvsghirghnsehhvghlghgvfhhjvghllhdruggvpdgrlhigrdhmrghnphgrghgvshesghhmrghilhdrtghomhdpmhgrrhhiohdrsghlrggvthhtvghrmhgrnhhnsehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehgeekpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Helge Kreutzmann <debian@helgefjell.de>, 2022-12-04 10:07:
>Issue:    mount or unmount → mount or umount

The system call and the command line tool are written without "n" for 
historical reasons, but it's spelled "unmount" otherwise.

>"This mount shares events with members of a peer group.  Mount and unmount "
>"events immediately under this mount will propagate to the other mounts that "
>"are members of the peer group.  I<Propagation> here means that the same "
>"mount or unmount will automatically occur under all of the other mounts in "
>"the peer group.  Conversely, mount and unmount events that take place under "
>"peer mounts will propagate to this mount."

This text looks correct to me.

-- 
Jakub Wilk
