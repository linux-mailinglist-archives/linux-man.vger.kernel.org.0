Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA4B5746245
	for <lists+linux-man@lfdr.de>; Mon,  3 Jul 2023 20:23:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229830AbjGCSXV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Jul 2023 14:23:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229930AbjGCSXU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Jul 2023 14:23:20 -0400
Received: from 5.mo552.mail-out.ovh.net (5.mo552.mail-out.ovh.net [188.165.45.220])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 460EDE67
        for <linux-man@vger.kernel.org>; Mon,  3 Jul 2023 11:23:17 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.129])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 97F282B2CF;
        Mon,  3 Jul 2023 18:17:02 +0000 (UTC)
Received: from jwilk.net (37.59.142.103) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 3 Jul
 2023 20:17:00 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-103G005ae76bf7d-4853-4ac9-8cd0-fc120f2bab27,
                    01F7231744D2A1151A600C9196B08FFFC15B10DD) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.78
Date:   Mon, 3 Jul 2023 20:16:59 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Paul Eggert <eggert@cs.ucla.edu>
CC:     "A. Wilcox" <AWilcox@wilcox-tech.com>,
        <libc-coord@lists.openwall.com>,
        Jonathan Wakely <jwakely@redhat.com>,
        Rich Felker <dalias@libc.org>, <linux-man@vger.kernel.org>,
        <libc-alpha@sourceware.org>, <musl@lists.openwall.com>
Subject: Re: [musl] Re: [libc-coord] Re: regression in man pages for
 interfaces using loff_t
Message-ID: <20230703181659.la7gx5nx4qar6r2v@jwilk.net>
References: <31b53a8d-7cf4-b3a3-371f-a5723963383e@cs.ucla.edu>
 <9751E98E-025B-4E32-9EDF-D1984F998C10@wilcox-tech.com>
 <e8cd948b-10ea-9ff6-9707-68c1e0689759@cs.ucla.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <e8cd948b-10ea-9ff6-9707-68c1e0689759@cs.ucla.edu>
X-Originating-IP: [37.59.142.103]
X-ClientProxiedBy: DAG4EX2.mxp6.local (172.16.2.32) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: c42e634e-2c6b-43af-9113-733cfcb41942
X-Ovh-Tracer-Id: 1197394554049124204
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedviedruddvgdduvdduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeutddtteelhfffuddvhefgfedujeeltdekheduveekkeelfeduuedvgeejudffgfenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddruddtfedphedrudejvddrvdehhedrjeeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepvghgghgvrhhtsegtshdruhgtlhgrrdgvughupdethghilhgtohigseifihhltghogidqthgvtghhrdgtohhmpdhlihgstgdqtghoohhrugeslhhishhtshdrohhpvghnfigrlhhlrdgtohhmpdhjfigrkhgvlhihsehrvgguhhgrthdrtghomhdpuggrlhhirghssehlihgstgdrohhrghdplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdplhhisggtqdgrlhhphhgrsehsohhurhgtvgifrghrvgdrohhrghdpmhhushhlsehlihhsth
 hsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhoheehvddpmhhouggvpehsmhhtphhouhht
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

>-This format is employed in cases where only a single
>-feature test macro can be used to expose the function
>-declaration, and that macro is not defined by default.
>+This format is employed in cases where feature macros
>+expose the function declaration with the correct type,
>+and these macros are not defined by default.

This isn't right. The shorthand format is sometimes used when there's no 
off(64)_t involved, e.g. in memfd_create(2).

-- 
Jakub Wilk
