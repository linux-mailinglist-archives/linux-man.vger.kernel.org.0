Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5035B53FA0D
	for <lists+linux-man@lfdr.de>; Tue,  7 Jun 2022 11:42:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236678AbiFGJmj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Jun 2022 05:42:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232685AbiFGJmj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Jun 2022 05:42:39 -0400
Received: from 10.mo552.mail-out.ovh.net (10.mo552.mail-out.ovh.net [87.98.187.244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5E6017ABE
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 02:42:35 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.146.241])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 96C8022558;
        Tue,  7 Jun 2022 09:17:45 +0000 (UTC)
Received: from jwilk.net (37.59.142.105) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.9; Tue, 7 Jun 2022
 11:17:44 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-105G0063c23df8d-f7a9-4b43-aff3-3d2607b39351,
                    77F503A048AE22D7459F5EB5ABCD7E3A41C53931) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.124
Date:   Tue, 7 Jun 2022 11:17:43 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
CC:     Peter Xu <peterx@redhat.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH v2 0/2] userfaultfd.2: Update to latest
Message-ID: <20220607091743.qx5ngkcmjnte7wld@jwilk.net>
References: <20220603173736.62581-1-peterx@redhat.com>
 <7acfdeb8-5dd3-dfe2-5717-b64006281a8f@gmail.com>
 <Yp5YGMFJWLtthc8U@xz-m1.local>
 <20220606213323.xtfx7qpab6dwdqpk@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20220606213323.xtfx7qpab6dwdqpk@illithid>
X-Originating-IP: [37.59.142.105]
X-ClientProxiedBy: DAG6EX1.mxp6.local (172.16.2.51) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: e4f76ba0-fad1-4d6b-abe9-a1c404683bfa
X-Ovh-Tracer-Id: 1709397533713291232
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedruddthedgudefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeutddtteelhfffuddvhefgfedujeeltdekheduveekkeelfeduuedvgeejudffgfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheehvd
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* G. Branden Robinson <g.branden.robinson@gmail.com>, 2022-06-06, 16:33:
>At 2022-06-06T15:40:08-0400, Peter Xu wrote:
>>>I think the patch below would improve a little bit the wording (and 
>>>newlines).  I still have a bit of trouble understanding "When a 
>>>kernel-originated fault was triggered on the registered range with 
>>>this userfaultfd".  Did you maybe mean "range registered" instead of 
>>>"registered range"?
>>
>>Since I'm not a native speaker I don't immediately see the difference 
>>between the two.
>
>Short answer: I think your existing wording is acceptable.

I think you missed the context. You get a different parse tree when you 
swap the words:

   ...triggered (on the registered range) (with this userfaultfd).

vs

   ...triggered (on the range (registered with this userfaultfd)).

-- 
Jakub Wilk
