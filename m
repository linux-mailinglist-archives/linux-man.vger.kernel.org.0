Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A363472EB96
	for <lists+linux-man@lfdr.de>; Tue, 13 Jun 2023 21:07:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230117AbjFMTHT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Jun 2023 15:07:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230498AbjFMTHS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Jun 2023 15:07:18 -0400
Received: from 1.mo552.mail-out.ovh.net (1.mo552.mail-out.ovh.net [178.32.96.117])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 045671995
        for <linux-man@vger.kernel.org>; Tue, 13 Jun 2023 12:07:16 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.235])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 47BF92A9F8;
        Tue, 13 Jun 2023 19:00:59 +0000 (UTC)
Received: from jwilk.net (37.59.142.97) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Tue, 13 Jun
 2023 21:00:58 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-97G002f6804334-332c-4e1a-9343-f6e9edd59d7e,
                    49B04E3C7CDA3DE1AB610058B7392A4EF90995E0) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.233
Date:   Tue, 13 Jun 2023 21:00:54 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Lucien Gentis <lucien.gentis@waika9.com>
CC:     Alejandro Colomar <alx@kernel.org>, <linux-man@vger.kernel.org>,
        <libc-alpha@sourceware.org>
Subject: Re: manpages - typo in intro.3.pot
Message-ID: <20230613190054.hickhdhljq72x2xp@jwilk.net>
References: <f9c9f278-8914-058b-b612-a205d4a0b035@waika9.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <f9c9f278-8914-058b-b612-a205d4a0b035@waika9.com>
X-Originating-IP: [37.59.142.97]
X-ClientProxiedBy: DAG5EX1.mxp6.local (172.16.2.41) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: ece3392b-330d-4124-9c26-818168e769e7
X-Ovh-Tracer-Id: 13612974302440773600
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrgedujedguddvkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfhfgggtuggjihesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepudetffeilefhjeeutdegkeekgfeivdekiedvueetveffueeifeeikeeuhfehtdfgnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddrleejpdehrddujedvrddvheehrddvfeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtoheplhhutghivghnrdhgvghnthhishesfigrihhkrgelrdgtohhmpdgrlhigsehkvghrnhgvlhdrohhrghdplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdplhhisggtqdgrlhhphhgrsehsohhurhgtvgifrghrvgdrohhrghdpoffvtefjohhsthepmhhoheehvddpmhhouggvpehsmhhtphhouhht
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Lucien Gentis <lucien.gentis@waika9.com>, 2023-06-09 13:48:
>"shopuld be placed" instead of "should be placed"

Already fixed:
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=6a6d1d27a4c4eb82

-- 
Jakub Wilk
