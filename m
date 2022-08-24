Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33F5959FF20
	for <lists+linux-man@lfdr.de>; Wed, 24 Aug 2022 18:09:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235329AbiHXQJM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Aug 2022 12:09:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236881AbiHXQJK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Aug 2022 12:09:10 -0400
X-Greylist: delayed 356 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 24 Aug 2022 09:09:09 PDT
Received: from 2.mo552.mail-out.ovh.net (2.mo552.mail-out.ovh.net [178.33.105.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1635181B30
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 09:09:08 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.194])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 132B727989;
        Wed, 24 Aug 2022 16:03:09 +0000 (UTC)
Received: from jwilk.net (37.59.142.99) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.12; Wed, 24 Aug
 2022 18:03:07 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-99G0034b2b5693-c5bd-40fe-a242-73479db34d59,
                    7C730AE16AE94F7FCDDE7DC9A9D3BCFED9FA05C1) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.109
Date:   Wed, 24 Aug 2022 18:02:59 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     <linux-man@vger.kernel.org>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        Rumen Telbizov <rumen.telbizov@menlosecurity.com>,
        Quentin Monnet <quentin@isovalent.com>,
        Daniel Borkmann <daniel@iogearbox.net>
Subject: Re: Update bpf-helpers(7) man page
Message-ID: <20220824160259.bxyr6pxagaaoqaev@jwilk.net>
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
 <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com>
 <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>
 <6310b542-3a92-e072-b369-25e370036626@gmail.com>
 <CACdoK4KwzbRFZ+_HDd6wybzePAHy40Pc3p19uu3XburddOuC3A@mail.gmail.com>
 <b62b15e5-398d-6d17-dedf-532b70208299@gmail.com>
 <CACdoK4KuoRpTdyLqtPTbctHWHtfQTNgZoKunVC_f7T_y4ATF5g@mail.gmail.com>
 <7d125b8d-9873-b001-dae2-a78d3891f144@gmail.com>
 <CA+FoirA-FeYeA5ZPgCvo55Hg_dfe7dT54Co8CkU9wW8yemFcJA@mail.gmail.com>
 <fdec5bc8-1204-db0f-1f3e-86d7a2de8b5c@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <fdec5bc8-1204-db0f-1f3e-86d7a2de8b5c@gmail.com>
X-Originating-IP: [37.59.142.99]
X-ClientProxiedBy: DAG6EX1.mxp6.local (172.16.2.51) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 5e7e23de-0f36-400b-b32e-65488c980b4d
X-Ovh-Tracer-Id: 5457518326529644451
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrvdejuddgleelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeutddtteelhfffuddvhefgfedujeeltdekheduveekkeelfeduuedvgeejudffgfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopegurghnihgvlhesihhoghgvrghrsghogidrnhgvthdpoffvtefjohhsthepmhhoheehvd
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The latest bpf-helpers(7) man page update introduced a few misspellings:

>-EFAULT on failrue to parse the existing header options.

failrue -> failure

>this helper enforces the key must be an task_struct

an -> a

>Returns the stored IMA hash of the inode (if it's avaialable)

avaialable -> available

>Providing an len_diff adjustment that is larger than the actual packet 
>size (resulting in negative packet size) will in principle not exceed 
>the MTU, why it is not considered a failure.

an -> a

But I can't parse the subordinate clause. I think it should be:

..., which is why it is not considered a failure.

>Other BPF-helpers are needed for performing the planned size change, 
>why the responsability for catch a negative packet size belong in those 
>helpers.

I can't parse this subordinate clause either. I guess it was meant to say:

..., which is why the responsibility for catching a negative packet size 
belongs in those helpers.

Any volunteers to fix the misspellings on the kernel side?

-- 
Jakub Wilk
