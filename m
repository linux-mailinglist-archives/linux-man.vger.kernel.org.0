Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F316469240E
	for <lists+linux-man@lfdr.de>; Fri, 10 Feb 2023 18:09:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232812AbjBJRJf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Feb 2023 12:09:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232679AbjBJRJe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Feb 2023 12:09:34 -0500
X-Greylist: delayed 346 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 10 Feb 2023 09:09:33 PST
Received: from 10.mo548.mail-out.ovh.net (10.mo548.mail-out.ovh.net [46.105.77.235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32ADF61D07
        for <linux-man@vger.kernel.org>; Fri, 10 Feb 2023 09:09:33 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.210])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id E9C3E2012D;
        Fri, 10 Feb 2023 17:03:45 +0000 (UTC)
Received: from jwilk.net (37.59.142.106) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.17; Fri, 10 Feb
 2023 18:03:44 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-106R00660155e1c-e2fc-4613-835d-ae1f5a6def37,
                    0E9896844163F93C91A8E8C0CBA4ADF27C1002B3) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.140
Date:   Fri, 10 Feb 2023 18:03:41 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH 19/20] adjtimex.2: Drop dead hyperlink.
Message-ID: <20230210170341.k4eyazbvd6xy6phm@jwilk.net>
References: <20230209181142.6gmv4ygmbxjtj7wu@illithid>
 <0c370824-a968-410c-1c8e-1e650ea21761@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <0c370824-a968-410c-1c8e-1e650ea21761@gmail.com>
X-Originating-IP: [37.59.142.106]
X-ClientProxiedBy: DAG7EX1.mxp6.local (172.16.2.61) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: c38d2b23-e02d-41db-8203-55abb65bd957
X-Ovh-Tracer-Id: 8714746757151905757
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrudehhedgleegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhkeeiheehffehheeuhefgteehvdelueefveevvefgveehhfevhfdtieejgfeugfenucffohhmrghinheprghrtghhihhvvgdrohhrghdpshhtrghnfhhorhgurdgvughunecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutdeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtoheprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhgrdgsrhgrnhguvghnrdhrohgsihhnshhonhesghhmrghilhdrtghomhdplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheegkedpmhhouggvpehsmhhtphhouhht
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,URI_DOTEDU autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2023-02-10 02:44:
>>"UNIX and Scientific Computing Services Pages
>>
>>The information that was previously in this area is out of date. 
>>Please refer to the SCS Confluence Page or contact unix-admin."

>Do you have any idea of what that link maybe provided,

Wayback Machine has an archived copy:
https://web.archive.org/web/20190729131746/https://www.slac.stanford.edu/comp/unix/package/rtems/src/ssrlApps/ntpNanoclock/api.htm

BTW, ntp_gettime.3 includes this URL in the SEE ALSO section too.

-- 
Jakub Wilk
