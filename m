Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E98E459A644
	for <lists+linux-man@lfdr.de>; Fri, 19 Aug 2022 21:29:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351265AbiHSTTu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Aug 2022 15:19:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350338AbiHSTTP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Aug 2022 15:19:15 -0400
Received: from 6.mo552.mail-out.ovh.net (6.mo552.mail-out.ovh.net [188.165.49.222])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD4BC58B64
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 12:18:44 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.149])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 6B13B20234;
        Fri, 19 Aug 2022 18:03:36 +0000 (UTC)
Received: from jwilk.net (37.59.142.96) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.9; Fri, 19 Aug
 2022 20:03:35 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-96R00183a6b088-887e-4b0e-9c3a-d78b862e87a9,
                    504186192CBDCCB46C37AA7B8534EBBC1F215137) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.96
Date:   Fri, 19 Aug 2022 20:03:23 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH 1/2] system_data_types.7: srcfix
Message-ID: <20220819180323.dbsgxh5qvcjabjm6@jwilk.net>
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
 <20200928132959.x4koforqnzohxh5u@jwilk.net>
 <9b8303fe-969e-c9f0-e3cd-0590b342d5bf@gmail.com>
 <20200930101213.2m2pt3jrspvcrxfx@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200930101213.2m2pt3jrspvcrxfx@localhost.localdomain>
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG3EX2.mxp6.local (172.16.2.22) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: dd5997dc-c9d4-4308-9b1f-749e4c63a374
X-Ovh-Tracer-Id: 15021756559965804509
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeiuddguddvfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfhfgggtuggjihesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepuedttdetlefhffduvdehgfefudejledtkeehudevkeekleefudeuvdegjedufffgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheehvd
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* G. Branden Robinson <g.branden.robinson@gmail.com>, 2020-09-30 20:12:
>+\(bu Do I ever need to use an empty macro argument ("")?
>+Probably not.

FWIW, man-pages(7) says it's OK to use empty string for the 4th 
argument of .TH:

"For library calls that are part of glibc or one of the other common GNU 
libraries, just use GNU C Library, GNU, or an empty string."

There used to be a lot of such .TH calls; now there's only a few left:

$ grep -r '[.]TH .*""' man*/
man7/posixoptions.7:.TH POSIXOPTIONS 7 2021-08-27 "" "Linux Programmer's Manual"
man7/bpf-helpers.7:.TH BPF-HELPERS 7 "" "" ""
man8/zdump.8:.TH ZDUMP 8 2020-04-27 "" "Linux System Administration"
man8/zic.8:.TH ZIC 8 2020-08-13 "" "Linux System Administration"

-- 
Jakub Wilk
